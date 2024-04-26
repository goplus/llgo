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
	"os/exec"
	"path"
	"path/filepath"
	"runtime"
	"strings"

	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/ssa"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/x/clang"

	llssa "github.com/goplus/llgo/ssa"
)

type Mode int

const (
	ModeBuild Mode = iota
	ModeInstall
	ModeRun
)

func needLLFile(mode Mode) bool {
	return mode != ModeBuild
}

type Config struct {
	BinPath string
	AppExt  string // ".exe" on Windows, empty on Unix
	RunArgs []string
	Mode    Mode
}

func NewDefaultConf(mode Mode) *Config {
	bin := os.Getenv("GOBIN")
	if bin == "" {
		bin = filepath.Join(runtime.GOROOT(), "bin")
	}
	conf := &Config{
		BinPath: bin,
		Mode:    mode,
		AppExt:  DefaultAppExt(),
	}
	return conf
}

func DefaultAppExt() string {
	if runtime.GOOS == "windows" {
		return ".exe"
	}
	return ""
}

// -----------------------------------------------------------------------------

const (
	loadFiles   = packages.NeedName | packages.NeedFiles | packages.NeedCompiledGoFiles
	loadImports = loadFiles | packages.NeedImports
	loadTypes   = loadImports | packages.NeedTypes | packages.NeedTypesSizes
	loadSyntax  = loadTypes | packages.NeedSyntax | packages.NeedTypesInfo
)

func Do(args []string, conf *Config) {
	flags, patterns, verbose := parseArgs(args)
	cfg := &packages.Config{
		Mode:       loadSyntax | packages.NeedDeps | packages.NeedExportFile,
		BuildFlags: flags,
	}

	if patterns == nil {
		patterns = []string{"."}
	}
	initial, err := packages.Load(cfg, patterns...)
	check(err)

	// Create SSA-form program representation.
	ssaProg, pkgs, errPkgs := allPkgs(initial, ssa.SanityCheckFunctions)
	ssaProg.Build()
	for _, errPkg := range errPkgs {
		log.Println("cannot build SSA for package", errPkg)
	}

	llssa.Initialize(llssa.InitAll)
	if verbose {
		llssa.SetDebug(llssa.DbgFlagAll)
		cl.SetDebug(cl.DbgFlagAll)
	}

	prog := llssa.NewProgram(nil)
	mode := conf.Mode
	if mode == ModeBuild && len(initial) == 1 {
		mode = ModeInstall
	}
	for _, pkg := range pkgs {
		buildPkg(prog, pkg, mode)
	}

	if mode != ModeBuild {
		for _, pkg := range initial {
			if pkg.Name == "main" {
				linkMainPkg(pkg, conf, mode)
			}
		}
	}
}

func linkMainPkg(pkg *packages.Package, conf *Config, mode Mode) {
	pkgPath := pkg.PkgPath
	name := path.Base(pkgPath)
	app := filepath.Join(conf.BinPath, name+conf.AppExt)
	const N = 3
	args := make([]string, N, len(pkg.Imports)+(N+1))
	args[0] = "-o"
	args[1] = app
	args[2] = "-Wno-override-module"
	packages.Visit([]*packages.Package{pkg}, nil, func(p *packages.Package) {
		if p.PkgPath != "unsafe" { // TODO(xsw): maybe can remove this special case
			args = append(args, p.ExportFile+".ll")
		}
	})

	// TODO(xsw): show work
	// fmt.Fprintln(os.Stderr, "clang", args)
	fmt.Fprintln(os.Stderr, "#", pkgPath)
	err := clang.New("").Exec(args...)
	check(err)

	if mode == ModeRun {
		cmd := exec.Command(app, conf.RunArgs...)
		cmd.Stdin = os.Stdin
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		cmd.Run()
	}
}

func buildPkg(prog llssa.Program, aPkg aPackage, mode Mode) {
	pkg := aPkg.Package
	pkgPath := pkg.PkgPath
	if mode != ModeRun {
		fmt.Fprintln(os.Stderr, pkgPath)
	}
	if pkgPath == "unsafe" { // TODO(xsw): maybe can remove this special case
		return
	}
	ret, err := cl.NewPackage(prog, aPkg.SSA, pkg.Syntax)
	check(err)
	if needLLFile(mode) {
		file := pkg.ExportFile + ".ll"
		os.WriteFile(file, []byte(ret.String()), 0644)
	}
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

func parseArgs(args []string) (flags, patterns []string, verbose bool) {
	for i, arg := range args {
		if !strings.HasPrefix(arg, "-") {
			flags, patterns = args[:i], args[i:]
			return
		}
		if arg == "-v" {
			verbose = true
		}
	}
	flags = args
	return
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

// -----------------------------------------------------------------------------
