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
	"github.com/goplus/llgo/internal/clang"
	"github.com/goplus/llgo/internal/crosscompile"
	"github.com/goplus/llgo/internal/env"
	"github.com/goplus/llgo/internal/firmware"
	"github.com/goplus/llgo/internal/flash"
	"github.com/goplus/llgo/internal/header"
	"github.com/goplus/llgo/internal/mockable"
	"github.com/goplus/llgo/internal/monitor"
	"github.com/goplus/llgo/internal/packages"
	"github.com/goplus/llgo/internal/typepatch"
	"github.com/goplus/llgo/ssa/abi"
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

type BuildMode string

const (
	BuildModeExe      BuildMode = "exe"
	BuildModeCArchive BuildMode = "c-archive"
	BuildModeCShared  BuildMode = "c-shared"
)

// ValidateBuildMode checks if the build mode is valid
func ValidateBuildMode(mode string) error {
	switch BuildMode(mode) {
	case BuildModeExe, BuildModeCArchive, BuildModeCShared:
		return nil
	default:
		return fmt.Errorf("invalid build mode %q, must be one of: exe, c-archive, c-shared", mode)
	}
}

type AbiMode = cabi.Mode

const (
	debugBuild = packages.DebugPackagesLoad
)

// OutFmts contains output format specifications for embedded targets
type OutFmts struct {
	Bin bool // Generate binary output (.bin)
	Hex bool // Generate Intel hex output (.hex)
	Img bool // Generate image output (.img)
	Uf2 bool // Generate UF2 output (.uf2)
	Zip bool // Generate ZIP/DFU output (.zip)
}

// OutFmtDetails contains detailed output file paths for each format
type OutFmtDetails struct {
	Out string // Base output file path
	Bin string // Binary output file path (.bin)
	Hex string // Intel hex output file path (.hex)
	Img string // Image output file path (.img)
	Uf2 string // UF2 output file path (.uf2)
	Zip string // ZIP/DFU output file path (.zip)
}

type Config struct {
	Goos          string
	Goarch        string
	Target        string // target name (e.g., "rp2040", "wasi") - takes precedence over Goos/Goarch
	BinPath       string
	AppExt        string  // ".exe" on Windows, empty on Unix
	OutFile       string  // only valid for ModeBuild when len(pkgs) == 1
	OutFmts       OutFmts // Output format specifications (only for Target != "")
	Emulator      bool    // run in emulator mode
	Port          string  // target port for flashing
	BaudRate      int     // baudrate for serial communication
	RunArgs       []string
	Mode          Mode
	BuildMode     BuildMode // Build mode: exe, c-archive, c-shared
	AbiMode       AbiMode
	GenExpect     bool // only valid for ModeCmpTest
	Verbose       bool
	GenLL         bool // generate pkg .ll files
	CheckLLFiles  bool // check .ll files valid
	CheckLinkArgs bool // check linkargs valid
	ForceEspClang bool // force to use esp-clang
	Tags          string
	SizeReport    bool   // print size report after successful build
	SizeFormat    string // size report format: text,json (default text)
	SizeLevel     string // size aggregation level: full,module,package (default module)
	// GlobalRewrites specifies compile-time overrides for global string variables.
	// Keys are fully qualified package paths (e.g. "main" or "github.com/user/pkg").
	// Each Rewrites entry maps variable names to replacement string values. Only
	// string-typed globals are supported and "main" applies to all root main
	// packages in the current build.
	GlobalRewrites map[string]Rewrites
}

