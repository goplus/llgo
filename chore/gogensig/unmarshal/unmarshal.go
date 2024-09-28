package unmarshal

import (
	"encoding/json"
	"fmt"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

type NodeUnmarshaler func(data []byte) (ast.Node, error)

var nodeUnmarshalers map[string]NodeUnmarshaler

type FileSet []FileEntry

type FileEntry struct {
	Path string
	Doc  *ast.File
}

func init() {
	nodeUnmarshalers = map[string]NodeUnmarshaler{
		// Not need costum unmarshal
		"Token":       UnmarshalToken,
		"Macro":       UnmarshalMacro,
		"Include":     UnmarshalInclude,
		"BasicLit":    UnmarshalBasicLit,
		"BuiltinType": UnmarshalBuiltinType,
		"Ident":       UnmarshalIdent,
		"Variadic":    UnmarshalVariadic,

		"PointerType":   UnmarshalPointerType,
		"LvalueRefType": UnmarshalLvalueRefType,
		"RvalueRefType": UnmarshalRvalueRefType,

		"ArrayType":   UnmarshalArrayType,
		"Field":       UnmarshalField,
		"FieldList":   UnmarshalFieldList,
		"ScopingExpr": UnmarshalScopingExpr,
		"TagExpr":     UnmarshalTagExpr,
		"EnumItem":    UnmarshalEnumItem,
		"EnumType":    UnmarshalEnumType,
		"FuncType":    UnmarshalFuncType,
		"RecordType":  UnmarshalRecordType,
		"TypedefDecl": UnmarshalTypeDefDecl,

		"FuncDecl":     UnmarshalFuncDecl,
		"TypeDecl":     UnmarshalTypeDecl,
		"EnumTypeDecl": UnmarshalEnumTypeDecl,

		"File": UnmarshalFile,
	}
}

func UnmarshalFileSet(data []byte) (FileSet, error) {
	var filesWrapper []struct {
		Path string          `json:"path"`
		Doc  json.RawMessage `json:"doc"`
	}
	if err := json.Unmarshal(data, &filesWrapper); err != nil {
		return nil, fmt.Errorf("error unmarshalling FilesWithPath: %w", err)
	}

	result := []FileEntry{}

	for _, fileData := range filesWrapper {
		docNode, err := UnmarshalNode(fileData.Doc)
		if err != nil {
			return nil, fmt.Errorf("error unmarshalling doc for path %s: %w", fileData.Path, err)
		}

		file, ok := docNode.(*ast.File)
		if !ok {
			return nil, fmt.Errorf("doc is not of type *ast.File for path %s", fileData.Path)
		}

		result = append(result, FileEntry{
			Path: fileData.Path,
			Doc:  file,
		})
	}

	return result, nil
}

func UnmarshalNode(data []byte) (ast.Node, error) {
	var temp struct {
		Type string `json:"_Type"`
	}
	if err := json.Unmarshal(data, &temp); err != nil {
		return nil, fmt.Errorf("error unmarshalling node type: %v", err)
	}

	unmarshaler, ok := nodeUnmarshalers[temp.Type]
	if !ok {
		return nil, fmt.Errorf("unknown node type: %s", temp.Type)
	}

	return unmarshaler(data)
}

func UnmarshalToken(data []byte) (ast.Node, error) {
	var node ast.Token
	if err := json.Unmarshal(data, &node); err != nil {
		return nil, fmt.Errorf("unmarshalling Token: %w", err)
	}
	return &node, nil
}

func UnmarshalMacro(data []byte) (ast.Node, error) {
	var node ast.Macro
	if err := json.Unmarshal(data, &node); err != nil {
		return nil, fmt.Errorf("unmarshalling Macro: %w", err)
	}
	return &node, nil
}

func UnmarshalInclude(data []byte) (ast.Node, error) {
	var node ast.Include
	if err := json.Unmarshal(data, &node); err != nil {
		return nil, fmt.Errorf("unmarshalling Include: %w", err)
	}
	return &node, nil
}

func UnmarshalBasicLit(data []byte) (ast.Node, error) {
	var node ast.BasicLit
	if err := json.Unmarshal(data, &node); err != nil {
		return nil, fmt.Errorf("unmarshalling BasicLit: %w", err)
	}
	return &node, nil
}

func UnmarshalBuiltinType(data []byte) (ast.Node, error) {
	var node ast.BuiltinType
	if err := json.Unmarshal(data, &node); err != nil {
		return nil, fmt.Errorf("unmarshalling BuiltinType: %w", err)
	}
	return &node, nil
}

func UnmarshalIdent(data []byte) (ast.Node, error) {
	var node ast.Ident
	if err := json.Unmarshal(data, &node); err != nil {
		return nil, fmt.Errorf("unmarshalling Ident: %w", err)
	}
	return &node, nil
}

func UnmarshalVariadic(data []byte) (ast.Node, error) {
	var node ast.Variadic
	if err := json.Unmarshal(data, &node); err != nil {
		return nil, fmt.Errorf("unmarshalling Variadic: %w", err)
	}
	return &node, nil
}

func UnmarshalXType(data []byte, xType ast.Node) (ast.Node, error) {
	var temp struct {
		X json.RawMessage
	}
	if err := json.Unmarshal(data, &temp); err != nil {
		return nil, fmt.Errorf("unmarshalling XType: %w", err)
	}

	x, err := UnmarshalNode(temp.X)
	if err != nil {
		return nil, fmt.Errorf("unmarshalling field X: %w", err)
	}
	expr := x.(ast.Expr)
	switch v := xType.(type) {
	case *ast.PointerType:
		v.X = expr
	case *ast.LvalueRefType:
		v.X = expr
	case *ast.RvalueRefType:
		v.X = expr
	default:
		return nil, fmt.Errorf("unexpected type: %T", xType)
	}

	return xType, nil
}

func UnmarshalPointerType(data []byte) (ast.Node, error) {
	return UnmarshalXType(data, &ast.PointerType{})
}

func UnmarshalLvalueRefType(data []byte) (ast.Node, error) {
	return UnmarshalXType(data, &ast.LvalueRefType{})
}

func UnmarshalRvalueRefType(data []byte) (ast.Node, error) {
	return UnmarshalXType(data, &ast.RvalueRefType{})
}

func UnmarshalArrayType(data []byte) (ast.Node, error) {
	var arrayTemp struct {
		Elt json.RawMessage
		Len json.RawMessage
	}
	if err := json.Unmarshal(data, &arrayTemp); err != nil {
		return nil, fmt.Errorf("error unmarshalling ArrayType: %w", err)
	}

	arrayType := &ast.ArrayType{}

	elt, err := UnmarshalNode(arrayTemp.Elt)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling array Elt: %w", err)
	}
	arrayType.Elt = elt.(ast.Expr)

	// len permit nil,for array without len
	if len(arrayTemp.Len) > 0 && !isJSONNull(arrayTemp.Len) {
		len, err := UnmarshalNode(arrayTemp.Len)
		if err != nil {
			return nil, fmt.Errorf("error unmarshalling array Len: %w", err)
		}
		arrayType.Len = len.(ast.Expr)
	}

	return arrayType, nil
}

