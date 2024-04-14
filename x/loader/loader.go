/*
 * Copyright (c) 2023 The GoPlus Authors (goplus.org). All rights reserved.
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

package loader

/*
import (
	"go/ast"
	"go/token"
	"go/types"

	"github.com/goplus/llgo/build"
	"golang.org/x/tools/go/ssa"
)

type Package struct {
	SSA          *ssa.Package
	EmbedGlobals map[string][]*EmbedFile
}

type EmbedFile struct {
	/*
	   Name      string
	   Size      uint64
	   Hash      string // hash of the file (as a hex string)
	   NeedsData bool   // true if this file is embedded as a byte slice
	   Data      []byte // contents of this file (only if NeedsData is set)
*/
/*
}

type Context struct {
	*ssa.Program
}

func (ctx *Context) Load(pkg build.Package) (ret Package, err error) {
	return
}

// BuildPackage builds an SSA program with IR for a single package.
//
// It populates pkg by type-checking the specified file ASTs.  All
// dependencies are loaded using the importer specified by tc, which
// typically loads compiler export data; SSA code cannot be built for
// those packages.  BuildPackage then constructs an ssa.Program with all
// dependency packages created, and builds and returns the SSA package
// corresponding to pkg.
//
// The caller must have set pkg.Path() to the import path.
//
// The operation fails if there were any type-checking or import errors.
//
// See ../example_test.go for an example.
func BuildPackage(tc *types.Config, fset *token.FileSet, pkg *types.Package, files []*ast.File, mode ssa.BuilderMode) (*ssa.Package, *types.Info, error) {
	if fset == nil {
		panic("no token.FileSet")
	}
	if pkg.Path() == "" {
		panic("package has no import path")
	}

	info := &types.Info{
		Types:      make(map[ast.Expr]types.TypeAndValue),
		Defs:       make(map[*ast.Ident]types.Object),
		Uses:       make(map[*ast.Ident]types.Object),
		Implicits:  make(map[ast.Node]types.Object),
		Scopes:     make(map[ast.Node]*types.Scope),
		Selections: make(map[*ast.SelectorExpr]*types.Selection),
	}
	typeparams.InitInstanceInfo(info)
	versions.InitFileVersions(info)
	if err := types.NewChecker(tc, fset, pkg, info).Files(files); err != nil {
		return nil, nil, err
	}

	prog := ssa.NewProgram(fset, mode)

	// Create SSA packages for all imports.
	// Order is not significant.
	created := make(map[*types.Package]bool)
	var createAll func(pkgs []*types.Package)
	createAll = func(pkgs []*types.Package) {
		for _, p := range pkgs {
			if !created[p] {
				created[p] = true
				prog.CreatePackage(p, nil, nil, true)
				createAll(p.Imports())
			}
		}
	}
	createAll(pkg.Imports())

	// TODO(adonovan): we could replace createAll with just:
	//
	// // Create SSA packages for all imports.
	// for _, p := range pkg.Imports() {
	// 	prog.CreatePackage(p, nil, nil, true)
	// }
	//
	// (with minor changes to changes to ../builder_test.go as
	// shown in CL 511715 PS 10.) But this would strictly violate
	// the letter of the doc comment above, which says "all
	// dependencies created".
	//
	// Tim makes the good point with some extra work we could
	// remove the need for any CreatePackage calls except the
	// ones with syntax (i.e. primary packages). Of course
	// You wouldn't have ssa.Packages and Members for as
	// many things but no-one really uses that anyway.
	// I wish I had done this from the outset.

	// Create and build the primary package.
	ssapkg := prog.CreatePackage(pkg, files, info, false)
	ssapkg.Build()
	return ssapkg, info, nil
}
*/
