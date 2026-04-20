//go:build !llgo
// +build !llgo

package cl

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"sort"
	"strings"
	"testing"

	"github.com/goplus/gogen/packages"
	llssa "github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/ssa/ssatest"
	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

func buildSSAPackage(t *testing.T, src string) *ssa.Package {
	t.Helper()

	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "foo.go", src, 0)
	if err != nil {
		t.Fatal(err)
	}
	files := []*ast.File{f}
	pkg := types.NewPackage("foo", "foo")
	imp := packages.NewImporter(fset)
	mode := ssa.SanityCheckFunctions | ssa.InstantiateGenerics
	ssapkg, _, err := ssautil.BuildPackage(&types.Config{Importer: imp}, fset, pkg, files, mode)
	if err != nil {
		t.Fatal(err)
	}
	return ssapkg
}

func collectFuncNamesBySSAName(ssapkg *ssa.Package, ssaName string) []string {
	var got []string
	for fn := range ssautil.AllFunctions(ssapkg.Prog) {
		if fn == nil || fn.Name() != ssaName {
			continue
		}
		got = append(got, funcName(ssapkg.Pkg, fn, false))
	}
	sort.Strings(got)
	return got
}

func expectTwoDistinctNamesForTypes(t *testing.T, got []string, suffix string) {
	t.Helper()
	if len(got) != 2 {
		t.Fatalf("got %d function names, want 2: %v", len(got), got)
	}
	if got[0] == got[1] {
		t.Fatalf("got duplicate names: %v", got)
	}

	var hasA, hasB bool
	for _, name := range got {
		if !strings.Contains(name, suffix) {
			t.Fatalf("name %q missing %q", name, suffix)
		}
		if strings.Contains(name, "A") {
			hasA = true
		}
		if strings.Contains(name, "B") {
			hasB = true
		}
	}
	if !hasA || !hasB {
		t.Fatalf("expected names for both A and B, got %v", got)
	}
}

func TestRangeFuncDeferStackCompileHelpers(t *testing.T) {
	ssapkg := buildSSAPackage(t, `package foo

func iter(yield func(int) bool) {
	_ = yield(1) && yield(2)
}

func f() {
	for v := range iter {
		defer func(int) {}(v)
	}
}
`)

	fn := ssapkg.Func("f")
	if fn == nil {
		t.Fatal("missing function f")
	}
	ctx := &context{}
	if !ctx.functionHasExplicitStackDeferInAnon(fn) {
		t.Fatal("expected f to have an anonymous range-yield function with explicit defer stack")
	}

	var sawRangeCall, sawImplicitReturn bool
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			if call, ok := instr.(*ssa.Call); ok && ctx.rangeFuncCallNeedsDeferDrain(&call.Call) {
				sawRangeCall = true
			}
			if ret, ok := instr.(*ssa.Return); ok && ctx.returnNeedsImplicitRunDefers(ret) {
				sawImplicitReturn = true
			}
		}
	}
	if !sawRangeCall {
		t.Fatal("expected range-over-func call to need explicit defer-stack drain")
	}
	if !sawImplicitReturn {
		t.Fatal("expected function return to need implicit RunDefers")
	}
}

