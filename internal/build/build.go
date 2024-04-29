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
	"go/types"
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
	AppExt  string   // ".exe" on Windows, empty on Unix
	OutFile string   // only valid for ModeBuild when len(pkgs) == 1
	RunArgs []string // only valid for ModeRun
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
	flags, patterns, verbose := ParseArgs(args, buildFlags)
	cfg := &packages.Config{
		Mode:       loadSyntax | packages.NeedDeps | packages.NeedModule | packages.NeedExportFile,
		BuildFlags: flags,
	}

	if patterns == nil {
		patterns = []string{"."}
	}
	initial, err := packages.Load(cfg, patterns...)
	check(err)

	mode := conf.Mode
	if len(initial) == 1 && len(initial[0].CompiledGoFiles) > 0 {
		if mode == ModeBuild {
			mode = ModeInstall
		}
	} else if mode == ModeRun {
		if len(initial) > 1 {
			fmt.Fprintln(os.Stderr, "cannot run multiple packages")
		} else {
			fmt.Fprintln(os.Stderr, "no Go files in matched packages")
		}
		return
	}

	llssa.Initialize(llssa.InitAll)
	if verbose {
		llssa.SetDebug(llssa.DbgFlagAll)
		cl.SetDebug(cl.DbgFlagAll)
	}

	var rt []*packages.Package
	prog := llssa.NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		rt, err = packages.Load(cfg, llssa.PkgRuntime)
		check(err)
		return rt[0].Types
	})

	buildAllPkgs(prog, initial, mode, verbose)

	var runtimeFiles []string
	if rt != nil {
		runtimeFiles = allLinkFiles(rt)
	}
	if mode != ModeBuild {
		nErr := 0
		for _, pkg := range initial {
			if pkg.Name == "main" {
				nErr += linkMainPkg(pkg, runtimeFiles, conf, mode, verbose)
			}
		}
		if nErr > 0 {
			fmt.Fprintf(os.Stderr, "%d errors occurred\n", nErr)
			os.Exit(1)
		}
	}
}

func setNeedRuntime(pkg *packages.Package) {
	pkg.ID = "" // just use pkg.Module to mark it needs runtime
}

func isNeedRuntime(pkg *packages.Package) bool {
	return pkg.ID == ""
}

func buildAllPkgs(prog llssa.Program, initial []*packages.Package, mode Mode, verbose bool) {
	// Create SSA-form program representation.
	ssaProg, pkgs, errPkgs := allPkgs(initial, ssa.SanityCheckFunctions)
	ssaProg.Build()
	for _, errPkg := range errPkgs {
		fmt.Fprintln(os.Stderr, "cannot build SSA for package", errPkg)
	}
	for _, pkg := range pkgs {
		buildPkg(prog, pkg, mode, verbose)
		if prog.NeedRuntime() {
			setNeedRuntime(pkg.Package)
		}
	}
}

func linkMainPkg(pkg *packages.Package, runtimeFiles []string, conf *Config, mode Mode, verbose bool) (nErr int) {
	pkgPath := pkg.PkgPath
	name := path.Base(pkgPath)
	app := conf.OutFile
	if app == "" {
		app = filepath.Join(conf.BinPath, name+conf.AppExt)
	}
	const N = 3
	args := make([]string, N, len(pkg.Imports)+len(runtimeFiles)+(N+1))
	args[0] = "-o"
	args[1] = app
	args[2] = "-Wno-override-module"
	needRuntime := false
	packages.Visit([]*packages.Package{pkg}, nil, func(p *packages.Package) {
		if p.ExportFile != "" { // skip packages that only contain declarations
			args = append(args, p.ExportFile+".ll")
			if !needRuntime {
				needRuntime = isNeedRuntime(p)
			}
		}
	})
	if needRuntime && runtimeFiles != nil {
		args = append(args, runtimeFiles...)
	}

	if verbose || mode != ModeRun {
		fmt.Fprintln(os.Stderr, "#", pkgPath)
	}
	defer func() {
		if e := recover(); e != nil {
			nErr = 1
		}
	}()

	// TODO(xsw): show work
	// fmt.Fprintln(os.Stderr, "clang", args)
	err := clang.New("").Exec(args...)
	check(err)

	if mode == ModeRun {
		cmd := exec.Command(app, conf.RunArgs...)
		cmd.Stdin = os.Stdin
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		cmd.Run()
	}
	return
}

