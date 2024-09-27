package convert

import (
	"go/types"
	"testing"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

func TestBuiltinType(t *testing.T) {
	typmap := NewBuiltinTypeMap(".", "temp", nil)
	testCases := []struct {
		name     string
		input    *ast.BuiltinType
		expected string
		wantErr  bool
	}{
		{"Void", &ast.BuiltinType{Kind: ast.Void}, "untyped nil", false},
		{"Bool", &ast.BuiltinType{Kind: ast.Bool}, "bool", false},
		{"Char_S", &ast.BuiltinType{Kind: ast.Char, Flags: ast.Signed}, "int8", false},
		{"Char_U", &ast.BuiltinType{Kind: ast.Char, Flags: ast.Unsigned}, "int8", false},
		{"WChar", &ast.BuiltinType{Kind: ast.WChar}, "int16", false},
		{"Char16", &ast.BuiltinType{Kind: ast.Char16}, "int16", false},
		{"Char32", &ast.BuiltinType{Kind: ast.Char32}, "int32", false},
		{"Short", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Short}, "int16", false},
		{"UShort", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Short | ast.Unsigned}, "uint16", false},
		{"Int", &ast.BuiltinType{Kind: ast.Int}, "github.com/goplus/llgo/c.Int", false},
		{"UInt", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Unsigned}, "github.com/goplus/llgo/c.Uint", false},
		{"Long", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Long}, "github.com/goplus/llgo/c.Long", false},
		{"ULong", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Long | ast.Unsigned}, "github.com/goplus/llgo/c.Ulong", false},
		{"LongLong", &ast.BuiltinType{Kind: ast.Int, Flags: ast.LongLong}, "github.com/goplus/llgo/c.LongLong", false},
		{"ULongLong", &ast.BuiltinType{Kind: ast.Int, Flags: ast.LongLong | ast.Unsigned}, "github.com/goplus/llgo/c.UlongLong", false},
		{"Float", &ast.BuiltinType{Kind: ast.Float}, "float32", false},
		{"Double", &ast.BuiltinType{Kind: ast.Float, Flags: ast.Double}, "float64", false},
		{"ComplexFloat", &ast.BuiltinType{Kind: ast.Complex}, "complex64", false},
		{"ComplexDouble", &ast.BuiltinType{Kind: ast.Complex, Flags: ast.Double}, "complex128", false},

		{"Unsupported", &ast.BuiltinType{Kind: 1000}, "", true},
	}
	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			result, err := typmap.FindBuiltinType(*tc.input)
			if (err != nil) != tc.wantErr {
				t.Errorf("FindBuiltinType() error = %v, wantErr %v", err, tc.wantErr)
				return
			}

			if tc.wantErr {
				return
			}

			if result != nil && result.String() != tc.expected {
				t.Errorf("unexpected result:%s expected:%s", result.String(), tc.expected)
			}
		})
	}
}

func TestIsVoidType(t *testing.T) {
	typmap := NewBuiltinTypeMap(".", "temp", nil)
	if !typmap.IsVoidType(types.Typ[types.UntypedNil]) {
		t.Error("Expect return true")
	}
	if typmap.IsVoidType(types.Typ[types.Float32]) {
		t.Error("Expect return false")
	}
}

func TestCType(t *testing.T) {
	typmap := NewBuiltinTypeMap(".", "temp", nil)
	ptrType := typmap.CType("Pointer")
	if ptrType == nil {
		t.Error("Expect a non nil pointer type")
	}
}
