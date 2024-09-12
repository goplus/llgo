package genpkg

import (
	"fmt"
	"go/token"
	"go/types"
	"os"
	"path/filepath"
	"strings"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type Package struct {
	name           string
	p              *gogen.Package
	clib           gogen.PkgRef
	builtinTypeMap map[ast.BuiltinType]types.Type
}

func NewPackage(pkgPath, name string, conf *gogen.Config) *Package {
	pkg := &Package{
		p:              gogen.NewPackage(pkgPath, name, conf),
		builtinTypeMap: make(map[ast.BuiltinType]types.Type),
	}
	pkg.clib = pkg.p.Import("github.com/goplus/llgo/c")
	pkg.initBuiltinTypeMap()
	pkg.name = name
	return pkg
}
func (p *Package) initBuiltinTypeMap() {
	// todo(zzy): int128/uint128  half(float16),long double,float 128
	p.builtinTypeMap = map[ast.BuiltinType]types.Type{
		// considerations for void type should be more rigorous
		{Kind: ast.Void}:                                    types.Typ[types.Invalid],
		{Kind: ast.Bool}:                                    types.Typ[types.Bool],          // Bool
		{Kind: ast.Char, Flags: ast.Signed}:                 p.clib.Ref("Char").Type(),      // Char_S
		{Kind: ast.Char, Flags: ast.Unsigned}:               p.clib.Ref("Char").Type(),      // Char_U
		{Kind: ast.WChar}:                                   types.Typ[types.Int16],         // WChar
		{Kind: ast.Char16}:                                  types.Typ[types.Int16],         // Char16
		{Kind: ast.Char32}:                                  types.Typ[types.Int32],         // Char32
		{Kind: ast.Int, Flags: ast.Short}:                   types.Typ[types.Int16],         // Short
		{Kind: ast.Int, Flags: ast.Short | ast.Unsigned}:    types.Typ[types.Uint16],        // UShort
		{Kind: ast.Int}:                                     p.clib.Ref("Int").Type(),       // Int
		{Kind: ast.Int, Flags: ast.Unsigned}:                p.clib.Ref("Uint").Type(),      // UInt
		{Kind: ast.Int, Flags: ast.Long}:                    p.clib.Ref("Long").Type(),      // Long
		{Kind: ast.Int, Flags: ast.Long | ast.Unsigned}:     p.clib.Ref("Ulong").Type(),     // Ulong
		{Kind: ast.Int, Flags: ast.LongLong}:                p.clib.Ref("LongLong").Type(),  // LongLong
		{Kind: ast.Int, Flags: ast.LongLong | ast.Unsigned}: p.clib.Ref("UlongLong").Type(), // ULongLong
		{Kind: ast.Float}:                                   p.clib.Ref("Float").Type(),     // Float
		{Kind: ast.Float, Flags: ast.Double}:                p.clib.Ref("Double").Type(),    // Double
		{Kind: ast.Complex}:                                 types.Typ[types.Complex64],     // ComplexFloat
		{Kind: ast.Complex, Flags: ast.Double}:              types.Typ[types.Complex128],    // ComplexDouble
	}
}

func (p *Package) NewFuncDecl(funcDecl *ast.FuncDecl) error {
	// todo(zzy) accept the name of llcppg.symb.json
	sig, err := p.toSigniture(funcDecl.Type)
	if err != nil {
		return err
	}
	p.p.NewFuncDecl(token.NoPos, funcDecl.Name.Name, sig)
	return nil
}

func (p *Package) toSigniture(funcType *ast.FuncType) (*types.Signature, error) {
	params := p.fieldListToParams(funcType.Params)
	results := p.retToResult(funcType.Ret)
	return types.NewSignatureType(nil, nil, nil, params, results, false), nil
}

func (p *Package) fieldListToParams(params *ast.FieldList) *types.Tuple {
	if params == nil {
		return types.NewTuple()
	}
	var vars []*types.Var
	for _, field := range params.List {
		vars = append(vars, p.fieldToVar(field))
	}
	return types.NewTuple(vars...)
}

func (p *Package) retToResult(ret ast.Expr) *types.Tuple {
	if ret == nil {
		return types.NewTuple()
	}
	// c's result havent name
	return types.NewTuple(types.NewVar(token.NoPos, nil, "", p.toType(ret)))
}

func (p *Package) fieldToVar(field *ast.Field) *types.Var {
	return types.NewVar(token.NoPos, nil, field.Names[0].Name, p.toType(field.Type))
}

func (p *Package) toVar(expr ast.Expr) *types.Var {
	switch t := expr.(type) {
	case *ast.Field:
		return types.NewVar(token.NoPos, nil, t.Names[0].Name, p.toType(t.Type))
	default:
		fmt.Println("todo:unexpected type %T", t)
	}
	return nil
}

func (p *Package) toType(expr ast.Expr) types.Type {
	switch t := expr.(type) {
	case *ast.BuiltinType:
		return p.toBuiltinType(t)
	default:
		return nil
	}
}

func (p *Package) toBuiltinType(typ *ast.BuiltinType) types.Type {
	t, ok := p.builtinTypeMap[*typ]
	if ok {
		return t
	}
	return nil
}

func (p *Package) Write(curName string) error {
	fileDir, fileName := filepath.Split(curName)
	dir, err := p.makePackageDir(fileDir)
	if err != nil {
		return err
	}
	ext := filepath.Ext(fileName)
	if len(ext) > 0 {
		fileName = strings.TrimSuffix(fileName, ext)
	}
	if len(fileName) <= 0 {
		fileName = "temp"
	}
	fileName = fileName + ".go"
	p.p.WriteFile(filepath.Join(dir, fileName))
	return nil
}

func (p *Package) makePackageDir(dir string) (string, error) {
	if len(dir) <= 0 {
		dir = "."
	}
	curDir, err := filepath.Abs(dir)
	if err != nil {
		return "", err
	}
	path := filepath.Join(curDir, p.name)
	err = os.MkdirAll(path, 0755)
	if err != nil {
		return "", err
	}
	return path, nil
}
