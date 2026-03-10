//go:build !llgo
// +build !llgo

package cl

import (
	"go/ast"
	"go/constant"
	"go/importer"
	"go/parser"
	"go/token"
	"go/types"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	llssa "github.com/goplus/llgo/ssa"
	"github.com/goplus/llvm"
	gossa "golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func init() {
	// Keep these tests self-contained (other packages may not call Initialize).
	llssa.Initialize(llssa.InitAll | llssa.InitNative)
}

func buildGoSSAPkg(t *testing.T, src string) (*gossa.Package, *token.FileSet, []*ast.File) {
	t.Helper()
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "foo.go", src, parser.ParseComments)
	if err != nil {
		t.Fatal(err)
	}
	files := []*ast.File{f}
	pkg := types.NewPackage(f.Name.Name, f.Name.Name)
	imp := packages.NewImporter(fset)
	mode := gossa.SanityCheckFunctions | gossa.InstantiateGenerics
	ssaPkg, _, err := ssautil.BuildPackage(&types.Config{Importer: imp}, fset, pkg, files, mode)
	if err != nil {
		t.Fatal(err)
	}
	return ssaPkg, fset, files
}

func newLLSSAProg(t *testing.T) llssa.Program {
	t.Helper()
	prog := llssa.NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		rt, err := importer.For("source", nil).Import(llssa.PkgRuntime)
		if err != nil {
			t.Fatal("load runtime failed:", err)
		}
		return rt
	})
	prog.TypeSizes(types.SizesFor("gc", runtime.GOARCH))
	return prog
}

func mustCompileLLPkgFromSrc(t *testing.T, src string) (llssa.Package, llvm.Module) {
	t.Helper()
	ssaPkg, _, files := buildGoSSAPkg(t, src)
	prog := newLLSSAProg(t)
	pkg, err := NewPackage(prog, ssaPkg, files)
	if err != nil {
		t.Fatal(err)
	}
	return pkg, pkg.Module()
}

func mustNamedFunction(t *testing.T, m llvm.Module, name string) llvm.Value {
	t.Helper()
	fn := m.NamedFunction(name)
	if fn.IsNil() {
		t.Fatalf("missing function %q in module", name)
	}
	return fn
}

// -----------------------------------------------------------------------------
// Instruction-level "normal path" tests (Cfunc/Cmacro/C2func)

func TestCgoInstr_Cfunc(t *testing.T) {
	_, m := mustCompileLLPkgFromSrc(t, `
package foo

import "unsafe"

var _cgo_add unsafe.Pointer
func _cgo_runtime_cgocall(fn unsafe.Pointer, arg unsafe.Pointer) int

func _Cfunc_add(a int32, b int32) int32 {
	_cgo_runtime_cgocall(_cgo_add, nil)
	return 0
}
`)

	fn := mustNamedFunction(t, m, "foo._Cfunc_add")
	ir := fn.String()
	if !strings.Contains(ir, "foo._cgo_add") {
		t.Fatalf("expected load from foo._cgo_add, got:\n%s", ir)
	}
	if !strings.Contains(ir, "call") {
		t.Fatalf("expected indirect call in Cfunc wrapper, got:\n%s", ir)
	}
	if strings.Contains(ir, "cliteErrno") {
		t.Fatalf("unexpected cliteErrno in Cfunc wrapper, got:\n%s", ir)
	}
}

func TestCgoInstr_C2func(t *testing.T) {
	_, m := mustCompileLLPkgFromSrc(t, `
package foo

import (
	"syscall"
	"unsafe"
)

var _ = syscall.Errno(0)

var _cgo_sum unsafe.Pointer
func _cgo_runtime_cgocall(fn unsafe.Pointer, arg unsafe.Pointer) int

func _C2func_sum(a int32, b int32) (int32, error) {
	_cgo_runtime_cgocall(_cgo_sum, nil)
	return 0, nil
}
`)

	fn := mustNamedFunction(t, m, "foo._C2func_sum")
	ir := fn.String()
	if !strings.Contains(ir, "foo._cgo_sum") {
		t.Fatalf("expected load from foo._cgo_sum, got:\n%s", ir)
	}
	if !strings.Contains(ir, "cliteErrno") {
		t.Fatalf("expected cliteErrno call in C2func wrapper, got:\n%s", ir)
	}
	if !strings.Contains(ir, "icmp") {
		t.Fatalf("expected errno check in C2func wrapper, got:\n%s", ir)
	}
}

