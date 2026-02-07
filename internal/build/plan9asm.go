package build

import (
	"bytes"
	"encoding/json"
	"fmt"
	"go/types"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	"github.com/goplus/llgo/internal/packages"
	"github.com/goplus/llgo/internal/plan9asm"
	intllvm "github.com/goplus/llgo/internal/xtool/llvm"
)

// compilePkgSFiles translates Go/Plan9 assembly files selected by `go list -json`
// for this package/target into LLVM IR, compiles them to .o, and returns the
// object files for linking.
//
// NOTE: golang.org/x/tools/go/packages.Package does not expose SFiles, so we
// query `go list -json` here to get the exact filtered set for GOOS/GOARCH.
func compilePkgSFiles(ctx *context, aPkg *aPackage, pkg *packages.Package, verbose bool) ([]string, error) {
	if !ctx.plan9asmEnabled(pkg.PkgPath) {
		return nil, nil
	}

	sfiles, err := pkgSFiles(ctx, pkg)
	if err != nil {
		return nil, err
	}
	if len(sfiles) == 0 {
		return nil, nil
	}
	if pkg.Types == nil || pkg.Types.Scope() == nil {
		return nil, fmt.Errorf("%s: missing types (needed for asm signatures)", pkg.PkgPath)
	}

	arch, err := plan9asmArch(ctx.buildConf.Goarch)
	if err != nil {
		return nil, fmt.Errorf("%s: %w", pkg.PkgPath, err)
	}
	triple := intllvm.GetTargetTriple(ctx.buildConf.Goos, ctx.buildConf.Goarch)

	resolve := func(sym string) string {
		// Local symbols use the Plan 9 middle dot (·) for package separator.
		// For package-local TEXT ·foo(SB), we map to "import/path.foo".
		if strings.HasPrefix(sym, "·") {
			return pkg.PkgPath + "." + strings.TrimPrefix(sym, "·")
		}
		return strings.ReplaceAll(sym, "·", ".")
	}

	objFiles := make([]string, 0, len(sfiles))
	for _, sfile := range sfiles {
		src, err := readFileWithOverlay(ctx.conf.Overlay, sfile)
		if err != nil {
			return nil, fmt.Errorf("%s: read %s: %w", pkg.PkgPath, sfile, err)
		}
		file, err := plan9asm.Parse(arch, string(src))
		if err != nil {
			// Some stdlib .s files are comment-only placeholders (e.g. internal/cpu/cpu.s).
			// Skip those silently.
			if strings.Contains(err.Error(), "no TEXT directive found") {
				continue
			}
			return nil, fmt.Errorf("%s: parse %s: %w", pkg.PkgPath, sfile, err)
		}

		sigs, err := sigsForAsmFile(pkg, file, resolve, ctx.buildConf.Goarch)
		if err != nil {
			return nil, fmt.Errorf("%s: sigs %s: %w", pkg.PkgPath, sfile, err)
		}

		ll, err := plan9asm.Translate(file, plan9asm.Options{
			TargetTriple: triple,
			ResolveSym:   resolve,
			Sigs:         sigs,
		})
		if err != nil {
			return nil, fmt.Errorf("%s: translate %s: %w", pkg.PkgPath, sfile, err)
		}

		baseName := aPkg.ExportFile + filepath.Base(sfile)
		llFile, err := os.CreateTemp("", baseName+"-*.ll")
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

		objFile, err := os.CreateTemp("", baseName+"-*.o")
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

func (ctx *context) plan9asmEnabled(pkgPath string) bool {
	ctx.plan9asmOnce.Do(func() {
		ctx.plan9asmPkgs = make(map[string]bool)
		v := strings.TrimSpace(os.Getenv("LLGO_PLAN9ASM_PKGS"))
		if v == "" || v == "0" || strings.EqualFold(v, "off") || strings.EqualFold(v, "false") {
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

	for i := range file.Funcs {
		sym := file.Funcs[i].Sym
		declName := sym
		if strings.HasPrefix(declName, "·") {
			declName = strings.TrimPrefix(declName, "·")
		}
		// Plan9 middle dot in TEXT name is not a valid Go identifier; but for
		// package-local symbols we only expect "·foo". Anything else isn't
		// supported yet.
		if strings.ContainsRune(declName, '·') {
			return nil, fmt.Errorf("unsupported asm symbol name %q (cannot map to Go decl)", sym)
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

		args, err := llvmTypesForTuple(sig.Params(), goarch)
		if err != nil {
			return nil, fmt.Errorf("%s: %w", fn.FullName(), err)
		}

		res := sig.Results()
		var ret plan9asm.LLVMType
		switch res.Len() {
		case 0:
			ret = plan9asm.Void
		case 1:
			t, err := llvmTypeForGo(res.At(0).Type(), goarch)
			if err != nil {
				return nil, fmt.Errorf("%s: %w", fn.FullName(), err)
			}
			ret = t
		default:
			return nil, fmt.Errorf("%s: multiple return values not supported yet", fn.FullName())
		}

		resolved := resolve(sym)
		sigs[resolved] = plan9asm.FuncSig{
			Name: resolved,
			Args: args,
			Ret:  ret,
		}
	}
	return sigs, nil
}

func llvmTypesForTuple(tup *types.Tuple, goarch string) ([]plan9asm.LLVMType, error) {
	if tup == nil || tup.Len() == 0 {
		return nil, nil
	}
	out := make([]plan9asm.LLVMType, 0, tup.Len())
	for i := 0; i < tup.Len(); i++ {
		t, err := llvmTypeForGo(tup.At(i).Type(), goarch)
		if err != nil {
			return nil, err
		}
		out = append(out, t)
	}
	return out, nil
}

func llvmTypeForGo(t types.Type, goarch string) (plan9asm.LLVMType, error) {
	switch tt := t.(type) {
	case *types.Basic:
		switch tt.Kind() {
		case types.Bool:
			return plan9asm.LLVMType("i1"), nil
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
		default:
			return "", fmt.Errorf("unsupported basic type %s", tt.String())
		}
	case *types.Pointer:
		return plan9asm.LLVMType("ptr"), nil
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
	if ctx.buildConf.Tags != "" {
		args = append(args, "-tags", ctx.buildConf.Tags)
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
