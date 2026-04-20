//go:build !llgo
// +build !llgo

package cl

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	llssa "github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/ssa/ssatest"
	gossa "golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func buildSSAPackageWithFiles(t *testing.T, src string) (*gossa.Package, []*ast.File, *packages.Importer) {
	t.Helper()

	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "foo.go", src, 0)
	if err != nil {
		t.Fatal(err)
	}
	files := []*ast.File{f}
	pkg := types.NewPackage("foo", "foo")
	imp := packages.NewImporter(fset)
	mode := gossa.SanityCheckFunctions | gossa.InstantiateGenerics
	ssapkg, _, err := ssautil.BuildPackage(&types.Config{Importer: imp}, fset, pkg, files, mode)
	if err != nil {
		t.Fatal(err)
	}
	return ssapkg, files, imp
}

func findStaticCallByName(t *testing.T, fn *gossa.Function, callee string) *gossa.Call {
	t.Helper()
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			call, ok := instr.(*gossa.Call)
			if !ok {
				continue
			}
			target := call.Common().StaticCallee()
			if target != nil && target.Name() == callee {
				return call
			}
		}
	}
	t.Fatalf("call to %q not found in %s", callee, fn.Name())
	return nil
}

func lastNonRecoverReturn(t *testing.T, fn *gossa.Function) *gossa.Return {
	t.Helper()
	for i := len(fn.Blocks) - 1; i >= 0; i-- {
		block := fn.Blocks[i]
		if block == fn.Recover {
			continue
		}
		for j := len(block.Instrs) - 1; j >= 0; j-- {
			if ret, ok := block.Instrs[j].(*gossa.Return); ok {
				return ret
			}
		}
	}
	t.Fatalf("return not found in %s", fn.Name())
	return nil
}

func TestRangeFuncDeferAnalysisHelpers(t *testing.T) {
	const src = `package foo

func seq(yield func(int) bool) {
	_ = yield(1)
	_ = yield(2)
}

func withRangeDefer() {
	for v := range seq {
		defer func() { println(v) }()
	}
}

func withRangeNoDefer() {
	for range seq {
	}
}

func directDefer() {
	defer println(1)
}
`

	ssapkg := buildSSAPackage(t, src)
	ctx := &context{}

	withRangeDefer := ssapkg.Func("withRangeDefer")
	if withRangeDefer == nil || len(withRangeDefer.AnonFuncs) != 1 {
		t.Fatalf("expected one yield closure for withRangeDefer, got %v", withRangeDefer)
	}
	yieldFn := withRangeDefer.AnonFuncs[0]
	if yieldFn.Synthetic != "range-over-func yield" {
		t.Fatalf("unexpected synthetic kind: %q", yieldFn.Synthetic)
	}
	if !ctx.functionHasExplicitStackDefer(yieldFn) {
		t.Fatal("yield closure should have explicit defer stack")
	}
	if !ctx.functionHasExplicitStackDeferInAnon(withRangeDefer) {
		t.Fatal("outer function should detect explicit defer stack in anon funcs")
	}
	if !ctx.functionHasExplicitStackDefer(yieldFn) {
		t.Fatal("cached explicit defer stack result should remain true")
	}
	if !ctx.functionHasExplicitStackDeferInAnon(withRangeDefer) {
		t.Fatal("cached anon explicit defer stack result should remain true")
	}

	withRangeCall := findStaticCallByName(t, withRangeDefer, "seq")
	if !ctx.rangeFuncCallNeedsDeferDrain(withRangeCall.Common()) {
		t.Fatal("range-over-func call with defering yield should require drain")
	}
	withRangeRet := lastNonRecoverReturn(t, withRangeDefer)
	if !ctx.returnNeedsImplicitRunDefers(withRangeRet) {
		t.Fatal("outer function should insert implicit RunDefers")
	}

	withRangeNoDefer := ssapkg.Func("withRangeNoDefer")
	if withRangeNoDefer == nil {
		t.Fatal("missing withRangeNoDefer")
	}
	if ctx.functionHasExplicitStackDeferInAnon(withRangeNoDefer) {
		t.Fatal("range-over-func without defer should not report explicit stack defer")
	}
	noDeferCall := findStaticCallByName(t, withRangeNoDefer, "seq")
	if ctx.rangeFuncCallNeedsDeferDrain(noDeferCall.Common()) {
		t.Fatal("range-over-func call without defering yield should not require drain")
	}
	noDeferRet := lastNonRecoverReturn(t, withRangeNoDefer)
	if ctx.returnNeedsImplicitRunDefers(noDeferRet) {
		t.Fatal("range-over-func without explicit defer stack should not add RunDefers")
	}

	directDefer := ssapkg.Func("directDefer")
	if directDefer == nil {
		t.Fatal("missing directDefer")
	}
	directRet := lastNonRecoverReturn(t, directDefer)
	if !previousNonDebugInstrIsRunDefers(directRet) {
		t.Fatal("direct defer return should already be preceded by RunDefers")
	}
	if ctx.returnNeedsImplicitRunDefers(directRet) {
		t.Fatal("existing RunDefers should suppress implicit insertion")
	}
}