func UnmarshalField(data []byte) (ast.Node, error) {
	var fieldTemp struct {
		Type     json.RawMessage
		Doc      *ast.CommentGroup
		Names    []*ast.Ident
		Comment  *ast.CommentGroup
		Access   ast.AccessSpecifier
		IsStatic bool
	}
	if err := json.Unmarshal(data, &fieldTemp); err != nil {
		return nil, fmt.Errorf("error unmarshalling Field: %w", err)
	}
	typeNode, err := UnmarshalNode(fieldTemp.Type)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling field Type: %w", err)
	}

	field := &ast.Field{
		Doc:      fieldTemp.Doc,
		Names:    fieldTemp.Names,
		Comment:  fieldTemp.Comment,
		Access:   fieldTemp.Access,
		IsStatic: fieldTemp.IsStatic,
		Type:     typeNode.(ast.Expr),
	}

	return field, nil
}

func UnmarshalFieldList(data []byte) (ast.Node, error) {
	var fieldListTemp struct {
		List []json.RawMessage
	}
	if err := json.Unmarshal(data, &fieldListTemp); err != nil {
		return nil, fmt.Errorf("error unmarshalling FieldList: %w", err)
	}

	fieldList := &ast.FieldList{}

	for _, fieldData := range fieldListTemp.List {
		field, err := UnmarshalNode(fieldData)
		if err != nil {
			return nil, fmt.Errorf("error unmarshalling field in FieldList: %w", err)
		}
		fieldList.List = append(fieldList.List, field.(*ast.Field))
	}

	return fieldList, nil
}

func UnmarshalTagExpr(data []byte) (ast.Node, error) {
	var tagExpr struct {
		Name json.RawMessage
		Tag  ast.Tag
	}
	if err := json.Unmarshal(data, &tagExpr); err != nil {
		return nil, fmt.Errorf("error unmarshalling TagExpr: %w", err)
	}

	name, err := UnmarshalNode(tagExpr.Name)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling TagExpr Name: %w", err)
	}

	return &ast.TagExpr{
		Name: name.(ast.Expr),
		Tag:  tagExpr.Tag,
	}, nil
}

