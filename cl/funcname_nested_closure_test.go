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