func TestEmitDoWithExplicitDeferStack(t *testing.T) {
	prog := ssatest.NewProgram(t, nil)
	pkg := prog.NewPackage("foo", "foo")

	callee := pkg.NewFunc("callee", llssa.NoArgsNoRet, llssa.InGo)
	cb := callee.MakeBody(1)
	cb.Return()
	cb.EndBuild()

	owner := pkg.NewFunc("owner", llssa.NoArgsNoRet, llssa.InGo)
	b := owner.MakeBody(1)
	owner.SetRecover(owner.MakeBlock())
	stack := b.BuiltinCall("ssa:deferstack")
	b.Return()
	b.SetBlockEx(owner.Block(0), llssa.BeforeLast, true)

	ctx := &context{}
	ctx.emitDo(b, llssa.DeferInLoop, &explicitDeferStack{stack: stack, owner: owner}, callee.Expr, llssa.Builder.Call)
	ctx.emitDo(b, llssa.DeferAlways, nil, callee.Expr, llssa.Builder.Call)
	b.DeferStackDrain()
	b.RunDefers()
	b.Return()
	b.EndBuild()

	ir := pkg.String()
	if !strings.Contains(ir, "FreeDeferNode") {
		t.Fatalf("expected explicit defer stack drain in IR, got:\n%s", ir)
	}
	if !strings.Contains(ir, "sigsetjmp") && !strings.Contains(ir, "setjmp") {
		t.Fatalf("expected defer stack setup in IR, got:\n%s", ir)
	}
}

func TestCompileRangeFuncDeferModule(t *testing.T) {
	_, m := mustCompileLLPkgFromSrc(t, `
package foo

func seq(yield func(int) bool) {
	_ = yield(1)
	_ = yield(2)
}

func f() {
	for v := range seq {
		defer func() { _ = v }()
	}
}
`)

	ir := m.String()
	if !strings.Contains(ir, "FreeDeferNode") {
		t.Fatalf("expected rangefunc defer node cleanup in module, got:\n%s", ir)
	}
	if !strings.Contains(ir, "sigsetjmp") && !strings.Contains(ir, "setjmp") {
		t.Fatalf("expected rangefunc defer stack setup in module, got:\n%s", ir)
	}
}

func TestDeferStackOwnerUsesEnclosingSourceFunction(t *testing.T) {
	const src = `package foo

func seq(yield func(int) bool) { _ = yield(1) }

func f() {
	for v := range seq {
		defer func() { println(v) }()
	}
}
`

	ssapkg := buildSSAPackage(t, src)
	root := ssapkg.Func("f")
	if root == nil || len(root.AnonFuncs) != 1 {
		t.Fatalf("expected one yield closure for f, got %v", root)
	}
	yieldFn := root.AnonFuncs[0]

	prog := llssa.NewProgram(nil)
	pkg := prog.NewPackage("foo", "foo")
	owner := pkg.NewFunc("f", llssa.NoArgsNoRet, llssa.InGo)

	ctx := &context{funcs: map[*gossa.Function]llssa.Function{root: owner}}
	if got := ctx.deferStackOwner(root); got != owner {
		t.Fatalf("deferStackOwner(root) = %v, want %v", got, owner)
	}
	if got := ctx.deferStackOwner(yieldFn); got != owner {
		t.Fatalf("deferStackOwner(yield) = %v, want %v", got, owner)
	}
}
