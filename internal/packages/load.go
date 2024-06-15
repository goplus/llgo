/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package packages

import (
	"errors"
	"fmt"
	"go/types"
	"runtime"
	"sync"
	"unsafe"

	"golang.org/x/sync/errgroup"
	"golang.org/x/tools/go/packages"
)

// A LoadMode controls the amount of detail to return when loading.
// The bits below can be combined to specify which fields should be
// filled in the result packages.
// The zero value is a special case, equivalent to combining
// the NeedName, NeedFiles, and NeedCompiledGoFiles bits.
// ID and Errors (if present) will always be filled.
// Load may return more information than requested.
type LoadMode = packages.LoadMode

const (
	NeedName  = packages.NeedName
	NeedFiles = packages.NeedFiles

	NeedSyntax     = packages.NeedSyntax
	NeedImports    = packages.NeedImports
	NeedDeps       = packages.NeedDeps
	NeedModule     = packages.NeedModule
	NeedExportFile = packages.NeedExportFile

	NeedCompiledGoFiles = packages.NeedCompiledGoFiles

	NeedTypes      = packages.NeedTypes
	NeedTypesSizes = packages.NeedTypesSizes
	NeedTypesInfo  = packages.NeedTypesInfo
)

// A Config specifies details about how packages should be loaded.
// The zero value is a valid configuration.
// Calls to Load do not modify this struct.
type Config = packages.Config

func setGoListOverlayFile(cfg *Config, val string) {
	// TODO(xsw): suppose that the field is at the end of the struct
	ptr := uintptr(unsafe.Pointer(cfg)) + (unsafe.Sizeof(*cfg) - unsafe.Sizeof(val))
	*(*string)(unsafe.Pointer(ptr)) = val
}

// A Package describes a loaded Go package.
type Package = packages.Package

// loader holds the working state of a single call to load.
type loader struct {
	pkgs map[string]unsafe.Pointer
	Config
	sizes        types.Sizes // TODO(xsw): ensure offset of sizes
	parseCache   map[string]unsafe.Pointer
	parseCacheMu sync.Mutex
	exportMu     sync.Mutex // enforces mutual exclusion of exportdata operations

	// Config.Mode contains the implied mode (see impliedLoadMode).
	// Implied mode contains all the fields we need the data for.
	// In requestedMode there are the actually requested fields.
	// We'll zero them out before returning packages to the user.
	// This makes it easier for us to get the conditions where
	// we need certain modes right.
	requestedMode LoadMode
}

// Deduper wraps a DriverResponse, deduplicating its contents.
type Deduper struct {
	seenRoots    map[string]bool
	seenPackages map[string]*Package
	dr           *packages.DriverResponse // TODO(xsw): ensure offset of dr
}

//go:linkname NewDeduper golang.org/x/tools/go/packages.newDeduper
func NewDeduper() *Deduper

//go:linkname addAll golang.org/x/tools/go/packages.(*responseDeduper).addAll
func addAll(r *Deduper, dr *packages.DriverResponse)

func mergeResponsesEx(dedup *Deduper, responses ...*packages.DriverResponse) *packages.DriverResponse {
	if len(responses) == 0 {
		return nil
	}
	if dedup == nil {
		dedup = NewDeduper()
	}
	response := dedup
	response.dr.NotHandled = false
	response.dr.Compiler = responses[0].Compiler
	response.dr.Arch = responses[0].Arch
	response.dr.GoVersion = responses[0].GoVersion
	for _, v := range responses {
		addAll(response, v)
	}
	return response.dr
}

// driver is the type for functions that query the build system for the
// packages named by the patterns.
type driver func(cfg *Config, patterns ...string) (*packages.DriverResponse, error)

func callDriverOnChunksEx(dedup *Deduper, driver driver, cfg *Config, chunks [][]string) (*packages.DriverResponse, error) {
	if len(chunks) == 0 {
		return driver(cfg)
	}
	responses := make([]*packages.DriverResponse, len(chunks))
	errNotHandled := errors.New("driver returned NotHandled")
	var g errgroup.Group
	for i, chunk := range chunks {
		i := i
		chunk := chunk
		g.Go(func() (err error) {
			responses[i], err = driver(cfg, chunk...)
			if responses[i] != nil && responses[i].NotHandled {
				err = errNotHandled
			}
			return err
		})
	}
	if err := g.Wait(); err != nil {
		if errors.Is(err, errNotHandled) {
			return &packages.DriverResponse{NotHandled: true}, nil
		}
		return nil, err
	}
	return mergeResponsesEx(dedup, responses...), nil
}

//go:linkname splitIntoChunks golang.org/x/tools/go/packages.splitIntoChunks
func splitIntoChunks(patterns []string, argMax int) ([][]string, error)

