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

package llgen

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"os"

	"github.com/goplus/gogen/packages"
	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/internal/mod"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"

	llssa "github.com/goplus/llgo/ssa"
)

func Init() {
	llssa.Initialize(llssa.InitAll)
	llssa.SetDebug(llssa.DbgFlagAll)
	cl.SetDebug(cl.DbgFlagAll)
}

func PkgPath(dir string) string {
	_, pkgPath, err := mod.Load(dir)
	check(err)
	return pkgPath
}

func Do(pkgPath, inFile, outFile string) {
	ret := Gen(pkgPath, inFile, nil)
	err := os.WriteFile(outFile, []byte(ret), 0644)
	check(err)
}

func Gen(pkgPath, inFile string, src any) string {
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, inFile, src, parser.ParseComments)
	check(err)

	files := []*ast.File{f}
	name := f.Name.Name
	if pkgPath == "" {
		pkgPath = name
	}
	pkg := types.NewPackage(pkgPath, name)
	imp := packages.NewImporter(fset)
	ssaPkg, _, err := ssautil.BuildPackage(
		&types.Config{Importer: imp}, fset, pkg, files, ssa.SanityCheckFunctions)
	check(err)

	if Verbose {
		ssaPkg.WriteTo(os.Stderr)
	}

	prog := llssa.NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		rt, err := imp.Import(llssa.PkgRuntime)
		check(err)
		return rt
	})
	ret, err := cl.NewPackage(prog, ssaPkg, files)
	check(err)

	return ret.String()
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

var (
	Verbose = true
)
