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
	"os/exec"
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/internal/packages"
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

func initRtAndPy(prog llssa.Program, cfg *packages.Config) {
	var pkgRtAndPy []*packages.Package
	load := func() []*packages.Package {
		if pkgRtAndPy == nil {
			var err error
			pkgRtAndPy, err = packages.LoadEx(prog.TypeSizes, cfg, llssa.PkgRuntime, llssa.PkgPython)
			check(err)
		}
		return pkgRtAndPy
	}

	prog.SetRuntime(func() *types.Package {
		rt := load()
		return rt[0].Types
	})
	prog.SetPython(func() *types.Package {
		rt := load()
		return rt[1].Types
	})
}

func GenFrom(fileOrPkg string) string {
	prog := llssa.NewProgram(nil)

	cfg := &packages.Config{
		Mode: loadSyntax | packages.NeedDeps,
	}
	initial, err := packages.LoadEx(prog.TypeSizes, cfg, fileOrPkg)
	check(err)

	_, pkgs := ssautil.AllPackages(initial, ssa.SanityCheckFunctions)

	pkg := initial[0]
	ssaPkg := pkgs[0]
	ssaPkg.Build()

	initRtAndPy(prog, cfg)

	if Verbose {
		ssaPkg.WriteTo(os.Stderr)
	}

	ret, err := cl.NewPackage(prog, ssaPkg, pkg.Syntax)
	check(err)

	if prog.NeedPyInit { // call PyInit if needed
		ret.PyInit()
	}

	return ret.String()
}

func DoFile(fileOrPkg, outFile string) {
	ret := GenFrom(fileOrPkg)
	err := os.WriteFile(outFile, []byte(ret), 0644)
	check(err)
}

func SmartDoFile(inFile string, pkgPath ...string) {
	const autgenFile = "llgo_autogen.ll"
	dir, _ := filepath.Split(inFile)
	absDir, _ := filepath.Abs(dir)
	absDir = filepath.ToSlash(absDir)
	fname := autgenFile
	if inCompilerDir(absDir) {
		fname = "out.ll"
	}
	outFile := dir + fname

	if len(pkgPath) > 0 {
		Do(pkgPath[0], inFile, outFile)
	} else {
		DoFile(inFile, outFile)
	}
	if false && fname == autgenFile {
		genZip(absDir, "llgo_autogen.lla", autgenFile)
	}
}

func genZip(dir string, outFile, inFile string) {
	cmd := exec.Command("zip", outFile, inFile)
	cmd.Dir = dir
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	cmd.Run()
}

func inCompilerDir(dir string) bool {
	return strings.Contains(dir, "/llgo/cl/")
}