func TestCgoInstr_Cmacro(t *testing.T) {
	_, m := mustCompileLLPkgFromSrc(t, `
package foo

func _cgo_dummy_ptr_int32(p *int32) {}

func _Cmacro_magic() int32 {
	var v int32
	_cgo_dummy_ptr_int32(&v)
	return 0
}
`)

	fn := mustNamedFunction(t, m, "foo._Cmacro_magic")
	ir := fn.String()
	// Implementation may use heap alloc (AllocZ) instead of alloca; the key is
	// that the macro path returns by loading from the chosen address.
	if !strings.Contains(ir, "load i32") || !strings.Contains(ir, "ret i32") {
		t.Fatalf("expected load+ret in Cmacro wrapper, got:\n%s", ir)
	}
	if strings.Contains(ir, "cliteErrno") {
		t.Fatalf("unexpected cliteErrno in Cmacro wrapper, got:\n%s", ir)
	}
}

// -----------------------------------------------------------------------------
// White-box coverage tests for the highlighted branches in cl/instr.go and cl/compile.go

func findStaticCall(t *testing.T, fn *gossa.Function, name string) *gossa.Call {
	t.Helper()
	for _, blk := range fn.Blocks {
		for _, instr := range blk.Instrs {
			c, ok := instr.(*gossa.Call)
			if !ok {
				continue
			}
			if callee := c.Call.StaticCallee(); callee != nil && callee.Name() == name {
				return c
			}
		}
	}
	t.Fatalf("missing call to %s in %s", name, fn.Name())
	return nil
}

func TestCgoCgocall_InitArgsFromParams(t *testing.T) {
	ssaPkg, _, _ := buildGoSSAPkg(t, `
package foo

import "unsafe"

func _cgo_runtime_cgocall(fn unsafe.Pointer, arg unsafe.Pointer) int

func _C2func_withparams(a int) (int, error) {
	_cgo_runtime_cgocall(nil, nil)
	return 0, nil
}
`)
	goFn := ssaPkg.Members["_C2func_withparams"].(*gossa.Function)
	call := findStaticCall(t, goFn, "_cgo_runtime_cgocall")

	prog := newLLSSAProg(t)
	pkg := prog.NewPackage("foo", "foo")
	fn := pkg.NewFunc("_C2func_withparams", goFn.Signature, llssa.InGo)
	b := fn.MakeBody(1)

	ctx := &context{prog: prog, pkg: pkg, fn: fn}
	ctx.cgoArgs = nil // force cgoCgocall to synthesize args from params

	_ = ctx.cgoCgocall(b, call.Call.Args)

	if got, want := len(ctx.cgoArgs), goFn.Signature.Params().Len(); got != want {
		t.Fatalf("cgoArgs len mismatch: got %d, want %d", got, want)
	}
	if len(ctx.cgoArgs) == 0 || ctx.cgoArgs[0].IsNil() {
		t.Fatalf("expected cgoArgs[0] initialized from param")
	}
}

func TestCgoCgocall_PanicNoResults(t *testing.T) {
	ssaPkg, _, _ := buildGoSSAPkg(t, `
package foo

import "unsafe"

func _cgo_runtime_cgocall(fn unsafe.Pointer, arg unsafe.Pointer) int

func _C2func_void(a int) {
	_cgo_runtime_cgocall(nil, nil)
}
`)
	goFn := ssaPkg.Members["_C2func_void"].(*gossa.Function)
	call := findStaticCall(t, goFn, "_cgo_runtime_cgocall")

	prog := newLLSSAProg(t)
	pkg := prog.NewPackage("foo", "foo")
	fn := pkg.NewFunc("_C2func_void", goFn.Signature, llssa.InGo)
	b := fn.MakeBody(1)

	ctx := &context{prog: prog, pkg: pkg, fn: fn}
	ctx.cgoArgs = nil

	defer func() {
		if r := recover(); r == nil {
			t.Fatal("expected panic")
		}
	}()
	_ = ctx.cgoCgocall(b, call.Call.Args)
}

func TestCgoErrnoType_SyscallAndFallbackAndCache(t *testing.T) {
	ssaPkg1, _, _ := buildGoSSAPkg(t, `
package foo

import "syscall"

var _ = syscall.Errno(0)
`)
	ctx1 := &context{goProg: ssaPkg1.Prog}
	if got := ctx1.cgoErrnoType().String(); got != "syscall.Errno" {
		t.Fatalf("unexpected syscall.Errno type: %s", got)
	}
	_ = ctx1.cgoErrnoType() // cached path

	ssaPkg2, _, _ := buildGoSSAPkg(t, `
package foo

func f() {}
`)
	ctx2 := &context{goProg: ssaPkg2.Prog}
	if got := ctx2.cgoErrnoType().String(); got != "int32" {
		t.Fatalf("unexpected fallback errno type: %s", got)
	}
	_ = ctx2.cgoErrnoType() // cached path
}

