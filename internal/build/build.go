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
	"debug/macho"
	"fmt"
	"go/ast"
	"go/build"
	"go/constant"
	"go/token"
	"go/types"
	"log"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"runtime"
	"strings"
	"unsafe"

	"golang.org/x/tools/go/ssa"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/internal/packages"
	"github.com/goplus/llgo/internal/typepatch"
	"github.com/goplus/llgo/ssa/abi"
	"github.com/goplus/llgo/xtool/env"
	"github.com/goplus/llgo/xtool/env/llvm"

	llssa "github.com/goplus/llgo/ssa"
	clangCheck "github.com/goplus/llgo/xtool/clang/check"
)

type Mode int

const (
	ModeBuild Mode = iota
	ModeInstall
	ModeRun
	ModeCmpTest
)

const (
	debugBuild = packages.DebugPackagesLoad
)

func needLLFile(mode Mode) bool {
	return mode != ModeBuild
}

type Config struct {
	BinPath   string
	AppExt    string   // ".exe" on Windows, empty on Unix
	OutFile   string   // only valid for ModeBuild when len(pkgs) == 1
	RunArgs   []string // only valid for ModeRun
	Mode      Mode
	GenExpect bool // only valid for ModeCmpTest
}

func NewDefaultConf(mode Mode) *Config {
	bin := os.Getenv("GOBIN")
	if bin == "" {
		gopath, err := envGOPATH()
		if err != nil {
			panic(fmt.Errorf("cannot get GOPATH: %v", err))
		}
		bin = filepath.Join(gopath, "bin")
	}
	if err := os.MkdirAll(bin, 0755); err != nil {
		panic(fmt.Errorf("cannot create bin directory: %v", err))
	}
	conf := &Config{
		BinPath: bin,
		Mode:    mode,
		AppExt:  DefaultAppExt(),
	}
	return conf
}

func envGOPATH() (string, error) {
	if gopath := os.Getenv("GOPATH"); gopath != "" {
		return gopath, nil
	}
	home, err := os.UserHomeDir()
	if err != nil {
		return "", err
	}
	return filepath.Join(home, "go"), nil
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
		Fset:       token.NewFileSet(),
	}

	if len(overlayFiles) > 0 {
		cfg.Overlay = make(map[string][]byte)
		for file, src := range overlayFiles {
			overlay := unsafe.Slice(unsafe.StringData(src), len(src))
			cfg.Overlay[filepath.Join(runtime.GOROOT(), "src", file)] = overlay
		}
	}

	llssa.Initialize(llssa.InitAll)

	target := &llssa.Target{
		GOOS:   build.Default.GOOS,
		GOARCH: build.Default.GOARCH,
	}

	prog := llssa.NewProgram(target)
	sizes := prog.TypeSizes
	dedup := packages.NewDeduper()
	dedup.SetPreload(func(pkg *types.Package, files []*ast.File) {
		if canSkipToBuild(pkg.Path()) {
			return
		}
		cl.ParsePkgSyntax(prog, pkg, files)
	})

	if patterns == nil {
		patterns = []string{"."}
	}
	initial, err := packages.LoadEx(dedup, sizes, cfg, patterns...)
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

	altPkgPaths := altPkgs(initial, llssa.PkgRuntime)
	altPkgs, err := packages.LoadEx(dedup, sizes, cfg, altPkgPaths...)
	check(err)

	noRt := 1
	prog.SetRuntime(func() *types.Package {
		noRt = 0
		return altPkgs[0].Types
	})
	prog.SetPython(func() *types.Package {
		return dedup.Check(llssa.PkgPython).Types
	})

	progSSA := ssa.NewProgram(initial[0].Fset, ssaBuildMode)
	patches := make(cl.Patches, len(altPkgPaths))
	altSSAPkgs(progSSA, patches, altPkgs[1:], verbose)

	env := llvm.New("")
	os.Setenv("PATH", env.BinDir()+":"+os.Getenv("PATH")) // TODO(xsw): check windows

	ctx := &context{env, progSSA, prog, dedup, patches, make(map[string]none), initial, mode, 0}
	pkgs := buildAllPkgs(ctx, initial, verbose)

	var llFiles []string
	dpkg := buildAllPkgs(ctx, altPkgs[noRt:], verbose)
	for _, pkg := range dpkg {
		if !strings.HasSuffix(pkg.ExportFile, ".ll") {
			continue
		}
		llFiles = append(llFiles, pkg.ExportFile)
	}
	if mode != ModeBuild {
		nErr := 0
		for _, pkg := range initial {
			if pkg.Name == "main" {
				nErr += linkMainPkg(ctx, pkg, pkgs, llFiles, conf, mode, verbose)
			}
		}
		if nErr > 0 {
			os.Exit(nErr)
		}
	}
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

