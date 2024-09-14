package genpkg

import (
	"fmt"
	"go/token"
	"go/types"
	"os"
	"path/filepath"
	"strconv"
	"strings"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type Package struct {
	name           string
	p              *gogen.Package
	clib           gogen.PkgRef
	builtinTypeMap map[ast.BuiltinType]types.Type

	typeBlock *gogen.TypeDefs // type decls block.

	// todo(zzy):refine array type in func or param's context
	inParam bool // flag to indicate if currently processing a param

	symbolTable *symb.SymbolTable
}

func NewPackage(pkgPath, name string, conf *gogen.Config) *Package {
	pkg := &Package{
		p:              gogen.NewPackage(pkgPath, name, conf),
		builtinTypeMap: make(map[ast.BuiltinType]types.Type),
	}
	pkg.initBuiltinTypeMap()
	pkg.name = name
	return pkg
}

func (p *Package) SetSymbolTable(symbolTable *symb.SymbolTable) {
	p.symbolTable = symbolTable
}

func (p *Package) getCType(typ string) types.Type {
	if p.clib.Types == nil {
		p.clib = p.p.Import("github.com/goplus/llgo/c")
	}
	return p.clib.Ref(typ).Type()
}

func (p *Package) getTypeBlock() *gogen.TypeDefs {
	if p.typeBlock == nil {
		p.typeBlock = p.p.NewTypeDefs()
	}
	return p.typeBlock
}

func (p *Package) initBuiltinTypeMap() {
	// todo(zzy): int128/uint128  half(float16),long double,float 128
	p.builtinTypeMap = map[ast.BuiltinType]types.Type{
		{Kind: ast.Void}:                                    types.Typ[types.UntypedNil], // For a invalid type
		{Kind: ast.Bool}:                                    types.Typ[types.Bool],       // Bool
		{Kind: ast.Char, Flags: ast.Signed}:                 p.getCType("Char"),          // Char_S
		{Kind: ast.Char, Flags: ast.Unsigned}:               p.getCType("Char"),          // Char_U
		{Kind: ast.WChar}:                                   types.Typ[types.Int16],      // WChar
		{Kind: ast.Char16}:                                  types.Typ[types.Int16],      // Char16
		{Kind: ast.Char32}:                                  types.Typ[types.Int32],      // Char32
		{Kind: ast.Int, Flags: ast.Short}:                   types.Typ[types.Int16],      // Short
		{Kind: ast.Int, Flags: ast.Short | ast.Unsigned}:    types.Typ[types.Uint16],     // UShort
		{Kind: ast.Int}:                                     p.getCType("Int"),           // Int
		{Kind: ast.Int, Flags: ast.Unsigned}:                p.getCType("Uint"),          // UInt
		{Kind: ast.Int, Flags: ast.Long}:                    p.getCType("Long"),          // Long
		{Kind: ast.Int, Flags: ast.Long | ast.Unsigned}:     p.getCType("Ulong"),         // Ulong
		{Kind: ast.Int, Flags: ast.LongLong}:                p.getCType("LongLong"),      // LongLong
		{Kind: ast.Int, Flags: ast.LongLong | ast.Unsigned}: p.getCType("UlongLong"),     // ULongLong
		{Kind: ast.Float}:                                   p.getCType("Float"),         // Float
		{Kind: ast.Float, Flags: ast.Double}:                p.getCType("Double"),        // Double
		{Kind: ast.Complex}:                                 types.Typ[types.Complex64],  // ComplexFloat
		{Kind: ast.Complex, Flags: ast.Double}:              types.Typ[types.Complex128], // ComplexDouble
	}
}

func (p *Package) GetGogenPackage() *gogen.Package {
	return p.p
}

func (p *Package) NewFuncDecl(funcDecl *ast.FuncDecl) error {
	// todo(zzy) accept the name of llcppg.symb.json
	sig := p.toSignature(funcDecl.Type)
	goFuncName := toGoFuncName(funcDecl.Name.Name)
	decl := p.p.NewFuncDecl(token.NoPos, goFuncName, sig)
	decl.SetComments(p.p, NewFuncDocComments(funcDecl.Name.Name, goFuncName))
	return nil
}

func (p *Package) NewTypeDecl(typeDecl *ast.TypeDecl) error {
	decl := p.getTypeBlock().NewType(typeDecl.Name.Name)
	structType := p.recordTypeToStruct(typeDecl.Type)
	decl.InitType(p.p, structType)
	return nil
}

func (p *Package) toSignature(funcType *ast.FuncType) *types.Signature {
	beforeInParam := p.inParam
	p.inParam = true
	defer func() { p.inParam = beforeInParam }()
	params := p.fieldListToParams(funcType.Params)
	results := p.retToResult(funcType.Ret)
	return types.NewSignatureType(nil, nil, nil, params, results, false)
}

func (p *Package) NewTypedefDecl(typedefDecl *ast.TypedefDecl) error {
	decl := p.getTypeBlock().NewType(typedefDecl.Name.Name)
	typ := p.ToType(typedefDecl.Type)
	decl.InitType(p.p, typ)
	return nil
}

func (p *Package) recordTypeToStruct(recordType *ast.RecordType) types.Type {
	fields := p.fieldListToVars(recordType.Fields)
	return types.NewStruct(fields, nil)
}

// Convert ast.FieldList to types.Tuple (Function Param)
func (p *Package) fieldListToParams(params *ast.FieldList) *types.Tuple {
	if params == nil {
		return types.NewTuple()
	}
	return types.NewTuple(p.fieldListToVars(params)...)
}

// Convert ast.FieldList to []types.Var
func (p *Package) fieldListToVars(params *ast.FieldList) []*types.Var {
	var vars []*types.Var
	if params == nil || params.List == nil {
		return vars
	}
	for _, field := range params.List {
		fieldVar := p.fieldToVar(field)
		if fieldVar != nil {
			vars = append(vars, fieldVar)
		} else {
			//todo handle field _Type=Variadic case
		}
	}
	return vars
}

// Execute the ret in FuncType
func (p *Package) retToResult(ret ast.Expr) *types.Tuple {
	if typ := p.ToType(ret); typ != nil && typ != p.builtinTypeMap[ast.BuiltinType{Kind: ast.Void}] {
		// in c havent multiple return
		return types.NewTuple(types.NewVar(token.NoPos, p.p.Types, "", typ))
	}
	return types.NewTuple()
}

func (p *Package) fieldToVar(field *ast.Field) *types.Var {
	if field == nil || len(field.Names) <= 0 {
		return nil
	}
	return types.NewVar(token.NoPos, p.p.Types, field.Names[0].Name, p.ToType(field.Type))
}

// Convert ast.Expr to types.Type
func (p *Package) ToType(expr ast.Expr) types.Type {
	switch t := expr.(type) {
	case *ast.BuiltinType:
		return p.toBuiltinType(t)
	case *ast.PointerType:
		return p.handlePointerType(t)
	case *ast.ArrayType:
		if p.inParam {
			// array in the parameter,ignore the len,convert as pointer
			return types.NewPointer(p.ToType(t.Elt))
		}
		if t.Len == nil {
			fmt.Fprintln(os.Stderr, "unsupport field with array without length")
			return nil
		}
		elemType := p.ToType(t.Elt)
		len, ok := p.evaluateArrayLength(t.Len)
		if !ok {
			fmt.Fprintln(os.Stderr, "can't determine the array length")
			return nil
		}
		return types.NewArray(elemType, len)
	case *ast.FuncType:
		return p.toSignature(t)
	default:
		return nil
	}
}

// - void* -> c.Pointer
// - Function pointers -> Function types (pointer removed)
// - Other cases -> Pointer to the base type
func (p *Package) handlePointerType(t *ast.PointerType) types.Type {
	baseType := p.ToType(t.X)
	// void * -> c.Pointer
	// todo(zzy):alias visit the origin type unsafe.Pointer,c.Pointer is better
	if baseType == p.builtinTypeMap[ast.BuiltinType{Kind: ast.Void}] {
		return p.getCType("Pointer")
	}
	if baseFuncType, ok := baseType.(*types.Signature); ok {
		return baseFuncType
	}
	return types.NewPointer(baseType)
}

func (p *Package) toBuiltinType(typ *ast.BuiltinType) types.Type {
	t, ok := p.builtinTypeMap[*typ]
	if ok {
		return t
	}
	fmt.Fprintln(os.Stderr, "unsupported type:", typ)
	return nil
}

func (p *Package) evaluateArrayLength(expr ast.Expr) (int64, bool) {
	switch e := expr.(type) {
	case *ast.BasicLit:
		if e.Kind == ast.IntLit {
			length, err := strconv.ParseInt(e.Value, 10, 64)
			if err == nil {
				return length, true
			}
		}
	}
	return 0, false
}

func (p *Package) NewEnumTypeDecl(enumTypeDecl *ast.EnumTypeDecl) {
	if len(enumTypeDecl.Type.Items) > 0 {
		fnGet := func(e ast.Expr) (types.Type, int, error) {
			typ, ok := e.(*ast.BasicLit)
			if ok {
				if typ.Kind == ast.IntLit {
					v, err := strconv.Atoi(typ.Value)
					if err != nil {
						return nil, 0, err
					}
					return types.Typ[types.Int], v, nil
				}
			}
			return nil, 0, fmt.Errorf("%s", "lit is not int")
		}
		pkg := p.p
		for _, item := range enumTypeDecl.Type.Items {
			name := toTitle(enumTypeDecl.Name.Name) + "_" + item.Name.Name
			typ, val, err := fnGet(item.Value)
			if err != nil {
				continue
			}
			pkg.CB().NewConstStart(typ, name).Val(val).EndInit(1)
		}
	}
}

func (p *Package) Write(curName string) error {
	_, fileName := filepath.Split(curName)
	dir, err := p.makePackageDir("")
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
