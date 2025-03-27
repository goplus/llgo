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
	"bytes"
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

	"golang.org/x/mod/module"
	"golang.org/x/tools/go/ssa"

	"github.com/goplus/llgo/compiler/cl"
	"github.com/goplus/llgo/compiler/internal/env"
	"github.com/goplus/llgo/compiler/internal/mockable"
	"github.com/goplus/llgo/compiler/internal/mod"
	"github.com/goplus/llgo/compiler/internal/packages"
	"github.com/goplus/llgo/compiler/internal/typepatch"
	"github.com/goplus/llgo/compiler/ssa/abi"
	xenv "github.com/goplus/llgo/xtool/env"
	"github.com/goplus/llgo/xtool/env/llvm"

	llssa "github.com/goplus/llgo/compiler/ssa"
	llruntime "github.com/goplus/llgo/runtime"
	clangCheck "github.com/goplus/llgo/xtool/clang/check"
)

type Mode int

const (
	ModeBuild Mode = iota
	ModeInstall
	ModeRun
	ModeTest
	ModeCmpTest
	ModeGen
)

const (
	debugBuild = packages.DebugPackagesLoad
)

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

func Do(args []string, conf *Config) ([]Package, error) {
	flags, patterns, verbose := ParseArgs(args, buildFlags)
	flags = append(flags, "-tags", "llgo")
	cfg := &packages.Config{
		Mode:       loadSyntax | packages.NeedDeps | packages.NeedModule | packages.NeedExportFile,
		BuildFlags: flags,
		Fset:       token.NewFileSet(),
		Tests:      conf.Mode == ModeTest,
	}
	if conf.Mode == ModeTest {
		cfg.Mode |= packages.NeedForTest
	}

	if len(llruntime.OverlayFiles) > 0 {
		cfg.Overlay = make(map[string][]byte)
		for file, src := range llruntime.OverlayFiles {
			overlay := unsafe.Slice(unsafe.StringData(src), len(src))
			cfg.Overlay[filepath.Join(env.GOROOT(), "src", file)] = overlay
		}
	}

	cl.EnableDebug(IsDbgEnabled())
	cl.EnableDbgSyms(IsDbgSymsEnabled())
	cl.EnableTrace(IsTraceEnabled())
	llssa.Initialize(llssa.InitAll)

	target := &llssa.Target{
		GOOS:   build.Default.GOOS,
		GOARCH: build.Default.GOARCH,
	}

	prog := llssa.NewProgram(target)
	sizes := prog.TypeSizes
	dedup := packages.NewDeduper()
	dedup.SetPreload(func(pkg *types.Package, files []*ast.File) {
		if llruntime.SkipToBuild(pkg.Path()) {
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
	if len(initial) > 1 {
		switch mode {
		case ModeBuild:
			if conf.OutFile != "" {
				return nil, fmt.Errorf("cannot build multiple packages with -o")
			}
		case ModeRun:
			return nil, fmt.Errorf("cannot run multiple packages")
		case ModeTest:
			newInitial := make([]*packages.Package, 0, len(initial))
			for _, pkg := range initial {
				if needLink(pkg, mode) {
					newInitial = append(newInitial, pkg)
				}
			}
			initial = newInitial
		}
	}

	altPkgPaths := altPkgs(initial, llssa.PkgRuntime)
	cfg.Dir = env.LLGoRuntimeDir()
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

	buildMode := ssaBuildMode
	if IsDbgEnabled() {
		buildMode |= ssa.GlobalDebug
	}
	if !IsOptimizeEnabled() {
		buildMode |= ssa.NaiveForm
	}
	progSSA := ssa.NewProgram(initial[0].Fset, buildMode)
	patches := make(cl.Patches, len(altPkgPaths))
	altSSAPkgs(progSSA, patches, altPkgs[1:], verbose)

	env := llvm.New("")
	os.Setenv("PATH", env.BinDir()+":"+os.Getenv("PATH")) // TODO(xsw): check windows

	output := conf.OutFile != ""
	ctx := &context{env, cfg, progSSA, prog, dedup, patches, make(map[string]none), initial, mode, 0, output, make(map[*packages.Package]bool), make(map[*packages.Package]bool), nil}
	pkgs, err := buildAllPkgs(ctx, initial, verbose)
	check(err)
	if mode == ModeGen {
		for _, pkg := range pkgs {
			if pkg.Package == initial[0] {
				return []*aPackage{pkg}, nil
			}
		}
		return nil, fmt.Errorf("initial package not found")
	}

	dpkg, err := buildAllPkgs(ctx, altPkgs[noRt:], verbose)
	check(err)
	var linkArgs []string
	for _, pkg := range dpkg {
		linkArgs = append(linkArgs, pkg.LinkArgs...)
	}

	for _, pkg := range initial {
		if needLink(pkg, mode) {
			linkMainPkg(ctx, pkg, pkgs, linkArgs, conf, mode, verbose)
		}
	}

	return dpkg, nil
}

func needLink(pkg *packages.Package, mode Mode) bool {
	if mode == ModeTest {
		return strings.HasSuffix(pkg.ID, ".test")
	}
	return pkg.Name == "main"
}

func setNeedRuntimeOrPyInit(ctx *context, pkg *packages.Package, needRuntime, needPyInit bool) {
	ctx.needRt[pkg] = needRuntime
	ctx.needPyInit[pkg] = needPyInit
}

func isNeedRuntimeOrPyInit(ctx *context, pkg *packages.Package) (needRuntime, needPyInit bool) {
	needRuntime = ctx.needRt[pkg]
	needPyInit = ctx.needPyInit[pkg]
	return
}

const (
	ssaBuildMode = ssa.SanityCheckFunctions | ssa.InstantiateGenerics
)

type context struct {
	env     *llvm.Env
	conf    *packages.Config
	progSSA *ssa.Program
	prog    llssa.Program
	dedup   packages.Deduper
	patches cl.Patches
	built   map[string]none
	initial []*packages.Package
	mode    Mode
	nLibdir int
	output  bool

	needRt     map[*packages.Package]bool
	needPyInit map[*packages.Package]bool

	xenv *xenv.Env
}

func buildAllPkgs(ctx *context, initial []*packages.Package, verbose bool) (pkgs []*aPackage, err error) {
	pkgs, errPkgs := allPkgs(ctx, initial, verbose)
	for _, errPkg := range errPkgs {
		for _, err := range errPkg.Errors {
			fmt.Fprintln(os.Stderr, err)
		}
		fmt.Fprintln(os.Stderr, "cannot build SSA for package", errPkg)
	}
	if len(errPkgs) > 0 {
		return nil, fmt.Errorf("cannot build SSA for packages")
	}
	built := ctx.built
	for _, aPkg := range pkgs {
		pkg := aPkg.Package
		if _, ok := built[pkg.ID]; ok {
			pkg.ExportFile = ""
			continue
		}
		built[pkg.ID] = none{}

		llpkgEnvMap, err := llpkgEnvMap(pkg)
		if err != nil {
			panic(err)
		}
		ctx.xenv = xenv.New(llpkgEnvMap)

		switch kind, param := cl.PkgKindOf(pkg.Types); kind {
		case cl.PkgDeclOnly:
			// skip packages that only contain declarations
			// and set no export file
			pkg.ExportFile = ""
		case cl.PkgLinkIR, cl.PkgLinkExtern, cl.PkgPyModule:
			if len(pkg.GoFiles) > 0 {
				cgoLdflags, err := buildPkg(ctx, aPkg, verbose)
				if err != nil {
					panic(err)
				}
				linkParts := concatPkgLinkFiles(ctx, pkg, verbose)
				allParts := append(linkParts, cgoLdflags...)
				if pkg.ExportFile != "" {
					allParts = append(allParts, pkg.ExportFile)
				}
				aPkg.LinkArgs = allParts
			} else {
				// panic("todo")
				// TODO(xsw): support packages out of llgo
				pkg.ExportFile = ""
			}
			if kind == cl.PkgLinkExtern {
				// need to be linked with external library
				// format: ';' separated alternative link methods. e.g.
				//   link: $LLGO_LIB_PYTHON; $(pkg-config --libs python3-embed); -lpython3
				altParts := strings.Split(param, ";")
				expdArgs := make([]string, 0, len(altParts))
				for _, param := range altParts {
					param = strings.TrimSpace(param)
					if strings.ContainsRune(param, '$') {
						expdArgs = append(expdArgs, ctx.xenv.ExpandEnvToArgs(param)...)
						ctx.nLibdir++
					} else {
						fields := strings.Fields(param)
						expdArgs = append(expdArgs, fields...)
					}
					if len(expdArgs) > 0 {
						break
					}
				}
				if len(expdArgs) == 0 {
					panic(fmt.Sprintf("'%s' cannot locate the external library", param))
				}

				pkgLinkArgs := make([]string, 0, 3)
				if expdArgs[0][0] == '-' {
					pkgLinkArgs = append(pkgLinkArgs, expdArgs...)
				} else {
					linkFile := expdArgs[0]
					dir, lib := filepath.Split(linkFile)
					pkgLinkArgs = append(pkgLinkArgs, "-l"+lib)
					if dir != "" {
						pkgLinkArgs = append(pkgLinkArgs, "-L"+dir)
						ctx.nLibdir++
					}
				}
				if err := clangCheck.CheckLinkArgs(pkgLinkArgs); err != nil {
					panic(fmt.Sprintf("test link args '%s' failed\n\texpanded to: %v\n\tresolved to: %v\n\terror: %v", param, expdArgs, pkgLinkArgs, err))
				}
				aPkg.LinkArgs = append(aPkg.LinkArgs, pkgLinkArgs...)
			}
		default:
			cgoLdflags, err := buildPkg(ctx, aPkg, verbose)
			if err != nil {
				panic(err)
			}
			if pkg.ExportFile != "" {
				aPkg.LinkArgs = append(cgoLdflags, pkg.ExportFile)
			}
			aPkg.LinkArgs = append(aPkg.LinkArgs, concatPkgLinkFiles(ctx, pkg, verbose)...)
			if aPkg.AltPkg != nil {
				aPkg.LinkArgs = append(aPkg.LinkArgs, concatPkgLinkFiles(ctx, aPkg.AltPkg.Package, verbose)...)
			}
			setNeedRuntimeOrPyInit(ctx, pkg, aPkg.LPkg.NeedRuntime, aPkg.LPkg.NeedPyInit)
		}
	}
	return
}

func linkMainPkg(ctx *context, pkg *packages.Package, pkgs []*aPackage, linkArgs []string, conf *Config, mode Mode, verbose bool) {
	pkgPath := pkg.PkgPath
	name := path.Base(pkgPath)
	app := conf.OutFile
	if app == "" {
		if mode == ModeBuild && len(ctx.initial) > 1 {
			// For multiple packages in ModeBuild mode, use temporary file
			tmpFile, err := os.CreateTemp("", name+"*"+conf.AppExt)
			check(err)
			app = tmpFile.Name()
			tmpFile.Close()
		} else {
			app = filepath.Join(conf.BinPath, name+conf.AppExt)
		}
	}
	args := make([]string, 0, len(pkg.Imports)+len(linkArgs)+16)
	args = append(
		args,
		"-o", app,
		"-Wl,--error-limit=0",
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
	pkgsMap := make(map[*packages.Package]*aPackage, len(pkgs))
	for _, v := range pkgs {
		pkgsMap[v.Package] = v
	}
	packages.Visit([]*packages.Package{pkg}, nil, func(p *packages.Package) {
		if p.ExportFile != "" { // skip packages that only contain declarations
			aPkg := pkgsMap[p]
			args = append(args, aPkg.LinkArgs...)
			need1, need2 := isNeedRuntimeOrPyInit(ctx, p)
			if !needRuntime {
				needRuntime = need1
			}
			if !needPyInit {
				needPyInit = need2
			}
		}
	})
	entryLLFile, err := genMainModuleFile(llssa.PkgRuntime, pkg.PkgPath, needRuntime, needPyInit)
	if err != nil {
		panic(err)
	}
	// defer os.Remove(entryLLFile)
	args = append(args, entryLLFile)

	var aPkg *aPackage
	for _, v := range pkgs {
		if v.Package == pkg { // found this package
			aPkg = v
			break
		}
	}

	args = append(args, linkArgs...)

	if ctx.output {
		lpkg := aPkg.LPkg
		os.WriteFile(pkg.ExportFile, []byte(lpkg.String()), 0644)
	}

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
	if IsDbgSymsEnabled() {
		args = append(args, "-gdwarf-4")
	}

	// TODO(xsw): show work
	if verbose {
		fmt.Fprintln(os.Stderr, "clang", args)
	}
	err = ctx.env.Clang().Link(args...)
	check(err)

	if IsRpathChangeEnabled() && runtime.GOOS == "darwin" {
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
	case ModeTest:
		cmd := exec.Command(app, conf.RunArgs...)
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		cmd.Run()
		if s := cmd.ProcessState; s != nil {
			fmt.Fprintf(os.Stderr, "%s: exit code %d\n", app, s.ExitCode())
		}
	case ModeRun:
		cmd := exec.Command(app, conf.RunArgs...)
		cmd.Stdin = os.Stdin
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		cmd.Run()
		if s := cmd.ProcessState; s != nil {
			mockable.Exit(s.ExitCode())
		}
	case ModeCmpTest:
		cmpTest(filepath.Dir(pkg.GoFiles[0]), pkgPath, app, conf.GenExpect, conf.RunArgs)
	}
}

func genMainModuleFile(rtPkgPath, mainPkgPath string, needRuntime, needPyInit bool) (path string, err error) {
	var (
		pyInitDecl string
		pyInit     string
		rtInitDecl string
		rtInit     string
	)
	if needRuntime {
		rtInit = "call void @\"" + rtPkgPath + ".init\"()"
		rtInitDecl = "declare void @\"" + rtPkgPath + ".init\"()"
	}
	if needPyInit {
		pyInit = "call void @Py_Initialize()"
		pyInitDecl = "declare void @Py_Initialize()"
	}
	mainCode := fmt.Sprintf(`; ModuleID = 'main'
source_filename = "main"

@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

%s
%s
declare void @"%s.init"()
declare void @"%s.main"()
define weak void @runtime.init() {
  ret void
}

; TODO(lijie): workaround for syscall patch
define weak void @"syscall.init"() {
  ret void
}

define i32 @main(i32 %%0, ptr %%1) {
_llgo_0:
  %s
  store i32 %%0, ptr @__llgo_argc, align 4
  store ptr %%1, ptr @__llgo_argv, align 8
  %s
  call void @runtime.init()
  call void @"%s.init"()
  call void @"%s.main"()
  ret i32 0
}
`, pyInitDecl, rtInitDecl, mainPkgPath, mainPkgPath,
		pyInit, rtInit, mainPkgPath, mainPkgPath)

	f, err := os.CreateTemp("", "main*.ll")
	if err != nil {
		return "", err
	}
	_, err = f.Write([]byte(mainCode))
	if err != nil {
		return "", err
	}
	err = f.Close()
	if err != nil {
		return "", err
	}
	return f.Name(), nil
}

func buildPkg(ctx *context, aPkg *aPackage, verbose bool) (cgoLdflags []string, err error) {
	pkg := aPkg.Package
	pkgPath := pkg.PkgPath
	if debugBuild || verbose {
		fmt.Fprintln(os.Stderr, pkgPath)
	}
	if llruntime.SkipToBuild(pkgPath) {
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

	ret, externs, err := cl.NewPackageEx(ctx.prog, ctx.patches, aPkg.SSA, syntax)
	if showDetail {
		llssa.SetDebug(0)
		cl.SetDebug(0)
	}
	check(err)
	aPkg.LPkg = ret
	cgoLdflags, err = buildCgo(ctx, aPkg, aPkg.Package.Syntax, externs, verbose)
	if aPkg.AltPkg != nil {
		altLdflags, e := buildCgo(ctx, aPkg, aPkg.AltPkg.Syntax, externs, verbose)
		if e != nil {
			return nil, fmt.Errorf("build cgo of %v failed: %v", pkgPath, e)
		}
		cgoLdflags = append(cgoLdflags, altLdflags...)
	}
	if pkg.ExportFile != "" {
		pkg.ExportFile += ".ll"
		os.WriteFile(pkg.ExportFile, []byte(ret.String()), 0644)
		if debugBuild || verbose {
			fmt.Fprintf(os.Stderr, "==> Export %s: %s\n", aPkg.PkgPath, pkg.ExportFile)
		}
		if IsCheckEnable() {
			if err, msg := llcCheck(ctx.env, pkg.ExportFile); err != nil {
				fmt.Fprintf(os.Stderr, "==> lcc %v: %v\n%v\n", pkg.PkgPath, pkg.ExportFile, msg)
			}
		}
	}
	return
}

func llcCheck(env *llvm.Env, exportFile string) (err error, msg string) {
	bin := filepath.Join(env.BinDir(), "llc")
	cmd := exec.Command(bin, "-filetype=null", exportFile)
	var buf bytes.Buffer
	cmd.Stderr = &buf
	if err = cmd.Run(); err != nil {
		msg = buf.String()
	}
	return
}

const (
	altPkgPathPrefix = abi.PatchPathPrefix
)

func altPkgs(initial []*packages.Package, alts ...string) []string {
	packages.Visit(initial, nil, func(p *packages.Package) {
		if p.Types != nil && !p.IllTyped {
			if llruntime.HasAltPkg(p.PkgPath) {
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
				log.Println("==> BuildSSA", p.ID)
			}
			pkgSSA := prog.CreatePackage(typs, p.Syntax, p.TypesInfo, true)
			if strings.HasPrefix(p.ID, altPkgPathPrefix) {
				path := p.ID[len(altPkgPathPrefix):]
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

	LinkArgs []string
}

type Package = *aPackage

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
			if llruntime.HasAltPkg(pkgPath) {
				if altPkg = ctx.dedup.Check(altPkgPathPrefix + pkgPath); altPkg == nil {
					return
				}
			}
			all = append(all, &aPackage{p, ssaPkg, altPkg, nil, nil})
		} else {
			errs = append(errs, p)
		}
	})
	return
}

func createSSAPkg(prog *ssa.Program, p *packages.Package, verbose bool) *ssa.Package {
	pkgSSA := prog.ImportedPackage(p.ID)
	if pkgSSA == nil {
		if debugBuild || verbose {
			log.Println("==> BuildSSA", p.ID)
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

const llgoDebug = "LLGO_DEBUG"
const llgoDbgSyms = "LLGO_DEBUG_SYMBOLS"
const llgoTrace = "LLGO_TRACE"
const llgoOptimize = "LLGO_OPTIMIZE"
const llgoCheck = "LLGO_CHECK"
const llgoRpathChange = "LLGO_RPATH_CHANGE"

func isEnvOn(env string, defVal bool) bool {
	envVal := strings.ToLower(os.Getenv(env))
	if envVal == "" {
		return defVal
	}
	return envVal == "1" || envVal == "true" || envVal == "on"
}

func IsTraceEnabled() bool {
	return isEnvOn(llgoTrace, false)
}

func IsDbgEnabled() bool {
	return isEnvOn(llgoDebug, false) || isEnvOn(llgoDbgSyms, false)
}

func IsDbgSymsEnabled() bool {
	return isEnvOn(llgoDbgSyms, false)
}

func IsOptimizeEnabled() bool {
	return isEnvOn(llgoOptimize, true)
}

func IsCheckEnable() bool {
	return isEnvOn(llgoCheck, false)
}

func IsRpathChangeEnabled() bool {
	return isEnvOn(llgoRpathChange, false)
}

func ParseArgs(args []string, swflags map[string]bool) (flags, patterns []string, verbose bool) {
	n := len(args)
	for i := 0; i < n; i++ {
		arg := args[i]
		if strings.HasPrefix(arg, "-") {
			checkFlag(arg, &i, &verbose, swflags)
		} else {
			patterns = append([]string{}, args[i:]...)
			flags = append([]string{}, args[:i]...)
			return
		}
	}
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

func concatPkgLinkFiles(ctx *context, pkg *packages.Package, verbose bool) (parts []string) {
	llgoPkgLinkFiles(ctx, pkg, func(linkFile string) {
		parts = append(parts, linkFile)
	}, verbose)
	return
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
			cflags := ctx.xenv.ExpandEnvToArgs(files[:pos])
			files = files[pos+1:]
			args = append(args, cflags...)
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
	err := ctx.env.Clang().Compile(args...)
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

// llpkgEnvMap checks go.mod that used by the package, and determine env
// variables (mostly PKG_CONFIG_PATH) that should be loaded from LLGOCACHE.
//
// Returns a map of environment variables that should be set before executing
// correspond commands (pkg-config).
func llpkgEnvMap(pkg *packages.Package) (map[string]string, error) {
	in, err := mod.InLLPkg(pkg)
	if err != nil {
		return nil, err
	}
	if !in {
		return nil, nil
	}

	envMap := make(map[string]string)
	LLPkgCacheDir, err := mod.LLPkgCacheDirByModule(module.Version{Path: pkg.Module.Path, Version: pkg.Module.Version})
	if err != nil {
		return nil, err
	}
	envMap["PKG_CONFIG_PATH"] = LLPkgCacheDir

	return envMap, nil
}

type none struct{}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

// -----------------------------------------------------------------------------