func buildPkg(prog llssa.Program, aPkg aPackage, mode Mode, verbose bool) {
	pkg := aPkg.Package
	if cl.PkgKindOf(pkg.Types) == cl.PkgDeclOnly {
		// skip packages that only contain declarations
		// and set no export file
		pkg.ExportFile = ""
		return
	}
	pkgPath := pkg.PkgPath
	if verbose {
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

var (
	// TODO(xsw): complete build flags
	buildFlags = map[string]bool{
		"-C":         true,  // -C dir: Change to dir before running the command
		"-a":         false, // -a: force rebuilding of packages that are already up-to-date
		"-n":         false, // -n: print the commands but do not run them
		"-p":         true,  // -p n: the number of programs to run in parallel
		"-race":      false, // -race: enable data race detection
		"-cover":     false, // -cover: enable coverage analysis
		"-covermode": true,  // -covermode mode: set the mode for coverage analysis
		"-v":         false, // -v: print the names of packages as they are compiled
		"-work":      false, // -work: print the name of the temporary work directory and do not delete it when exiting
		"-x":         false, // -x: print the commands
		"-tags":      true,  // -tags 'tag,list': a space-separated list of build tags to consider satisfied during the build
		"-pkgdir":    true,  // -pkgdir dir: install and load all packages from dir instead of the usual locations
	}
)

func ParseArgs(args []string, swflags map[string]bool) (flags, patterns []string, verbose bool) {
	n := len(args)
	for i := 0; i < n; i++ {
		arg := args[i]
		if strings.HasPrefix(arg, "-") {
			checkFlag(arg, &i, &verbose, swflags)
		} else {
			flags, patterns = args[:i], args[i:]
			return
		}
	}
	flags = args
	return
}

func SkipFlagArgs(args []string) int {
	n := len(args)
	for i := 0; i < n; i++ {
		arg := args[i]
		if strings.HasPrefix(arg, "-") {
			checkFlag(arg, &i, nil, buildFlags)
		} else {
			return i
		}
	}
	return -1
}

func checkFlag(arg string, i *int, verbose *bool, swflags map[string]bool) {
	if hasarg, ok := swflags[arg]; ok {
		if hasarg {
			*i++
		} else if verbose != nil && arg == "-v" {
			*verbose = true
		}
	} else {
		panic("unknown flag: " + arg)
	}
}

func allLinkFiles(rt []*packages.Package) (outFiles []string) {
	outFiles = make([]string, 0, len(rt))
	root := rootLLGo(rt[0])
	packages.Visit(rt, nil, func(p *packages.Package) {
		if hasLinkFile(p) {
			outFile := filepath.Join(root+p.PkgPath[len(llgoModPath):], "llgo_autogen.ll")
			outFiles = append(outFiles, outFile)
		}
	})
	return
}

func hasLinkFile(pkg *packages.Package) bool {
	if isPkgInLLGo(pkg.PkgPath) {
		return cl.PkgKindOf(pkg.Types) != cl.PkgDeclOnly
	}
	return false
}

// TODO(xsw): llgo root dir
func rootLLGo(runtime *packages.Package) string {
	return runtime.Module.Dir
}

const (
	llgoModPath = "github.com/goplus/llgo"
)

func isPkgInLLGo(pkgPath string) bool {
	return isPkgInMod(pkgPath, llgoModPath)
}

func isPkgInMod(pkgPath, modPath string) bool {
	if strings.HasPrefix(pkgPath, modPath) {
		suffix := pkgPath[len(modPath):]
		return suffix == "" || suffix[0] == '/'
	}
	return false
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

// -----------------------------------------------------------------------------