func TestRangeFuncDeferStackCompileHelperBranches(t *testing.T) {
	ssapkg := buildSSAPackage(t, `package foo

func iter(yield func(int) bool) {
	_ = yield(1)
}

func takes(int) {}
func takesFunc(func()) {}

func noDeferRange() {
	for range iter {
	}
}

func normalDefer() {
	defer func() {}()
}

func plainClosure() {
	_ = func() int { return 1 }()
	takes(1)
	takesFunc(func() {})
}
`)

	ctx := &context{}
	noDefer := ssapkg.Func("noDeferRange")
	if noDefer == nil {
		t.Fatal("missing function noDeferRange")
	}
	if ctx.functionHasExplicitStackDeferInAnon(noDefer) {
		t.Fatal("noDeferRange should not report explicit stack defer in anonymous functions")
	}
	if ctx.functionHasExplicitStackDeferInAnon(noDefer) {
		t.Fatal("cached noDeferRange result should remain false")
	}

	var sawNoDrainCall, sawNoImplicitReturn bool
	for _, block := range noDefer.Blocks {
		for _, instr := range block.Instrs {
			if call, ok := instr.(*ssa.Call); ok && !ctx.rangeFuncCallNeedsDeferDrain(&call.Call) {
				sawNoDrainCall = true
			}
			if ret, ok := instr.(*ssa.Return); ok && !ctx.returnNeedsImplicitRunDefers(ret) {
				sawNoImplicitReturn = true
			}
		}
	}
	if !sawNoDrainCall {
		t.Fatal("expected range-over-func call without defers to skip defer-stack drain")
	}
	if !sawNoImplicitReturn {
		t.Fatal("expected noDeferRange return to skip implicit RunDefers")
	}
	for _, child := range noDefer.AnonFuncs {
		if child.Synthetic == "range-over-func yield" && ctx.rangeFuncCallNeedsDeferDrain(&ssa.CallCommon{Args: []ssa.Value{ssa.NewConst(nil, types.Typ[types.Int])}}) {
			t.Fatal("non-closure range call argument should not need defer-stack drain")
		}
	}

	normal := ssapkg.Func("normalDefer")
	if normal == nil {
		t.Fatal("missing function normalDefer")
	}
	var sawRunDefersBeforeReturn, sawReturnSkipImplicit bool
	for _, block := range normal.Blocks {
		for _, instr := range block.Instrs {
			if ret, ok := instr.(*ssa.Return); ok && previousNonDebugInstrIsRunDefers(ret) {
				sawRunDefersBeforeReturn = true
				if !ctx.returnNeedsImplicitRunDefers(ret) {
					sawReturnSkipImplicit = true
				}
			}
		}
	}
	if !sawRunDefersBeforeReturn {
		t.Fatal("expected normalDefer return to be preceded by RunDefers")
	}
	if !sawReturnSkipImplicit {
		t.Fatal("expected normalDefer return to skip implicit RunDefers")
	}
	if previousNonDebugInstrIsRunDefers(&ssa.Return{}) {
		t.Fatal("return without a block should not report previous RunDefers")
	}

	if (&context{}).functionHasExplicitStackDefer(nil) {
		t.Fatal("nil function should not report stack defers")
	}
	if ctx.functionHasExplicitStackDeferSeen(noDefer, map[*ssa.Function]bool{noDefer: true}) {
		t.Fatal("seen function should not recurse")
	}
	plain := ssapkg.Func("plainClosure")
	if plain == nil {
		t.Fatal("missing function plainClosure")
	}
	if ctx.functionHasExplicitStackDefer(plain) {
		t.Fatal("plainClosure should not report explicit stack defers")
	}
	if ctx.functionHasExplicitStackDefer(plain) {
		t.Fatal("cached plainClosure result should remain false")
	}
	if ctx.functionHasExplicitStackDeferInAnonSeen(noDefer, map[*ssa.Function]bool{noDefer: true}) {
		t.Fatal("seen function should not recurse through anonymous functions")
	}
	withDefer := buildSSAPackage(t, `package foo

func iter(yield func(int) bool) {
	_ = yield(1)
}

func f() {
	for v := range iter {
		defer func(int) {}(v)
	}
}
`).Func("f")
	if withDefer == nil {
		t.Fatal("missing function f")
	}
	if !(&context{}).functionHasExplicitStackDefer(withDefer) {
		t.Fatal("direct functionHasExplicitStackDefer should recurse into range-yield child")
	}
	ownerProg := ssatest.NewProgram(t, nil)
	ownerPkg := ownerProg.NewPackage("foo", "foo")
	owner := ownerPkg.NewFunc("owner", llssa.NoArgsNoRet, llssa.InGo)
	ownerCtx := &context{funcs: map[*ssa.Function]llssa.Function{withDefer: owner}}
	var yieldFn *ssa.Function
	for _, child := range withDefer.AnonFuncs {
		if child.Synthetic == "range-over-func yield" {
			yieldFn = child
			break
		}
	}
	if yieldFn == nil {
		t.Fatal("missing range-yield function")
	}
	if got := ownerCtx.deferStackOwner(yieldFn); got != owner {
		t.Fatal("deferStackOwner should resolve synthetic yield to source owner")
	}
	if got := ownerCtx.deferStackOwner(nil); got != nil {
		t.Fatal("deferStackOwner(nil) should return nil")
	}
}

