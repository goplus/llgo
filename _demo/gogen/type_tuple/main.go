// Converted from type_tuple_test.go for llgo testing
// Batch 1: 1 case
// Batch 2: 3 cases
package main

import (
	"bytes"
	"fmt"
	"go/token"
	"go/types"

	"github.com/goplus/gogen"
	"github.com/goplus/gogen/packages"
)

var (
	gblFset *token.FileSet
	gblImp  types.Importer
)

func init() {
	gblFset = token.NewFileSet()
	gblImp = packages.NewImporter(gblFset)
}

func newMainPackage() *gogen.Package {
	conf := &gogen.Config{
		Fset:     gblFset,
		Importer: gblImp,
	}
	return gogen.NewPackage("", "main", conf)
}

func domTest(pkg *gogen.Package, expected string) {
	var b bytes.Buffer
	err := gogen.WriteTo(&b, pkg, "")
	if err != nil {
		panic(fmt.Sprintf("gogen.WriteTo failed: %v", err))
	}
	result := b.String()
	if result != expected {
		panic(fmt.Sprintf("\nResult:\n%s\nExpected:\n%s\n", result, expected))
	}
}

func ctxRef(pkg *gogen.Package, name string) gogen.Ref {
	_, o := pkg.CB().Scope().LookupParent(name, token.NoPos)
	return o
}

func testIsTupleType() {
	fmt.Println("=== testIsTupleType ===")
	var cb gogen.CodeBuilder
	x := types.NewField(token.NoPos, nil, "x", types.Typ[types.Int], false)
	y := types.NewField(token.NoPos, nil, "y", types.Typ[types.Int], false)
	flds := []*types.Var{x, y}
	if cb.IsTupleType(types.NewStruct(flds, nil)) {
		panic("IsTupleType returned true for a struct with non-tuple field names")
	}
}

func testTupleLit() {
	fmt.Println("=== testTupleLit ===")
	pkg := newMainPackage()
	pkg.NewFunc(nil, "foo", nil, nil, false).BodyStart(pkg).
		Val(1).
		Val(2).
		TupleLit(nil, 2).
		EndStmt().
		End()
	domTest(pkg, `package main

func foo() {
	struct {
		X_0 int
		X_1 int
	}{1, 2}
}
`)
}

func testTupleMember() {
	fmt.Println("=== testTupleMember ===")
	pkg := newMainPackage()
	x := types.NewField(token.NoPos, pkg.Types, "x", types.Typ[types.Int], false)
	y := types.NewField(token.NoPos, pkg.Types, "y", types.Typ[types.Int], false)
	typ := pkg.NewTuple(true, x, y)
	pt := types.NewNamed(types.NewTypeName(token.NoPos, pkg.Types, "Point", typ), typ, nil)
	a := types.NewParam(token.NoPos, pkg.Types, "a", typ)
	b := types.NewParam(token.NoPos, pkg.Types, "b", pt)
	typf := types.NewSignatureType(nil, nil, nil, nil, types.NewTuple(b), false)
	f := types.NewParam(token.NoPos, pkg.Types, "f", typf)
	ok := types.NewParam(token.NoPos, pkg.Types, "ok", types.Typ[types.Bool])
	typf2 := types.NewSignatureType(nil, nil, nil, nil, types.NewTuple(b, ok), false)
	f2 := types.NewParam(token.NoPos, pkg.Types, "f2", typf2)
	pkg.NewFunc(nil, "foo", types.NewTuple(a, f, f2), nil, false).BodyStart(pkg).
		Val(ctxRef(pkg, "a")).
		MemberRef("0").
		Val(ctxRef(pkg, "a")).
		MemberVal("1", 0).
		Assign(1).
		EndStmt().
		Val(ctxRef(pkg, "a")).
		MemberRef("x").
		Val(ctxRef(pkg, "a")).
		MemberVal("y", 0).
		Assign(1).
		EndStmt().
		DefineVarStart(token.NoPos, "x").
		Val(ctxRef(pkg, "a")).
		EndInit(1).
		DefineVarStart(token.NoPos, "x2").
		Val(ctxRef(pkg, "f")).Call(0).
		EndInit(1).
		DefineVarStart(token.NoPos, "x3", "ok").
		Val(ctxRef(pkg, "f2")).Call(0).
		EndInit(1).
		Debug(func(cb *gogen.CodeBuilder) {
			cb.Val(ctxRef(pkg, "a"))
			cb.Member("unknown", 0, gogen.MemberFlagRef)
			cb.Member("unknown", 0, gogen.MemberFlagVal)
			cb.ResetStmt()
		}).
		End()
	domTest(pkg, `package main

func foo(a struct {
	X_0 int
	X_1 int
}, f func() (b Point), f2 func() (b Point, ok bool)) {
	a.X_0 = a.X_1
	a.X_0 = a.X_1
	x := a
	x2 := f()
	x3, ok := f2()
}
`)
}

func newFields(names ...string) []*types.Var {
	ret := make([]*types.Var, len(names))
	for i, name := range names {
		ret[i] = types.NewField(token.NoPos, nil, name, types.Typ[types.Int], false)
	}
	return ret
}

func testCodeBuilderLookupField() {
	fmt.Println("=== testCodeBuilderLookupField ===")
	p := newMainPackage()
	cb := p.CB()
	tests := []struct {
		name string
		t    *types.Struct
		fld  string
		want int
	}{
		{"test1", types.NewStruct(newFields("a"), nil), "b", -1},
		{"test2", types.NewStruct(newFields("a"), nil), "a", 0},
		{"test3", p.NewTuple(true, newFields("a")...), "a", 0},
		{"test4", p.NewTuple(true, newFields("a")...), "0", 0},
	}
	for _, tt := range tests {
		got := cb.LookupField(tt.t, tt.fld)
		if got != tt.want {
			panic(fmt.Sprintf("testCodeBuilderLookupField[%s]: got=%v want=%v", tt.name, got, tt.want))
		}
	}
}

func main() {
	fmt.Println("Running type_tuple_test tests (4 cases)...")
	fmt.Println()

	testIsTupleType()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTupleLit()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTupleMember()
	fmt.Println("  [PASS]")
	fmt.Println()

	testCodeBuilderLookupField()
	fmt.Println("  [PASS]")
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