const (
	ssaBuildMode = ssa.SanityCheckFunctions | ssa.InstantiateGenerics
)

type context struct {
	env     *llvm.Env
	progSSA *ssa.Program
	prog    llssa.Program
	dedup   packages.Deduper
	patches cl.Patches
	built   map[string]none
	initial []*packages.Package
	mode    Mode
	nLibdir int
}

func buildAllPkgs(ctx *context, initial []*packages.Package, verbose bool) (pkgs []*aPackage) {
	prog := ctx.prog
	pkgs, errPkgs := allPkgs(ctx, initial, verbose)
	for _, errPkg := range errPkgs {
		for _, err := range errPkg.Errors {
			fmt.Fprintln(os.Stderr, err)
		}
		fmt.Fprintln(os.Stderr, "cannot build SSA for package", errPkg)
	}
	built := ctx.built
	for _, aPkg := range pkgs {
		pkg := aPkg.Package
		if _, ok := built[pkg.PkgPath]; ok {
			pkg.ExportFile = ""
			continue
		}
		built[pkg.PkgPath] = none{}
		switch kind, param := cl.PkgKindOf(pkg.Types); kind {
		case cl.PkgDeclOnly:
			// skip packages that only contain declarations
			// and set no export file
			pkg.ExportFile = ""
		case cl.PkgLinkIR, cl.PkgLinkExtern, cl.PkgPyModule:
			if len(pkg.GoFiles) > 0 {
				buildPkg(ctx, aPkg, verbose)
				pkg.ExportFile = " " + concatPkgLinkFiles(ctx, pkg, verbose) + " " + pkg.ExportFile
			} else {
				// panic("todo")
				// TODO(xsw): support packages out of llgo
				pkg.ExportFile = ""
			}
			if kind == cl.PkgLinkExtern {
				// need to be linked with external library
				// format: ';' separated alternative link methods. e.g.
				//   link: $LLGO_LIB_PYTHON; $(pkg-config --libs python3-embed); -lpython3
				expd := ""
				altParts := strings.Split(param, ";")
				for _, param := range altParts {
					param = strings.TrimSpace(param)
					if strings.ContainsRune(param, '$') {
						expd = env.ExpandEnv(param)
						ctx.nLibdir++
					} else {
						expd = param
					}
					if len(expd) > 0 {
						break
					}
				}
				if expd == "" {
					panic(fmt.Sprintf("'%s' cannot locate the external library", param))
				}

				command := ""
				if expd[0] == '-' {
					command += " " + expd
				} else {
					linkFile := expd
					dir, lib := filepath.Split(linkFile)
					command = " -l " + lib
					if dir != "" {
						command += " -L " + dir[:len(dir)-1]
						ctx.nLibdir++
					}
				}
				if err := clangCheck.CheckLinkArgs(command); err != nil {
					panic(fmt.Sprintf("test link args '%s' failed\n\texpanded to: %s\n\tresolved to: %v\n\terror: %v", param, expd, command, err))
				}
				if isSingleLinkFile(pkg.ExportFile) {
					pkg.ExportFile = command + " " + pkg.ExportFile
				} else {
					pkg.ExportFile = command + pkg.ExportFile
				}
			}
		default:
			buildPkg(ctx, aPkg, verbose)
			setNeedRuntimeOrPyInit(pkg, prog.NeedRuntime, prog.NeedPyInit)
		}
	}
	return
}