type Rewrites map[string]string

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
		Goos:      goos,
		Goarch:    goarch,
		BinPath:   bin,
		Mode:      mode,
		BuildMode: BuildModeExe,
		AbiMode:   cabi.ModeAllFunc,
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
	if conf.AppExt == "" {
		conf.AppExt = defaultAppExt(conf)
	}
	if conf.BuildMode == "" {
		conf.BuildMode = BuildModeExe
	}
	if conf.SizeReport && conf.SizeFormat == "" {
		conf.SizeFormat = "text"
	}
	if conf.SizeReport && conf.SizeLevel == "" {
		conf.SizeLevel = "module"
	}
	if err := ensureSizeReporting(conf); err != nil {
		return nil, err
	}
	// Handle crosscompile configuration first to set correct GOOS/GOARCH
	forceEspClang := conf.ForceEspClang || conf.Target != ""
	export, err := crosscompile.Use(conf.Goos, conf.Goarch, conf.Target, IsWasiThreadsEnabled(), forceEspClang)
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

	// Enable different export names for TinyGo compatibility when using -target
	if conf.Target != "" {
		cl.EnableExportRename(true)
	}

	verbose := conf.Verbose
	patterns := args
	tags := "llgo,math_big_pure_go"
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
		case ModeInstall:
			if conf.Target != "" {
				return nil, fmt.Errorf("cannot install multiple packages to embedded target")
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

	prog.SetRuntime(func() *types.Package {
		return altPkgs[0].Types
	})
	prog.SetPython(func() *types.Package {
		return dedup.Check(llssa.PkgPython).Types
	})

	buildMode := ssaBuildMode
	cabiOptimize := true
	if IsDbgEnabled() {
		buildMode |= ssa.GlobalDebug
		cabiOptimize = false
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
		pkgs:         map[*packages.Package]Package{},
		output:       output,
		buildConf:    conf,
		crossCompile: export,
		cTransformer: cabi.NewTransformer(prog, export.LLVMTarget, export.TargetABI, conf.AbiMode, cabiOptimize),
	}

	// default runtime globals must be registered before packages are built
	addGlobalString(conf, "runtime.defaultGOROOT="+runtime.GOROOT(), nil)
	addGlobalString(conf, "runtime.buildVersion="+runtime.Version(), nil)
	pkgs, err := buildSSAPkgs(ctx, initial, verbose)
	check(err)
	depPkgs, err := buildSSAPkgs(ctx, altPkgs, verbose)
	check(err)

	allPkgs := append([]*aPackage{}, pkgs...)
	allPkgs = append(allPkgs, depPkgs...)
	allPkgs, err = buildAllPkgs(ctx, allPkgs, verbose)
	check(err)

	if mode == ModeGen {
		for _, pkg := range allPkgs {
			if pkg.Package == initial[0] {
				return []*aPackage{pkg}, nil
			}
		}
		return nil, fmt.Errorf("initial package not found")
	}

	for _, pkg := range initial {
		if needLink(pkg, mode) {
			name := path.Base(pkg.PkgPath)

			// Create output format details
			outFmts, err := buildOutFmts(name, conf, len(ctx.initial) > 1, &ctx.crossCompile)
			if err != nil {
				return nil, err
			}

			// Link main package using the output path from buildOutFmts
			err = linkMainPkg(ctx, pkg, allPkgs, outFmts.Out, verbose)
			if err != nil {
				return nil, err
			}
			if conf.Mode == ModeBuild && conf.SizeReport {
				if err := reportBinarySize(outFmts.Out, conf.SizeFormat, conf.SizeLevel, allPkgs); err != nil {
					fmt.Fprintf(os.Stderr, "Warning: size report failed: %v\n", err)
				}
			}

			// Generate C headers for c-archive and c-shared modes before linking
			if ctx.buildConf.BuildMode == BuildModeCArchive || ctx.buildConf.BuildMode == BuildModeCShared {
				libname := strings.TrimSuffix(filepath.Base(outFmts.Out), conf.AppExt)
				headerPath := filepath.Join(filepath.Dir(outFmts.Out), libname) + ".h"
				pkgs := make([]llssa.Package, 0, len(allPkgs))
				for _, p := range allPkgs {
					if p.LPkg != nil {
						pkgs = append(pkgs, p.LPkg)
					}
				}
				headerErr := header.GenHeaderFile(prog, pkgs, libname, headerPath, verbose)
				if headerErr != nil {
					return nil, headerErr
				}
				continue
			}

			envMap := outFmts.ToEnvMap()

			// Only convert formats when Target is specified
			if conf.Target != "" {
				// Process format conversions for embedded targets
				err = firmware.ConvertFormats(ctx.crossCompile.BinaryFormat, ctx.crossCompile.FormatDetail, envMap)
				if err != nil {
					return nil, err
				}
			}

			switch mode {
			case ModeBuild:
				// Do nothing

			case ModeInstall:
				// Native already installed in linkMainPkg
				if conf.Target != "" {
					err = flash.FlashDevice(ctx.crossCompile.Device, envMap, ctx.buildConf.Port, verbose)
					if err != nil {
						return nil, err
					}
				}

			case ModeRun, ModeTest, ModeCmpTest:
				if conf.Target == "" {
					err = runNative(ctx, outFmts.Out, pkg.Dir, pkg.PkgPath, conf, mode)
				} else if conf.Emulator {
					err = runInEmulator(ctx.crossCompile.Emulator, envMap, pkg.Dir, pkg.PkgPath, conf, mode, verbose)
				} else {
					err = flash.FlashDevice(ctx.crossCompile.Device, envMap, ctx.buildConf.Port, verbose)
					if err != nil {
						return nil, err
					}
					monitorConfig := monitor.MonitorConfig{
						Port:       ctx.buildConf.Port,
						Target:     conf.Target,
						Executable: outFmts.Out,
						BaudRate:   conf.BaudRate,
						SerialPort: ctx.crossCompile.Device.SerialPort,
					}
					err = monitor.Monitor(monitorConfig, verbose)
				}
				if err != nil {
					return nil, err
				}
			}
		}
	}

	if mode == ModeTest && ctx.testFail {
		mockable.Exit(1)
	}

	return allPkgs, nil
}

