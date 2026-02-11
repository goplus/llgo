package build

import (
	"bytes"
	"encoding/json"
	"fmt"
	"go/ast"
	"go/constant"
	"go/types"
	"os"
	"os/exec"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"
	"sync"

	"github.com/goplus/llgo/internal/cabi"
	"github.com/goplus/llgo/internal/packages"
	"github.com/goplus/llgo/internal/plan9asm"
	intllvm "github.com/goplus/llgo/internal/xtool/llvm"
	llruntime "github.com/goplus/llgo/runtime"
	gllvm "github.com/goplus/llvm"
)

type Plan9AsmFunctionInfo struct {
	// TextSymbol is the raw symbol from TEXT (e.g. "·IndexByte",
	// "runtime·cmpstring<ABIInternal>", "cmpbody<>").
	TextSymbol string `json:"text_symbol"`
	// ResolvedSymbol is the final linker symbol used in generated LLVM IR.
	ResolvedSymbol string `json:"resolved_symbol"`
}

type Plan9AsmFileTranslation struct {
	LLVMIR string `json:"-"`
	// Signatures is the exact symbol->signature map passed to plan9asm.Translate.
	Signatures map[string]plan9asm.FuncSig `json:"signatures"`
	// Functions records TEXT symbol resolution for this .s file.
	Functions []Plan9AsmFunctionInfo `json:"functions"`
}

type TranslatePlan9AsmOptions struct {
	AnnotateSource bool
}

// compilePkgSFiles translates Go/Plan9 assembly files selected by `go list -json`
// for this package/target into LLVM IR, compiles them to .o, and returns the
// object files for linking.
//
// NOTE: golang.org/x/tools/go/packages.Package does not expose SFiles, so we
// query `go list -json` here to get the exact filtered set for GOOS/GOARCH.
func compilePkgSFiles(ctx *context, aPkg *aPackage, pkg *packages.Package, verbose bool) ([]string, error) {
	sfiles, err := pkgSFiles(ctx, pkg)
	if err != nil {
		return nil, err
	}
	if len(sfiles) == 0 {
		return nil, nil
	}
	if !ctx.plan9asmEnabled(pkg.PkgPath) {
		// Strong policy: selected Plan9 asm must be handled either by
		// translation or by an explicit runtime alt patch.
		if !llruntime.HasAltPkg(pkg.PkgPath) {
			// Some stdlib .s files are placeholders without any TEXT bodies
			// (e.g. runtime/debug/debug.s). They carry no executable asm and
			// are safe to ignore.
			hasText, err := hasAnyTextAsm(ctx, sfiles)
			if err != nil {
				return nil, fmt.Errorf("%s: inspect asm files: %w", pkg.PkgPath, err)
			}
			if !hasText {
				return nil, nil
			}
			return nil, fmt.Errorf("%s: selected .s files require plan9asm translation; add support or whitelist via runtime/build.go hasAltPkg", pkg.PkgPath)
		}
		return nil, nil
	}
	if pkg.Types == nil || pkg.Types.Scope() == nil {
		return nil, fmt.Errorf("%s: missing types (needed for asm signatures)", pkg.PkgPath)
	}

	objFiles := make([]string, 0, len(sfiles))
	for _, sfile := range sfiles {
		src, err := readFileWithOverlay(ctx.conf.Overlay, sfile)
		if err != nil {
			return nil, fmt.Errorf("%s: read %s: %w", pkg.PkgPath, sfile, err)
		}
		tr, err := translatePlan9AsmSourceForPkg(pkg, sfile, src, ctx.buildConf.Goos, ctx.buildConf.Goarch)
		if err != nil {
			// Some stdlib .s files are comment-only placeholders (e.g. internal/cpu/cpu.s).
			// Skip those silently.
			if strings.Contains(err.Error(), "no TEXT directive found") {
				continue
			}
			return nil, fmt.Errorf("%s: translate %s: %w", pkg.PkgPath, sfile, err)
		}
		ll := tr.LLVMIR

		baseName := aPkg.ExportFile + filepath.Base(sfile) // used for stable debug output paths
		tmpPrefix := "plan9asm-" + filepath.Base(sfile) + "-"

		llFile, err := os.CreateTemp("", tmpPrefix+"*.ll")
		if err != nil {
			return nil, fmt.Errorf("%s: create temp .ll for %s: %w", pkg.PkgPath, sfile, err)
		}
		llPath := llFile.Name()
		if _, err := llFile.WriteString(ll); err != nil {
			llFile.Close()
			os.Remove(llPath)
			return nil, fmt.Errorf("%s: write temp .ll for %s: %w", pkg.PkgPath, sfile, err)
		}
		if err := llFile.Close(); err != nil {
			os.Remove(llPath)
			return nil, fmt.Errorf("%s: close temp .ll for %s: %w", pkg.PkgPath, sfile, err)
		}
		defer os.Remove(llPath)

		// Keep a copy of translated .ll when GenLL is enabled (mirrors clFile/exportObject).
		if ctx.buildConf.GenLL {
			dst := baseName + ".ll"
			if err := os.Chmod(llPath, 0644); err != nil {
				return nil, fmt.Errorf("%s: chmod temp .ll for %s: %w", pkg.PkgPath, sfile, err)
			}
			if err := copyFileAtomic(llPath, dst); err != nil {
				return nil, fmt.Errorf("%s: keep .ll for %s: %w", pkg.PkgPath, sfile, err)
			}
		}

		objFile, err := os.CreateTemp("", tmpPrefix+"*.o")
		if err != nil {
			return nil, fmt.Errorf("%s: create temp .o for %s: %w", pkg.PkgPath, sfile, err)
		}
		objPath := objFile.Name()
		objFile.Close()

		args := []string{"-o", objPath, "-c", llPath, "-Wno-override-module"}
		if ctx.shouldPrintCommands(verbose) {
			fmt.Fprintf(os.Stderr, "# compiling %s for pkg: %s\n", objPath, pkg.PkgPath)
			fmt.Fprintln(os.Stderr, "clang", args)
		}
		if err := ctx.compiler().Compile(args...); err != nil {
			os.Remove(objPath)
			return nil, fmt.Errorf("%s: clang compile asm ll for %s: %w", pkg.PkgPath, sfile, err)
		}
		objFiles = append(objFiles, objPath)
	}

	return objFiles, nil
}

// TranslatePlan9AsmFileForPkg translates a single Plan9 asm source file using
// the same symbol resolution/signature inference path as normal llgo builds.
//
// This is intended for debugging ABI/signature mismatches and translator bugs.
func TranslatePlan9AsmFileForPkg(pkg *packages.Package, sfile string, goos string, goarch string, overlay map[string][]byte) (*Plan9AsmFileTranslation, error) {
	return TranslatePlan9AsmFileForPkgWithOptions(pkg, sfile, goos, goarch, overlay, TranslatePlan9AsmOptions{})
}