func TestPkgTypesForFunc_FallbackAndPkg(t *testing.T) {
	fallback := types.NewPackage("example.com/fallback", "fallback")
	if got := pkgTypesForFunc(&gossa.Function{}, fallback); got != fallback {
		t.Fatalf("fallback pkg mismatch: got %v, want %v", got, fallback)
	}

	ssaPkg, _, _ := buildGoSSAPkg(t, `
package foo

func atomicLoadLike(p *uint32) uint32 { return 0 }
`)
	goFn := ssaPkg.Members["atomicLoadLike"].(*gossa.Function)
	if got := pkgTypesForFunc(goFn, fallback); got != ssaPkg.Pkg {
		t.Fatalf("package pkg mismatch: got %v, want %v", got, ssaPkg.Pkg)
	}
}

func TestIsAtomicIntrinsic(t *testing.T) {
	if !isAtomicIntrinsic(llgoAtomicLoad) || !isAtomicIntrinsic(llgoAtomicStore) || !isAtomicIntrinsic(llgoAtomicCmpXchg) || !isAtomicIntrinsic(llgoAtomicCmpXchgOK) || !isAtomicIntrinsic(int(llgoAtomicAdd)) {
		t.Fatal("expected atomic intrinsic classification to accept known atomic ops")
	}
	if isAtomicIntrinsic(llgoFuncAddr) {
		t.Fatal("unexpected atomic intrinsic classification for non-atomic op")
	}
}

func TestPkgTypesForFunc_OriginPkg(t *testing.T) {
	fallback := types.NewPackage("example.com/fallback", "fallback")
	ssaPkg, _, _ := buildGoSSAPkg(t, `
package foo

func genericStore[T any](p *T, v T) {}
func use(p *uint32) { genericStore[uint32](p, 1) }
`)
	useFn := ssaPkg.Members["use"].(*gossa.Function)
	var callee *gossa.Function
	for _, blk := range useFn.Blocks {
		for _, instr := range blk.Instrs {
			if c, ok := instr.(*gossa.Call); ok {
				if fn := c.Call.StaticCallee(); fn != nil && fn.Origin() != nil {
					callee = fn
					break
				}
			}
		}
		if callee != nil {
			break
		}
	}
	if callee == nil {
		t.Fatal("expected instantiated generic callee with origin")
	}
	if got := pkgTypesForFunc(callee, fallback); got != ssaPkg.Pkg {
		t.Fatalf("origin pkg mismatch: got %v, want %v", got, ssaPkg.Pkg)
	}
}

func TestAtomicIntrinsicWrapper_BranchesAndCache(t *testing.T) {
	ssaPkg, _, _ := buildGoSSAPkg(t, `
package foo

func atomicLoadLike(p *uint32) uint32 { return 0 }
func atomicStoreLike(p *uint32, v uint32) {}
func atomicCmpXchgLike(p *uint32, old, new uint32) (uint32, bool) { return 0, false }
func atomicCmpXchgOKLike(p *uint32, old, new uint32) bool { return false }
func atomicAddLike(p *int64, v int64) int64 { return 0 }
`)
	prog := newLLSSAProg(t)
	pkg := prog.NewPackage("foo", "foo")
	ctx := &context{prog: prog, pkg: pkg, goTyps: ssaPkg.Pkg}

	cases := []struct {
		name   string
		ftype  int
		wantIR string
	}{
		{"atomicLoadLike", llgoAtomicLoad, "load atomic i32"},
		{"atomicStoreLike", llgoAtomicStore, "store atomic i32"},
		{"atomicCmpXchgLike", llgoAtomicCmpXchg, "cmpxchg"},
		{"atomicCmpXchgOKLike", llgoAtomicCmpXchgOK, "extractvalue"},
		{"atomicAddLike", int(llgoAtomicAdd), "atomicrmw add"},
	}
	for _, tc := range cases {
		goFn := ssaPkg.Members[tc.name].(*gossa.Function)
		wrap1 := ctx.atomicIntrinsicWrapper(goFn, tc.ftype)
		wrap2 := ctx.atomicIntrinsicWrapper(goFn, tc.ftype)
		if wrap1.Name() != wrap2.Name() {
			t.Fatalf("wrapper cache mismatch for %s: %s vs %s", tc.name, wrap1.Name(), wrap2.Name())
		}
		if !wrap1.HasBody() {
			t.Fatalf("wrapper %s has no body", wrap1.Name())
		}
		ir := mustNamedFunction(t, pkg.Module(), wrap1.Name()).String()
		if !strings.Contains(ir, tc.wantIR) {
			t.Fatalf("wrapper %s missing %q in IR:\n%s", wrap1.Name(), tc.wantIR, ir)
		}
	}
}