func needLink(pkg *packages.Package, mode Mode) bool {
	if mode == ModeTest {
		return strings.HasSuffix(pkg.ID, ".test")
	}
	return pkg.Name == "main"
}

func (p Package) setNeedRuntimeOrPyInit(needRuntime, needPyInit bool) {
	p.NeedRt = needRuntime
	p.NeedPyInit = needPyInit
}

func (p Package) isNeedRuntimeOrPyInit() (needRuntime, needPyInit bool) {
	needRuntime = p.NeedRt
	needPyInit = p.NeedPyInit
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
	pkgs    map[*packages.Package]Package // cache for lookup
	mode    Mode
	nLibdir int
	output  bool

	buildConf    *Config
	crossCompile crosscompile.Export

	cTransformer *cabi.Transformer

	testFail bool
}

func (c *context) compiler() *clang.Cmd {
	config := clang.NewConfig(
		c.crossCompile.CC,
		c.crossCompile.CCFLAGS,
		c.crossCompile.CFLAGS,
		c.crossCompile.LDFLAGS,
		c.crossCompile.Linker,
	)
	cmd := clang.NewCompiler(config)
	cmd.Verbose = c.buildConf.Verbose
	return cmd
}

func (c *context) linker() *clang.Cmd {
	config := clang.NewConfig(
		c.crossCompile.CC,
		c.crossCompile.CCFLAGS,
		c.crossCompile.CFLAGS,
		c.crossCompile.LDFLAGS,
		c.crossCompile.Linker,
	)
	cmd := clang.NewLinker(config)
	cmd.Verbose = c.buildConf.Verbose
	return cmd
}

func buildAllPkgs(ctx *context, pkgs []*aPackage, verbose bool) ([]*aPackage, error) {
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
				if ctx.buildConf.CheckLinkArgs {
					if err := ctx.compiler().CheckLinkArgs(pkgLinkArgs, isWasmTarget(ctx.buildConf.Goos)); err != nil {
						panic(fmt.Sprintf("test link args '%s' failed\n\texpanded to: %v\n\tresolved to: %v\n\terror: %v", param, expdArgs, pkgLinkArgs, err))
					}
				}
				aPkg.LinkArgs = append(aPkg.LinkArgs, pkgLinkArgs...)
			}
		default:
			err := buildPkg(ctx, aPkg, verbose)
			if err != nil {
				return nil, err
			}
			aPkg.setNeedRuntimeOrPyInit(aPkg.LPkg.NeedRuntime, aPkg.LPkg.NeedPyInit)
		}
	}
	return pkgs, nil
}