// TranslatePlan9AsmFileForPkgWithOptions is the same as
// TranslatePlan9AsmFileForPkg but allows debug-oriented translation options.
func TranslatePlan9AsmFileForPkgWithOptions(pkg *packages.Package, sfile string, goos string, goarch string, overlay map[string][]byte, opt TranslatePlan9AsmOptions) (*Plan9AsmFileTranslation, error) {
	if pkg == nil {
		return nil, fmt.Errorf("nil package")
	}
	src, err := readFileWithOverlay(overlay, sfile)
	if err != nil {
		return nil, err
	}
	return translatePlan9AsmSourceForPkgWithOptions(pkg, sfile, src, goos, goarch, opt)
}

func translatePlan9AsmSourceForPkg(pkg *packages.Package, sfile string, src []byte, goos string, goarch string) (*Plan9AsmFileTranslation, error) {
	return translatePlan9AsmSourceForPkgWithOptions(pkg, sfile, src, goos, goarch, TranslatePlan9AsmOptions{})
}

func translatePlan9AsmSourceForPkgWithOptions(pkg *packages.Package, sfile string, src []byte, goos string, goarch string, opt TranslatePlan9AsmOptions) (*Plan9AsmFileTranslation, error) {
	if pkg == nil {
		return nil, fmt.Errorf("nil package")
	}
	if pkg.PkgPath == "" {
		return nil, fmt.Errorf("empty package path")
	}
	if pkg.Types == nil || pkg.Types.Scope() == nil {
		return nil, fmt.Errorf("%s: missing types (needed for asm signatures)", pkg.PkgPath)
	}

	arch, err := plan9asmArch(goarch)
	if err != nil {
		return nil, fmt.Errorf("%s: %w", pkg.PkgPath, err)
	}
	triple := intllvm.GetTargetTriple(goos, goarch)
	resolve := plan9asmResolveSymFunc(pkg.PkgPath)

	// Go/Plan9 asm can reference Go constants as "const_<Name>".
	// Example: internal/cpu·X86+const_offsetX86HasAVX2(SB) where offsetX86HasAVX2
	// is a Go constant defined in the same package.
	if bytes.Contains(src, []byte("const_")) {
		importTypes := map[string]*types.Package{}
		for path, imp := range pkg.Imports {
			if imp != nil && imp.Types != nil {
				importTypes[path] = imp.Types
			}
		}
		src = expandPlan9AsmConsts(src, pkg.Types, importTypes)
	}

	file, err := plan9asm.Parse(arch, string(src))
	if err != nil {
		return nil, fmt.Errorf("%s: parse %s: %w", pkg.PkgPath, sfile, err)
	}
	file.Funcs = filterPlan9AsmFuncs(pkg.PkgPath, goos, goarch, file.Funcs, resolve)
	sigs, err := sigsForAsmFile(pkg, file, resolve, goarch)
	if err != nil {
		return nil, fmt.Errorf("%s: sigs %s: %w", pkg.PkgPath, sfile, err)
	}
	ll, err := plan9asm.Translate(file, plan9asm.Options{
		TargetTriple:   triple,
		ResolveSym:     resolve,
		Sigs:           sigs,
		Goarch:         goarch,
		AnnotateSource: opt.AnnotateSource,
	})
	if err != nil {
		return nil, fmt.Errorf("%s: translate %s: %w", pkg.PkgPath, sfile, err)
	}

	funcs := make([]Plan9AsmFunctionInfo, 0, len(file.Funcs))
	for _, fn := range file.Funcs {
		sym := stripABISuffix(fn.Sym)
		funcs = append(funcs, Plan9AsmFunctionInfo{
			TextSymbol:     fn.Sym,
			ResolvedSymbol: resolve(sym),
		})
	}

	return &Plan9AsmFileTranslation{
		LLVMIR:     ll,
		Signatures: sigs,
		Functions:  funcs,
	}, nil
}

func filterPlan9AsmFuncs(pkgPath, goos, goarch string, funcs []plan9asm.Func, resolve func(sym string) string) []plan9asm.Func {
	if len(funcs) == 0 {
		return funcs
	}
	keep := funcs[:0]
	for _, fn := range funcs {
		resolved := resolve(stripABISuffix(fn.Sym))
		// Linux/arm64 syscall rawVforkSyscall is provided by runtime via linkname.
		// Skip the asm body to avoid duplicate definitions and to use the llgo-specific
		// implementation consistently across supported Go toolchains.
		if pkgPath == "syscall" && goos == "linux" && goarch == "arm64" && resolved == "syscall.rawVforkSyscall" {
			continue
		}
		keep = append(keep, fn)
	}
	return keep
}

type plan9AsmSigCacheKey struct {
	ctx     *context
	pkgPath string
}

var plan9AsmSigCache sync.Map // key: plan9AsmSigCacheKey, value: map[string]struct{}

func plan9asmSigsForPkg(ctx *context, pkgPath string) (map[string]struct{}, error) {
	if ctx == nil || pkgPath == "" {
		return nil, nil
	}
	key := plan9AsmSigCacheKey{ctx: ctx, pkgPath: pkgPath}
	if v, ok := plan9AsmSigCache.Load(key); ok {
		return v.(map[string]struct{}), nil
	}

	sigs := make(map[string]struct{})
	if !ctx.plan9asmEnabled(pkgPath) {
		plan9AsmSigCache.Store(key, sigs)
		return sigs, nil
	}

	var pkg *packages.Package
	for p := range ctx.pkgs {
		if p != nil && p.PkgPath == pkgPath {
			pkg = p
			break
		}
	}
	if pkg == nil {
		plan9AsmSigCache.Store(key, sigs)
		return sigs, nil
	}

	sfiles, err := pkgSFiles(ctx, pkg)
	if err != nil {
		return nil, err
	}
	for _, sfile := range sfiles {
		src, err := readFileWithOverlay(ctx.conf.Overlay, sfile)
		if err != nil {
			return nil, fmt.Errorf("%s: read %s: %w", pkg.PkgPath, sfile, err)
		}
		tr, err := translatePlan9AsmSourceForPkg(pkg, sfile, src, ctx.buildConf.Goos, ctx.buildConf.Goarch)
		if err != nil {
			if strings.Contains(err.Error(), "no TEXT directive found") {
				continue
			}
			return nil, fmt.Errorf("%s: translate %s: %w", pkg.PkgPath, sfile, err)
		}
		for name := range tr.Signatures {
			sigs[name] = struct{}{}
		}
	}
	plan9AsmSigCache.Store(key, sigs)
	return sigs, nil
}

func symbolPkgPath(sym string) string {
	if sym == "" {
		return ""
	}
	pos := strings.LastIndexByte(sym, '.')
	if pos <= 0 {
		return ""
	}
	return sym[:pos]
}

