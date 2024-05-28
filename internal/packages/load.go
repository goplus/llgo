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
	"fmt"
	"go/types"
	"runtime"
	"sync"
	"unsafe"

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

// A Package describes a loaded Go package.
type Package = packages.Package

// loader holds the working state of a single call to load.
type loader struct {
	pkgs map[string]unsafe.Pointer
	Config
	sizes        types.Sizes // non-nil if needed by mode
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

//go:linkname newLoader golang.org/x/tools/go/packages.newLoader
func newLoader(cfg *Config) *loader

//go:linkname defaultDriver golang.org/x/tools/go/packages.defaultDriver
func defaultDriver(cfg *Config, patterns ...string) (*packages.DriverResponse, bool, error)

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
func LoadEx(sizes func(types.Sizes) types.Sizes, cfg *Config, patterns ...string) ([]*Package, error) {
	ld := newLoader(cfg)
	response, external, err := defaultDriver(&ld.Config, patterns...)
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