var (
	errXflags = errors.New("-X flag requires argument of the form importpath.name=value")
)

// maxRewriteValueLength limits the size of rewrite values to prevent
// excessive memory usage and potential resource exhaustion during compilation.
const maxRewriteValueLength = 1 << 20 // 1 MiB cap per rewrite value

func addGlobalString(conf *Config, arg string, mainPkgs []string) {
	addGlobalStringWith(conf, arg, mainPkgs, true)
}

func addGlobalStringWith(conf *Config, arg string, mainPkgs []string, skipIfExists bool) {
	eq := strings.Index(arg, "=")
	dot := strings.LastIndex(arg[:eq+1], ".")
	if eq < 0 || dot < 0 {
		panic(errXflags)
	}
	pkg := arg[:dot]
	varName := arg[dot+1 : eq]
	value := arg[eq+1:]
	validateRewriteInput(pkg, varName, value)
	pkgs := []string{pkg}
	if pkg == "main" {
		pkgs = mainPkgs
	}
	if len(pkgs) == 0 {
		return
	}
	if conf.GlobalRewrites == nil {
		conf.GlobalRewrites = make(map[string]Rewrites)
	}
	for _, realPkg := range pkgs {
		vars := conf.GlobalRewrites[realPkg]
		if vars == nil {
			vars = make(Rewrites)
			conf.GlobalRewrites[realPkg] = vars
		}
		if skipIfExists {
			if _, exists := vars[varName]; exists {
				continue
			}
		}
		vars[varName] = value
	}
}

func validateRewriteInput(pkg, varName, value string) {
	if pkg == "" || strings.ContainsAny(pkg, " \t\r\n") {
		panic(fmt.Errorf("invalid package path for rewrite: %q", pkg))
	}
	if !token.IsIdentifier(varName) {
		panic(fmt.Errorf("invalid variable name for rewrite: %q", varName))
	}
	if len(value) > maxRewriteValueLength {
		panic(fmt.Errorf("rewrite value too large: %d bytes", len(value)))
	}
}

// compileExtraFiles compiles extra files (.s/.c) from target configuration and returns object files
func compileExtraFiles(ctx *context, verbose bool) ([]string, error) {
	if len(ctx.crossCompile.ExtraFiles) == 0 {
		return nil, nil
	}

	var objFiles []string
	llgoRoot := env.LLGoROOT()

	for _, extraFile := range ctx.crossCompile.ExtraFiles {
		// Resolve the file path relative to llgo root
		srcFile := filepath.Join(llgoRoot, extraFile)

		// Check if file exists
		if _, err := os.Stat(srcFile); os.IsNotExist(err) {
			return nil, fmt.Errorf("extra file not found: %s", srcFile)
		}

		// Generate output file name
		objFile, err := os.CreateTemp("", "extra-*"+filepath.Base(extraFile))
		if err != nil {
			return nil, fmt.Errorf("failed to create temp file for %s: %w", extraFile, err)
		}
		objFile.Close()

		var outputFile string
		ext := filepath.Ext(srcFile)

		if ctx.buildConf.GenLL {
			outputFile = objFile.Name() + ".ll"
		} else {
			outputFile = objFile.Name() + ".o"
		}

		// Prepare compilation arguments
		var args []string

		// Handle different file types
		switch ext {
		case ".c":
			args = append(args, "-x", "c")
		case ".S", ".s":
			args = append(args, "-x", "assembler-with-cpp")
		}

		// Add output flags
		if ctx.buildConf.GenLL {
			args = append(args, "-emit-llvm", "-S", "-o", outputFile, "-c", srcFile)
		} else {
			args = append(args, "-o", outputFile, "-c", srcFile)
		}

		if verbose {
			fmt.Fprintf(os.Stderr, "Compiling extra file: clang %s\n", strings.Join(args, " "))
		}

		// Compile the file
		cmd := ctx.compiler()
		if err := cmd.Compile(args...); err != nil {
			return nil, fmt.Errorf("failed to compile extra file %s: %w", srcFile, err)
		}

		objFiles = append(objFiles, outputFile)
		os.Remove(objFile.Name()) // Remove the temp file we created for naming
	}

	return objFiles, nil
}