func cabiSkipFuncsForPlan9Asm(ctx *context, pkgPath string, mod gllvm.Module) []string {
	if ctx == nil || mod.IsNil() || ctx.buildConf == nil {
		return nil
	}
	if ctx.buildConf.AbiMode != cabi.ModeAllFunc {
		return nil
	}
	skip := make(map[string]struct{})

	ownSigs, err := plan9asmSigsForPkg(ctx, pkgPath)
	check(err)
	for name := range ownSigs {
		skip[name] = struct{}{}
	}

	fn := mod.FirstFunction()
	for !fn.IsNil() {
		if fn.IsDeclaration() {
			name := fn.Name()
			depPkgPath := symbolPkgPath(name)
			if depPkgPath != "" && depPkgPath != pkgPath {
				depSigs, err := plan9asmSigsForPkg(ctx, depPkgPath)
				check(err)
				if _, ok := depSigs[name]; ok {
					skip[name] = struct{}{}
				}
			}
		}
		fn = gllvm.NextFunction(fn)
	}

	// syscall has mixed Go + asm on darwin. Cross-package callers must ABI-rewrite
	// Go entry points; only the package's own build should keep skip entries for
	// its asm trampolines.
	if pkgPath != "syscall" {
		for name := range skip {
			if strings.HasPrefix(name, "syscall.") {
				delete(skip, name)
			}
		}
	}
	// syscall on darwin declares syscall/rawSyscall entry points in Go, but
	// their implementations are provided by runtime via //go:linkname rather
	// than package-local Plan9 asm.
	delete(skip, "syscall.Syscall")
	delete(skip, "syscall.Syscall6")
	delete(skip, "syscall.Syscall6X")
	delete(skip, "syscall.SyscallPtr")
	delete(skip, "syscall.RawSyscall")
	delete(skip, "syscall.RawSyscall6")
	delete(skip, "syscall.syscall")
	delete(skip, "syscall.syscall6")
	delete(skip, "syscall.syscall6X")
	delete(skip, "syscall.syscallPtr")
	delete(skip, "syscall.rawSyscall")
	delete(skip, "syscall.rawSyscall6")
	// internal/syscall/unix has mixed Go + asm on darwin. Cross-package callers
	// must ABI-rewrite Go entry points like Fcntl; only the package's own build
	// should keep skip entries for its asm trampolines.
	if pkgPath != "internal/syscall/unix" {
		for name := range skip {
			if strings.HasPrefix(name, "internal/syscall/unix.") {
				delete(skip, name)
			}
		}
	}
	if len(skip) == 0 {
		return nil
	}
	names := make([]string, 0, len(skip))
	for name := range skip {
		names = append(names, name)
	}
	return names
}

func plan9asmResolveSymFunc(pkgPath string) func(sym string) string {
	return func(sym string) string {
		sym = stripABISuffix(sym)
		// Stdlib asm uses "<>" suffix for local/internal helpers. It does not
		// matter for linkage as long as references are consistent, and trimming
		// simplifies signature mappings for asm-only helpers.
		sym = strings.TrimSuffix(sym, "<>")
		// internal/bytealg includes many package-local helper symbols like
		// "cmpbody<>" and "countbytebody<>". Namespace them to avoid collisions
		// with other packages when we translate more stdlib asm.
		if pkgPath == "internal/bytealg" {
			// Keep cross-package symbols (e.g. runtime·memequal) in their home package.
			if strings.HasPrefix(sym, "runtime·") {
				sym = strings.ReplaceAll(sym, "∕", "/")
				return strings.ReplaceAll(sym, "·", ".")
			}
			// Package-local TEXT ·Foo or Foo.
			s := strings.TrimPrefix(sym, "·")
			s = strings.ReplaceAll(s, "∕", "/")
			s = strings.ReplaceAll(s, "·", ".")
			// If this is a simple local name (no pkg path), prefix with the package path.
			if !strings.Contains(s, "/") && !strings.Contains(s, ".") {
				return pkgPath + "." + s
			}
			// Otherwise treat it as already-qualified.
			return s
		}
		// Local symbols use the Plan 9 middle dot (·) for package separator.
		// For package-local TEXT ·foo(SB), we map to "import/path.foo".
		if strings.HasPrefix(sym, "·") {
			return pkgPath + "." + strings.TrimPrefix(sym, "·")
		}
		// Some stdlib asm sources use the unicode division slash (∕) to represent
		// '/' in package paths. Normalize it to avoid mismatched symbol names.
		// Example: internal∕cpu·X86 -> internal/cpu.X86
		sym = strings.ReplaceAll(sym, "∕", "/")
		return strings.ReplaceAll(sym, "·", ".")
	}
}

var (
	rePlan9ConstRef     = regexp.MustCompile(`\bconst_[A-Za-z0-9_]+\b`)
	rePlan9ConstPlusRef = regexp.MustCompile(`([\pL\pN_∕·./]+)\+const_([A-Za-z0-9_]+)`)
)

func expandPlan9AsmConsts(src []byte, pkgTypes *types.Package, imports map[string]*types.Package) []byte {
	if pkgTypes == nil || pkgTypes.Scope() == nil {
		return src
	}

	typeByPath := map[string]*types.Package{}
	typeByPath[pkgTypes.Path()] = pkgTypes
	for path, tp := range imports {
		if tp != nil && tp.Scope() != nil && typeByPath[path] == nil {
			typeByPath[path] = tp
		}
	}

	lookupConst := func(tp *types.Package, name string) (string, bool) {
		if tp == nil || tp.Scope() == nil || name == "" {
			return "", false
		}
		obj := tp.Scope().Lookup(name)
		c, ok := obj.(*types.Const)
		if !ok || c == nil {
			return "", false
		}
		v := c.Val()
		if v == nil {
			return "", false
		}
		if i64, ok := constant.Int64Val(v); ok {
			return fmt.Sprintf("%d", i64), true
		}
		if u64, ok := constant.Uint64Val(v); ok {
			// Preserve value if it fits in signed range; otherwise leave as-is.
			if u64 <= uint64(^uint64(0)>>1) {
				return fmt.Sprintf("%d", int64(u64)), true
			}
		}
		return "", false
	}

	// First expand qualified refs like:
	//   internal∕cpu·X86+const_offsetX86HasAVX2(SB)
	// using the symbol's package path to pick the correct scope.
	src = rePlan9ConstPlusRef.ReplaceAllFunc(src, func(m []byte) []byte {
		sub := rePlan9ConstPlusRef.FindSubmatch(m)
		if len(sub) != 3 {
			return m
		}
		symRaw := string(sub[1])
		constName := string(sub[2])
		symGo := strings.ReplaceAll(symRaw, "∕", "/")
		symGo = strings.ReplaceAll(symGo, "·", ".")
		dot := strings.LastIndex(symGo, ".")
		if dot < 0 {
			return m
		}
		pkgPath := symGo[:dot]
		tp := typeByPath[pkgPath]
		if tp == nil {
			return m
		}
		if val, ok := lookupConst(tp, constName); ok {
			return []byte(symRaw + "+" + val)
		}
		return m
	})

	// Then expand any remaining bare const_* tokens using the current package,
	// with a best-effort fallback to imported packages if the name is unique.
	return rePlan9ConstRef.ReplaceAllFunc(src, func(tok []byte) []byte {
		name := string(tok)
		goName := strings.TrimPrefix(name, "const_")
		if goName == "" {
			return tok
		}
		if val, ok := lookupConst(pkgTypes, goName); ok {
			return []byte(val)
		}
		var (
			foundVal string
			found    bool
		)
		for _, tp := range typeByPath {
			if tp == nil || tp == pkgTypes {
				continue
			}
			if val, ok := lookupConst(tp, goName); ok {
				if found {
					// Ambiguous: leave as-is.
					return tok
				}
				foundVal = val
				found = true
			}
		}
		if found {
			return []byte(foundVal)
		}
		return tok
	})
}

