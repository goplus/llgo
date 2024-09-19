package convert

import (
	"fmt"
	"go/token"
	"go/types"
	"os"
	"strings"

	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg/gentypes/typmap"
	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
	"github.com/goplus/llgo/chore/llcppg/ast"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

type TypeConv struct {
	symbolTable *symb.SymbolTable // llcppg.symb.json
	cppgConf    *cppgtypes.Config // llcppg.cfg
	types       *types.Package
	typeMap     *typmap.BuiltinTypeMap
	// todo(zzy):refine array type in func or param's context
	inParam bool // flag to indicate if currently processing a param
}

func NewConv(types *types.Package, typeMap *typmap.BuiltinTypeMap) *TypeConv {
	return &TypeConv{types: types, typeMap: typeMap}
}

func (p *TypeConv) SetSymbolTable(symbolTable *symb.SymbolTable) {
	p.symbolTable = symbolTable
}

func (p *TypeConv) SetCppgConf(conf *cppgtypes.Config) {
	p.cppgConf = conf
}

// Convert ast.Expr to types.Type
func (p *TypeConv) ToType(expr ast.Expr) types.Type {
	switch t := expr.(type) {
	case *ast.BuiltinType:
		typ, _ := p.typeMap.FindBuiltinType(*t)
		return typ
	case *ast.PointerType:
		typ := p.handlePointerType(t)
		return typ
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
		len, err := Expr(t.Len).ToInt()
		if err != nil {
			fmt.Fprintln(os.Stderr, "can't determine the array length")
			return nil
		}
		return types.NewArray(elemType, int64(len))
	case *ast.FuncType:
		return p.ToSignature(t)
	case *ast.Ident, *ast.ScopingExpr, *ast.TagExpr:
		return p.handleIdentRefer(expr)
	default:
		return nil
	}
}

// - void* -> c.Pointer
// - Function pointers -> Function types (pointer removed)
// - Other cases -> Pointer to the base type
func (p *TypeConv) handlePointerType(t *ast.PointerType) types.Type {
	baseType := p.ToType(t.X)
	// void * -> c.Pointer
	// todo(zzy):alias visit the origin type unsafe.Pointer,c.Pointer is better
	if p.typeMap.IsVoidType(baseType) {
		return p.typeMap.CType("Pointer")
	}
	if baseFuncType, ok := baseType.(*types.Signature); ok {
		return baseFuncType
	}
	return types.NewPointer(baseType)
}

func (p *TypeConv) handleIdentRefer(t ast.Expr) types.Type {
	switch t := t.(type) {
	case *ast.Ident:
		name, err := p.RemovePrefixedName(t.Name)
		if err != nil {
			// todo(zzy):panic
			return nil
		}
		obj := p.types.Scope().Lookup(name)
		if typ, ok := obj.Type().(*types.Named); ok {
			return typ
		}
		return nil
	case *ast.ScopingExpr:
		// todo(zzy)
	case *ast.TagExpr:
		// todo(zzy):scoping
		if ident, ok := t.Name.(*ast.Ident); ok {
			name, err := p.RemovePrefixedName(ident.Name)
			if err != nil {
				// todo(zzy):panic
				return nil
			}
			return p.types.Scope().Lookup(name).Type()
		} else {
			panic("todo:scoping expr")
		}
	}
	return nil
}

func (p *TypeConv) ToSignature(funcType *ast.FuncType) *types.Signature {
	beforeInParam := p.inParam
	p.inParam = true
	defer func() { p.inParam = beforeInParam }()
	params := p.fieldListToParams(funcType.Params)
	results := p.retToResult(funcType.Ret)
	return types.NewSignatureType(nil, nil, nil, params, results, false)
}

// Convert ast.FieldList to types.Tuple (Function Param)
func (p *TypeConv) fieldListToParams(params *ast.FieldList) *types.Tuple {
	if params == nil {
		return types.NewTuple()
	}
	return types.NewTuple(p.fieldListToVars(params)...)
}

// Execute the ret in FuncType
func (p *TypeConv) retToResult(ret ast.Expr) *types.Tuple {
	typ := p.ToType(ret)
	if typ != nil && !p.typeMap.IsVoidType(typ) {
		// in c havent multiple return
		return types.NewTuple(types.NewVar(token.NoPos, p.types, "", typ))
	}
	return types.NewTuple()
}

// Convert ast.FieldList to []types.Var
func (p *TypeConv) fieldListToVars(params *ast.FieldList) []*types.Var {
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

func (p *TypeConv) defaultRecordField() []*types.Var {
	return []*types.Var{
		types.NewVar(token.NoPos, p.types, "Unused", types.NewArray(types.Typ[types.Byte], 8)),
	}
}

func (p *TypeConv) fieldToVar(field *ast.Field) *types.Var {
	if field == nil {
		return nil
	}

	//field without name
	var name string
	if len(field.Names) > 0 {
		name = field.Names[0].Name
	}
	return types.NewVar(token.NoPos, p.types, name, p.ToType(field.Type))
}

func (p *TypeConv) RecordTypeToStruct(recordType *ast.RecordType) types.Type {
	//defaultfield use  Unused [8]byte
	var fields []*types.Var
	if recordType.Fields != nil && len(recordType.Fields.List) == 0 {
		fields = p.defaultRecordField()
	} else {
		fields = p.fieldListToVars(recordType.Fields)
	}
	return types.NewStruct(fields, nil)
}

func (p *TypeConv) LookupSymbol(mangleName symb.MangleNameType) (symb.GoNameType, error) {
	if p.symbolTable == nil {
		return "", fmt.Errorf("symbol table not initialized")
	}
	e, err := p.symbolTable.LookupSymbol(mangleName)
	if err != nil {
		return "", err
	}
	return e.GoName, nil
}

func (p *TypeConv) RemovePrefixedName(name string) (string, error) {
	if p.cppgConf == nil {
		return name, nil
	}
	for _, prefix := range p.cppgConf.TrimPrefixes {
		if strings.HasPrefix(name, prefix) {
			return strings.TrimPrefix(name, prefix), nil
		}
	}
	return name, nil
}

func ToTitle(s string) string {
	return strings.ToUpper(s[:1]) + strings.ToLower(s[1:])
}

func ToGoFuncName(funcName string) symb.GoNameType {
	subs := strings.Split(string(funcName), "_")
	name := ""
	for _, sub := range subs {
		name += ToTitle(sub)
	}
	return symb.GoNameType(name)
}