func linkMainPkg(ctx *context, pkg *packages.Package, pkgs []*aPackage, outputPath string, verbose bool) error {
	needRuntime := false
	needPyInit := false
	allPkgs := []*packages.Package{pkg}
	for _, v := range pkgs {
		allPkgs = append(allPkgs, v.Package)
	}
	var objFiles []string
	var linkArgs []string
	packages.Visit(allPkgs, nil, func(p *packages.Package) {
		aPkg := ctx.pkgs[p]
		if p.ExportFile != "" && aPkg != nil { // skip packages that only contain declarations
			linkArgs = append(linkArgs, aPkg.LinkArgs...)
			objFiles = append(objFiles, aPkg.LLFiles...)
			need1, need2 := aPkg.isNeedRuntimeOrPyInit()
			needRuntime = needRuntime || need1
			needPyInit = needPyInit || need2
		}
	})
	// Generate main module file (needed for global variables even in library modes)
	entryPkg := genMainModule(ctx, llssa.PkgRuntime, pkg, needRuntime, needPyInit)
	entryObjFile, err := exportObject(ctx, entryPkg.PkgPath, entryPkg.ExportFile, []byte(entryPkg.LPkg.String()))
	if err != nil {
		return err
	}
	objFiles = append(objFiles, entryObjFile)

	// Compile extra files from target configuration
	extraObjFiles, err := compileExtraFiles(ctx, verbose)
	if err != nil {
		return err
	}
	objFiles = append(objFiles, extraObjFiles...)

	if IsFullRpathEnabled() {
		// Treat every link-time library search path, specified by the -L parameter, as a runtime search path as well.
		// This is to ensure the final executable can locate libraries with a relocatable install_name
		// (e.g., "@rpath/libfoo.dylib") at runtime.
		rpaths := make(map[string]none)
		for _, arg := range linkArgs {
			if strings.HasPrefix(arg, "-L") {
				path := arg[2:]
				if _, ok := rpaths[path]; ok {
					continue
				}
				rpaths[path] = none{}
				linkArgs = append(linkArgs, "-rpath", path)
			}
		}
	}

	err = linkObjFiles(ctx, outputPath, objFiles, linkArgs, verbose)
	if err != nil {
		return err
	}

	return nil
}

func linkObjFiles(ctx *context, app string, objFiles, linkArgs []string, verbose bool) error {
	// Handle c-archive mode differently - use ar tool instead of linker
	if ctx.buildConf.BuildMode == BuildModeCArchive {
		return createStaticArchive(ctx, app, objFiles, verbose)
	}

	buildArgs := []string{"-o", app}
	buildArgs = append(buildArgs, linkArgs...)

	// Add build mode specific linker arguments
	switch ctx.buildConf.BuildMode {
	case BuildModeCShared:
		buildArgs = append(buildArgs, "-shared", "-fPIC")
	case BuildModeExe:
		// Default executable mode, no additional flags needed
	}

	// Add common linker arguments based on target OS and architecture
	if IsDbgSymsEnabled() {
		buildArgs = append(buildArgs, "-gdwarf-4")
	}

	if ctx.buildConf.GenLL {
		var compiledObjFiles []string
		for _, objFile := range objFiles {
			if strings.HasSuffix(objFile, ".ll") {
				oFile := strings.TrimSuffix(objFile, ".ll") + ".o"
				args := []string{"-o", oFile, "-c", objFile, "-Wno-override-module"}
				if verbose {
					fmt.Fprintln(os.Stderr, "clang", args)
				}
				if err := ctx.compiler().Compile(args...); err != nil {
					return fmt.Errorf("failed to compile %s: %v", objFile, err)
				}
				compiledObjFiles = append(compiledObjFiles, oFile)
			} else {
				compiledObjFiles = append(compiledObjFiles, objFile)
			}
		}
		objFiles = compiledObjFiles
	}

	buildArgs = append(buildArgs, objFiles...)

	cmd := ctx.linker()
	cmd.Verbose = verbose
	return cmd.Link(buildArgs...)
}