func (ctx *context) plan9asmEnabled(pkgPath string) bool {
	ctx.plan9asmOnce.Do(func() {
		// Default allowlist: packages we've explicitly validated end-to-end.
		// This avoids requiring an env var for essential stdlib deps, while still
		// keeping the blast radius small as plan9asm support grows.
		ctx.plan9asmPkgs = map[string]bool{
			"crypto/internal/boring/sig": true,
			"internal/cpu":               true,
		}
		// hash/crc32 is enabled by default on amd64/arm64.
		if ctx.buildConf.Goarch == "arm64" || ctx.buildConf.Goarch == "amd64" {
			ctx.plan9asmPkgs["hash/crc32"] = true
		}
		// internal/bytealg is enabled by default on amd64/arm64.
		if ctx.buildConf.Goarch == "arm64" || ctx.buildConf.Goarch == "amd64" {
			ctx.plan9asmPkgs["internal/bytealg"] = true
		}
		// runtime/internal/atomic (Go <=1.21) and internal/runtime/atomic
		// (Go >=1.22) are translated on arm64/amd64.
		if ctx.buildConf.Goarch == "arm64" || ctx.buildConf.Goarch == "amd64" {
			ctx.plan9asmPkgs["internal/runtime/atomic"] = true
			ctx.plan9asmPkgs["runtime/internal/atomic"] = true
		}
		// runtime/internal/syscall (Go <=1.21) and internal/runtime/syscall
		// (Go >=1.22) are translated on arm64/amd64.
		if ctx.buildConf.Goarch == "arm64" || ctx.buildConf.Goarch == "amd64" {
			ctx.plan9asmPkgs["internal/runtime/syscall"] = true
			ctx.plan9asmPkgs["runtime/internal/syscall"] = true
			ctx.plan9asmPkgs["internal/syscall/unix"] = true
			ctx.plan9asmPkgs["crypto/x509/internal/macos"] = true
		}
		// runtime/internal/sys (Go <=1.21) and internal/runtime/sys (Go >=1.22)
		// have arch asm in some releases.
		if ctx.buildConf.Goarch == "arm64" || ctx.buildConf.Goarch == "amd64" {
			ctx.plan9asmPkgs["internal/runtime/sys"] = true
			ctx.plan9asmPkgs["runtime/internal/sys"] = true
		}
		// math has arch-specific asm and no alt package.
		if ctx.buildConf.Goarch == "arm64" || ctx.buildConf.Goarch == "amd64" {
			ctx.plan9asmPkgs["math"] = true
			ctx.plan9asmPkgs["syscall"] = true
		}
		// sync/atomic wrappers are simple TEXT/JMP stubs to internal/runtime/atomic.
		if ctx.buildConf.Goarch == "arm64" || ctx.buildConf.Goarch == "amd64" {
			ctx.plan9asmPkgs["sync/atomic"] = true
		}
		// crypto/md5 has arch asm in Go 1.21 that is required by some tools
		// (e.g. go/importer demo path under old toolchains).
		if ctx.buildConf.Goarch == "amd64" || ctx.buildConf.Goarch == "arm64" {
			ctx.plan9asmPkgs["crypto/md5"] = true
		}
		// internal/chacha8rand has large arch asm files; use the generic stub
		// path (selected in pkgSFiles) on amd64/arm64 for correctness first.
		if ctx.buildConf.Goarch == "arm64" || ctx.buildConf.Goarch == "amd64" {
			ctx.plan9asmPkgs["internal/chacha8rand"] = true
		}
		v := strings.TrimSpace(os.Getenv("LLGO_PLAN9ASM_PKGS"))
		// Explicitly disable all asm translation, including defaults.
		if v == "0" || strings.EqualFold(v, "off") || strings.EqualFold(v, "false") {
			ctx.plan9asmPkgs = make(map[string]bool)
			return
		}
		// Empty means "defaults only".
		if v == "" {
			return
		}
		if v == "*" || strings.EqualFold(v, "all") || strings.EqualFold(v, "on") || strings.EqualFold(v, "true") {
			ctx.plan9asmAll = true
			return
		}
		split := func(r rune) bool {
			switch r {
			case ',', ';', ' ', '\t', '\n', '\r':
				return true
			default:
				return false
			}
		}
		for _, p := range strings.FieldsFunc(v, split) {
			p = strings.TrimSpace(p)
			if p == "" {
				continue
			}
			ctx.plan9asmPkgs[p] = true
		}
	})
	if ctx.plan9asmAll {
		return true
	}
	return ctx.plan9asmPkgs[pkgPath]
}

func hasAltPkgForTarget(conf *Config, pkgPath string) bool {
	if !llruntime.HasAltPkg(pkgPath) {
		return false
	}
	// When Plan9 asm translation is enabled, avoid also pulling in alt packages
	// that provide the same symbols as pure-Go fallbacks.
	if plan9asmEnabledByDefault(conf, pkgPath) && !plan9asmDisabledByEnv() {
		return false
	}
	// In ABI0/1, allow explicit env opt-in to prefer plan9asm over alt.
	if conf != nil && conf.AbiMode != cabi.ModeAllFunc && plan9asmEnabledByEnv(pkgPath) {
		return false
	}
	return true
}

func plan9asmDisabledByEnv() bool {
	v := strings.TrimSpace(os.Getenv("LLGO_PLAN9ASM_PKGS"))
	return v == "0" || strings.EqualFold(v, "off") || strings.EqualFold(v, "false")
}

func plan9asmEnabledByEnv(pkgPath string) bool {
	v := strings.TrimSpace(os.Getenv("LLGO_PLAN9ASM_PKGS"))
	if v == "" {
		return false
	}
	if v == "0" || strings.EqualFold(v, "off") || strings.EqualFold(v, "false") {
		return false
	}
	if v == "*" || strings.EqualFold(v, "all") || strings.EqualFold(v, "on") || strings.EqualFold(v, "true") {
		return true
	}
	split := func(r rune) bool {
		switch r {
		case ',', ';', ' ', '\t', '\n', '\r':
			return true
		default:
			return false
		}
	}
	for _, p := range strings.FieldsFunc(v, split) {
		if strings.TrimSpace(p) == pkgPath {
			return true
		}
	}
	return false
}

