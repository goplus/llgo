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
	"errors"
	"fmt"
	"go/ast"
	"go/constant"
	"go/token"
	"go/types"
	"log"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"runtime"
	"slices"
	"strings"
	"unsafe"

	"golang.org/x/tools/go/ssa"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/internal/cabi"
	"github.com/goplus/llgo/internal/crosscompile"
	"github.com/goplus/llgo/internal/env"
	"github.com/goplus/llgo/internal/mockable"
	"github.com/goplus/llgo/internal/packages"
	"github.com/goplus/llgo/internal/pyenv"
	"github.com/goplus/llgo/internal/typepatch"
	"github.com/goplus/llgo/ssa/abi"
	"github.com/goplus/llgo/xtool/clang"
	xenv "github.com/goplus/llgo/xtool/env"
	"github.com/goplus/llgo/xtool/env/llvm"

	llruntime "github.com/goplus/llgo/runtime"
	llssa "github.com/goplus/llgo/ssa"
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

type AbiMode = cabi.Mode

const (
	debugBuild = packages.DebugPackagesLoad
)

type Config struct {
	Goos        string
	Goarch      string
	Target      string // target name (e.g., "rp2040", "wasi") - takes precedence over Goos/Goarch
	BinPath     string
	AppExt      string   // ".exe" on Windows, empty on Unix
	OutFile     string   // only valid for ModeBuild when len(pkgs) == 1
	RunArgs     []string // only valid for ModeRun
	Mode        Mode
	AbiMode     AbiMode
	GenExpect   bool // only valid for ModeCmpTest
	Verbose     bool
	GenLL       bool // generate pkg .ll files
	Tags        string
	GlobalNames map[string][]string // pkg => names
	GlobalDatas map[string]string   // pkg.name => data
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
	goos, goarch := os.Getenv("GOOS"), os.Getenv("GOARCH")
	if goos == "" {
		goos = runtime.GOOS
	}
	if goarch == "" {
		goarch = runtime.GOARCH
	}
	conf := &Config{
		Goos:    goos,
		Goarch:  goarch,
		BinPath: bin,
		Mode:    mode,
		AbiMode: cabi.ModeAllFunc,
		AppExt:  DefaultAppExt(goos),
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

func DefaultAppExt(goos string) string {
	switch goos {
	case "windows":
		return ".exe"
	case "wasi", "wasip1", "js":
		return ".wasm"
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
	if conf.Goos == "" {
		conf.Goos = runtime.GOOS
	}
	if conf.Goarch == "" {
		conf.Goarch = runtime.GOARCH
	}
	// Handle crosscompile configuration first to set correct GOOS/GOARCH
	export, err := crosscompile.UseWithTarget(conf.Goos, conf.Goarch, IsWasiThreadsEnabled(), conf.Target)
	if err != nil {
		return nil, fmt.Errorf("failed to setup crosscompile: %w", err)
	}
	// Update GOOS/GOARCH from export if target was used
	if conf.Target != "" && export.GOOS != "" {
		conf.Goos = export.GOOS
	}
	if conf.Target != "" && export.GOARCH != "" {
		conf.Goarch = export.GOARCH
	}

	verbose := conf.Verbose
	patterns := args
	tags := "llgo"
	if conf.Tags != "" {
		tags += "," + conf.Tags
	}
	if len(export.BuildTags) > 0 {
		tags += "," + strings.Join(export.BuildTags, ",")
	}
	cfg := &packages.Config{
		Mode:       loadSyntax | packages.NeedDeps | packages.NeedModule | packages.NeedExportFile,
		BuildFlags: []string{"-tags=" + tags},
		Fset:       token.NewFileSet(),
		Tests:      conf.Mode == ModeTest,
		Env:        append(slices.Clone(os.Environ()), "GOOS="+conf.Goos, "GOARCH="+conf.Goarch),
	}
	if conf.Mode == ModeTest {
		cfg.Mode |= packages.NeedForTest
	}

	cfg.Overlay = make(map[string][]byte)
	clearRuntime(cfg.Overlay, filepath.Join(env.GOROOT(), "src", "runtime"))
	for file, src := range llruntime.OverlayFiles {
		overlay := unsafe.Slice(unsafe.StringData(src), len(src))
		cfg.Overlay[filepath.Join(env.GOROOT(), "src", file)] = overlay
	}

	cl.EnableDebug(IsDbgEnabled())
	cl.EnableDbgSyms(IsDbgSymsEnabled())
	cl.EnableTrace(IsTraceEnabled())
	llssa.Initialize(llssa.InitAll)

	target := &llssa.Target{
		GOOS:   conf.Goos,
		GOARCH: conf.Goarch,
	}

	prog := llssa.NewProgram(target)
	sizes := func(sizes types.Sizes, compiler, arch string) types.Sizes {
		if arch == "wasm" {
			sizes = &types.StdSizes{WordSize: 4, MaxAlign: 4}
		}
		return prog.TypeSizes(sizes)
	}
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
	ctx := &context{env: env, conf: cfg, progSSA: progSSA, prog: prog, dedup: dedup,
		patches: patches, built: make(map[string]none), initial: initial, mode: mode,
		output:                 output,
		needRt:                 make(map[*packages.Package]bool),
		needPyInit:             make(map[*packages.Package]bool),
		buildConf:              conf,
		crossCompile:           export,
		isCheckEnabled:         IsCheckEnabled(),
		isCheckLinkArgsEnabled: IsCheckLinkArgsEnabled(),
		cTransformer:           cabi.NewTransformer(prog, conf.AbiMode),
	}

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
	allPkgs := append([]*aPackage{}, pkgs...)
	allPkgs = append(allPkgs, dpkg...)

	// update globals importpath.name=value
	addGlobalString(conf, "runtime.defaultGOROOT="+runtime.GOROOT(), nil)
	addGlobalString(conf, "runtime.buildVersion="+runtime.Version(), nil)

	global, err := createGlobals(ctx, ctx.prog, pkgs)
	check(err)
	for _, pkg := range initial {
		if needLink(pkg, mode) {
			linkMainPkg(ctx, pkg, allPkgs, global, conf, mode, verbose)
		}
	}

	if mode == ModeTest && ctx.testFail {
		mockable.Exit(1)
	}

	return dpkg, nil
}

func clearRuntime(overlay map[string][]byte, runtimePath string) {
	files, err := filepath.Glob(runtimePath + "/*.go")
	if err != nil {
		panic(err)
	}
	for _, file := range files {
		overlay[file] = []byte("package runtime\n")
	}
	files, err = filepath.Glob(runtimePath + "/*.s")
	if err != nil {
		panic(err)
	}
	for _, file := range files {
		overlay[file] = []byte("\n")
	}
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

	isCheckEnabled         bool
	isCheckLinkArgsEnabled bool

	needRt     map[*packages.Package]bool
	needPyInit map[*packages.Package]bool

	buildConf    *Config
	crossCompile crosscompile.Export

	cTransformer *cabi.Transformer

	testFail bool
}

func (c *context) compiler() *clang.Cmd {
	cmd := c.env.Clang()
	if c.crossCompile.CC != "" {
		cmd = clang.New(c.crossCompile.CC)
	}
	cmd.Verbose = c.buildConf.Verbose
	return cmd
}

func (c *context) linker() *clang.Cmd {
	cmd := c.env.Clang()
	if c.crossCompile.Linker != "" {
		cmd = clang.New(c.crossCompile.Linker)
	}
	cmd.Verbose = c.buildConf.Verbose
	return cmd
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
		switch kind, param := cl.PkgKindOf(pkg.Types); kind {
		case cl.PkgDeclOnly:
			// skip packages that only contain declarations
			// and set no export file
			pkg.ExportFile = ""
		case cl.PkgLinkIR, cl.PkgLinkExtern, cl.PkgPyModule:
			if len(pkg.GoFiles) > 0 {
				err := buildPkg(ctx, aPkg, verbose)
				if err != nil {
					return nil, err
				}
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
					if param == "$LLGO_LIB_PYTHON" {
						err := pyenv.EnsureWithFetch("")
						if err != nil {
							panic(fmt.Sprintf("failed to prepare Python cache: %v\n\tLLGO_CACHE_DIR=%s\n\thint: set LLPYG_PYHOME or check network/permissions", err, env.LLGoCacheDir()))
						}
						if err = pyenv.EnsureBuildEnv(); err != nil {
							panic(fmt.Sprintf("failed to set up Python build env: %v\n\tPYTHONHOME=%s", err, pyenv.PythonHome()))
						}
						if err = pyenv.Verify(); err != nil {
							panic(fmt.Sprintf("failed to verify Python: %v\n\tpython=%s", err, filepath.Join(pyenv.PythonHome(), "bin", "python3")))
						}
					}
					if strings.ContainsRune(param, '$') {
						expdArgs = append(expdArgs, xenv.ExpandEnvToArgs(param)...)
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

				if ctx.isCheckLinkArgsEnabled {
					if err := ctx.compiler().CheckLinkArgs(pkgLinkArgs, isWasmTarget(ctx.buildConf.Goos)); err != nil {
						panic(fmt.Sprintf("test link args '%s' failed\n\texpanded to: %v\n\tresolved to: %v\n\terror: %v", param, expdArgs, pkgLinkArgs, err))
					}
				}
				aPkg.LinkArgs = append(aPkg.LinkArgs, pkgLinkArgs...)
			}
			if kind == cl.PkgPyModule {
				if param != "" && param != "builtins" {
					if err := pyenv.PipInstall(param); err != nil {
						panic(fmt.Sprintf("pip install failed for '%s': %v\n\tPYTHONHOME=%s\n\thint: ensure pip is available and network reachable, or pin a version in LLGoPackage (e.g. py.numpy==1.26.4)", param, pyenv.PythonHome(), err))
					}
				}
			}
		default:
			err := buildPkg(ctx, aPkg, verbose)
			if err != nil {
				return nil, err
			}
			setNeedRuntimeOrPyInit(ctx, pkg, aPkg.LPkg.NeedRuntime, aPkg.LPkg.NeedPyInit)
		}
	}
	return
}

var (
	errXflags = errors.New("-X flag requires argument of the form importpath.name=value")
)

func addGlobalString(conf *Config, arg string, mainPkgs []string) {
	eq := strings.Index(arg, "=")
	dot := strings.LastIndex(arg[:eq+1], ".")
	if eq < 0 || dot < 0 {
		panic(errXflags)
	}
	pkg := arg[:dot]
	pkgs := []string{pkg}
	if pkg == "main" {
		pkgs = mainPkgs
	}
	if conf.GlobalNames == nil {
		conf.GlobalNames = make(map[string][]string)
	}
	if conf.GlobalDatas == nil {
		conf.GlobalDatas = make(map[string]string)
	}
	for _, pkg := range pkgs {
		name := pkg + arg[dot:eq]
		value := arg[eq+1:]
		if _, ok := conf.GlobalDatas[name]; !ok {
			conf.GlobalNames[pkg] = append(conf.GlobalNames[pkg], name)
		}
		conf.GlobalDatas[name] = value
	}
}

func createGlobals(ctx *context, prog llssa.Program, pkgs []*aPackage) (llssa.Package, error) {
	if len(ctx.buildConf.GlobalDatas) == 0 {
		return nil, nil
	}
	for _, pkg := range pkgs {
		if pkg.ExportFile == "" {
			continue
		}
		if names, ok := ctx.buildConf.GlobalNames[pkg.PkgPath]; ok {
			err := pkg.LPkg.Undefined(names...)
			if err != nil {
				return nil, err
			}
			pkg.ExportFile += "-global"
			pkg.ExportFile, err = exportObject(ctx, pkg.PkgPath+".global", pkg.ExportFile, []byte(pkg.LPkg.String()))
			if err != nil {
				return nil, err
			}
		}
	}
	global := prog.NewPackage("", "global")
	for name, value := range ctx.buildConf.GlobalDatas {
		global.AddGlobalString(name, value)
	}
	return global, nil
}

func linkMainPkg(ctx *context, pkg *packages.Package, pkgs []*aPackage, global llssa.Package, conf *Config, mode Mode, verbose bool) {
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
	} else if filepath.Ext(app) == "" {
		app += conf.AppExt
	}

	needRuntime := false
	needPyInit := false
	pkgsMap := make(map[*packages.Package]*aPackage, len(pkgs))
	allPkgs := []*packages.Package{pkg}
	for _, v := range pkgs {
		pkgsMap[v.Package] = v
		allPkgs = append(allPkgs, v.Package)
	}
	var objFiles []string
	var linkArgs []string
	packages.Visit(allPkgs, nil, func(p *packages.Package) {
		aPkg := pkgsMap[p]
		if p.ExportFile != "" && aPkg != nil { // skip packages that only contain declarations
			linkArgs = append(linkArgs, aPkg.LinkArgs...)
			objFiles = append(objFiles, aPkg.LLFiles...)
			objFiles = append(objFiles, aPkg.ExportFile)
			need1, need2 := isNeedRuntimeOrPyInit(ctx, p)
			if !needRuntime {
				needRuntime = need1
			}
			if !needPyInit {
				needPyInit = need2
			}
		}
	})

	// Heuristic: if link args reference python libs, force python init
	if !needPyInit {
		for _, arg := range linkArgs {
			if strings.Contains(arg, "python") {
				needPyInit = true
				break
			}
		}
	}

	entryObjFile, err := genMainModuleFile(ctx, llssa.PkgRuntime, pkg, needRuntime, needPyInit)
	check(err)
	// defer os.Remove(entryLLFile)
	objFiles = append(objFiles, entryObjFile)

	if global != nil {
		export, err := exportObject(ctx, pkg.PkgPath+".global", pkg.ExportFile+"-global", []byte(global.String()))
		check(err)
		objFiles = append(objFiles, export)
	}

	err = linkObjFiles(ctx, app, objFiles, linkArgs, verbose)
	check(err)

	// After linking, ensure the executable references libpython via @rpath
	if needPyInit && ctx.buildConf.Goos == "darwin" {
		if dep := findDylibDep(app, "python3"); dep != "" && !strings.HasPrefix(dep, "@rpath") {
			base := filepath.Base(dep)
			_ = exec.Command("install_name_tool", "-change", dep, "@rpath/"+base, app).Run()
		}
	}

	switch mode {
	case ModeTest:
		cmd := exec.Command(app, conf.RunArgs...)
		cmd.Dir = pkg.Dir
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		cmd.Run()
		if s := cmd.ProcessState; s != nil {
			exitCode := s.ExitCode()
			fmt.Fprintf(os.Stderr, "%s: exit code %d\n", app, exitCode)
			if !ctx.testFail && exitCode != 0 {
				ctx.testFail = true
			}
		}
	case ModeRun:
		args := make([]string, 0, len(conf.RunArgs)+1)
		copy(args, conf.RunArgs)
		if isWasmTarget(conf.Goos) {
			wasmer := os.ExpandEnv(WasmRuntime())
			wasmerArgs := strings.Split(wasmer, " ")
			wasmerCmd := wasmerArgs[0]
			wasmerArgs = wasmerArgs[1:]
			switch wasmer {
			case "wasmtime":
				args = append(args, "--wasm", "multi-memory=true", app)
				args = append(args, conf.RunArgs...)
			case "iwasm":
				args = append(args, "--stack-size=819200000", "--heap-size=800000000", app)
				args = append(args, conf.RunArgs...)
			default:
				args = append(args, wasmerArgs...)
				args = append(args, app)
				args = append(args, conf.RunArgs...)
			}
			app = wasmerCmd
		} else {
			args = conf.RunArgs
		}
		cmd := exec.Command(app, args...)
		cmd.Stdin = os.Stdin
		cmd.Stdout = os.Stdout
		cmd.Stderr = os.Stderr
		err = cmd.Run()
		if err != nil {
			panic(err)
		}
		if s := cmd.ProcessState; s != nil {
			mockable.Exit(s.ExitCode())
		}
	case ModeCmpTest:
		cmpTest(filepath.Dir(pkg.GoFiles[0]), pkgPath, app, conf.GenExpect, conf.RunArgs)
	}
}

func linkObjFiles(ctx *context, app string, objFiles, linkArgs []string, verbose bool) error {
	buildArgs := []string{"-o", app}
	buildArgs = append(buildArgs, linkArgs...)

	// Add common linker arguments based on target OS and architecture
	if IsDbgSymsEnabled() {
		buildArgs = append(buildArgs, "-gdwarf-4")
	}

	buildArgs = append(buildArgs, ctx.crossCompile.LDFLAGS...)
	buildArgs = append(buildArgs, ctx.crossCompile.EXTRAFLAGS...)
	buildArgs = append(buildArgs, objFiles...)

	cmd := ctx.linker()
	cmd.Verbose = verbose
	return cmd.Link(buildArgs...)
}

func isWasmTarget(goos string) bool {
	return slices.Contains([]string{"wasi", "js", "wasip1"}, goos)
}

func genMainModuleFile(ctx *context, rtPkgPath string, pkg *packages.Package, needRuntime, needPyInit bool) (path string, err error) {
	var (
		pyInitDecl string
		pyInit     string
		rtInitDecl string
		rtInit     string
	)
	mainPkgPath := pkg.PkgPath
	if needRuntime {
		rtInit = "call void @\"" + rtPkgPath + ".init\"()"
		rtInitDecl = "declare void @\"" + rtPkgPath + ".init\"()"
	}
	if needPyInit {
		pyInit = "call void @Py_Initialize()"
		pyInitDecl = "declare void @Py_Initialize()"
	}
	declSizeT := "%size_t = type i64"
	if is32Bits(ctx.buildConf.Goarch) {
		declSizeT = "%size_t = type i32"
	}
	stdioDecl := ""
	stdioNobuf := ""
	if IsStdioNobuf() {
		stdioDecl = `
@stdout = external global ptr
@stderr = external global ptr
@__stdout = external global ptr
@__stderr = external global ptr
declare i32 @setvbuf(ptr, ptr, i32, %size_t)
	`
		stdioNobuf = `
; Set stdout with no buffer
%stdout_is_null = icmp eq ptr @stdout, null
%stdout_ptr = select i1 %stdout_is_null, ptr @__stdout, ptr @stdout
call i32 @setvbuf(ptr %stdout_ptr, ptr null, i32 2, %size_t 0)
; Set stderr with no buffer
%stderr_ptr = select i1 %stdout_is_null, ptr @__stderr, ptr @stderr
call i32 @setvbuf(ptr %stderr_ptr, ptr null, i32 2, %size_t 0)
	`
	}
	// TODO(lijie): workaround for libc-free
	// Remove main/_start when -buildmode and libc are ready
	startDefine := `
define weak void @_start() {
  ; argc = 0
  %argc = add i32 0, 0
  ; argv = null
  %argv = inttoptr i64 0 to i8**
  call i32 @main(i32 %argc, i8** %argv)
  ret void
}
`
	mainDefine := "define i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr"
	if isWasmTarget(ctx.buildConf.Goos) {
		mainDefine = "define hidden noundef i32 @__main_argc_argv(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr"
		startDefine = ""
	}
	mainCode := fmt.Sprintf(`; ModuleID = 'main'
source_filename = "main"
%s
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
%s
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

%s

%s {
_llgo_0:
  store i32 %%0, ptr @__llgo_argc, align 4
  store ptr %%1, ptr @__llgo_argv, align 8
  %s
  %s
  %s
  call void @runtime.init()
  call void @"%s.init"()
  call void @"%s.main"()
  ret i32 0
}
`, declSizeT, stdioDecl,
		pyInitDecl, rtInitDecl, mainPkgPath, mainPkgPath,
		startDefine, mainDefine, stdioNobuf,
		pyInit, rtInit, mainPkgPath, mainPkgPath)

	return exportObject(ctx, pkg.PkgPath+".main", pkg.ExportFile+"-main", []byte(mainCode))
}

func is32Bits(goarch string) bool {
	return goarch == "386" || goarch == "arm" || goarch == "mips" || goarch == "wasm"
}

func buildPkg(ctx *context, aPkg *aPackage, verbose bool) error {
	pkg := aPkg.Package
	pkgPath := pkg.PkgPath
	if debugBuild || verbose {
		fmt.Fprintln(os.Stderr, pkgPath)
	}
	if llruntime.SkipToBuild(pkgPath) {
		pkg.ExportFile = ""
		return nil
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

	ctx.cTransformer.TransformModule(ret.Path(), ret.Module())

	aPkg.LPkg = ret
	cgoLLFiles, cgoLdflags, err := buildCgo(ctx, aPkg, aPkg.Package.Syntax, externs, verbose)
	if err != nil {
		return fmt.Errorf("build cgo of %v failed: %v", pkgPath, err)
	}
	aPkg.LLFiles = append(aPkg.LLFiles, cgoLLFiles...)
	aPkg.LLFiles = append(aPkg.LLFiles, concatPkgLinkFiles(ctx, pkg, verbose)...)
	aPkg.LinkArgs = append(aPkg.LinkArgs, cgoLdflags...)
	if aPkg.AltPkg != nil {
		altLLFiles, altLdflags, e := buildCgo(ctx, aPkg, aPkg.AltPkg.Syntax, externs, verbose)
		if e != nil {
			return fmt.Errorf("build cgo of %v failed: %v", pkgPath, e)
		}
		aPkg.LLFiles = append(aPkg.LLFiles, altLLFiles...)
		aPkg.LLFiles = append(aPkg.LLFiles, concatPkgLinkFiles(ctx, aPkg.AltPkg.Package, verbose)...)
		aPkg.LinkArgs = append(aPkg.LinkArgs, altLdflags...)
	}
	if pkg.ExportFile != "" {
		pkg.ExportFile, err = exportObject(ctx, pkg.PkgPath, pkg.ExportFile, []byte(ret.String()))
		if err != nil {
			return fmt.Errorf("export object of %v failed: %v", pkgPath, err)
		}
		if debugBuild || verbose {
			fmt.Fprintf(os.Stderr, "==> Export %s: %s\n", aPkg.PkgPath, pkg.ExportFile)
		}
	}
	return nil
}

func exportObject(ctx *context, pkgPath string, exportFile string, data []byte) (string, error) {
	f, err := os.CreateTemp("", "llgo-*.ll")
	if err != nil {
		return "", err
	}
	f.Write(data)
	err = f.Close()
	if err != nil {
		return exportFile, err
	}
	if ctx.isCheckEnabled {
		if msg, err := llcCheck(ctx.env, f.Name()); err != nil {
			fmt.Fprintf(os.Stderr, "==> lcc %v: %v\n%v\n", pkgPath, f.Name(), msg)
		}
	}
	if ctx.buildConf.GenLL {
		exportFile += ".ll"
		err = os.Chmod(f.Name(), 0644)
		if err != nil {
			return exportFile, err
		}
		return exportFile, os.Rename(f.Name(), exportFile)
	}
	exportFile += ".o"
	args := []string{"-o", exportFile, "-c", f.Name(), "-Wno-override-module"}
	args = append(args, ctx.crossCompile.CCFLAGS...)
	args = append(args, ctx.crossCompile.CFLAGS...)
	if ctx.buildConf.Verbose {
		fmt.Fprintln(os.Stderr, "clang", args)
	}
	cmd := ctx.compiler()
	return exportFile, cmd.Compile(args...)
}

func llcCheck(env *llvm.Env, exportFile string) (msg string, err error) {
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
	LLFiles  []string
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
			all = append(all, &aPackage{p, ssaPkg, altPkg, nil, nil, nil})
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

/*
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
*/

const llgoDebug = "LLGO_DEBUG"
const llgoDbgSyms = "LLGO_DEBUG_SYMBOLS"
const llgoTrace = "LLGO_TRACE"
const llgoOptimize = "LLGO_OPTIMIZE"
const llgoCheck = "LLGO_CHECK"
const llgoWasmRuntime = "LLGO_WASM_RUNTIME"
const llgoWasiThreads = "LLGO_WASI_THREADS"
const llgoStdioNobuf = "LLGO_STDIO_NOBUF"
const llgoCheckLinkArgs = "LLGO_CHECK_LINKARGS"

const defaultWasmRuntime = "wasmtime"

func defaultEnv(env string, defVal string) string {
	envVal := os.Getenv(env)
	if envVal == "" {
		return defVal
	}
	return envVal
}

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

func IsStdioNobuf() bool {
	return isEnvOn(llgoStdioNobuf, false)
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

func IsCheckEnabled() bool {
	return isEnvOn(llgoCheck, false)
}

func IsWasiThreadsEnabled() bool {
	return isEnvOn(llgoWasiThreads, true)
}

func IsCheckLinkArgsEnabled() bool {
	return isEnvOn(llgoCheckLinkArgs, false)
}

func WasmRuntime() string {
	return defaultEnv(llgoWasmRuntime, defaultWasmRuntime)
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
			cflags := xenv.ExpandEnvToArgs(files[:pos])
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
	llFile := expFile + filepath.Base(cFile)
	ext := filepath.Ext(cFile)

	// default clang++ will use c++ to compile c file,will cause symbol be mangled
	if ext == ".c" {
		args = append(args, "-x", "c")
	}
	if ctx.buildConf.GenLL {
		llFile += ".ll"
		args = append(args, "-emit-llvm", "-S", "-o", llFile, "-c", cFile)
	} else {
		llFile += ".o"
		args = append(args, "-o", llFile, "-c", cFile)
	}
	args = append(args, ctx.crossCompile.CCFLAGS...)
	args = append(args, ctx.crossCompile.CFLAGS...)
	if verbose {
		fmt.Fprintln(os.Stderr, "clang", args)
	}
	cmd := ctx.compiler()
	err := cmd.Compile(args...)
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

type none struct{}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

// -----------------------------------------------------------------------------