func createStaticArchive(ctx *context, archivePath string, objFiles []string, verbose bool) error {
	// Use ar tool to create static archive
	args := []string{"rcs", archivePath}
	args = append(args, objFiles...)

	if verbose {
		fmt.Fprintf(os.Stderr, "ar %s\n", strings.Join(args, " "))
	}

	cmd := exec.Command("ar", args...)
	output, err := cmd.CombinedOutput()
	if err != nil {
		if verbose && len(output) > 0 {
			fmt.Fprintf(os.Stderr, "ar output: %s\n", output)
		}
		return fmt.Errorf("ar command failed: %w", err)
	}

	return nil
}

func isWasmTarget(goos string) bool {
	return slices.Contains([]string{"wasi", "js", "wasip1"}, goos)
}

func needStart(ctx *context) bool {
	if ctx.buildConf.Target == "" {
		return !isWasmTarget(ctx.buildConf.Goos)
	}
	switch ctx.buildConf.Target {
	case "wasip2":
		return false
	default:
		// since newlib-esp32 provides _start, we don't need to provide a fake _start function
		return ctx.crossCompile.Libc != "newlib-esp32"
	}
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

	ret, externs, err := cl.NewPackageEx(ctx.prog, ctx.patches, aPkg.rewriteVars, aPkg.SSA, syntax)
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
		exportFile, err := exportObject(ctx, pkg.PkgPath, pkg.ExportFile, []byte(ret.String()))
		if err != nil {
			return fmt.Errorf("export object of %v failed: %v", pkgPath, err)
		}
		aPkg.LLFiles = append(aPkg.LLFiles, exportFile)
		if debugBuild || verbose {
			fmt.Fprintf(os.Stderr, "==> Export %s: %s\n", aPkg.PkgPath, pkg.ExportFile)
		}
	}
	return nil
}