func TestRangeFuncCallLoweringHelpers(t *testing.T) {
	ssapkg := buildSSAPackage(t, `package foo

func g() {}
func f() { g() }
func h() { println() }
`)
	prog := ssatest.NewProgram(t, nil)
	llpkg := prog.NewPackage("foo", "foo")
	fn := llpkg.NewFunc("main", llssa.NoArgsNoRet, llssa.InGo)
	fn.SetRecover(fn.MakeBlock())
	builder := fn.MakeBody(1)
	defer func() {
		if r := recover(); r != nil {
			t.Fatalf("call lowering helper panicked: %v", r)
		}
	}()

	ctx := &context{
		prog:    prog,
		pkg:     llpkg,
		fn:      fn,
		goProg:  ssapkg.Prog,
		goPkg:   ssapkg,
		goTyps:  ssapkg.Pkg,
		funcs:   map[*ssa.Function]llssa.Function{},
		bvals:   map[ssa.Value]llssa.Expr{},
		vargs:   map[*ssa.Alloc][]llssa.Expr{},
		loaded:  map[*types.Package]*pkgInfo{types.Unsafe: {kind: PkgDeclOnly}},
		patches: Patches{},
	}
	g := ssapkg.Func("g")
	if g == nil {
		t.Fatal("missing function g")
	}
	if got := ctx.deferStackOwner(g); got == nil {
		t.Fatal("deferStackOwner should compile a direct source owner")
	}
	ctx.funcs[g] = fn
	call := &ssa.CallCommon{Value: g}
	if ret := ctx.call(builder, llssa.Call, call); ret.IsNil() {
		t.Fatal("call should lower a direct Go function call")
	}
	stack := ssa.NewConst(nil, types.Typ[types.UnsafePointer])
	_ = builder.DeferStack()
	ctx.callDeferStack(builder, llssa.DeferInLoop, call, stack, g)

	h := ssapkg.Func("h")
	if h == nil {
		t.Fatal("missing function h")
	}
	var builtinCall *ssa.CallCommon
	for _, block := range h.Blocks {
		for _, instr := range block.Instrs {
			if call, ok := instr.(*ssa.Call); ok {
				if _, ok := call.Call.Value.(*ssa.Builtin); ok {
					builtinCall = &call.Call
					break
				}
			}
		}
	}
	if builtinCall == nil {
		t.Fatal("missing builtin call in h")
	}
	ctx.call(builder, llssa.Call, builtinCall)

	methodSig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	method := types.NewFunc(token.NoPos, ssapkg.Pkg, "M", methodSig)
	iface := types.NewInterfaceType([]*types.Func{method}, nil)
	iface.Complete()
	ctx.call(builder, llssa.Call, &ssa.CallCommon{
		Value:  ssa.NewConst(nil, iface),
		Method: method,
	})

	builder.Return()
	builder.EndBuild()
}

func TestFuncName_NestedClosureInMethodIncludesRecv(t *testing.T) {
	const src = `package foo

type A struct{}
type B struct{}

func (a *A) marshal() int {
	f := func() int {
		g := func() int { return 1 }
		return g()
	}
	return f()
}

func (b *B) marshal() int {
	f := func() int {
		g := func() int { return 2 }
		return g()
	}
	return f()
}
`

	ssapkg := buildSSAPackage(t, src)

	got := collectFuncNamesBySSAName(ssapkg, "marshal$1$1")

	want := []string{
		"foo.(*A).marshal$1$1",
		"foo.(*B).marshal$1$1",
	}
	sort.Strings(want)

	if len(got) != len(want) {
		t.Fatalf("got %d closure func(s) named marshal$1$1: %v, want %v", len(got), got, want)
	}
	for i := range want {
		if got[i] != want[i] {
			t.Fatalf("got %v, want %v", got, want)
		}
	}
}

func TestFuncName_TopLevelAndPlainClosureNoRecv(t *testing.T) {
	const src = `package foo

func top() {}

func outer() {
	f := func() {}
	f()
}
`
	ssapkg := buildSSAPackage(t, src)

	topFn := ssapkg.Func("top")
	if topFn == nil {
		t.Fatal("top function not found")
	}
	if got, want := funcName(ssapkg.Pkg, topFn, false), "foo.top"; got != want {
		t.Fatalf("top-level func name = %q, want %q", got, want)
	}

	closures := collectFuncNamesBySSAName(ssapkg, "outer$1")
	if len(closures) != 1 {
		t.Fatalf("got %d closure name(s) for outer$1: %v, want 1", len(closures), closures)
	}
	if got, want := closures[0], "foo.outer$1"; got != want {
		t.Fatalf("closure name = %q, want %q", got, want)
	}
}

func TestFuncName_ThunkAndBoundStillCarryRecv(t *testing.T) {
	const src = `package foo

type A int
type B int

func (A) f() int { return 1 }
func (B) f() int { return 2 }

var ta = A.f
var tb = B.f
var ba = A(0).f
var bb = B(0).f
`
	ssapkg := buildSSAPackage(t, src)

	thunks := collectFuncNamesBySSAName(ssapkg, "f$thunk")
	expectTwoDistinctNamesForTypes(t, thunks, "f$thunk")

	bounds := collectFuncNamesBySSAName(ssapkg, "f$bound")
	expectTwoDistinctNamesForTypes(t, bounds, "f$bound")
}
