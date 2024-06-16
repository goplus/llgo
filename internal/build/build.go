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
	"log"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"runtime"
	"strings"

	"golang.org/x/tools/go/ssa"

	"github.com/goplus/llgo/cl"
	"github.com/goplus/llgo/internal/packages"
	"github.com/goplus/llgo/internal/typepatch"
	"github.com/goplus/llgo/xtool/clang"
	"github.com/goplus/llgo/xtool/env"

	llssa "github.com/goplus/llgo/ssa"
	clangCheck "github.com/goplus/llgo/xtool/clang/check"
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
		Fset:       token.NewFileSet(),
	}

	llssa.Initialize(llssa.InitAll)
	if verbose {
		llssa.SetDebug(llssa.DbgFlagAll)
		cl.SetDebug(cl.DbgFlagAll)
	}

	prog := llssa.NewProgram(nil)
	sizes := prog.TypeSizes
	dedup := packages.NewDeduper()

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

	var needRt bool
	var rt []*packages.Package
	load := func() []*packages.Package {
		if rt == nil {
			var err error
			rt, err = packages.LoadEx(dedup, sizes, cfg, llssa.PkgRuntime, llssa.PkgPython)
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

	imp := func(pkgPath string) *packages.Package {
		if ret, e := packages.LoadEx(dedup, sizes, cfg, pkgPath); e == nil {
			return ret[0]
		}
		return nil
	}

	progSSA := ssa.NewProgram(initial[0].Fset, ssaBuildMode)
	pkgs := buildAllPkgs(prog, progSSA, imp, initial, nil, mode, verbose)

	var runtimeFiles []string
	if needRt {
		// TODO(xsw): maybe we need trace runtime sometimes
		llssa.SetDebug(0)
		cl.SetDebug(0)

		skip := make(map[string]bool)
		for _, v := range pkgs {
			skip[v.PkgPath] = true
		}
		dpkg := buildAllPkgs(prog, progSSA, imp, rt[:1], skip, mode, verbose)
		for _, pkg := range dpkg {
			if !strings.HasSuffix(pkg.ExportFile, ".ll") {
				continue
			}
			runtimeFiles = append(runtimeFiles, pkg.ExportFile)
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
	ssaBuildMode = ssa.SanityCheckFunctions
)

func buildAllPkgs(prog llssa.Program, progSSA *ssa.Program, imp importer, initial []*packages.Package, skip map[string]bool, mode Mode, verbose bool) (pkgs []*aPackage) {
	// Create SSA-form program representation.
	pkgs, errPkgs := allPkgs(progSSA, imp, initial, verbose)
	for _, errPkg := range errPkgs {
		for _, err := range errPkg.Errors {
			fmt.Fprintln(os.Stderr, err)
		}
		fmt.Fprintln(os.Stderr, "cannot build SSA for package", errPkg)
	}
	for _, aPkg := range pkgs {
		pkg := aPkg.Package
		if skip[pkg.PkgPath] {
			pkg.ExportFile = ""
			continue
		}
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
				// format: ';' separated alternative link methods. e.g.
				//   link: $LLGO_LIB_PYTHON; $(pkg-config --libs python3-embed); -lpython3
				expd := ""
				altParts := strings.Split(param, ";")
				for _, param := range altParts {
					expd = strings.TrimSpace(env.ExpandEnv(strings.TrimSpace(param)))
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
	const N = 6
	args := make([]string, N, len(pkg.Imports)+len(runtimeFiles)+(N+1))
	args[0] = "-o"
	args[1] = app
	args[2] = "-Wno-override-module"
	args[3] = "-fuse-ld=lld"
	args[4] = "-Xlinker"
	if runtime.GOOS == "darwin" { // ld64.lld (macOS)
		args[5] = "-dead_strip"
	} else { // ld.lld (Unix), lld-link (Windows), wasm-ld (WebAssembly)
		args[5] = "--gc-sections"
	}
	//args[6] = "-O2"
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
	if needRuntime && runtimeFiles != nil {
		for _, file := range runtimeFiles {
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
		if s := cmd.ProcessState; s != nil {
			os.Exit(s.ExitCode())
		}
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
	altSSA := aPkg.AltSSA
	syntax := pkg.Syntax
	if altPkg := aPkg.AltPkg; altPkg != nil {
		syntax = append(syntax, altPkg.Syntax...)
		if altSSA != nil {
			altSSA.Pkg = typepatch.Pkg(pkg.Types, altPkg.Types)
		}
	}
	ret, err := cl.NewPackageEx(prog, aPkg.SSA, altSSA, syntax)
	check(err)
	if needLLFile(mode) {
		pkg.ExportFile += ".ll"
		os.WriteFile(pkg.ExportFile, []byte(ret.String()), 0644)
	}
	aPkg.LPkg = ret
}

func canSkipToBuild(pkgPath string) bool {
	switch pkgPath {
	case "unsafe", "errors":
		return true
	default:
		return strings.HasPrefix(pkgPath, "internal/") ||
			strings.HasPrefix(pkgPath, "runtime/internal/")
	}
}

type aPackage struct {
	*packages.Package
	SSA    *ssa.Package
	AltPkg *packages.Package
	AltSSA *ssa.Package
	LPkg   llssa.Package
}

type none struct{}

var hasAltPkg = map[string]none{
	"math":        {},
	"sync":        {},
	"sync/atomic": {},
	"runtime":     {},
}

type importer = func(pkgPath string) *packages.Package

func allPkgs(prog *ssa.Program, imp importer, initial []*packages.Package, verbose bool) (all []*aPackage, errs []*packages.Package) {
	packages.Visit(initial, nil, func(p *packages.Package) {
		if p.Types != nil && !p.IllTyped {
			var altPkg *packages.Package
			var altSSA *ssa.Package
			var ssaPkg = createSSAPkg(prog, p)
			if imp != nil {
				if _, ok := hasAltPkg[p.PkgPath]; ok {
					if verbose {
						log.Println("==> Patching", p.PkgPath)
					}
					altPkgPath := "github.com/goplus/llgo/internal/lib/" + p.PkgPath
					if altPkg = imp(altPkgPath); altPkg != nil { // TODO(xsw): how to minimize import times
						altSSA = createAltSSAPkg(prog, altPkg)
					}
				}
			}
			all = append(all, &aPackage{p, ssaPkg, altPkg, altSSA, nil})
		} else {
			errs = append(errs, p)
		}
	})
	return
}

func createAltSSAPkg(prog *ssa.Program, alt *packages.Package) *ssa.Package {
	altSSA := prog.ImportedPackage(alt.PkgPath)
	if altSSA == nil {
		packages.Visit([]*packages.Package{alt}, nil, func(p *packages.Package) {
			if p.Types != nil && !p.IllTyped {
				createSSAPkg(prog, p)
			}
		})
		altSSA = prog.ImportedPackage(alt.PkgPath)
	}
	return altSSA
}

func createSSAPkg(prog *ssa.Program, p *packages.Package) *ssa.Package {
	pkgSSA := prog.ImportedPackage(p.PkgPath)
	if pkgSSA == nil {
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
	llgoPkgLinkFiles(pkgPath, "", func(linkFile string) {
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

func llgoPkgLinkFiles(pkgPath string, llFile string, procFile func(linkFile string)) {
	dir := llgoRoot() + pkgPath[len(llgoModPath):] + "/"
	if llFile == "" {
		llFile = "llgo_autogen.ll"
	}
	llPath := dir + llFile
	llaPath := llPath + "a"
	zipf, err := zip.OpenReader(llaPath)
	if err != nil {
		procFile(llPath)
		return
	}
	defer zipf.Close()

	for _, f := range zipf.File {
		procFile(dir + f.Name)
	}
	if _, err := os.Stat(llPath); os.IsNotExist(err) {
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