func TestAtomicIntrinsicWrapper_UsedForDeferAndGo(t *testing.T) {
	ssaPkg, _, files := buildGoSSAPkg(t, `
package foo

func atomicStoreLike(p *uint32, v uint32) {}
func atomicCmpXchgOKLike(p *uint32, old, new uint32) bool { return false }
func atomicAddLike(p *int64, v int64) int64 { return 0 }

func use(p *uint32, p64 *int64) {
	defer atomicStoreLike(p, 1)
	defer atomicCmpXchgOKLike(p, 1, 2)
	go atomicAddLike(p64, 2)
}
`)
	prog := newLLSSAProg(t)
	prog.SetLinkname("foo.atomicStoreLike", "llgo.atomicStore")
	prog.SetLinkname("foo.atomicCmpXchgOKLike", "llgo.atomicCmpXchgOK")
	prog.SetLinkname("foo.atomicAddLike", "llgo.atomicAdd")
	pkg, err := NewPackage(prog, ssaPkg, files)
	if err != nil {
		t.Fatal(err)
	}
	ir := pkg.Module().String()
	for _, want := range []string{
		"__llgo_intrinsicwrap.foo.atomicStoreLike#",
		"__llgo_intrinsicwrap.foo.atomicCmpXchgOKLike#",
		"__llgo_intrinsicwrap.foo.atomicAddLike#",
	} {
		if !strings.Contains(ir, want) {
			t.Fatalf("missing wrapper %q in module:\n%s", want, ir)
		}
	}
}

func TestCgoReturn_PanicWrongResultsLen(t *testing.T) {
	prog := newLLSSAProg(t)
	pkg := prog.NewPackage("foo", "foo")

	// _C2func_ means "C2func" in compileBlock, but here we just need a signature
	// with !=2 results to hit the panic branch.
	sig := types.NewSignatureType(nil, nil, nil,
		types.NewTuple(types.NewVar(0, nil, "a", types.Typ[types.Int])),
		types.NewTuple(types.NewVar(0, nil, "", types.Typ[types.Int])),
		false)
	fn := pkg.NewFunc("_C2func_bad", sig, llssa.InGo)
	var b llssa.Builder // nil is fine for panic path
	ctx := &context{prog: prog, pkg: pkg, fn: fn}

	defer func() {
		if r := recover(); r == nil {
			t.Fatal("expected panic")
		}
	}()
	ctx.cgoReturn(b, true)
}

func TestCgoC2Return_ErrnoNil(t *testing.T) {
	prog := newLLSSAProg(t)
	pkg := prog.NewPackage("foo", "foo")
	errType := types.Universe.Lookup("error").Type()
	sig := types.NewSignatureType(nil, nil, nil, nil,
		types.NewTuple(
			types.NewVar(0, nil, "", types.Typ[types.Int]),
			types.NewVar(0, nil, "", errType),
		),
		false)
	fn := pkg.NewFunc("main", sig, llssa.InGo)
	b := fn.MakeBody(1)

	ctx := &context{prog: prog, pkg: pkg, fn: fn}
	ctx.cgoErrno = llssa.Nil
	ret := b.Const(constant.MakeInt64(123), ctx.type_(types.Typ[types.Int], llssa.InGo))

	ctx.cgoC2Return(b, ret, errType)
}

func TestCgoC2Return_ErrnoNeedsConvert(t *testing.T) {
	prog := newLLSSAProg(t)
	pkg := prog.NewPackage("foo", "foo")
	errType := types.Universe.Lookup("error").Type()
	sig := types.NewSignatureType(nil, nil, nil, nil,
		types.NewTuple(
			types.NewVar(0, nil, "", types.Typ[types.Int]),
			types.NewVar(0, nil, "", errType),
		),
		false)
	fn := pkg.NewFunc("main", sig, llssa.InGo)
	b := fn.MakeBody(1)

	ctx := &context{prog: prog, pkg: pkg, fn: fn}
	ctx.cgoErrnoTy = types.Typ[types.Int32] // avoid needing goProg for lookup
	ctx.cgoErrno = b.Const(constant.MakeInt64(1), ctx.type_(types.Typ[types.Int64], llssa.InGo))
	ret := b.Const(constant.MakeInt64(7), ctx.type_(types.Typ[types.Int], llssa.InGo))

	ctx.cgoC2Return(b, ret, errType)
}