func exportObject(ctx *context, pkgPath string, exportFile string, data []byte) (string, error) {
	base := filepath.Base(exportFile)
	f, err := os.CreateTemp("", base+"-*.ll")
	if err != nil {
		return "", err
	}
	if _, err := f.Write(data); err != nil {
		f.Close()
		return "", err
	}
	err = f.Close()
	if err != nil {
		return exportFile, err
	}
	if ctx.buildConf.CheckLLFiles {
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
	objFile, err := os.CreateTemp("", base+"-*.o")
	if err != nil {
		return "", err
	}
	objFile.Close()
	args := []string{"-o", objFile.Name(), "-c", f.Name(), "-Wno-override-module"}
	if ctx.buildConf.Verbose {
		fmt.Fprintln(os.Stderr, "clang", args)
	}
	cmd := ctx.compiler()
	return objFile.Name(), cmd.Compile(args...)
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

	NeedRt     bool
	NeedPyInit bool

	LinkArgs    []string
	LLFiles     []string
	rewriteVars map[string]string
}

type Package = *aPackage

func buildSSAPkgs(ctx *context, initial []*packages.Package, verbose bool) ([]*aPackage, error) {
	prog := ctx.progSSA
	built := ctx.built
	var all []*aPackage
	var errs []*packages.Package
	packages.Visit(initial, nil, func(p *packages.Package) {
		if p.Types != nil && !p.IllTyped {
			pkgPath := p.PkgPath
			if _, ok := built[pkgPath]; ok || strings.HasPrefix(pkgPath, altPkgPathPrefix) {
				return
			}
			var altPkg *packages.Cached
			var ssaPkg = createSSAPkg(ctx, prog, p, verbose)
			if llruntime.HasAltPkg(pkgPath) {
				if altPkg = ctx.dedup.Check(altPkgPathPrefix + pkgPath); altPkg == nil {
					return
				}
			}
			rewrites := collectRewriteVars(ctx, pkgPath)
			aPkg := &aPackage{
				Package:     p,
				SSA:         ssaPkg,
				AltPkg:      altPkg,
				LPkg:        nil,
				NeedRt:      false,
				NeedPyInit:  false,
				LinkArgs:    nil,
				LLFiles:     nil,
				rewriteVars: rewrites,
			}
			ctx.pkgs[p] = aPkg
			all = append(all, aPkg)
		} else {
			errs = append(errs, p)
		}
	})
	if len(errs) > 0 {
		for _, errPkg := range errs {
			for _, err := range errPkg.Errors {
				fmt.Fprintln(os.Stderr, err)
			}
			fmt.Fprintln(os.Stderr, "cannot build SSA for package", errPkg)
		}
		return nil, fmt.Errorf("cannot build SSA for packages")
	}
	return all, nil
}

func collectRewriteVars(ctx *context, pkgPath string) map[string]string {
	data := ctx.buildConf.GlobalRewrites
	if len(data) == 0 {
		return nil
	}
	basePath := strings.TrimPrefix(pkgPath, altPkgPathPrefix)
	if vars := data[basePath]; vars != nil {
		return cloneRewrites(vars)
	}
	if vars := data[pkgPath]; vars != nil {
		return cloneRewrites(vars)
	}
	return nil
}

func cloneRewrites(src Rewrites) map[string]string {
	if len(src) == 0 {
		return nil
	}
	dup := make(map[string]string, len(src))
	for k, v := range src {
		dup[k] = v
	}
	return dup
}

func toTypeList(args *types.TypeList) []types.Type {
	if args == nil {
		return nil
	}
	result := make([]types.Type, args.Len())
	for i := 0; i < args.Len(); i++ {
		result[i] = args.At(i)
	}
	return result
}

func applyPatches(ctx *context, p *packages.Package, verbose bool) {
	// fix instance patch
	for id, inst := range p.TypesInfo.Instances {
		if obj := p.TypesInfo.Uses[id]; obj != nil && obj.Pkg() != nil && obj.Pkg() != p.Types {
			if pkg := obj.Pkg(); pkg != nil && pkg != p.Types {
				if patch, ok := ctx.patches[pkg.Path()]; ok {
					if robj := patch.Alt.Pkg.Scope().Lookup(obj.Name()); robj != nil {
						typ, err := types.Instantiate(nil, robj.Type(), toTypeList(inst.TypeArgs), true)
						if err != nil {
							if debugBuild || verbose {
								log.Printf("==> Instance patch failed for %q: %v\n", obj.Id(), err)
							}
							continue
						}
						inst.Type = typ
						p.TypesInfo.Instances[id] = inst
						p.TypesInfo.Uses[id] = robj
					}
				}
			}
		}
	}
}

func createSSAPkg(ctx *context, prog *ssa.Program, p *packages.Package, verbose bool) *ssa.Package {
	pkgSSA := prog.ImportedPackage(p.ID)
	if pkgSSA == nil {
		if debugBuild || verbose {
			log.Println("==> BuildSSA", p.ID)
		}
		applyPatches(ctx, p, verbose)
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
const llgoWasmRuntime = "LLGO_WASM_RUNTIME"
const llgoWasiThreads = "LLGO_WASI_THREADS"
const llgoStdioNobuf = "LLGO_STDIO_NOBUF"
const llgoFullRpath = "LLGO_FULL_RPATH"

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

func IsWasiThreadsEnabled() bool {
	return isEnvOn(llgoWasiThreads, true)
}

func IsFullRpathEnabled() bool {
	return isEnvOn(llgoFullRpath, true)
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

type none struct{}

func check(err error) {
	if err != nil {
		panic(err)
	}
}

// -----------------------------------------------------------------------------