//go:linkname findExternalDriver golang.org/x/tools/go/packages.findExternalDriver
func findExternalDriver(cfg *Config) driver

//go:linkname goListDriver golang.org/x/tools/go/packages.goListDriver
func goListDriver(cfg *Config, patterns ...string) (_ *packages.DriverResponse, err error)

//go:linkname writeOverlays golang.org/x/tools/internal/gocommand.WriteOverlays
func writeOverlays(overlay map[string][]byte) (filename string, cleanup func(), err error)

func defaultDriverEx(dedup *Deduper, cfg *Config, patterns ...string) (*packages.DriverResponse, bool, error) {
	const (
		// windowsArgMax specifies the maximum command line length for
		// the Windows' CreateProcess function.
		windowsArgMax = 32767
		// maxEnvSize is a very rough estimation of the maximum environment
		// size of a user.
		maxEnvSize = 16384
		// safeArgMax specifies the maximum safe command line length to use
		// by the underlying driver excl. the environment. We choose the Windows'
		// ARG_MAX as the starting point because it's one of the lowest ARG_MAX
		// constants out of the different supported platforms,
		// e.g., https://www.in-ulm.de/~mascheck/various/argmax/#results.
		safeArgMax = windowsArgMax - maxEnvSize
	)
	chunks, err := splitIntoChunks(patterns, safeArgMax)
	if err != nil {
		return nil, false, err
	}

	if driver := findExternalDriver(cfg); driver != nil {
		response, err := callDriverOnChunksEx(dedup, driver, cfg, chunks)
		if err != nil {
			return nil, false, err
		} else if !response.NotHandled {
			return response, true, nil
		}
		// (fall through)
	}

	// go list fallback
	//
	// Write overlays once, as there are many calls
	// to 'go list' (one per chunk plus others too).
	overlay, cleanupOverlay, err := writeOverlays(cfg.Overlay)
	if err != nil {
		return nil, false, err
	}
	defer cleanupOverlay()
	setGoListOverlayFile(cfg, overlay)

	response, err := callDriverOnChunksEx(dedup, goListDriver, cfg, chunks)
	if err != nil {
		return nil, false, err
	}
	return response, false, err
}

//go:linkname newLoader golang.org/x/tools/go/packages.newLoader
func newLoader(cfg *Config) *loader

//go:linkname refine golang.org/x/tools/go/packages.(*loader).refine
func refine(ld *loader, response *packages.DriverResponse) ([]*Package, error)

// LoadEx loads and returns the Go packages named by the given patterns.
//
// Config specifies loading options;
// nil behaves the same as an empty Config.
//
// If any of the patterns was invalid as defined by the
// underlying build system, Load returns an error.
// It may return an empty list of packages without an error,
// for instance for an empty expansion of a valid wildcard.
// Errors associated with a particular package are recorded in the
// corresponding Package's Errors list, and do not cause Load to
// return an error. Clients may need to handle such errors before
// proceeding with further analysis. The PrintErrors function is
// provided for convenient display of all errors.
func LoadEx(dedup *Deduper, sizes func(types.Sizes) types.Sizes, cfg *Config, patterns ...string) ([]*Package, error) {
	ld := newLoader(cfg)
	response, external, err := defaultDriverEx(dedup, &ld.Config, patterns...)
	if err != nil {
		return nil, err
	}

	ld.sizes = types.SizesFor(response.Compiler, response.Arch)
	if ld.sizes == nil && ld.Config.Mode&(NeedTypes|NeedTypesSizes|NeedTypesInfo) != 0 {
		// Type size information is needed but unavailable.
		if external {
			// An external driver may fail to populate the Compiler/GOARCH fields,
			// especially since they are relatively new (see #63700).
			// Provide a sensible fallback in this case.
			ld.sizes = types.SizesFor("gc", runtime.GOARCH)
			if ld.sizes == nil { // gccgo-only arch
				ld.sizes = types.SizesFor("gc", "amd64")
			}
		} else {
			// Go list should never fail to deliver accurate size information.
			// Reject the whole Load since the error is the same for every package.
			return nil, fmt.Errorf("can't determine type sizes for compiler %q on GOARCH %q",
				response.Compiler, response.Arch)
		}
	}

	if sizes != nil {
		ld.sizes = sizes(ld.sizes)
	}
	return refine(ld, response)
}

// Visit visits all the packages in the import graph whose roots are
// pkgs, calling the optional pre function the first time each package
// is encountered (preorder), and the optional post function after a
// package's dependencies have been visited (postorder).
// The boolean result of pre(pkg) determines whether
// the imports of package pkg are visited.
//
//go:linkname Visit golang.org/x/tools/go/packages.Visit
func Visit(pkgs []*Package, pre func(*Package) bool, post func(*Package))
