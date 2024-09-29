package convert_test

import (
	"go/types"
	"reflect"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/convert"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func TestTypeConv_ToType(t *testing.T) {
	pkg := types.NewPackage("test", "test")
	typ := convert.NewBuiltinTypeMap(".", "temp", nil)
	conv := convert.NewConv(pkg, typ)

	tests := []struct {
		name     string
		expr     ast.Expr
		expected types.Type
	}{
		{
			name:     "BuiltinType int",
			expr:     &ast.BuiltinType{Kind: ast.Int},
			expected: typ.CType("Int"),
		},
		{
			name:     "PointerType to int",
			expr:     &ast.PointerType{X: &ast.BuiltinType{Kind: ast.Int}},
			expected: types.NewPointer(typ.CType("Int")),
		},
		{
			name: "ArrayType",
			expr: &ast.ArrayType{
				Elt: &ast.BuiltinType{Kind: ast.Int},
				Len: &ast.BasicLit{Value: "2", Kind: ast.IntLit},
			},
			expected: types.NewArray(typ.CType("Int"), 2),
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result, err := conv.ToType(tt.expr)
			if err != nil {
				t.Errorf("ToType() error = %v", err)
				return
			}
			if !reflect.DeepEqual(result, tt.expected) {
				t.Errorf("ToType() = %v, want %v", result, tt.expected)
			}
		})
	}
}

func TestTypeConv_ToSignature(t *testing.T) {
	pkg := types.NewPackage("test", "test")
	typ := convert.NewBuiltinTypeMap(".", "temp", nil)
	conv := convert.NewConv(pkg, typ)

	funcType := &ast.FuncType{
		Params: &ast.FieldList{
			List: []*ast.Field{
				{Type: &ast.BuiltinType{Kind: ast.Int}},
			},
		},
		Ret: &ast.BuiltinType{Kind: ast.Bool},
	}

	expected := types.NewSignatureType(nil, nil, nil,
		types.NewTuple(
			types.NewVar(0, pkg, "", typ.CType("Int")),
		),
		types.NewTuple(
			types.NewVar(0, pkg, "", types.Typ[types.Bool]),
		),
		false,
	)

	result, err := conv.ToSignature(funcType)
	if err != nil {
		t.Errorf("ToSignature() error = %v", err)
		return
	}
	if !reflect.DeepEqual(result, expected) {
		t.Errorf("ToSignature() = %v, want %v", result, expected)
	}
}

func TestTypeConv_RecordTypeToStruct(t *testing.T) {
	pkg := types.NewPackage("test", "test")
	typ := convert.NewBuiltinTypeMap(".", "temp", nil)
	conv := convert.NewConv(pkg, typ)

	recordType := &ast.RecordType{
		Fields: &ast.FieldList{
			List: []*ast.Field{
				{Names: []*ast.Ident{{Name: "Field1"}}, Type: &ast.BuiltinType{Kind: ast.Int}},
			},
		},
	}

	expected := types.NewStruct([]*types.Var{
		types.NewVar(0, pkg, "Field1", typ.CType("Int")),
	}, nil)

	result, err := conv.RecordTypeToStruct(recordType)
	if err != nil {
		t.Errorf("RecordTypeToStruct() error = %v", err)
		return
	}
	if !reflect.DeepEqual(result, expected) {
		t.Errorf("RecordTypeToStruct() = %v, want %v", result, expected)
	}
}
