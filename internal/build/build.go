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
	"archive/zip"
	"fmt"
	"go/token"
	"go/types"
	"io"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"runtime"
	"strings"

	"golang.org/x/tools/go/packages"
	"golang.org/x/tools/go/ssa"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/xtool/clang"

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

	var needRt bool
	var rt []*packages.Package
	prog := llssa.NewProgram(nil)
	load := func() []*packages.Package {
		if rt == nil {
			var err error
			rt, err = packages.Load(cfg, llssa.PkgRuntime, llssa.PkgPython)
			check(err)
		}
		return rt
	}
	prog.SetRuntime(func() *types.Package {
		needRt = true
		rt := load()
		return rt[0].Types
	})
	prog.SetPython(func() *types.Package {
		rt := load()
		return rt[1].Types
	})

	pkgs := buildAllPkgs(prog, initial, mode, verbose)

	var runtimeFiles []string
	if needRt {
		runtimeFiles = allLinkFiles(rt)
		// build runtime deps
		deps := runtimeDeps(rt, pkgs)
		if len(deps) > 0 {
			deps, err := packages.Load(cfg, deps...)
			check(err)
			dpkgs := buildAllPkgs(prog, deps, mode, verbose)
			for _, pkg := range dpkgs {
				runtimeFiles = append(runtimeFiles, pkg.ExportFile)
			}
		}
	}
	if mode != ModeBuild {
		nErr := 0
		for _, pkg := range initial {
			if pkg.Name == "main" {
				nErr += linkMainPkg(pkg, pkgs, runtimeFiles, conf, mode, verbose)
			}
		}
		if nErr > 0 {
			os.Exit(nErr)
		}
	}
}

func runtimeDeps(rt []*packages.Package, pkgs []*aPackage) (deps []string) {
	m := make(map[string]bool)
	for _, pkg := range pkgs {
		m[pkg.PkgPath] = true
	}
	m["unsafe"] = true
	for _, r := range rt {
		for dep, _ := range r.Imports {
			if m[dep] || strings.HasPrefix(dep, llgoModPath) {
				continue
			}
			m[dep] = true
			deps = append(deps, dep)
		}
	}
	return
}

func setNeedRuntimeOrPyInit(pkg *packages.Package, needRuntime, needPyInit bool) {
	v := []byte{'0', '0'}
	if needRuntime {
		v[0] = '1'
	}
	if needPyInit {
		v[1] = '1'
	}
	pkg.ID = string(v) // just use pkg.ID to mark it needs runtime
}

func isNeedRuntimeOrPyInit(pkg *packages.Package) (needRuntime, needPyInit bool) {
	if len(pkg.ID) == 2 {
		return pkg.ID[0] == '1', pkg.ID[1] == '1'
	}
	return
}

func buildAllPkgs(prog llssa.Program, initial []*packages.Package, mode Mode, verbose bool) (pkgs []*aPackage) {
	// Create SSA-form program representation.
	ssaProg, pkgs, errPkgs := allPkgs(initial, ssa.SanityCheckFunctions)
	ssaProg.Build()
	for _, errPkg := range errPkgs {
		for _, err := range errPkg.Errors {
			fmt.Fprintln(os.Stderr, err)
		}
		fmt.Fprintln(os.Stderr, "cannot build SSA for package", errPkg)
	}
	for _, aPkg := range pkgs {
		pkg := aPkg.Package
		switch kind, param := cl.PkgKindOf(pkg.Types); kind {
		case cl.PkgDeclOnly:
			// skip packages that only contain declarations
			// and set no export file
			pkg.ExportFile = ""
		case cl.PkgLinkIR, cl.PkgLinkExtern, cl.PkgPyModule:
			pkgPath := pkg.PkgPath
			if isPkgInLLGo(pkgPath) {
				pkg.ExportFile = concatPkgLinkFiles(pkgPath)
			} else {
				// panic("todo")
				// TODO(xsw): support packages out of llgo
				pkg.ExportFile = ""
			}
			if kind == cl.PkgLinkExtern { // need to be linked with external library
				linkFile := os.ExpandEnv(strings.TrimSpace(param))
				dir, lib := filepath.Split(linkFile)
				command := " -l " + lib
				if dir != "" {
					command += " -L " + dir[:len(dir)-1]
				}
				if isSingleLinkFile(pkg.ExportFile) {
					pkg.ExportFile = command + " " + pkg.ExportFile
				} else {
					pkg.ExportFile = command + pkg.ExportFile
				}
			}
		default:
			buildPkg(prog, aPkg, mode, verbose)
			setNeedRuntimeOrPyInit(pkg, prog.NeedRuntime, prog.NeedPyInit)
		}
	}
	return
}