func plan9asmEnabledByDefault(conf *Config, pkgPath string) bool {
	if conf == nil {
		return false
	}
	if conf.Goarch != "arm64" && conf.Goarch != "amd64" {
		return false
	}
	switch pkgPath {
	case "hash/crc32", "internal/bytealg", "internal/runtime/atomic", "internal/runtime/syscall", "sync/atomic":
		return true
	default:
		return false
	}
}

func plan9asmArch(goarch string) (plan9asm.Arch, error) {
	switch goarch {
	case "amd64", "386":
		// The prototype parser uses the amd64 token set for x86 currently.
		return plan9asm.ArchAMD64, nil
	case "arm64":
		return plan9asm.ArchARM64, nil
	default:
		return "", fmt.Errorf("Plan 9 asm unsupported arch %q", goarch)
	}
}

func sigsForAsmFile(pkg *packages.Package, file *plan9asm.File, resolve func(sym string) string, goarch string) (map[string]plan9asm.FuncSig, error) {
	sigs := make(map[string]plan9asm.FuncSig, len(file.Funcs))
	scope := pkg.Types.Scope()
	sz := types.SizesFor("gc", goarch)
	if sz == nil {
		return nil, fmt.Errorf("missing sizes for goarch %q", goarch)
	}

	manual, symToDecl := extraAsmSigsAndDeclMap(pkg.PkgPath, goarch)
	linknames := linknameRemoteToLocal(pkg.Syntax)

	for i := range file.Funcs {
		sym := stripABISuffix(file.Funcs[i].Sym)
		resolved := resolve(sym)
		if ms, ok := manual[resolved]; ok {
			ms.Name = resolved
			sigs[resolved] = ms
			continue
		}

		declName := sym
		if v, ok := symToDecl[sym]; ok {
			declName = v
		} else {
			declName = strings.TrimPrefix(declName, "·")
		}
		// Plan9 middle dot in TEXT name is not a valid Go identifier. For local
		// symbols we expect "·foo". For non-local TEXT that defines symbols in
		// other packages (e.g. runtime·cmpstring), declaration lookup in the
		// current package scope won't work; those typically have a local
		// go:linkname declaration that provides a Go identifier we can use.
		if strings.ContainsRune(declName, '·') {
			key := strings.ReplaceAll(sym, "∕", "/")
			key = strings.ReplaceAll(key, "·", ".")
			if local, ok := linknames[key]; ok {
				declName = local
			} else {
				return nil, fmt.Errorf("unsupported asm symbol name %q (no go:linkname mapping found)", sym)
			}
		}

		obj := scope.Lookup(declName)
		if obj == nil {
			return nil, fmt.Errorf("missing Go declaration for asm symbol %q", sym)
		}
		fn, ok := obj.(*types.Func)
		if !ok {
			return nil, fmt.Errorf("asm symbol %q maps to non-func %T", sym, obj)
		}

		sig := fn.Type().(*types.Signature)
		if sig.Recv() != nil {
			return nil, fmt.Errorf("methods in asm not supported: %s", fn.FullName())
		}
		if sig.Variadic() {
			return nil, fmt.Errorf("variadic asm not supported: %s", fn.FullName())
		}

		params := sig.Params()
		args, frameParams, nextOff, err := llvmArgsAndFrameSlotsForTuple(params, goarch, sz, 0, false)
		if err != nil {
			return nil, fmt.Errorf("%s: %w", fn.FullName(), err)
		}
		// The Go assembler rounds the argument area up to the machine word size
		// before laying out results. Some stdlib asm relies on these exact FP
		// offsets (e.g. hash/crc32/crc32_amd64.s).
		nextOff = alignOff(nextOff, int64(wordSize(goarch)))

		res := sig.Results()
		retTys, frameResults, _, err := llvmArgsAndFrameSlotsForTuple(res, goarch, sz, nextOff, true)
		if err != nil {
			return nil, fmt.Errorf("%s: %w", fn.FullName(), err)
		}
		var ret plan9asm.LLVMType
		switch len(retTys) {
		case 0:
			ret = plan9asm.Void
		case 1:
			ret = retTys[0]
		default:
			parts := make([]string, 0, len(retTys))
			for _, t := range retTys {
				parts = append(parts, string(t))
			}
			ret = plan9asm.LLVMType("{ " + strings.Join(parts, ", ") + " }")
		}

		// Classic Go asm uses name+off(FP) stack slots. We build a minimal frame
		// layout that is compatible with stdlib conventions, including slice and
		// string field offsets like "b_base+0(FP)" and "b_len+8(FP)".
		var frame plan9asm.FrameLayout
		frame.Params = frameParams
		frame.Results = frameResults

		fs := plan9asm.FuncSig{
			Name:  resolved,
			Args:  args,
			Ret:   ret,
			Frame: frame,
		}
		if pkg.PkgPath == "hash/crc32" && goarch == "arm64" {
			// These helpers use CRC32{,C} instructions and require "+crc".
			if strings.HasSuffix(resolved, ".castagnoliUpdate") || strings.HasSuffix(resolved, ".ieeeUpdate") {
				fs.Attrs = "#0"
			}
		}
		if pkg.PkgPath == "hash/crc32" && goarch == "amd64" {
			// These helpers use SSE4.2 CRC32 and/or PCLMULQDQ instructions.
			if strings.HasSuffix(resolved, ".ieeeCLMUL") {
				fs.Attrs = "#1"
			} else if strings.HasSuffix(resolved, ".castagnoliSSE42") ||
				strings.HasSuffix(resolved, ".castagnoliSSE42Triple") {
				fs.Attrs = "#0"
			}
		}
		sigs[resolved] = fs
	}

	// Some stdlib asm tail-jumps to Go functions that have no TEXT entry in the
	// current .s file (e.g. internal/bytealg: JMP ·countGeneric(SB)).
	//
	// Our CFG-based lowering models registers as local allocas and does not
	// automatically seed them with %argN, so we treat these as true tailcalls
	// and use the caller's LLVM args. For that, we still need the callee's
	// signature here.
	//
	// Discover such targets by scanning JMP/B with (SB) operands and resolving
	// missing signatures from the package scope.
	splitSymPlusOff := func(s string) (base string, off int64) {
		s = strings.TrimSpace(s)
		if s == "" {
			return "", 0
		}
		sep := strings.LastIndexAny(s, "+-")
		if sep <= 0 || sep == len(s)-1 {
			return s, 0
		}
		n, err := strconv.ParseInt(strings.TrimSpace(s[sep:]), 0, 64)
		if err != nil {
			return s, 0
		}
		return strings.TrimSpace(s[:sep]), n
	}
	addGoDeclSig := func(sym string) error {
		sym = stripABISuffix(sym)
		sym = strings.TrimSuffix(sym, "<>")
		resolved := resolve(sym)
		if resolved == "" {
			return nil
		}
		if _, ok := sigs[resolved]; ok {
			return nil
		}
		if ms, ok := manual[resolved]; ok {
			ms.Name = resolved
			sigs[resolved] = ms
			return nil
		}

		// If the resolved name is package-qualified, prefer looking up the local
		// identifier part in the current package scope.
		declName := ""
		if strings.HasPrefix(resolved, pkg.PkgPath+".") {
			declName = strings.TrimPrefix(resolved, pkg.PkgPath+".")
		} else if strings.HasPrefix(sym, "·") {
			declName = strings.TrimPrefix(sym, "·")
		}
		if declName == "" {
			return nil
		}

		obj := scope.Lookup(declName)
		if obj == nil {
			// Not a Go decl in this package; ignore.
			return nil
		}
		fn, ok := obj.(*types.Func)
		if !ok {
			return nil
		}
		sig := fn.Type().(*types.Signature)
		if sig.Recv() != nil || sig.Variadic() {
			return nil
		}

		params := sig.Params()
		args, _, _, err := llvmArgsAndFrameSlotsForTuple(params, goarch, sz, 0, false)
		if err != nil {
			return fmt.Errorf("%s: %w", fn.FullName(), err)
		}
		res := sig.Results()
		retTys, _, _, err := llvmArgsAndFrameSlotsForTuple(res, goarch, sz, 0, false)
		if err != nil {
			return fmt.Errorf("%s: %w", fn.FullName(), err)
		}
		var ret plan9asm.LLVMType
		switch len(retTys) {
		case 0:
			ret = plan9asm.Void
		case 1:
			ret = retTys[0]
		default:
			parts := make([]string, 0, len(retTys))
			for _, t := range retTys {
				parts = append(parts, string(t))
			}
			ret = plan9asm.LLVMType("{ " + strings.Join(parts, ", ") + " }")
		}
		sigs[resolved] = plan9asm.FuncSig{
			Name: resolved,
			Args: args,
			Ret:  ret,
		}
		return nil
	}

	for _, fn := range file.Funcs {
		callerResolved := resolve(stripABISuffix(fn.Sym))
		callerSig, hasCallerSig := sigs[callerResolved]
		for _, ins := range fn.Instrs {
			op := strings.ToUpper(string(ins.Op))
			tailJump := false
			switch op {
			case "JMP", "B":
				tailJump = true
			case "CALL", "BL":
				// direct call to package-local helper
			default:
				continue
			}
			if len(ins.Args) != 1 || ins.Args[0].Kind != plan9asm.OpSym {
				continue
			}
			s := strings.TrimSpace(ins.Args[0].Sym)
			if !strings.HasSuffix(s, "(SB)") {
				continue
			}
			s = strings.TrimSuffix(s, "(SB)")
			base, off := splitSymPlusOff(s)
			if base == "" || off != 0 {
				continue
			}
			if err := addGoDeclSig(base); err != nil {
				return nil, err
			}
			targetResolved := resolve(base)
			if _, ok := sigs[targetResolved]; ok {
				continue
			}
			if !tailJump || !hasCallerSig {
				continue
			}
			// Cross-package trampoline with no local Go declaration available.
			// Reuse caller signature as a best-effort extern declaration so
			// direct tail-jumps like sync/atomic -> internal/runtime/atomic link.
			fs := callerSig
			fs.Name = targetResolved
			sigs[targetResolved] = fs
		}
	}
	return sigs, nil
}

