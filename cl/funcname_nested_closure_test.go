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

func TestGenericLocalTypePatchHelpers(t *testing.T) {
	ssapkg := buildSSAPackage(t, `package foo

func use() {
	_ = localType[int]()
	_ = localType[string]()
}

func localType[T any]() any {
	type local struct {
		value T
	}
	return local{}
}
`)

	fn, local := firstGenericLocalNamed(t, ssapkg)
	ctx := &context{goFn: fn}
	if !ctx.isGenericLocalType(local.Obj()) {
		t.Fatalf("%s should be detected as a generic local type", local.Obj().Name())
	}

	patched, ok := ctx.patchLocalGenericNamed(local)
	if !ok {
		t.Fatalf("patchLocalGenericNamed(%v) was not patched", local)
	}
	name := patched.Obj().Name()
	if !strings.Contains(name, "[") || !strings.Contains(name, "·") {
		t.Fatalf("patched local generic name = %q, want type args and ordinal suffix", name)
	}
	if _, ok := ctx.patchLocalGenericNamed(patched); ok {
		t.Fatalf("already-patched local generic name %q should not be patched again", name)
	}

	for _, typ := range []types.Type{
		types.NewPointer(local),
		types.NewSlice(local),
		types.NewArray(local, 2),
		types.NewMap(types.Typ[types.String], local),
		types.NewChan(types.SendRecv, local),
		types.NewStruct([]*types.Var{types.NewField(token.NoPos, ssapkg.Pkg, "field", local, false)}, []string{`json:"field"`}),
	} {
		if _, ok := ctx._patchType(typ); !ok {
			t.Fatalf("_patchType(%v) did not patch nested local generic type", typ)
		}
	}

	argName := ctx.typeArgName(types.NewMap(
		types.NewChan(types.RecvOnly, types.Typ[types.Int]),
		types.NewArray(types.NewSlice(local), 3),
	))
	if !strings.Contains(argName, "<-chan int") || !strings.Contains(argName, "[]") {
		t.Fatalf("typeArgName did not format nested composite type: %q", argName)
	}

	if got := typeListArgs(nil, ctx.typeArgName); got != nil {
		t.Fatalf("typeListArgs(nil) = %v, want nil", got)
	}
}

func firstGenericLocalNamed(t *testing.T, ssapkg *ssa.Package) (*ssa.Function, *types.Named) {
	t.Helper()
	for fn := range ssautil.AllFunctions(ssapkg.Prog) {
		if fn == nil || len(fn.TypeArgs()) == 0 {
			continue
		}
		for _, block := range fn.Blocks {
			for _, instr := range block.Instrs {
				if mi, ok := instr.(*ssa.MakeInterface); ok {
					if named := findLocalNamed(mi.X.Type(), ssapkg.Pkg); named != nil {
						return fn, named
					}
				}
				if val, ok := instr.(ssa.Value); ok {
					if named := findLocalNamed(val.Type(), ssapkg.Pkg); named != nil {
						return fn, named
					}
				}
			}
		}
	}
	t.Fatal("could not find instantiated generic local named type")
	return nil, nil
}

func findLocalNamed(typ types.Type, pkg *types.Package) *types.Named {
	switch t := types.Unalias(typ).(type) {
	case *types.Named:
		if obj := t.Obj(); obj != nil && obj.Pkg() == pkg && obj.Parent() != pkg.Scope() {
			return t
		}
	case *types.Pointer:
		return findLocalNamed(t.Elem(), pkg)
	case *types.Slice:
		return findLocalNamed(t.Elem(), pkg)
	case *types.Array:
		return findLocalNamed(t.Elem(), pkg)
	case *types.Map:
		if named := findLocalNamed(t.Key(), pkg); named != nil {
			return named
		}
		return findLocalNamed(t.Elem(), pkg)
	case *types.Chan:
		return findLocalNamed(t.Elem(), pkg)
	case *types.Struct:
		for i := 0; i < t.NumFields(); i++ {
			if named := findLocalNamed(t.Field(i).Type(), pkg); named != nil {
				return named
			}
		}
	}
	return nil
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
