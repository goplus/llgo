package typmap

import (
	"fmt"
	"go/types"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type BuiltinTypeMap struct {
	clib           gogen.PkgRef //  "github.com/goplus/llgo/c"
	builtinTypeMap map[ast.BuiltinType]types.Type
}

func NewBuiltinTypeMap(clib gogen.PkgRef) *BuiltinTypeMap {
	builtinTypeMap := &BuiltinTypeMap{clib: clib}
	builtinTypeMap.initBuiltinTypeMap()
	return builtinTypeMap
}

func (p *BuiltinTypeMap) CType(typ string) types.Type {
	return p.clib.Ref(typ).Type()
}

func (p *BuiltinTypeMap) IsVoidType(typ types.Type) bool {
	voidType, ok := p.builtinTypeMap[ast.BuiltinType{Kind: ast.Void}]
	if ok {
		return typ == voidType
	}
	return false
}

func (p *BuiltinTypeMap) FindBuiltinType(builtinType ast.BuiltinType) (types.Type, error) {
	t, ok := p.builtinTypeMap[builtinType]
	if ok {
		return t, nil
	}
	return nil, fmt.Errorf("%s", "not found in type map")
}

func (p *BuiltinTypeMap) initBuiltinTypeMap() {
	// todo(zzy): int128/uint128  half(float16),long double,float 128
	p.builtinTypeMap = map[ast.BuiltinType]types.Type{
		{Kind: ast.Void}:                                    types.Typ[types.UntypedNil], // For a invalid type
		{Kind: ast.Bool}:                                    types.Typ[types.Bool],       // Bool
		{Kind: ast.Char, Flags: ast.Signed}:                 p.CType("Char"),             // Char_S
		{Kind: ast.Char, Flags: ast.Unsigned}:               p.CType("Char"),             // Char_U
		{Kind: ast.WChar}:                                   types.Typ[types.Int16],      // WChar
		{Kind: ast.Char16}:                                  types.Typ[types.Int16],      // Char16
		{Kind: ast.Char32}:                                  types.Typ[types.Int32],      // Char32
		{Kind: ast.Int, Flags: ast.Short}:                   types.Typ[types.Int16],      // Short
		{Kind: ast.Int, Flags: ast.Short | ast.Unsigned}:    types.Typ[types.Uint16],     // UShort
		{Kind: ast.Int}:                                     p.CType("Int"),              // Int
		{Kind: ast.Int, Flags: ast.Unsigned}:                p.CType("Uint"),             // UInt
		{Kind: ast.Int, Flags: ast.Long}:                    p.CType("Long"),             // Long
		{Kind: ast.Int, Flags: ast.Long | ast.Unsigned}:     p.CType("Ulong"),            // Ulong
		{Kind: ast.Int, Flags: ast.LongLong}:                p.CType("LongLong"),         // LongLong
		{Kind: ast.Int, Flags: ast.LongLong | ast.Unsigned}: p.CType("UlongLong"),        // ULongLong
		{Kind: ast.Float}:                                   p.CType("Float"),            // Float
		{Kind: ast.Float, Flags: ast.Double}:                p.CType("Double"),           // Double
		{Kind: ast.Complex}:                                 types.Typ[types.Complex64],  // ComplexFloat
		{Kind: ast.Complex, Flags: ast.Double}:              types.Typ[types.Complex128], // ComplexDouble
	}
}