// linknameRemoteToLocal returns a mapping from go:linkname "remote" symbol name
// (canonicalized to use '/' and '.') to the local Go identifier name.
//
// This is used to resolve asm symbols like "runtime·cmpstring" to a Go decl in
// the current package (e.g. "abigen_runtime_cmpstring").
func linknameRemoteToLocal(files []*ast.File) map[string]string {
	m := map[string]string{}
	for _, f := range files {
		if f == nil {
			continue
		}
		for _, cg := range f.Comments {
			if cg == nil {
				continue
			}
			for _, c := range cg.List {
				if c == nil {
					continue
				}
				// Handle both line and block comments; split into lines and strip
				// obvious comment markers.
				for _, line := range strings.Split(c.Text, "\n") {
					line = strings.TrimSpace(line)
					line = strings.TrimPrefix(line, "//")
					line = strings.TrimPrefix(line, "/*")
					line = strings.TrimSuffix(line, "*/")
					line = strings.TrimSpace(strings.TrimPrefix(line, "*"))
					if !strings.HasPrefix(line, "go:linkname") {
						continue
					}
					parts := strings.Fields(line)
					if len(parts) < 3 || parts[0] != "go:linkname" {
						continue
					}
					local := parts[1]
					remote := parts[2]
					remote = strings.ReplaceAll(remote, "∕", "/")
					remote = strings.ReplaceAll(remote, "·", ".")
					m[remote] = local
				}
			}
		}
	}
	return m
}

