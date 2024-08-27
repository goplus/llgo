package main

import (
	"fmt"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse"
	test "github.com/goplus/llgo/chore/_xtool/llcppsigfetch/parse/cvt_test"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func main() {
	TestBuiltinType()
	TestNonBuiltinTypes()
}
func TestBuiltinType() {
	tests := []struct {
		name     string
		typ      clang.Type
		expected ast.BuiltinType
	}{
		{"Void", btType(clang.TypeVoid), ast.BuiltinType{Kind: ast.Void}},
		{"Bool", btType(clang.TypeBool), ast.BuiltinType{Kind: ast.Bool}},
		{"Char_S", btType(clang.TypeCharS), ast.BuiltinType{Kind: ast.Char, Flags: ast.Signed}},
		{"Char_U", btType(clang.TypeCharU), ast.BuiltinType{Kind: ast.Char, Flags: ast.Unsigned}},
		{"Char16", btType(clang.TypeChar16), ast.BuiltinType{Kind: ast.Char16}},
		{"Char32", btType(clang.TypeChar32), ast.BuiltinType{Kind: ast.Char32}},
		{"WChar", btType(clang.TypeWChar), ast.BuiltinType{Kind: ast.WChar}},
		{"Short", btType(clang.TypeShort), ast.BuiltinType{Kind: ast.Int, Flags: ast.Short}},
		{"UShort", btType(clang.TypeUShort), ast.BuiltinType{Kind: ast.Int, Flags: ast.Short | ast.Unsigned}},
		{"Int", btType(clang.TypeInt), ast.BuiltinType{Kind: ast.Int}},
		{"UInt", btType(clang.TypeUInt), ast.BuiltinType{Kind: ast.Int, Flags: ast.Unsigned}},
		{"Long", btType(clang.TypeLong), ast.BuiltinType{Kind: ast.Int, Flags: ast.Long}},
		{"ULong", btType(clang.TypeULong), ast.BuiltinType{Kind: ast.Int, Flags: ast.Long | ast.Unsigned}},
		{"LongLong", btType(clang.TypeLongLong), ast.BuiltinType{Kind: ast.Int, Flags: ast.LongLong}},
		{"ULongLong", btType(clang.TypeULongLong), ast.BuiltinType{Kind: ast.Int, Flags: ast.LongLong | ast.Unsigned}},
		{"Int128", btType(clang.TypeInt128), ast.BuiltinType{Kind: ast.Int128}},
		{"UInt128", btType(clang.TypeUInt128), ast.BuiltinType{Kind: ast.Int128, Flags: ast.Unsigned}},
		{"Float", btType(clang.TypeFloat), ast.BuiltinType{Kind: ast.Float}},
		{"Half", btType(clang.TypeHalf), ast.BuiltinType{Kind: ast.Float16}},
		{"Float16", btType(clang.TypeFloat16), ast.BuiltinType{Kind: ast.Float16}},
		{"Double", btType(clang.TypeDouble), ast.BuiltinType{Kind: ast.Float, Flags: ast.Double}},
		{"LongDouble", btType(clang.TypeLongDouble), ast.BuiltinType{Kind: ast.Float, Flags: ast.Long | ast.Double}},
		{"Float128", btType(clang.TypeFloat128), ast.BuiltinType{Kind: ast.Float128}},
		{"Complex", getComplexType(0), ast.BuiltinType{Kind: ast.Complex}},
		{"Complex", getComplexType(ast.Double), ast.BuiltinType{Flags: ast.Double, Kind: ast.Complex}},
		{"Complex", getComplexType(ast.Long | ast.Double), ast.BuiltinType{Flags: ast.Long | ast.Double, Kind: ast.Complex}},
		{"Unknown", btType(clang.TypeIbm128), ast.BuiltinType{Kind: ast.Void}},
	}

	converter := &parse.Converter{}
	converter.Convert()
	for _, bt := range tests {
		res := converter.ProcessBuiltinType(bt.typ)
		if res.Kind != bt.expected.Kind {
			fmt.Printf("%s Kind mismatch:got %d want %d, \n", bt.name, res.Kind, bt.expected.Kind)
		}
		if res.Flags != bt.expected.Flags {
			fmt.Printf("%s Flags mismatch:got %d,want %d\n", bt.name, res.Flags, bt.expected.Flags)
		}
		fmt.Printf("%s:flags:%d kind:%d\n", bt.name, res.Flags, res.Kind)
	}
}

func TestNonBuiltinTypes() {
	tests := []string{
		"char*",
		"char***",

		"char[]",
		"char[10]",
		"char[3][4]",

		"int&",
		"int&&",

		`struct Foo {};
		 Foo`,
		`struct Foo {};
		 struct Foo`,

		`union Foo {};
		 Foo`,
		`union Foo {};
		 union Foo`,

		`enum Foo {};
		 Foo`,
		`enum Foo {};
		 enum Foo`,

		`class Foo {};
		 Foo`,
		`class Foo {};
		 class Foo`,

		`namespace a {
		 namespace b {
		 class c {
		 };
		 }
		 }
		 a::b::c`,

		`namespace a {
		 namespace b {
		 class c {
		 };
		 }
		 }
		 class a::b::c`,

		`int (*p)(int, char);`,
	}

	for _, t := range tests {
		typ, index, unit := test.GetType(&test.GetTypeOptions{
			TypeCode: t,
		})
		converter := &parse.Converter{}
		expr := converter.ProcessType(typ)
		json := parse.MarshalASTExpr(expr)
		str := json.Print()

		c.Printf(c.Str("Type: %s:\n"), typ.String())
		c.Printf(c.Str("%s\n"), str)

		cjson.FreeCStr(str)
		json.Delete()
		index.Dispose()
		unit.Dispose()
	}
}

func btType(kind clang.TypeKind) clang.Type {
	return clang.Type{Kind: kind}
}

// get complex type from source code parsed
func getComplexType(flag ast.TypeFlag) clang.Type {
	var typeStr string
	if flag&(ast.Long|ast.Double) == (ast.Long | ast.Double) {
		typeStr = "long double"
	} else if flag&ast.Double != 0 {
		typeStr = "double"
	} else {
		typeStr = "float"
	}

	code := fmt.Sprintf("#include <complex.h>\n%s complex", typeStr)

	// todo(zzy):free index and unit after test
	typ, _, _ := test.GetType(&test.GetTypeOptions{
		TypeCode:       code,
		ExpectTypeKind: clang.TypeComplex,
		Args:           []string{"-x", "c", "-std=c99"},
	})

	return typ
}
