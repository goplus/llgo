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

package build

import (
	"fmt"
	"go/token"
	"log"
	"os"
	"strings"

	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/ssa"

	"github.com/goplus/llgo/cl"
	llssa "github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/x/clang"
)

type Mode int

const (
	ModeBuild Mode = iota
	ModeInstall
)

// -----------------------------------------------------------------------------

const (
	loadFiles   = packages.NeedName | packages.NeedFiles | packages.NeedCompiledGoFiles
	loadImports = loadFiles | packages.NeedImports
	loadTypes   = loadImports | packages.NeedTypes | packages.NeedTypesSizes
	loadSyntax  = loadTypes | packages.NeedSyntax | packages.NeedTypesInfo
)

func Do(args []string, mode Mode) {
	flags, patterns := parseArgs(args)
	cfg := &packages.Config{
		Mode:       loadSyntax | packages.NeedExportFile,
		BuildFlags: flags,
	}

	if patterns == nil {
		patterns = []string{"."}
	}
	initial, err := packages.Load(cfg, patterns...)
	check(err)

	// Create SSA-form program representation.
	_, pkgs, errPkgs := allPkgs(initial, ssa.SanityCheckFunctions)
	for _, errPkg := range errPkgs {
		log.Println("cannot build SSA for package", errPkg)
	}

	llssa.Initialize(llssa.InitAll)
	// llssa.SetDebug(llssa.DbgFlagAll)
	// cl.SetDebug(cl.DbgFlagAll)

	prog := llssa.NewProgram(nil)
	llFiles := make([]string, 0, len(pkgs))
	for _, pkg := range pkgs {
		pkg.SSA.Build()
		llFiles = buildPkg(llFiles, prog, pkg, mode)
	}
	if mode == ModeInstall {
		fmt.Fprintln(os.Stderr, "clang", llFiles)
		err = clang.New("").Exec(llFiles...)
		check(err)
	}
}

func buildPkg(llFiles []string, prog llssa.Program, pkg aPackage, mode Mode) []string {
	pkgPath := pkg.PkgPath
	fmt.Fprintln(os.Stderr, pkgPath)
	if pkgPath == "unsafe" { // TODO(xsw): remove this special case
		return llFiles
	}
	ret, err := cl.NewPackage(prog, pkg.SSA, pkg.Syntax)
	check(err)
	if mode == ModeInstall {
		file := pkg.ExportFile + ".ll"
		os.WriteFile(file, []byte(ret.String()), 0644)
		llFiles = append(llFiles, file)
	}
	return llFiles
}

type aPackage struct {
	*packages.Package
	SSA *ssa.Package
}

func allPkgs(initial []*packages.Package, mode ssa.BuilderMode) (prog *ssa.Program, all []aPackage, errs []*packages.Package) {
	var fset *token.FileSet
	if len(initial) > 0 {
		fset = initial[0].Fset
	}

	prog = ssa.NewProgram(fset, mode)
	packages.Visit(initial, nil, func(p *packages.Package) {
		if p.Types != nil && !p.IllTyped {
			ssaPkg := prog.CreatePackage(p.Types, p.Syntax, p.TypesInfo, true)
			all = append(all, aPackage{p, ssaPkg})
		} else {
			errs = append(errs, p)
		}
	})
	return
}

func parseArgs(args []string) (flags, patterns []string) {
	for i, arg := range args {
		if !strings.HasPrefix(arg, "-") {
			return args[:i], args[i:]
		}
	}
	return args, nil
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

// -----------------------------------------------------------------------------