func extraAsmSigsAndDeclMap(pkgPath string, goarch string) (manual map[string]plan9asm.FuncSig, symToDecl map[string]string) {
	manual = map[string]plan9asm.FuncSig{}
	symToDecl = map[string]string{}

	// internal/bytealg defines a few runtime symbols and asm-only helpers.
	// The Go package provides linkname declarations that we can use for the
	// public runtime symbols, but helpers like cmpbody<> have no Go decl at all.
	if pkgPath == "internal/bytealg" {
		// Helper bodies (no Go decl). These are entered via tail-jumps from
		// other TEXT stubs, so translation needs explicit signatures.
		switch goarch {
		case "arm64":
			manual["internal/bytealg.cmpbody"] = plan9asm.FuncSig{
				Args: []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.I64, plan9asm.Ptr, plan9asm.I64},
				Ret:  plan9asm.I64,
			}
			// go1.21 arm64 equal_arm64.s has helper memeqbody<> tail-called by
			// runtime·memequal/runtime·memequal_varlen and has no Go declaration.
			manual["internal/bytealg.memeqbody"] = plan9asm.FuncSig{
				Args: []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.Ptr, plan9asm.I64},
				Ret:  plan9asm.I1,
			}
			manual["internal/bytealg.countbytebody"] = plan9asm.FuncSig{
				Args:    []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.I64, plan9asm.LLVMType("i8"), plan9asm.Ptr},
				Ret:     plan9asm.Void,
				ArgRegs: []plan9asm.Reg{"R0", "R2", "R1", "R8"},
			}
			manual["internal/bytealg.indexbody"] = plan9asm.FuncSig{
				Args:    []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.I64, plan9asm.Ptr, plan9asm.I64, plan9asm.Ptr},
				Ret:     plan9asm.Void,
				ArgRegs: []plan9asm.Reg{"R0", "R1", "R2", "R3", "R9"},
			}
			manual["internal/bytealg.indexbytebody"] = plan9asm.FuncSig{
				Args:    []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.LLVMType("i8"), plan9asm.I64, plan9asm.Ptr},
				Ret:     plan9asm.Void,
				ArgRegs: []plan9asm.Reg{"R0", "R1", "R2", "R8"},
			}
		case "amd64":
			// See GOROOT/src/internal/bytealg/*_amd64.s for calling conventions.
			manual["internal/bytealg.cmpbody"] = plan9asm.FuncSig{
				Args:    []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.Ptr, plan9asm.I64, plan9asm.I64},
				Ret:     plan9asm.I64,
				ArgRegs: []plan9asm.Reg{plan9asm.SI, plan9asm.DI, plan9asm.BX, plan9asm.DX},
			}
			// countbody writes the result to *R8 and returns void.
			manual["internal/bytealg.countbody"] = plan9asm.FuncSig{
				Args:    []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.I64, plan9asm.LLVMType("i8"), plan9asm.Ptr},
				Ret:     plan9asm.Void,
				ArgRegs: []plan9asm.Reg{plan9asm.SI, plan9asm.BX, plan9asm.AX, plan9asm.Reg("R8")},
			}
			manual["internal/bytealg.indexbody"] = plan9asm.FuncSig{
				Args:    []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.I64, plan9asm.Ptr, plan9asm.I64, plan9asm.Ptr, plan9asm.Ptr},
				Ret:     plan9asm.Void,
				ArgRegs: []plan9asm.Reg{plan9asm.DI, plan9asm.DX, plan9asm.Reg("R8"), plan9asm.AX, plan9asm.Reg("R10"), plan9asm.Reg("R11")},
			}
			manual["internal/bytealg.indexbytebody"] = plan9asm.FuncSig{
				Args:    []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.I64, plan9asm.LLVMType("i8"), plan9asm.Ptr},
				Ret:     plan9asm.Void,
				ArgRegs: []plan9asm.Reg{plan9asm.SI, plan9asm.BX, plan9asm.AX, plan9asm.Reg("R8")},
			}
			// memeqbody returns bool in AX (0/1).
			manual["internal/bytealg.memeqbody"] = plan9asm.FuncSig{
				Args:    []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.Ptr, plan9asm.I64},
				Ret:     plan9asm.I1,
				ArgRegs: []plan9asm.Reg{plan9asm.SI, plan9asm.DI, plan9asm.BX},
			}
		}
	}
	return manual, symToDecl
}

func llvmTypeForGo(t types.Type, goarch string) (plan9asm.LLVMType, error) {
	switch tt := t.(type) {
	case *types.Basic:
		switch tt.Kind() {
		case types.Bool:
			return plan9asm.LLVMType("i1"), nil
		case types.UnsafePointer:
			return plan9asm.LLVMType("ptr"), nil
		case types.Int8, types.Uint8:
			return plan9asm.LLVMType("i8"), nil
		case types.Int16, types.Uint16:
			return plan9asm.LLVMType("i16"), nil
		case types.Int32, types.Uint32:
			return plan9asm.LLVMType("i32"), nil
		case types.Int64, types.Uint64:
			return plan9asm.I64, nil
		case types.Int, types.Uint, types.Uintptr:
			if wordSize(goarch) == 8 {
				return plan9asm.I64, nil
			}
			return plan9asm.LLVMType("i32"), nil
		case types.Float32:
			return plan9asm.LLVMType("float"), nil
		case types.Float64:
			return plan9asm.LLVMType("double"), nil
		case types.String:
			// Strings are lowered as (ptr, word) to match stdlib asm conventions.
			// The actual string header is (ptr, len).
			if wordSize(goarch) == 8 {
				return plan9asm.LLVMType("{ ptr, i64 }"), nil
			}
			return plan9asm.LLVMType("{ ptr, i32 }"), nil
		default:
			return "", fmt.Errorf("unsupported basic type %s", tt.String())
		}
	case *types.Pointer:
		return plan9asm.LLVMType("ptr"), nil
	case *types.Slice:
		// Slices are lowered as (ptr, len, cap) to match stdlib asm conventions.
		if wordSize(goarch) == 8 {
			return plan9asm.LLVMType("{ ptr, i64, i64 }"), nil
		}
		return plan9asm.LLVMType("{ ptr, i32, i32 }"), nil
	case *types.Named:
		return llvmTypeForGo(tt.Underlying(), goarch)
	default:
		return "", fmt.Errorf("unsupported type %s", t.String())
	}
}

func wordSize(goarch string) int {
	switch goarch {
	case "amd64", "arm64", "loong64", "mips64", "mips64le", "ppc64", "ppc64le", "riscv64", "s390x":
		return 8
	default:
		return 4
	}
}

func pkgSFiles(ctx *context, pkg *packages.Package) ([]string, error) {
	if pkg == nil || pkg.PkgPath == "" {
		return nil, nil
	}
	// Some unit tests construct synthetic packages that are not loadable via
	// `go list` (PkgPath not in any module, and Dir/Standard/Goroot unset).
	// In that case, treat the package as having no selected .s files.
	if pkg.Dir == "" {
		return nil, nil
	}
	// Fast path: if directory has no .s/.S at all, skip `go list`.
	if pkg.Dir != "" {
		if ss, _ := filepath.Glob(filepath.Join(pkg.Dir, "*.s")); len(ss) == 0 {
			if ss, _ := filepath.Glob(filepath.Join(pkg.Dir, "*.S")); len(ss) == 0 {
				return nil, nil
			}
		}
	}

	if ctx.sfilesCache == nil {
		ctx.sfilesCache = make(map[string][]string)
	}
	if v, ok := ctx.sfilesCache[pkg.ID]; ok {
		return v, nil
	}

	args := []string{"list", "-json"}
	if ctx.conf != nil && len(ctx.conf.BuildFlags) > 0 {
		args = append(args, ctx.conf.BuildFlags...)
	}
	args = append(args, pkg.PkgPath)

	cmd := exec.Command("go", args...)
	cmd.Dir = ctx.conf.Dir
	cmd.Env = append(os.Environ(),
		"GOOS="+ctx.buildConf.Goos,
		"GOARCH="+ctx.buildConf.Goarch,
	)
	out, err := cmd.Output()
	if err != nil {
		var errBuf bytes.Buffer
		if ee, ok := err.(*exec.ExitError); ok && len(ee.Stderr) > 0 {
			errBuf.Write(ee.Stderr)
		}
		return nil, fmt.Errorf("go list -json %s failed: %w\n%s", pkg.PkgPath, err, strings.TrimSpace(errBuf.String()))
	}

	var lp struct {
		Dir    string   `json:"Dir"`
		SFiles []string `json:"SFiles"`
	}
	if err := json.Unmarshal(out, &lp); err != nil {
		return nil, fmt.Errorf("go list -json %s: parse: %w", pkg.PkgPath, err)
	}

	// internal/chacha8rand has highly optimized arch asm on amd64/arm64.
	// Until full vector lowering lands, force the generic stub entry, which
	// tail-jumps to block_generic and preserves package behavior.
	if pkg.PkgPath == "internal/chacha8rand" && lp.Dir != "" {
		stub := filepath.Join(lp.Dir, "chacha8_stub.s")
		if _, err := os.Stat(stub); err == nil {
			paths := []string{stub}
			ctx.sfilesCache[pkg.ID] = paths
			return paths, nil
		}
	}

	paths := make([]string, 0, len(lp.SFiles))
	for _, f := range lp.SFiles {
		if lp.Dir == "" {
			continue
		}
		paths = append(paths, filepath.Join(lp.Dir, f))
	}
	ctx.sfilesCache[pkg.ID] = paths
	return paths, nil
}

