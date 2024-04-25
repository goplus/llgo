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
	"os"

	"github.com/goplus/llgo/cl"
	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/ssa"

	llssa "github.com/goplus/llgo/ssa"
)

const (
	loadFiles   = packages.NeedName | packages.NeedFiles | packages.NeedCompiledGoFiles
	loadImports = loadFiles | packages.NeedImports
	loadTypes   = loadImports | packages.NeedTypes | packages.NeedTypesSizes
	loadSyntax  = loadTypes | packages.NeedSyntax | packages.NeedTypesInfo
)

func GenFromFile(inFile string) string {
	cfg := &packages.Config{
		Mode: loadSyntax,
	}
	initial, err := packages.Load(cfg, inFile)
	check(err)

	pkg := initial[0]
	fset := pkg.Fset
	ssaProg := ssa.NewProgram(fset, ssa.SanityCheckFunctions)
	ssaPkg := ssaProg.CreatePackage(pkg.Types, pkg.Syntax, pkg.TypesInfo, true)

	prog := llssa.NewProgram(nil)
	ret, err := cl.NewPackage(prog, ssaPkg, pkg.Syntax)
	check(err)

	return ret.String()
}

func DoFile(inFile, outFile string) {
	ret := GenFromFile(inFile)
	err := os.WriteFile(outFile, []byte(ret), 0644)
	check(err)
}