func linkMainPkg(pkg *packages.Package, pkgs []*aPackage, runtimeFiles []string, conf *Config, mode Mode, verbose bool) (nErr int) {
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
	needPyInit := false
	packages.Visit([]*packages.Package{pkg}, nil, func(p *packages.Package) {
		if p.ExportFile != "" && !isRuntimePkg(p.PkgPath) { // skip packages that only contain declarations
			args = appendLinkFiles(args, p.ExportFile)
			need1, need2 := isNeedRuntimeOrPyInit(p)
			if !needRuntime {
				needRuntime = need1
			}
			if !needPyInit {
				needPyInit = need2
			}
		}
	})

	var aPkg *aPackage
	for _, v := range pkgs {
		if v.Package == pkg { // found this package
			aPkg = v
			break
		}
	}

	dirty := false
	if needRuntime && runtimeFiles != nil {
		args = append(args, runtimeFiles...)
	} else {
		dirty = true
		fn := aPkg.LPkg.FuncOf(cl.RuntimeInit)
		fn.MakeBody(1).Return()
	}
	if needPyInit {
		dirty = aPkg.LPkg.PyInit()
	}

	if dirty && needLLFile(mode) {
		lpkg := aPkg.LPkg
		os.WriteFile(pkg.ExportFile, []byte(lpkg.String()), 0644)
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
	if verbose {
		fmt.Fprintln(os.Stderr, "clang", args)
	}
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

func buildPkg(prog llssa.Program, aPkg *aPackage, mode Mode, verbose bool) {
	pkg := aPkg.Package
	pkgPath := pkg.PkgPath
	if verbose {
		fmt.Fprintln(os.Stderr, pkgPath)
	}
	if canSkipToBuild(pkgPath) {
		pkg.ExportFile = ""
		return
	}
	ret, err := cl.NewPackage(prog, aPkg.SSA, pkg.Syntax)
	check(err)
	if needLLFile(mode) {
		pkg.ExportFile += ".ll"
		os.WriteFile(pkg.ExportFile, []byte(ret.String()), 0644)
	}
	aPkg.LPkg = ret
}

func canSkipToBuild(pkgPath string) bool {
	switch pkgPath {
	case "unsafe", "runtime", "errors", "sync", "sync/atomic":
		return true
	default:
		return strings.HasPrefix(pkgPath, "internal/") ||
			strings.HasPrefix(pkgPath, "runtime/internal/")
	}
}

type aPackage struct {
	*packages.Package
	SSA  *ssa.Package
	LPkg llssa.Package
}

func allPkgs(initial []*packages.Package, mode ssa.BuilderMode) (prog *ssa.Program, all []*aPackage, errs []*packages.Package) {
	var fset *token.FileSet
	if len(initial) > 0 {
		fset = initial[0].Fset
	}

	prog = ssa.NewProgram(fset, mode)
	packages.Visit(initial, nil, func(p *packages.Package) {
		if p.Types != nil && !p.IllTyped {
			ssaPkg := prog.CreatePackage(p.Types, p.Syntax, p.TypesInfo, true)
			all = append(all, &aPackage{p, ssaPkg, nil})
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
		"-ldflags":   true,  // --ldflags 'flag list': arguments to pass on each go tool link invocation
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
	if pos := strings.IndexByte(arg, '='); pos > 0 {
		if verbose != nil && arg == "-v=true" {
			*verbose = true
		}
	} else if hasarg, ok := swflags[arg]; ok {
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
	packages.Visit(rt, nil, func(p *packages.Package) {
		pkgPath := p.PkgPath
		if isRuntimePkg(pkgPath) {
			llgoPkgLinkFiles(pkgPath, func(linkFile string) {
				outFiles = append(outFiles, linkFile)
			})
		}
	})
	return
}

const (
	pkgAbi     = llgoModPath + "/internal/abi"
	pkgRuntime = llgoModPath + "/internal/runtime"
)

func isRuntimePkg(pkgPath string) bool {
	switch pkgPath {
	case pkgRuntime, pkgAbi:
		return true
	}
	return false
}

var (
	rootDir string
)

func llgoRoot() string {
	if rootDir == "" {
		root := os.Getenv("LLGOROOT")
		if root == "" {
			panic("todo: LLGOROOT not set")
		}
		rootDir, _ = filepath.Abs(root)
	}
	return rootDir
}

func appendLinkFiles(args []string, file string) []string {
	if isSingleLinkFile(file) {
		return append(args, file)
	}
	return append(args, strings.Split(file[1:], " ")...)
}

func isSingleLinkFile(ret string) bool {
	return len(ret) > 0 && ret[0] != ' '
}

func concatPkgLinkFiles(pkgPath string) string {
	var b strings.Builder
	var ret string
	var n int
	llgoPkgLinkFiles(pkgPath, func(linkFile string) {
		if n == 0 {
			ret = linkFile
		} else {
			b.WriteByte(' ')
			b.WriteString(linkFile)
		}
		n++
	})
	if n > 1 {
		b.WriteByte(' ')
		b.WriteString(ret)
		return b.String()
	}
	return ret
}

func llgoPkgLinkFiles(pkgPath string, procFile func(linkFile string)) {
	dir := llgoRoot() + pkgPath[len(llgoModPath):] + "/"
	llFile := dir + "llgo_autogen.ll"
	llaFile := llFile + "a"
	zipf, err := zip.OpenReader(llaFile)
	if err != nil {
		procFile(llFile)
		return
	}
	defer zipf.Close()

	for _, f := range zipf.File {
		procFile(dir + f.Name)
	}
	if _, err := os.Stat(llFile); os.IsNotExist(err) {
		for _, f := range zipf.File {
			decodeFile(dir+f.Name, f)
		}
	}
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

/*
func llgoPkgLinkFile(pkgPath string) string {
	// if kind == cl.PkgLinkBitCode {
	//	return filepath.Join(llgoRoot()+pkgPath[len(llgoModPath):], "llgo_autogen.bc")
	// }
	llFile := filepath.Join(llgoRoot()+pkgPath[len(llgoModPath):], "llgo_autogen.ll")
	if _, err := os.Stat(llFile); os.IsNotExist(err) {
		decodeLinkFile(llFile)
	}
	return llFile
}

// *.ll => *.lla
func decodeLinkFile(llFile string) {
	zipFile := llFile + "a"
	zipf, err := zip.OpenReader(zipFile)
	if err != nil {
		return
	}
	defer zipf.Close()
	f, err := zipf.Open("llgo_autogen.ll")
	if err != nil {
		return
	}
	defer f.Close()
	data, err := io.ReadAll(f)
	if err == nil {
		os.WriteFile(llFile, data, 0644)
	}
}
*/

func decodeFile(outFile string, zipf *zip.File) (err error) {
	f, err := zipf.Open()
	if err != nil {
		return
	}
	defer f.Close()
	data, err := io.ReadAll(f)
	if err == nil {
		err = os.WriteFile(outFile, data, 0644)
	}
	return
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

// -----------------------------------------------------------------------------
