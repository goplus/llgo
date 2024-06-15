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

	NeedEmbedFiles      = packages.NeedEmbedFiles
	NeedEmbedPatterns   = packages.NeedEmbedPatterns
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

// loaderPackage augments Package with state used during the loading phase
type loaderPackage struct {
	*Package
	importErrors map[string]error // maps each bad import to its error
	loadOnce     sync.Once
	color        uint8 // for cycle detection
	needsrc      bool  // load from source (Mode >= LoadTypes)
	needtypes    bool  // type information is either requested or depended on
	initial      bool  // package was matched by a pattern
	goVersion    int   // minor version number of go command on PATH
}

// loader holds the working state of a single call to load.
type loader struct {
	pkgs map[string]*loaderPackage
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

type Deduper struct {
}

func NewDeduper() *Deduper {
	return nil
}

//go:linkname defaultDriver golang.org/x/tools/go/packages.defaultDriver
func defaultDriver(cfg *Config, patterns ...string) (*packages.DriverResponse, bool, error)

//go:linkname newLoader golang.org/x/tools/go/packages.newLoader
func newLoader(cfg *Config) *loader

//go:linkname loadPackage golang.org/x/tools/go/packages.(*loader).loadPackage
func loadPackage(ld *loader, lpkg *loaderPackage)

func loadRecursiveEx(ld *loader, lpkg *loaderPackage) {
	lpkg.loadOnce.Do(func() {
		// Load the direct dependencies, in parallel.
		var wg sync.WaitGroup
		for _, ipkg := range lpkg.Imports {
			imp := ld.pkgs[ipkg.ID]
			wg.Add(1)
			go func(imp *loaderPackage) {
				loadRecursiveEx(ld, imp)
				wg.Done()
			}(imp)
		}
		wg.Wait()
		loadPackage(ld, lpkg)
	})
}

func refineEx(ld *loader, response *packages.DriverResponse) ([]*Package, error) {
	roots := response.Roots
	rootMap := make(map[string]int, len(roots))
	for i, root := range roots {
		rootMap[root] = i
	}
	ld.pkgs = make(map[string]*loaderPackage)
	// first pass, fixup and build the map and roots
	var initial = make([]*loaderPackage, len(roots))
	for _, pkg := range response.Packages {
		rootIndex := -1
		if i, found := rootMap[pkg.ID]; found {
			rootIndex = i
		}

		// Overlays can invalidate export data.
		// TODO(matloob): make this check fine-grained based on dependencies on overlaid files
		exportDataInvalid := len(ld.Overlay) > 0 || pkg.ExportFile == "" && pkg.PkgPath != "unsafe"
		// This package needs type information if the caller requested types and the package is
		// either a root, or it's a non-root and the user requested dependencies ...
		needtypes := (ld.Mode&NeedTypes|NeedTypesInfo != 0 && (rootIndex >= 0 || ld.Mode&NeedDeps != 0))
		// This package needs source if the call requested source (or types info, which implies source)
		// and the package is either a root, or itas a non- root and the user requested dependencies...
		needsrc := ((ld.Mode&(NeedSyntax|NeedTypesInfo) != 0 && (rootIndex >= 0 || ld.Mode&NeedDeps != 0)) ||
			// ... or if we need types and the exportData is invalid. We fall back to (incompletely)
			// typechecking packages from source if they fail to compile.
			(ld.Mode&(NeedTypes|NeedTypesInfo) != 0 && exportDataInvalid)) && pkg.PkgPath != "unsafe"
		lpkg := &loaderPackage{
			Package:   pkg,
			needtypes: needtypes,
			needsrc:   needsrc,
			goVersion: response.GoVersion,
		}
		ld.pkgs[lpkg.ID] = lpkg
		if rootIndex >= 0 {
			initial[rootIndex] = lpkg
			lpkg.initial = true
		}
	}
	for i, root := range roots {
		if initial[i] == nil {
			return nil, fmt.Errorf("root package %v is missing", root)
		}
	}

	if ld.Mode&NeedImports != 0 {
		// Materialize the import graph.

		const (
			white = 0 // new
			grey  = 1 // in progress
			black = 2 // complete
		)

		// visit traverses the import graph, depth-first,
		// and materializes the graph as Packages.Imports.
		//
		// Valid imports are saved in the Packages.Import map.
		// Invalid imports (cycles and missing nodes) are saved in the importErrors map.
		// Thus, even in the presence of both kinds of errors,
		// the Import graph remains a DAG.
		//
		// visit returns whether the package needs src or has a transitive
		// dependency on a package that does. These are the only packages
		// for which we load source code.
		var stack []*loaderPackage
		var visit func(lpkg *loaderPackage) bool
		visit = func(lpkg *loaderPackage) bool {
			switch lpkg.color {
			case black:
				return lpkg.needsrc
			case grey:
				panic("internal error: grey node")
			}
			lpkg.color = grey
			stack = append(stack, lpkg) // push
			stubs := lpkg.Imports       // the structure form has only stubs with the ID in the Imports
			lpkg.Imports = make(map[string]*Package, len(stubs))
			for importPath, ipkg := range stubs {
				var importErr error
				imp := ld.pkgs[ipkg.ID]
				if imp == nil {
					// (includes package "C" when DisableCgo)
					importErr = fmt.Errorf("missing package: %q", ipkg.ID)
				} else if imp.color == grey {
					importErr = fmt.Errorf("import cycle: %s", stack)
				}
				if importErr != nil {
					if lpkg.importErrors == nil {
						lpkg.importErrors = make(map[string]error)
					}
					lpkg.importErrors[importPath] = importErr
					continue
				}

				if visit(imp) {
					lpkg.needsrc = true
				}
				lpkg.Imports[importPath] = imp.Package
			}

			// Complete type information is required for the
			// immediate dependencies of each source package.
			if lpkg.needsrc && ld.Mode&NeedTypes != 0 {
				for _, ipkg := range lpkg.Imports {
					ld.pkgs[ipkg.ID].needtypes = true
				}
			}

			// NeedTypeSizes causes TypeSizes to be set even
			// on packages for which types aren't needed.
			if ld.Mode&NeedTypesSizes != 0 {
				lpkg.TypesSizes = ld.sizes
			}
			stack = stack[:len(stack)-1] // pop
			lpkg.color = black

			return lpkg.needsrc
		}

		// For each initial package, create its import DAG.
		for _, lpkg := range initial {
			visit(lpkg)
		}

	} else {
		// !NeedImports: drop the stub (ID-only) import packages
		// that we are not even going to try to resolve.
		for _, lpkg := range initial {
			lpkg.Imports = nil
		}
	}

	// Load type data and syntax if needed, starting at
	// the initial packages (roots of the import DAG).
	if ld.Mode&NeedTypes != 0 || ld.Mode&NeedSyntax != 0 {
		var wg sync.WaitGroup
		for _, lpkg := range initial {
			wg.Add(1)
			go func(lpkg *loaderPackage) {
				loadRecursiveEx(ld, lpkg)
				wg.Done()
			}(lpkg)
		}
		wg.Wait()
	}

	// If the context is done, return its error and
	// throw out [likely] incomplete packages.
	if err := ld.Context.Err(); err != nil {
		return nil, err
	}

	result := make([]*Package, len(initial))
	for i, lpkg := range initial {
		result[i] = lpkg.Package
	}
	for i := range ld.pkgs {
		// Clear all unrequested fields,
		// to catch programs that use more than they request.
		if ld.requestedMode&NeedName == 0 {
			ld.pkgs[i].Name = ""
			ld.pkgs[i].PkgPath = ""
		}
		if ld.requestedMode&NeedFiles == 0 {
			ld.pkgs[i].GoFiles = nil
			ld.pkgs[i].OtherFiles = nil
			ld.pkgs[i].IgnoredFiles = nil
		}
		if ld.requestedMode&NeedEmbedFiles == 0 {
			ld.pkgs[i].EmbedFiles = nil
		}
		if ld.requestedMode&NeedEmbedPatterns == 0 {
			ld.pkgs[i].EmbedPatterns = nil
		}
		if ld.requestedMode&NeedCompiledGoFiles == 0 {
			ld.pkgs[i].CompiledGoFiles = nil
		}
		if ld.requestedMode&NeedImports == 0 {
			ld.pkgs[i].Imports = nil
		}
		if ld.requestedMode&NeedExportFile == 0 {
			ld.pkgs[i].ExportFile = ""
		}
		if ld.requestedMode&NeedTypes == 0 {
			ld.pkgs[i].Types = nil
			ld.pkgs[i].Fset = nil
			ld.pkgs[i].IllTyped = false
		}
		if ld.requestedMode&NeedSyntax == 0 {
			ld.pkgs[i].Syntax = nil
		}
		if ld.requestedMode&NeedTypesInfo == 0 {
			ld.pkgs[i].TypesInfo = nil
		}
		if ld.requestedMode&NeedTypesSizes == 0 {
			ld.pkgs[i].TypesSizes = nil
		}
		if ld.requestedMode&NeedModule == 0 {
			ld.pkgs[i].Module = nil
		}
	}

	return result, nil
}

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
	return refineEx(ld, response)
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
