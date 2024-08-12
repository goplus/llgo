package main

import (
	"fmt"

	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func main() {
	TestBuiltinType()
}
func TestBuiltinType() {
	tests := []struct {
		name     string
		typeKind clang.TypeKind
		expected ast.BuiltinType
	}{
		{"Void", clang.TypeVoid, ast.BuiltinType{Kind: ast.Void}},
		{"Bool", clang.TypeBool, ast.BuiltinType{Kind: ast.Bool}},
		{"Char_S", clang.TypeCharS, ast.BuiltinType{Kind: ast.Char, Flags: ast.Signed}},
		{"Char_U", clang.TypeCharU, ast.BuiltinType{Kind: ast.Char, Flags: ast.Unsigned}},
		{"Char16", clang.TypeChar16, ast.BuiltinType{Kind: ast.Char16}},
		{"Char32", clang.TypeChar32, ast.BuiltinType{Kind: ast.Char32}},
		{"WChar", clang.TypeWChar, ast.BuiltinType{Kind: ast.WChar}},
		{"Short", clang.TypeShort, ast.BuiltinType{Kind: ast.Int, Flags: ast.Short}},
		{"UShort", clang.TypeUShort, ast.BuiltinType{Kind: ast.Int, Flags: ast.Short | ast.Unsigned}},
		{"Int", clang.TypeInt, ast.BuiltinType{Kind: ast.Int}},
		{"UInt", clang.TypeUInt, ast.BuiltinType{Kind: ast.Int, Flags: ast.Unsigned}},
		{"Long", clang.TypeLong, ast.BuiltinType{Kind: ast.Int, Flags: ast.Long}},
		{"ULong", clang.TypeULong, ast.BuiltinType{Kind: ast.Int, Flags: ast.Long | ast.Unsigned}},
		{"LongLong", clang.TypeLongLong, ast.BuiltinType{Kind: ast.Int, Flags: ast.LongLong}},
		{"ULongLong", clang.TypeULongLong, ast.BuiltinType{Kind: ast.Int, Flags: ast.LongLong | ast.Unsigned}},
		{"Int128", clang.TypeInt128, ast.BuiltinType{Kind: ast.Int128}},
		{"UInt128", clang.TypeUInt128, ast.BuiltinType{Kind: ast.Int128, Flags: ast.Unsigned}},
		{"Float", clang.TypeFloat, ast.BuiltinType{Kind: ast.Float}},
		{"Half", clang.TypeHalf, ast.BuiltinType{Kind: ast.Float16}},
		{"Float16", clang.TypeFloat16, ast.BuiltinType{Kind: ast.Float16}},
		{"Double", clang.TypeDouble, ast.BuiltinType{Kind: ast.Float, Flags: ast.Double}},
		{"LongDouble", clang.TypeLongDouble, ast.BuiltinType{Kind: ast.Float, Flags: ast.Long | ast.Double}},
		{"Float128", clang.TypeFloat128, ast.BuiltinType{Kind: ast.Float128}},
		{"Unknown", clang.TypeIbm128, ast.BuiltinType{Kind: ast.Void}},
	}
	converter := &parse.Converter{}
	converter.Convert()
	for _, bt := range tests {
		t := clang.Type{Kind: bt.typeKind}
		res := converter.ProcessBuiltinType(t)
		if res.Kind != bt.expected.Kind {
			fmt.Printf("%s Kind mismatch:got %d want %d, \n", bt.name, res.Kind, bt.expected.Kind)
		}
		if res.Flags != bt.expected.Flags {
			fmt.Printf("%s Flags mismatch:got %d,want %d\n", bt.name, res.Flags, bt.expected.Flags)
		}
		fmt.Printf("%s:flags:%d kind:%d\n", bt.name, res.Flags, res.Kind)
	}
}