func UnmarshalScopingExpr(data []byte) (ast.Node, error) {
	var scopingExpr struct {
		Parent json.RawMessage
		X      json.RawMessage
	}
	if err := json.Unmarshal(data, &scopingExpr); err != nil {
		return nil, fmt.Errorf("error unmarshalling ScopingExpr: %w", err)
	}

	parent, err := UnmarshalNode(scopingExpr.Parent)
	if err != nil {
		return nil, err
	}
	x, err := UnmarshalNode(scopingExpr.X)
	if err != nil {
		return nil, err
	}

	return &ast.ScopingExpr{
		Parent: parent.(ast.Expr),
		X:      x.(ast.Expr),
	}, nil
}

func UnmarshalEnumItem(data []byte) (ast.Node, error) {
	var enumItemTemp struct {
		Name  *ast.Ident
		Value json.RawMessage
	}

	if err := json.Unmarshal(data, &enumItemTemp); err != nil {
		return nil, fmt.Errorf("error unmarshalling EnumItem: %w", err)
	}

	enumItem := &ast.EnumItem{
		Name: enumItemTemp.Name,
	}

	if !isJSONNull(enumItemTemp.Value) {
		value, err := UnmarshalNode(enumItemTemp.Value)
		if err != nil {
			return nil, fmt.Errorf("error unmarshalling EnumItem Value: %w", err)
		}
		enumItem.Value = value.(ast.Expr)
	}

	return enumItem, nil
}

func UnmarshalEnumType(data []byte) (ast.Node, error) {
	var enumType struct {
		Items []json.RawMessage
	}
	if err := json.Unmarshal(data, &enumType); err != nil {
		return nil, fmt.Errorf("error unmarshalling EnumType: %w", err)
	}

	result := &ast.EnumType{}

	for _, itemData := range enumType.Items {
		item, err := UnmarshalNode(itemData)
		if err != nil {
			return nil, fmt.Errorf("error unmarshalling EnumType Item: %w", err)
		}
		result.Items = append(result.Items, item.(*ast.EnumItem))
	}

	return result, nil
}

func UnmarshalRecordType(data []byte) (ast.Node, error) {
	var recordTypeTemp struct {
		Tag     ast.Tag
		Fields  json.RawMessage
		Methods []json.RawMessage
	}

	if err := json.Unmarshal(data, &recordTypeTemp); err != nil {
		return nil, fmt.Errorf("error unmarshalling RecordType: %w", err)
	}

	recordType := &ast.RecordType{
		Tag:     recordTypeTemp.Tag,
		Methods: []*ast.FuncDecl{},
	}

	fields, err := UnmarshalNode(recordTypeTemp.Fields)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling Fields in RecordType: %w", err)
	}
	recordType.Fields = fields.(*ast.FieldList)

	for _, methodData := range recordTypeTemp.Methods {
		method, err := UnmarshalNode(methodData)
		if err != nil {
			return nil, fmt.Errorf("error unmarshalling method in RecordType: %w", err)
		}
		recordType.Methods = append(recordType.Methods, method.(*ast.FuncDecl))
	}

	return recordType, nil
}

func UnmarshalFuncType(data []byte) (ast.Node, error) {
	var funcTypeTemp struct {
		Params json.RawMessage
		Ret    json.RawMessage
	}
	if err := json.Unmarshal(data, &funcTypeTemp); err != nil {
		return nil, fmt.Errorf("error unmarshalling FuncType: %w", err)
	}
	params, err := UnmarshalNode(funcTypeTemp.Params)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling Params in FuncType: %w", err)
	}

	ret, err := UnmarshalNode(funcTypeTemp.Ret)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling Ret in FuncType: %w", err)
	}

	funcType := &ast.FuncType{
		Params: params.(*ast.FieldList),
		Ret:    ret.(ast.Expr),
	}

	return funcType, nil
}

func UnmarshalFuncDecl(data []byte) (ast.Node, error) {
	var funcDecl struct {
		Name          *ast.Ident
		MangledName   string
		Type          json.RawMessage
		IsInline      bool
		IsStatic      bool
		IsConst       bool
		IsExplicit    bool
		IsConstructor bool
		IsDestructor  bool
		IsVirtual     bool
		IsOverride    bool
	}
	if err := json.Unmarshal(data, &funcDecl); err != nil {
		return nil, fmt.Errorf("error unmarshalling FuncDecl: %w", err)
	}

	typ, err := UnmarshalNode(funcDecl.Type)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling FuncDecl Type: %w", err)
	}

	declBase, err := UnmarshalDeclBase(data)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling FuncDecl DeclBase: %w", err)
	}

	result := &ast.FuncDecl{
		DeclBase:      declBase,
		Type:          typ.(*ast.FuncType),
		Name:          funcDecl.Name,
		MangledName:   funcDecl.MangledName,
		IsInline:      funcDecl.IsInline,
		IsStatic:      funcDecl.IsStatic,
		IsConst:       funcDecl.IsConst,
		IsExplicit:    funcDecl.IsExplicit,
		IsConstructor: funcDecl.IsConstructor,
		IsDestructor:  funcDecl.IsDestructor,
		IsVirtual:     funcDecl.IsVirtual,
		IsOverride:    funcDecl.IsOverride,
	}

	return result, nil
}

