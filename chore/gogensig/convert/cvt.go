/*
This file is used to convert type from ast type to types.Type
*/
package convert

import (
	"fmt"
	"go/token"
	"go/types"
	"strings"
	"unsafe"

	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/llcppg/ast"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

type TypeConv struct {
	symbolTable *config.SymbolTable // llcppg.symb.json
	cppgConf    *cppgtypes.Config   // llcppg.cfg
	types       *types.Package
	typeMap     *BuiltinTypeMap
	// todo(zzy):refine array type in func or param's context
	inParam bool // flag to indicate if currently processing a param
}

func NewConv(types *types.Package, typeMap *BuiltinTypeMap) *TypeConv {
	return &TypeConv{types: types, typeMap: typeMap}
}

func (p *TypeConv) SetSymbolTable(symbolTable *config.SymbolTable) {
	p.symbolTable = symbolTable
}

func (p *TypeConv) SetCppgConf(conf *cppgtypes.Config) {
	p.cppgConf = conf
}

// Convert ast.Expr to types.Type
func (p *TypeConv) ToType(expr ast.Expr) (types.Type, error) {
	switch t := expr.(type) {
	case *ast.BuiltinType:
		typ, err := p.typeMap.FindBuiltinType(*t)
		return typ, err
	case *ast.PointerType:
		typ, err := p.handlePointerType(t)
		return typ, err
	case *ast.ArrayType:
		if p.inParam {
			// array in the parameter,ignore the len,convert as pointer
			typ, err := p.ToType(t.Elt)
			if err != nil {
				return nil, err
			}
			return types.NewPointer(typ), nil
		}
		if t.Len == nil {
			return nil, fmt.Errorf("%s", "unsupport field with array without length")
		}
		elemType, err := p.ToType(t.Elt)
		if err != nil {
			return nil, err
		}
		len, err := Expr(t.Len).ToInt()
		if err != nil {
			return nil, fmt.Errorf("%s", "can't determine the array length")
		}
		return types.NewArray(elemType, int64(len)), nil
	case *ast.FuncType:
		return p.ToSignature(t)
	case *ast.Ident, *ast.ScopingExpr, *ast.TagExpr:
		return p.handleIdentRefer(expr)
	default:
		return nil, nil
	}
}

// - void* -> c.Pointer
// - Function pointers -> Function types (pointer removed)
// - Other cases -> Pointer to the base type
func (p *TypeConv) handlePointerType(t *ast.PointerType) (types.Type, error) {
	baseType, err := p.ToType(t.X)
	if err != nil {
		return nil, err
	}
	// void * -> c.Pointer
	// todo(zzy):alias visit the origin type unsafe.Pointer,c.Pointer is better
	if p.typeMap.IsVoidType(baseType) {
		return p.typeMap.CType("Pointer"), nil
	}
	if baseFuncType, ok := baseType.(*types.Signature); ok {
		return baseFuncType, nil
	}
	return types.NewPointer(baseType), nil
}

func (p *TypeConv) handleIdentRefer(t ast.Expr) (types.Type, error) {
	switch t := t.(type) {
	case *ast.Ident:
		name := p.RemovePrefixedName(t.Name)
		obj := p.types.Scope().Lookup(name)
		if obj == nil {
			return nil, fmt.Errorf("%s not found", name)
		}
		if typ, ok := obj.Type().(*types.Named); ok {
			return typ, nil
		}
		return nil, fmt.Errorf("the ident %s not found", name)
	case *ast.ScopingExpr:
		// todo(zzy)
	case *ast.TagExpr:
		// todo(zzy):scoping
		if ident, ok := t.Name.(*ast.Ident); ok {
			name := p.RemovePrefixedName(ident.Name)
			obj := p.types.Scope().Lookup(name)
			if obj != nil {
				return obj.Type(), nil
			}
			return nil, fmt.Errorf("%s", "not found")
		} else {
			panic("todo:scoping expr")
		}
	}
	return nil, nil
}

func (p *TypeConv) ToSignature(funcType *ast.FuncType) (*types.Signature, error) {
	beforeInParam := p.inParam
	p.inParam = true
	defer func() { p.inParam = beforeInParam }()
	params, err := p.fieldListToParams(funcType.Params)
	if err != nil {
		return nil, err
	}
	results, err := p.retToResult(funcType.Ret)
	if err != nil {
		return nil, err
	}
	return types.NewSignatureType(nil, nil, nil, params, results, false), nil
}

// Convert ast.FieldList to types.Tuple (Function Param)
func (p *TypeConv) fieldListToParams(params *ast.FieldList) (*types.Tuple, error) {
	if params == nil {
		return types.NewTuple(), nil
	}
	vars, err := p.fieldListToVars(params)
	if err != nil {
		return nil, err
	}
	return types.NewTuple(vars...), nil
}

// Execute the ret in FuncType
func (p *TypeConv) retToResult(ret ast.Expr) (*types.Tuple, error) {
	typ, err := p.ToType(ret)
	if err != nil {
		return nil, err
	}
	if typ != nil && !p.typeMap.IsVoidType(typ) {
		// in c havent multiple return
		return types.NewTuple(types.NewVar(token.NoPos, p.types, "", typ)), nil
	}
	return types.NewTuple(), nil
}

// Convert ast.FieldList to []types.Var
func (p *TypeConv) fieldListToVars(params *ast.FieldList) ([]*types.Var, error) {
	var vars []*types.Var
	if params == nil || params.List == nil {
		return vars, nil
	}
	for _, field := range params.List {
		fieldVar, err := p.fieldToVar(field)
		if err != nil {
			return nil, err
		}
		if fieldVar != nil {
			vars = append(vars, fieldVar)
		}
		//todo(zzy): handle field _Type=Variadic case

	}
	return vars, nil
}

// todo(zzy): use  Unused [unsafe.Sizeof(0)]byte in the source code
func (p *TypeConv) defaultRecordField() []*types.Var {
	return []*types.Var{
		types.NewVar(token.NoPos, p.types, "Unused", types.NewArray(types.Typ[types.Byte], int64(unsafe.Sizeof(0)))),
	}
}

func (p *TypeConv) fieldToVar(field *ast.Field) (*types.Var, error) {
	if field == nil {
		return nil, fmt.Errorf("nil field")
	}

	//field without name
	var name string
	if len(field.Names) > 0 {
		name = field.Names[0].Name
	}
	typ, err := p.ToType(field.Type)
	if err != nil {
		return nil, err
	}
	return types.NewVar(token.NoPos, p.types, name, typ), nil
}

func (p *TypeConv) RecordTypeToStruct(recordType *ast.RecordType) (types.Type, error) {
	var fields []*types.Var
	if recordType.Fields != nil && len(recordType.Fields.List) == 0 {
		fields = p.defaultRecordField()
	} else {
		flds, err := p.fieldListToVars(recordType.Fields)
		if err != nil {
			return nil, err
		}
		fields = flds
	}
	return types.NewStruct(fields, nil), nil
}

func (p *TypeConv) LookupSymbol(mangleName config.MangleNameType) (config.GoNameType, error) {
	if p.symbolTable == nil {
		return "", fmt.Errorf("symbol table not initialized")
	}
	e, err := p.symbolTable.LookupSymbol(mangleName)
	if err != nil {
		return "", err
	}
	return e.GoName, nil
}

func (p *TypeConv) RemovePrefixedName(name string) string {
	if p.cppgConf == nil {
		return name
	}
	for _, prefix := range p.cppgConf.TrimPrefixes {
		if strings.HasPrefix(name, prefix) {
			return strings.TrimPrefix(name, prefix)
		}
	}
	return name
}

func ToTitle(s string) string {
	return strings.ToUpper(s[:1]) + strings.ToLower(s[1:])
}