func linkMainPkg(ctx *context, pkg *packages.Package, pkgs []*aPackage, llFiles []string, conf *Config, mode Mode, verbose bool) (nErr int) {
	pkgPath := pkg.PkgPath
	name := path.Base(pkgPath)
	app := conf.OutFile
	if app == "" {
		app = filepath.Join(conf.BinPath, name+conf.AppExt)
	}
	args := make([]string, 0, len(pkg.Imports)+len(llFiles)+16)
	args = append(
		args,
		"-o", app,
		"-fuse-ld=lld",
		"-Wno-override-module",
		// "-O2", // FIXME: This will cause TestFinalizer in _test/bdwgc.go to fail on macOS.
	)
	switch runtime.GOOS {
	case "darwin": // ld64.lld (macOS)
		args = append(
			args,
			"-rpath", "@loader_path",
			"-rpath", "@loader_path/../lib",
			"-Xlinker", "-dead_strip",
		)
	case "windows": // lld-link (Windows)
		// TODO: Add options for Windows.
	default: // ld.lld (Unix), wasm-ld (WebAssembly)
		args = append(
			args,
			"-rpath", "$ORIGIN",
			"-rpath", "$ORIGIN/../lib",
			"-fdata-sections",
			"-ffunction-sections",
			"-Xlinker", "--gc-sections",
			"-lm",
			"-latomic",
			"-lpthread", // libpthread is built-in since glibc 2.34 (2021-08-01); we need to support earlier versions.
		)
	}
	needRuntime := false
	needPyInit := false
	packages.Visit([]*packages.Package{pkg}, nil, func(p *packages.Package) {
		if p.ExportFile != "" { // skip packages that only contain declarations
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
	if needRuntime {
		for _, file := range llFiles {
			args = appendLinkFiles(args, file)
		}
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

	// add rpath and find libs
	exargs := make([]string, 0, ctx.nLibdir<<1)
	libs := make([]string, 0, ctx.nLibdir*3)
	for _, arg := range args {
		if strings.HasPrefix(arg, "-L") {
			exargs = append(exargs, "-rpath", arg[2:])
		} else if strings.HasPrefix(arg, "-l") {
			libs = append(libs, arg[2:])
		}
	}
	args = append(args, exargs...)

	// TODO(xsw): show work
	if verbose {
		fmt.Fprintln(os.Stderr, "clang", args)
	}
	err := ctx.env.Clang().Exec(args...)
	check(err)

	if runtime.GOOS == "darwin" {
		dylibDeps := make([]string, 0, len(libs))
		for _, lib := range libs {
			dylibDep := findDylibDep(app, lib)
			if dylibDep != "" {
				dylibDeps = append(dylibDeps, dylibDep)
			}
		}
		err := ctx.env.InstallNameTool().ChangeToRpath(app, dylibDeps...)
		check(err)
	}

	switch mode {
	case ModeRun:
		cmd := exec.Command(app, conf.RunArgs...)
		cmd.Stdin = os.Stdin
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		cmd.Run()
		if s := cmd.ProcessState; s != nil {
			os.Exit(s.ExitCode())
		}
	case ModeCmpTest:
		cmpTest(filepath.Dir(pkg.GoFiles[0]), pkgPath, app, conf.GenExpect, conf.RunArgs)
	}
	return
}

func buildPkg(ctx *context, aPkg *aPackage, verbose bool) {
	pkg := aPkg.Package
	pkgPath := pkg.PkgPath
	if debugBuild || verbose {
		fmt.Fprintln(os.Stderr, pkgPath)
	}
	if canSkipToBuild(pkgPath) {
		pkg.ExportFile = ""
		return
	}
	var syntax = pkg.Syntax
	if altPkg := aPkg.AltPkg; altPkg != nil {
		syntax = append(syntax, altPkg.Syntax...)
	}
	showDetail := verbose && pkgExists(ctx.initial, pkg)
	if showDetail {
		llssa.SetDebug(llssa.DbgFlagAll)
		cl.SetDebug(cl.DbgFlagAll)
	}

	ret, err := cl.NewPackageEx(ctx.prog, ctx.patches, aPkg.SSA, syntax)
	if showDetail {
		llssa.SetDebug(0)
		cl.SetDebug(0)
	}
	check(err)
	if needLLFile(ctx.mode) {
		pkg.ExportFile += ".ll"
		os.WriteFile(pkg.ExportFile, []byte(ret.String()), 0644)
		if debugBuild || verbose {
			fmt.Fprintf(os.Stderr, "==> Export %s: %s\n", aPkg.PkgPath, pkg.ExportFile)
		}
	}
	aPkg.LPkg = ret
}

const (
	altPkgPathPrefix = abi.PatchPathPrefix
)

func altPkgs(initial []*packages.Package, alts ...string) []string {
	packages.Visit(initial, nil, func(p *packages.Package) {
		if p.Types != nil && !p.IllTyped {
			if _, ok := hasAltPkg[p.PkgPath]; ok {
				alts = append(alts, altPkgPathPrefix+p.PkgPath)
			}
		}
	})
	return alts
}

func altSSAPkgs(prog *ssa.Program, patches cl.Patches, alts []*packages.Package, verbose bool) {
	packages.Visit(alts, nil, func(p *packages.Package) {
		if typs := p.Types; typs != nil && !p.IllTyped {
			if debugBuild || verbose {
				log.Println("==> BuildSSA", p.PkgPath)
			}
			pkgSSA := prog.CreatePackage(typs, p.Syntax, p.TypesInfo, true)
			if strings.HasPrefix(p.PkgPath, altPkgPathPrefix) {
				path := p.PkgPath[len(altPkgPathPrefix):]
				patches[path] = cl.Patch{Alt: pkgSSA, Types: typepatch.Clone(typs)}
				if debugBuild || verbose {
					log.Println("==> Patching", path)
				}
			}
		}
	})
	prog.Build()
}

type aPackage struct {
	*packages.Package
	SSA    *ssa.Package
	AltPkg *packages.Cached
	LPkg   llssa.Package
}

func allPkgs(ctx *context, initial []*packages.Package, verbose bool) (all []*aPackage, errs []*packages.Package) {
	prog := ctx.progSSA
	built := ctx.built
	packages.Visit(initial, nil, func(p *packages.Package) {
		if p.Types != nil && !p.IllTyped {
			pkgPath := p.PkgPath
			if _, ok := built[pkgPath]; ok || strings.HasPrefix(pkgPath, altPkgPathPrefix) {
				return
			}
			var altPkg *packages.Cached
			var ssaPkg = createSSAPkg(prog, p, verbose)
			if _, ok := hasAltPkg[pkgPath]; ok {
				if altPkg = ctx.dedup.Check(altPkgPathPrefix + pkgPath); altPkg == nil {
					return
				}
			}
			all = append(all, &aPackage{p, ssaPkg, altPkg, nil})
		} else {
			errs = append(errs, p)
		}
	})
	return
}

func createSSAPkg(prog *ssa.Program, p *packages.Package, verbose bool) *ssa.Package {
	pkgSSA := prog.ImportedPackage(p.PkgPath)
	if pkgSSA == nil {
		if debugBuild || verbose {
			log.Println("==> BuildSSA", p.PkgPath)
		}
		pkgSSA = prog.CreatePackage(p.Types, p.Syntax, p.TypesInfo, true)
		pkgSSA.Build() // TODO(xsw): build concurrently
	}
	return pkgSSA
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

func appendLinkFiles(args []string, file string) []string {
	if isSingleLinkFile(file) {
		return append(args, file)
	}
	// TODO(xsw): consider filename with spaces
	return append(args, strings.Split(file[1:], " ")...)
}

func isSingleLinkFile(ret string) bool {
	return len(ret) > 0 && ret[0] != ' '
}

func concatPkgLinkFiles(ctx *context, pkg *packages.Package, verbose bool) string {
	var b strings.Builder
	var ret string
	var n int
	llgoPkgLinkFiles(ctx, pkg, func(linkFile string) {
		if n == 0 {
			ret = linkFile
		} else {
			b.WriteByte(' ')
			b.WriteString(linkFile)
		}
		n++
	}, verbose)
	if n > 1 {
		b.WriteByte(' ')
		b.WriteString(ret)
		return b.String()
	}
	return ret
}

// const LLGoFiles = "file1; file2; ..."
func llgoPkgLinkFiles(ctx *context, pkg *packages.Package, procFile func(linkFile string), verbose bool) {
	if o := pkg.Types.Scope().Lookup("LLGoFiles"); o != nil {
		val := o.(*types.Const).Val()
		if val.Kind() == constant.String {
			clFiles(ctx, constant.StringVal(val), pkg, procFile, verbose)
		}
	}
}

// files = "file1; file2; ..."
// files = "$(pkg-config --cflags xxx): file1; file2; ..."
func clFiles(ctx *context, files string, pkg *packages.Package, procFile func(linkFile string), verbose bool) {
	dir := filepath.Dir(pkg.GoFiles[0])
	expFile := pkg.ExportFile
	args := make([]string, 0, 16)
	if strings.HasPrefix(files, "$") { // has cflags
		if pos := strings.IndexByte(files, ':'); pos > 0 {
			cflags := env.ExpandEnv(files[:pos])
			files = files[pos+1:]
			args = append(args, strings.Split(cflags, " ")...)
		}
	}
	for _, file := range strings.Split(files, ";") {
		cFile := filepath.Join(dir, strings.TrimSpace(file))
		clFile(ctx, args, cFile, expFile, procFile, verbose)
	}
}

func clFile(ctx *context, args []string, cFile, expFile string, procFile func(linkFile string), verbose bool) {
	llFile := expFile + filepath.Base(cFile) + ".ll"
	args = append(args, "-emit-llvm", "-S", "-o", llFile, "-c", cFile)
	if verbose {
		fmt.Fprintln(os.Stderr, "clang", args)
	}
	err := ctx.env.Clang().Exec(args...)
	check(err)
	procFile(llFile)
}

func pkgExists(initial []*packages.Package, pkg *packages.Package) bool {
	for _, v := range initial {
		if v == pkg {
			return true
		}
	}
	return false
}

func canSkipToBuild(pkgPath string) bool {
	if _, ok := hasAltPkg[pkgPath]; ok {
		return false
	}
	switch pkgPath {
	case "unsafe":
		return true
	default:
		return strings.HasPrefix(pkgPath, "internal/") ||
			strings.HasPrefix(pkgPath, "runtime/internal/")
	}
}

// findDylibDep finds the dylib dependency in the executable. It returns empty
// string if not found.
func findDylibDep(exe, lib string) string {
	file, err := macho.Open(exe)
	check(err)
	defer file.Close()
	for _, load := range file.Loads {
		if dylib, ok := load.(*macho.Dylib); ok {
			if strings.HasPrefix(filepath.Base(dylib.Name), fmt.Sprintf("lib%s.", lib)) {
				return dylib.Name
			}
		}
	}
	return ""
}

type none struct{}

var hasAltPkg = map[string]none{
	"crypto/hmac":              {},
	"crypto/md5":               {},
	"crypto/rand":              {},
	"crypto/sha1":              {},
	"crypto/sha256":            {},
	"crypto/sha512":            {},
	"crypto/subtle":            {},
	"fmt":                      {},
	"hash/crc32":               {},
	"internal/abi":             {},
	"internal/bytealg":         {},
	"internal/itoa":            {},
	"internal/oserror":         {},
	"internal/reflectlite":     {},
	"internal/syscall/execenv": {},
	"internal/syscall/unix":    {},
	"math":                     {},
	"math/big":                 {},
	"math/cmplx":               {},
	"math/rand":                {},
	"reflect":                  {},
	"sync":                     {},
	"sync/atomic":              {},
	"syscall":                  {},
	"time":                     {},
	"os":                       {},
	"os/exec":                  {},
	"runtime":                  {},
	"io":                       {},
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

// -----------------------------------------------------------------------------