func UnmarshalTypeDecl(data []byte) (ast.Node, error) {
	var typeDecl struct {
		Name *ast.Ident
		Type json.RawMessage
	}
	if err := json.Unmarshal(data, &typeDecl); err != nil {
		return nil, fmt.Errorf("error unmarshalling TypeDecl: %w", err)
	}

	typ, err := UnmarshalNode(typeDecl.Type)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling TypeDecl Type: %w", err)
	}

	declBase, err := UnmarshalDeclBase(data)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling TypeDecl DeclBase: %w", err)
	}

	result := &ast.TypeDecl{
		DeclBase: declBase,
		Name:     typeDecl.Name,
		Type:     typ.(*ast.RecordType),
	}

	return result, nil
}

func UnmarshalTypeDefDecl(data []byte) (ast.Node, error) {
	var typeDecl struct {
		Name *ast.Ident
		Type json.RawMessage
	}
	if err := json.Unmarshal(data, &typeDecl); err != nil {
		return nil, fmt.Errorf("error unmarshalling TypeDefDecl: %w", err)
	}

	typ, err := UnmarshalNode(typeDecl.Type)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling TypeDefDecl Type: %w", err)
	}

	declBase, err := UnmarshalDeclBase(data)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling TypeDefDecl DeclBase: %w", err)
	}

	result := &ast.TypedefDecl{
		DeclBase: declBase,
		Name:     typeDecl.Name,
		Type:     typ.(ast.Expr),
	}

	return result, nil
}

func UnmarshalEnumTypeDecl(data []byte) (ast.Node, error) {
	var enumTypeDecl struct {
		Name *ast.Ident
		Type json.RawMessage
	}
	if err := json.Unmarshal(data, &enumTypeDecl); err != nil {
		return nil, fmt.Errorf("error unmarshalling EnumTypeDecl: %w", err)
	}

	typ, err := UnmarshalNode(enumTypeDecl.Type)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling EnumTypeDecl Type: %w", err)
	}

	declBase, err := UnmarshalDeclBase(data)
	if err != nil {
		return nil, fmt.Errorf("error unmarshalling EnumTypeDecl DeclBase: %w", err)
	}

	result := &ast.EnumTypeDecl{
		DeclBase: declBase,
		Name:     enumTypeDecl.Name,
		Type:     typ.(*ast.EnumType),
	}

	return result, nil
}

func UnmarshalDeclBase(data []byte) (ast.DeclBase, error) {
	var DeclBase struct {
		Loc    *ast.Location
		Doc    *ast.CommentGroup
		Parent json.RawMessage
	}

	if err := json.Unmarshal(data, &DeclBase); err != nil {
		return ast.DeclBase{}, fmt.Errorf("error unmarshalling DeclBase Type: %w", err)
	}

	result := ast.DeclBase{
		Loc: DeclBase.Loc,
		Doc: DeclBase.Doc,
	}

	if !isJSONNull(DeclBase.Parent) {
		parent, err := UnmarshalNode(DeclBase.Parent)
		if err != nil {
			return ast.DeclBase{}, fmt.Errorf("error unmarshalling parent in DeclBase Type: %w", err)
		}
		result.Parent = parent.(ast.Expr)
	}

	return result, nil
}

func UnmarshalFile(data []byte) (ast.Node, error) {
	var file struct {
		Decls    []json.RawMessage `json:"decls"`
		Includes []*ast.Include    `json:"includes,omitempty"`
		Macros   []*ast.Macro      `json:"macros,omitempty"`
	}
	if err := json.Unmarshal(data, &file); err != nil {
		return nil, fmt.Errorf("error unmarshalling File: %w", err)
	}

	result := &ast.File{
		Includes: file.Includes,
		Macros:   file.Macros,
		Decls:    []ast.Decl{},
	}

	for _, declData := range file.Decls {
		decl, err := UnmarshalNode(declData)
		if err != nil {
			return nil, fmt.Errorf("error unmarshalling Decl in File: %w", err)
		}
		result.Decls = append(result.Decls, decl.(ast.Decl))
	}

	return result, nil
}

func isJSONNull(data json.RawMessage) bool {
	return len(data) == 4 && string(data) == "null"
}
