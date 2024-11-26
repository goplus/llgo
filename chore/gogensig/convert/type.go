/*
This file is used to convert type from ast type to types.Type
*/
package convert

import (
	"fmt"
	"go/token"
	"go/types"
	"log"
	"unsafe"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/convert/names"
	"github.com/goplus/llgo/chore/gogensig/convert/sizes"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type HeaderInfo struct {
	IncPath string // stdlib include path
	Path    string // full path
}

type TypeConv struct {
	gogen.PkgRef
	SysTypeLoc  map[string]*HeaderInfo
	symbolTable *config.SymbolTable // llcppg.symb.json
	typeMap     *BuiltinTypeMap
	inParam     bool // flag to indicate if currently processing a param
	conf        *TypeConfig
}

type TypeConfig struct {
	Package      *Package
	Types        *types.Package
	TypeMap      *BuiltinTypeMap
	SymbolTable  *config.SymbolTable
	TrimPrefixes []string
}

func NewConv(conf *TypeConfig) *TypeConv {
	typeConv := &TypeConv{
		symbolTable: conf.SymbolTable,
		typeMap:     conf.TypeMap,
		conf:        conf,
		SysTypeLoc:  make(map[string]*HeaderInfo),
	}
	typeConv.Types = conf.Types
	return typeConv
}

// Convert ast.Expr to types.Type
func (p *TypeConv) ToType(expr ast.Expr) (types.Type, error) {
	switch t := expr.(type) {
	case *ast.BuiltinType:
		typ, err := p.typeMap.FindBuiltinType(*t)
		return typ, err
	case *ast.PointerType:
		return p.handlePointerType(t)
	case *ast.ArrayType:
		return p.handleArrayType(t)
	case *ast.FuncType:
		return p.ToSignature(t)
	case *ast.Ident, *ast.ScopingExpr, *ast.TagExpr:
		return p.handleIdentRefer(expr)
	case *ast.Variadic:
		return types.NewSlice(gogen.TyEmptyInterface), nil
	default:
		return nil, fmt.Errorf("unsupported type: %T", expr)
	}
}

func (p *TypeConv) handleArrayType(t *ast.ArrayType) (types.Type, error) {
	elemType, err := p.ToType(t.Elt)
	if err != nil {
		return nil, fmt.Errorf("error convert elem type: %w", err)
	}
	if p.inParam {
		// array in the parameter,ignore the len,convert as pointer
		return types.NewPointer(elemType), nil
	}

	if t.Len == nil {
		return nil, fmt.Errorf("%s", "unsupport field with array without length")
	}

	len, err := Expr(t.Len).ToInt()
	if err != nil {
		return nil, fmt.Errorf("%s", "can't determine the array length")
	}

	return types.NewArray(elemType, int64(len)), nil
}

// - void* -> c.Pointer
// - Function pointers -> Function types (pointer removed)
// - Other cases -> Pointer to the base type
func (p *TypeConv) handlePointerType(t *ast.PointerType) (types.Type, error) {
	baseType, err := p.ToType(t.X)
	if err != nil {
		return nil, fmt.Errorf("error convert baseType: %w", err)
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
	lookup := func(name string) (types.Type, error) {
		// For types defined in other packages, they should already be in current scope
		// We don't check for types.Named here because the type returned from ConvertType
		// for aliases like int8_t might be a built-in type (e.g., int8),

		// check if the type is a system type
		obj, err := p.referSysType(name)
		if err != nil {
			return nil, err
		}
		if obj != nil {
			return obj.Type(), nil
		}

		obj = gogen.Lookup(p.Types.Scope(), name)
		if obj == nil {
			return nil, fmt.Errorf("%s not found", name)
		}
		return obj.Type(), nil
	}
	switch t := t.(type) {
	case *ast.Ident:
		typ, err := lookup(t.Name)
		if err != nil {
			return nil, fmt.Errorf("%s not found %w", t.Name, err)
		}
		return typ, nil
	case *ast.ScopingExpr:
		// todo(zzy)
	case *ast.TagExpr:
		// todo(zzy):scoping
		if ident, ok := t.Name.(*ast.Ident); ok {
			typ, err := lookup(ident.Name)
			if err != nil {
				return nil, fmt.Errorf("%s not found", ident.Name)
			}
			return typ, nil
		}
		// todo(zzy):scoping expr
	}
	return nil, fmt.Errorf("unsupported refer: %T", t)
}

func (p *TypeConv) ToSignature(funcType *ast.FuncType) (*types.Signature, error) {
	beforeInParam := p.inParam
	p.inParam = true
	defer func() { p.inParam = beforeInParam }()
	params, variadic, err := p.fieldListToParams(funcType.Params)
	if err != nil {
		return nil, err
	}
	results, err := p.retToResult(funcType.Ret)
	if err != nil {
		return nil, err
	}
	return types.NewSignatureType(nil, nil, nil, params, results, variadic), nil
}

// Convert ast.FieldList to types.Tuple (Function Param)
func (p *TypeConv) fieldListToParams(params *ast.FieldList) (*types.Tuple, bool, error) {
	if params == nil {
		return types.NewTuple(), false, nil
	}
	vars, err := p.fieldListToVars(params, false)
	if err != nil {
		return nil, false, err
	}
	variadic := false
	if len(params.List) > 0 {
		lastField := params.List[len(params.List)-1]
		if _, ok := lastField.Type.(*ast.Variadic); ok {
			variadic = true
		}
	}
	return types.NewTuple(vars...), variadic, nil
}

// Execute the ret in FuncType
func (p *TypeConv) retToResult(ret ast.Expr) (*types.Tuple, error) {
	typ, err := p.ToType(ret)
	if err != nil {
		return nil, fmt.Errorf("error convert return type: %w", err)
	}
	if typ != nil && !p.typeMap.IsVoidType(typ) {
		// in c havent multiple return
		return types.NewTuple(types.NewVar(token.NoPos, p.Types, "", typ)), nil
	}
	return types.NewTuple(), nil
}

// Convert ast.FieldList to []types.Var
func (p *TypeConv) fieldListToVars(params *ast.FieldList, isRecord bool) ([]*types.Var, error) {
	var vars []*types.Var
	if params == nil || params.List == nil {
		return vars, nil
	}
	for _, field := range params.List {
		fieldVar, err := p.fieldToVar(field, isRecord)
		if err != nil {
			return nil, err
		}
		if fieldVar != nil {
			vars = append(vars, fieldVar)
		}
	}
	return vars, nil
}

// todo(zzy): use  Unused [unsafe.Sizeof(0)]byte in the source code
func (p *TypeConv) defaultRecordField() []*types.Var {
	return []*types.Var{
		types.NewVar(token.NoPos, p.Types, "Unused", types.NewArray(types.Typ[types.Byte], int64(unsafe.Sizeof(0)))),
	}
}

func (p *TypeConv) fieldToVar(field *ast.Field, isRecord bool) (*types.Var, error) {
	if field == nil {
		return nil, fmt.Errorf("unexpected nil field")
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

	isVariadic := false
	if _, ok := field.Type.(*ast.Variadic); ok {
		isVariadic = true
	}
	name = checkFieldName(name, isRecord, isVariadic)
	return types.NewVar(token.NoPos, p.Types, name, typ), nil
}

func (p *TypeConv) RecordTypeToStruct(recordType *ast.RecordType) (types.Type, error) {
	var fields []*types.Var
	if recordType.Fields != nil && len(recordType.Fields.List) == 0 {
		fields = p.defaultRecordField()
	} else {
		flds, err := p.fieldListToVars(recordType.Fields, true)
		if err != nil {
			return nil, err
		}
		if recordType.Tag != ast.Union {
			fields = flds
		} else {
			var maxFld *types.Var
			maxSize := int64(0)
			for i := len(flds) - 1; i >= 0; i-- {
				fld := flds[i]
				t := fld.Type()
				size := sizes.Sizeof(t)
				if size >= maxSize {
					maxSize = size
					maxFld = fld
				}
			}
			if maxFld != nil {
				fields = []*types.Var{maxFld}
			}
		}
	}
	return types.NewStruct(fields, nil), nil
}

func (p *TypeConv) ToDefaultEnumType() types.Type {
	return p.typeMap.CType("Int")
}

// typedecl,enumdecl,funcdecl,funcdecl
// true determine continue execute the type gen
// if this type is in a system header,skip the type gen & collect the type info
func (p *TypeConv) handleSysType(ident *ast.Ident, loc *ast.Location, incPath string) (skip bool, anony bool, err error) {
	anony = ident == nil
	if !p.conf.Package.curFile.isSys || anony {
		return false, anony, nil
	}
	if existingLoc, ok := p.SysTypeLoc[ident.Name]; ok {
		return true, anony, fmt.Errorf("type %s already defined in %s,include path: %s", ident.Name, existingLoc.Path, existingLoc.IncPath)
	}
	p.SysTypeLoc[ident.Name] = &HeaderInfo{
		IncPath: incPath,
		Path:    loc.File,
	}
	return true, anony, nil
}

func (p *TypeConv) referSysType(name string) (types.Object, error) {
	if info, ok := p.SysTypeLoc[name]; ok {
		var obj types.Object
		pkg, _ := IncPathToPkg(info.IncPath)
		depPkg := p.conf.Package.p.Import(pkg)
		obj = depPkg.TryRef(names.CPubName(name))
		if obj == nil {
			return nil, fmt.Errorf("sys type %s in %s not found in package %s, full path %s", name, info.IncPath, pkg, info.Path)
		}
		return obj, nil

	}
	return nil, nil
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

// isVariadic determines if the field is a variadic parameter
// The field or param name should be public if it's a record field
// and they will not record to the public symbol table
func checkFieldName(name string, isRecord bool, isVariadic bool) string {
	if isVariadic {
		return "__llgo_va_list"
	}
	// every field name should be public,will not be a keyword
	if isRecord {
		return names.CPubName(name)
	}
	return avoidKeyword(name)
}

func avoidKeyword(name string) string {
	if token.IsKeyword(name) {
		return name + "_"
	}
	return name
}

func substObj(pkg *types.Package, scope *types.Scope, origName string, real types.Object) {
	old := scope.Insert(gogen.NewSubst(token.NoPos, pkg, origName, real))
	if old != nil {
		if t, ok := old.Type().(*gogen.SubstType); ok {
			t.Real = real
		} else {
			log.Panicln(origName, "redefined")
		}
	}
}
