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
	"go/types"
	"os"

	"github.com/goplus/llgo/cl"
	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"

	llssa "github.com/goplus/llgo/ssa"
)

const (
	loadFiles   = packages.NeedName | packages.NeedFiles | packages.NeedCompiledGoFiles
	loadImports = loadFiles | packages.NeedImports
	loadTypes   = loadImports | packages.NeedTypes | packages.NeedTypesSizes
	loadSyntax  = loadTypes | packages.NeedSyntax | packages.NeedTypesInfo
)

func GenFrom(fileOrPkg string) string {
	cfg := &packages.Config{
		Mode: loadSyntax | packages.NeedDeps,
	}
	initial, err := packages.Load(cfg, fileOrPkg)
	check(err)

	_, pkgs := ssautil.AllPackages(initial, ssa.SanityCheckFunctions)

	pkg := initial[0]
	ssaPkg := pkgs[0]
	ssaPkg.Build()

	prog := llssa.NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		rt, err := packages.Load(cfg, llssa.PkgRuntime)
		check(err)
		return rt[0].Types
	})

	ret, err := cl.NewPackage(prog, ssaPkg, pkg.Syntax)
	check(err)

	return ret.String()
}

func DoFile(fileOrPkg, outFile string) {
	ret := GenFrom(fileOrPkg)
	err := os.WriteFile(outFile, []byte(ret), 0644)
	check(err)
}
