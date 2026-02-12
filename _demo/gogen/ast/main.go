// Converted from ast_test.go for llgo testing
// Batch 1: 4 cases (TestToVariadic/TestToType/TestToTypeAlias/Test_embedName)
package main

import (
	"fmt"
	"go/ast"
	"go/token"
	"go/types"
)

// Minimal subset used by ast_test.go.
type unboundType struct {
	tBound types.Type
}

func (p *unboundType) Underlying() types.Type { return p }
func (p *unboundType) String() string {
	return fmt.Sprintf("unboundType{typ: %v}", p.tBound)
}

func toVariadic(fld *ast.Field) {
	t, ok := fld.Type.(*ast.ArrayType)
	if !ok || t.Len != nil {
		panic("TODO: not a slice type")
	}
	fld.Type = &ast.Ellipsis{Elt: t.Elt}
}

// embedName returns the name of the embedded type.
func embedName(typ types.Type) string {
	if t, ok := typ.(*types.Pointer); ok {
		typ = t.Elem()
	}
	switch t := typ.(type) {
	case *types.Basic:
		return t.Name()
	case *types.Named:
		return t.Obj().Name()
	case *types.Alias:
		return t.Obj().Name()
	}
	return ""
}

// Minimal toType implementation for the branches exercised by TestToType/TestToTypeAlias.
func toType(typ types.Type) ast.Expr {
retry:
	switch t := typ.(type) {
	case *types.Basic:
		if (t.Info() & types.IsUntyped) != 0 {
			panic("unexpected: untyped type")
		}
		return &ast.Ident{Name: t.Name()}
	case *unboundType:
		if t.tBound == nil {
			panic("unbound type")
		}
		typ = t.tBound
		goto retry
	case *types.Alias:
		return &ast.Ident{Name: t.Obj().Name()}
	}
	panic(fmt.Sprintf("TODO: toType unsupported - %T", typ))
}

func testToVariadic() {
	fmt.Println("=== testToVariadic ===")
	defer func() {
		if e := recover(); e == nil {
			panic("testToVariadic: expected panic but got none")
		}
	}()
	toVariadic(&ast.Field{Type: &ast.Ident{Name: "int"}})
}

func testToType() {
	fmt.Println("=== testToType ===")
	expr := toType(&unboundType{tBound: types.Typ[types.Int]})
	id, ok := expr.(*ast.Ident)
	if !ok || id.Name != "int" {
		panic(fmt.Sprintf("testToType: bad expr %#v", expr))
	}

	defer func() {
		if e := recover(); e == nil {
			panic("testToType: expected panic but got none")
		}
	}()
	toType(&unboundType{})
}

func testToTypeAlias() {
	fmt.Println("=== testToTypeAlias ===")
	alias := types.NewAlias(types.NewTypeName(token.NoPos, nil, "Int", nil), types.Typ[types.Int])
	expr := toType(alias)
	if ident, ok := expr.(*ast.Ident); !ok || ident.Name != "Int" {
		panic(fmt.Sprintf("testToTypeAlias: bad alias %#v", expr))
	}
}

func testEmbedName() {
	fmt.Println("=== testEmbedName ===")
	tests := []struct {
		name string
		typ  types.Type
		want string
	}{
		{name: "basic type", typ: types.Typ[types.Int], want: "int"},
		{name: "named type", typ: types.NewNamed(types.NewTypeName(0, nil, "MyInt", nil), types.Typ[types.Int], nil), want: "MyInt"},
		{name: "pointer to named type", typ: types.NewPointer(types.NewNamed(types.NewTypeName(0, nil, "MyInt", nil), types.Typ[types.Int], nil)), want: "MyInt"},
		{name: "alias type", typ: types.NewAlias(types.NewTypeName(0, nil, "MyInt", nil), types.Typ[types.Int]), want: "MyInt"},
		{name: "pointer to alias type", typ: types.NewPointer(types.NewAlias(types.NewTypeName(0, nil, "MyInt", nil), types.Typ[types.Int])), want: "MyInt"},
		{name: "struct type (anonymous)", typ: types.NewStruct(nil, nil), want: ""},
	}
	for _, tt := range tests {
		got := embedName(tt.typ)
		if got != tt.want {
			panic(fmt.Sprintf("testEmbedName[%s]: got=%q want=%q", tt.name, got, tt.want))
		}
	}
}

func main() {
	fmt.Println("Running ast_test tests (4 cases)...")
	fmt.Println()

	testToVariadic()
	fmt.Println("  [PASS]")
	fmt.Println()

	testToType()
	fmt.Println("  [PASS]")
	fmt.Println()

	testToTypeAlias()
	fmt.Println("  [PASS]")
	fmt.Println()

	testEmbedName()
	fmt.Println("  [PASS]")
	fmt.Println()

	fmt.Println("All tests PASSED!")
}
