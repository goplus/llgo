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
	"testing"

	"github.com/goplus/gogen/packages"
	llssa "github.com/goplus/llgo/ssa"
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