func readFileWithOverlay(overlay map[string][]byte, path string) ([]byte, error) {
	if overlay != nil {
		if b, ok := overlay[path]; ok {
			return b, nil
		}
	}
	return os.ReadFile(path)
}

var abiSuffixRe = regexp.MustCompile(`<ABI[^>]*>$`)
var reTextDirective = regexp.MustCompile(`(?m)^\s*TEXT\b`)

func stripABISuffix(sym string) string {
	// Examples:
	//   ·Compare<ABIInternal> -> ·Compare
	//   runtime·cmpstring<ABIInternal> -> runtime·cmpstring
	// Keep local helper suffix "<>" intact (it does not match this regexp).
	return abiSuffixRe.ReplaceAllString(sym, "")
}

func hasAnyTextAsm(ctx *context, files []string) (bool, error) {
	for _, f := range files {
		src, err := readFileWithOverlay(ctx.conf.Overlay, f)
		if err != nil {
			return false, err
		}
		if reTextDirective.Match(src) {
			return true, nil
		}
	}
	return false, nil
}

// llvmArgsAndFrameSlotsForTuple lowers a Go parameter/result tuple into LLVM
// argument types and a frame-slot layout compatible with Go stdlib asm.
//
// In particular, it flattens strings and slices into their header words:
//
//	string: base, len
//	slice:  base, len, cap
//
// It returns:
//   - args: LLVM argument types (flattened)
//   - slots: frame slots at the exact FP offsets used by stdlib asm
//   - nextOff: the next free FP offset after the tuple
func llvmArgsAndFrameSlotsForTuple(tup *types.Tuple, goarch string, sz types.Sizes, startOff int64, flattenAgg bool) (args []plan9asm.LLVMType, slots []plan9asm.FrameSlot, nextOff int64, err error) {
	if tup == nil || tup.Len() == 0 {
		return nil, nil, startOff, nil
	}

	word := int64(wordSize(goarch))
	wordTy := plan9asm.I64
	if word == 4 {
		wordTy = plan9asm.LLVMType("i32")
	}

	align := func(off, a int64) int64 {
		if a <= 1 {
			return off
		}
		m := off % a
		if m == 0 {
			return off
		}
		return off + (a - m)
	}

	off := startOff
	argIdx := 0
	for i := 0; i < tup.Len(); i++ {
		t := tup.At(i).Type()
		a := int64(sz.Alignof(t))
		off = align(off, a)

		switch u := types.Unalias(t).(type) {
		case *types.Basic:
			if u.Kind() == types.String {
				if flattenAgg {
					// Return value elements (or explicit args) are flattened into header words:
					// base ptr, len word.
					args = append(args, plan9asm.LLVMType("ptr"), wordTy)
					slots = append(slots,
						plan9asm.FrameSlot{Offset: off + 0*word, Type: plan9asm.LLVMType("ptr"), Index: argIdx + 0, Field: -1},
						plan9asm.FrameSlot{Offset: off + 1*word, Type: wordTy, Index: argIdx + 1, Field: -1},
					)
					argIdx += 2
					off += int64(sz.Sizeof(t))
					continue
				}

				// Go-level parameter is passed as a struct {ptr, len}.
				// Stdlib asm still addresses the fields via FP slots, so we
				// record per-field FrameSlots with Field selectors.
				ty, e := llvmTypeForGo(t, goarch)
				if e != nil {
					return nil, nil, 0, e
				}
				args = append(args, ty)
				slots = append(slots,
					plan9asm.FrameSlot{Offset: off + 0*word, Type: plan9asm.LLVMType("ptr"), Index: argIdx, Field: 0},
					plan9asm.FrameSlot{Offset: off + 1*word, Type: wordTy, Index: argIdx, Field: 1},
				)
				argIdx++
				off += int64(sz.Sizeof(t))
				continue
			}
		case *types.Slice:
			if flattenAgg {
				// Return value elements (or explicit args) are flattened into header words:
				// base ptr, len word, cap word.
				args = append(args, plan9asm.LLVMType("ptr"), wordTy, wordTy)
				slots = append(slots,
					plan9asm.FrameSlot{Offset: off + 0*word, Type: plan9asm.LLVMType("ptr"), Index: argIdx + 0, Field: -1},
					plan9asm.FrameSlot{Offset: off + 1*word, Type: wordTy, Index: argIdx + 1, Field: -1},
					plan9asm.FrameSlot{Offset: off + 2*word, Type: wordTy, Index: argIdx + 2, Field: -1},
				)
				argIdx += 3
				off += int64(sz.Sizeof(t))
				continue
			}

			// Go-level parameter is passed as a struct {ptr, len, cap}.
			// Stdlib asm still addresses the fields via FP slots, so we
			// record per-field FrameSlots with Field selectors.
			ty, e := llvmTypeForGo(t, goarch)
			if e != nil {
				return nil, nil, 0, e
			}
			args = append(args, ty)
			slots = append(slots,
				plan9asm.FrameSlot{Offset: off + 0*word, Type: plan9asm.LLVMType("ptr"), Index: argIdx, Field: 0},
				plan9asm.FrameSlot{Offset: off + 1*word, Type: wordTy, Index: argIdx, Field: 1},
				plan9asm.FrameSlot{Offset: off + 2*word, Type: wordTy, Index: argIdx, Field: 2},
			)
			argIdx++
			off += int64(sz.Sizeof(t))
			continue
		}

		ty, e := llvmTypeForGo(t, goarch)
		if e != nil {
			return nil, nil, 0, e
		}
		args = append(args, ty)
		slots = append(slots, plan9asm.FrameSlot{Offset: off, Type: ty, Index: argIdx, Field: -1})
		argIdx++
		off += int64(sz.Sizeof(t))
	}
	return args, slots, off, nil
}

func alignOff(off, a int64) int64 {
	if a <= 1 {
		return off
	}
	m := off % a
	if m == 0 {
		return off
	}
	return off + (a - m)
}
