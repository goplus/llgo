package ssa_test

import (
	"go/token"
	"go/types"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	"github.com/goplus/llgo/ssa"
)

func TestGoClosureStartupUsesGCManagedMemory(t *testing.T) {
	prog := ssa.NewProgram(nil)
	prog.SetRuntime(func() *types.Package {
		fset := token.NewFileSet()
		imp := packages.NewImporter(fset)
		pkg, _ := imp.Import(ssa.PkgRuntime)
		return pkg
	})
	pkg := prog.NewPackage("bar", "foo/bar")

	ctxFields := []*types.Var{
		types.NewField(0, nil, "x", types.Typ[types.Int], false),
	}
	ctxStruct := types.NewStruct(ctxFields, nil)
	ctxParam := types.NewParam(0, nil, "__llgo_ctx", types.NewPointer(ctxStruct))
	innerSig := types.NewSignatureType(nil, nil, nil, types.NewTuple(ctxParam), nil, false)
	inner := pkg.NewFunc("inner", innerSig, ssa.InGo)
	ib := inner.MakeBody(1)
	ib.Return()

	outer := pkg.NewFunc("outer", ssa.NoArgsNoRet, ssa.InGo)
	ob := outer.MakeBody(1)
	closure := ob.MakeClosure(inner.Expr, []ssa.Expr{prog.Val(42)})
	ob.Go(closure, func(b ssa.Builder, fn ssa.Expr, args ...ssa.Expr) ssa.Expr {
		return b.Call(fn, args...)
	})
	ob.Return()

	ir := pkg.String()
	if strings.Contains(ir, "@malloc") {
		t.Fatalf("goroutine startup data should not use malloc:\n%s", ir)
	}
	if strings.Contains(ir, "@free") {
		t.Fatalf("goroutine startup data should not use free:\n%s", ir)
	}
	if got := strings.Count(ir, `"github.com/goplus/llgo/runtime/internal/runtime.AllocU"`); got < 2 {
		t.Fatalf("expected closure ctx and goroutine startup data to use AllocU, got %d:\n%s", got, ir)
	}
}
