package unmarshal

import (
	"errors"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type LLCppSigfetchFile struct {
	File        string
	Root        *CJSON
	AstFile     *ast.File
	VisitorList []ast.AstVisitor
}

func NewLLCppSigfetchFile(jsonStr string, file string, visitorList []ast.AstVisitor) (*LLCppSigfetchFile, error) {
	obj := NewCJSON(cjson.ParseString(jsonStr))
	if obj == nil {
		return nil, errors.New("failed to parse json string")
	}
	fileObj := obj.GetObjectItemCaseSensitive(file)
	sigfetchFile := &LLCppSigfetchFile{File: file, Root: obj, VisitorList: visitorList}
	astFile, err := sigfetchFile.parseAstFile(fileObj)
	if err != nil {
		return nil, err
	}
	sigfetchFile.AstFile = astFile
	return sigfetchFile, nil

}

func (f *LLCppSigfetchFile) Dispose() {
	f.Root.Delete()
}

func (f *LLCppSigfetchFile) parseAstFile(fileObj *CJSON) (*ast.File, error) {
	if fileObj == nil {
		return nil, errors.New("invalid arg for parseAstFile")
	}
	declsObj := fileObj.GetObjectItemCaseSensitive("decls")
	var file = new(ast.File)
	file.Decls, _ = f.parseDecls(declsObj)
	includesObj := fileObj.GetObjectItemCaseSensitive("includes")
	file.Includes, _ = f.parseIncludes(includesObj)
	macrosObj := fileObj.GetObjectItemCaseSensitive("macros")
	file.Macros, _ = f.parseMacros(macrosObj)
	return file, nil
}

func (f *LLCppSigfetchFile) parseDecls(declsObj *CJSON) ([]ast.Decl, error) {
	if declsObj == nil {
		return nil, errors.New("invalid arg for parseDecls")
	}
	//c.Printf(c.Str("declsObj:%s\n"), declsObj.Obj.CStr())
	arrSize := declsObj.GetArraySize()
	decls := make([]ast.Decl, arrSize)
	for i := 0; i < arrSize; i++ {
		declObj := declsObj.GetArrayItem(i)
		decl, err := f.parseDecl(declObj)
		if err != nil {
			panic(err)
		}
		decls = append(decls, decl)
	}
	return decls, nil
}

func (f *LLCppSigfetchFile) parseDecl(declObj *CJSON) (ast.Decl, error) {
	if declObj == nil {
		return nil, errors.New("invalid arg for parseDecl")
	}
	if declObj.IsEqualType(FuncDecl) {
		return f.parseFuncDecl(declObj)
	}
	return nil, nil
}

func (f *LLCppSigfetchFile) parseFuncDecl(declObj *CJSON) (ast.Decl, error) {
	var funcDecl ast.FuncDecl
	docObj := declObj.GetObjectItemCaseSensitive("Doc")
	funcDecl.Doc, _ = f.parseCommentGroup(docObj)
	locObj := declObj.GetObjectItemCaseSensitive("Loc")
	funcDecl.Loc, _ = f.parseLoc(locObj)
	parentObj := declObj.GetObjectItemCaseSensitive("Parent")
	funcDecl.Parent, _ = f.parseParent(parentObj)
	nameObj := declObj.GetObjectItemCaseSensitive("Name")
	funcDecl.Name, _ = f.parseIdent(nameObj)
	typeObj := declObj.GetObjectItemCaseSensitive("Type")
	funcDecl.Type, _ = f.parseFuncType(typeObj)
	isInlineObj := declObj.GetObjectItemCaseSensitive("IsInline")
	funcDecl.IsInline = isInlineObj.GetBool()
	isStaticObj := declObj.GetObjectItemCaseSensitive("IsStatic")
	funcDecl.IsStatic = isStaticObj.GetBool()
	isConstObj := declObj.GetObjectItemCaseSensitive("IsConst")
	funcDecl.IsConst = isConstObj.GetBool()
	isExplicitObj := declObj.GetObjectItemCaseSensitive("IsExplicit")
	funcDecl.IsExplicit = isExplicitObj.GetBool()
	isConstructorObj := declObj.GetObjectItemCaseSensitive("IsConstructor")
	funcDecl.IsConstructor = isConstructorObj.GetBool()
	isDestructorObj := declObj.GetObjectItemCaseSensitive("IsDestructor")
	funcDecl.IsDestructor = isDestructorObj.GetBool()
	isVirtualObj := declObj.GetObjectItemCaseSensitive("IsVirtual")
	funcDecl.IsVirtual = isVirtualObj.GetBool()
	isOverrideObj := declObj.GetObjectItemCaseSensitive("IsOverride")
	funcDecl.IsOverride = isOverrideObj.GetBool()
	for _, visit := range f.VisitorList {
		visit.VisitFuncDecl(&funcDecl)
	}
	return &funcDecl, nil
}

func (f *LLCppSigfetchFile) parseCommentGroup(docObj *CJSON) (*ast.CommentGroup, error) {
	return nil, nil
}

func (f *LLCppSigfetchFile) parseLoc(locObj *CJSON) (*ast.Location, error) {
	return nil, nil
}

func (f *LLCppSigfetchFile) parseParent(parentObj *CJSON) (*ast.ParenExpr, error) {
	return nil, nil
}

func (f *LLCppSigfetchFile) parseIdent(nameObj *CJSON) (*ast.Ident, error) {
	if nameObj == nil {
		return nil, errors.New("invalid arg for parseName")
	}
	if !nameObj.IsEqualType(Ident) {
		return nil, errors.New("invalid type for parseFuncName")
	}
	var ident ast.Ident
	ident.Name = nameObj.GetStringValue("Name")
	return &ident, nil
}

func (f *LLCppSigfetchFile) parseFuncType(typeObj *CJSON) (*ast.FuncType, error) {
	if typeObj == nil {
		return nil, errors.New("invalid arg for parseFuncType")
	}
	if !typeObj.IsEqualType(FuncType) {
		return nil, errors.New("invalid _Type for parseFuncType")
	}
	typ := new(ast.FuncType)
	paramsObj := typeObj.GetObjectItemCaseSensitive("Params")
	typ.Params, _ = f.parseParms(paramsObj)
	retObj := typeObj.GetObjectItemCaseSensitive("Ret")
	typ.Ret, _ = f.parseRetType(retObj)
	return nil, nil
}

func (f *LLCppSigfetchFile) parseParms(paramsObj *CJSON) (*ast.FieldList, error) {
	if paramsObj == nil {
		return nil, errors.New("invalid arg for parseParms")
	}
	if !paramsObj.IsEqualType(FieldList) {
		return nil, errors.New("invalid _Type for parseParms")
	}
	listObj := paramsObj.GetObjectItemCaseSensitive("List")
	list, _ := f.parseFieldList(listObj)
	fieldList := new(ast.FieldList)
	fieldList.List = list
	return fieldList, nil
}

func (f *LLCppSigfetchFile) parseFieldList(listObj *CJSON) ([]*ast.Field, error) {
	if listObj == nil {
		return nil, errors.New("invalid arg for parseFieldList")
	}
	size := listObj.GetArraySize()
	fields := make([]*ast.Field, size)
	for i := 0; i < size; i++ {
		fieldObj := listObj.GetArrayItem(i)
		field, err := f.parseField(fieldObj)
		if err == nil {
			fields = append(fields, field)
		}
	}
	return fields, nil
}

func (f *LLCppSigfetchFile) parseField(fieldObj *CJSON) (*ast.Field, error) {
	if fieldObj == nil {
		return nil, errors.New("invalid arg for parseField")
	}
	if !fieldObj.IsEqualType(Field) {
		return nil, errors.New("invalid _Type for parseField")
	}
	field := new(ast.Field)
	docObj := fieldObj.GetObjectItemCaseSensitive("Doc")
	field.Doc, _ = f.parseCommentGroup(docObj)
	typeObj := fieldObj.GetObjectItemCaseSensitive("Type")
	field.Type, _ = f.parseFieldType(typeObj)
	namesObj := fieldObj.GetObjectItemCaseSensitive("Names")
	field.Names, _ = f.parseFieldNames(namesObj)
	commentObj := fieldObj.GetObjectItemCaseSensitive("Comment")
	field.Comment, _ = f.parseCommentGroup(commentObj)
	accessObj := fieldObj.GetObjectItemCaseSensitive("Access")
	field.Access = ast.AccessSpecifier(accessObj.GetNumber())
	isStaticObj := fieldObj.GetObjectItemCaseSensitive("IsStatic")
	field.IsStatic = isStaticObj.GetBool()
	return field, nil
}

func (f *LLCppSigfetchFile) parseFieldType(typeObj *CJSON) (ast.Expr, error) {
	if typeObj == nil {
		return nil, errors.New("invalid arg for parseFieldType")
	}
	if typeObj.IsEqualType(BuiltinType) {
		return f.parseBuiltinType(typeObj)
	}
	printTodo("todo parseFieldType")
	return nil, nil
}

func (f *LLCppSigfetchFile) parseBuiltinType(typeObj *CJSON) (*ast.BuiltinType, error) {
	builtinType := new(ast.BuiltinType)
	kindObj := typeObj.GetObjectItemCaseSensitive("Kind")
	if kindObj != nil {
		builtinType.Kind = ast.TypeKind(kindObj.GetNumber())
	}
	flagObj := typeObj.GetObjectItemCaseSensitive("Flags")
	if flagObj != nil {
		builtinType.Flags = ast.TypeFlag(flagObj.GetNumber())
	}
	return builtinType, nil
}

func (f *LLCppSigfetchFile) parseFieldNames(namesObj *CJSON) ([]*ast.Ident, error) {
	if namesObj == nil {
		return nil, errors.New("invalid arg for parseFieldNames")
	}
	size := namesObj.GetArraySize()
	names := make([]*ast.Ident, size)
	for i := 0; i < size; i++ {
		nameObj := namesObj.GetArrayItem(i)
		name, err := f.parseIdent(nameObj)
		if err == nil {
			names = append(names, name)
		}
	}
	return names, nil
}

func (f *LLCppSigfetchFile) parseRetType(retObj *CJSON) (ast.Expr, error) {
	if retObj == nil {
		return nil, errors.New("invalid arg for parseRet")
	}
	if retObj.IsEqualType(BuiltinType) {
		return f.parseBuiltinType(retObj)
	}
	printTodo("todo parseRetType")
	return nil, nil
}

func (f *LLCppSigfetchFile) parseIncludes(includesObj *CJSON) ([]*ast.Include, error) {
	if includesObj == nil {
		return nil, errors.New("invalid arg for parseIncludes")
	}
	printTodo("todo parseIncludes")
	return nil, nil
}

func (f *LLCppSigfetchFile) parseMacros(macrosObj *CJSON) ([]*ast.Macro, error) {
	if macrosObj == nil {
		return nil, errors.New("invalid arg for parseMacros")
	}
	printTodo("todo parseMacros")
	return nil, nil
}

func printTodo(todo string) {
	c.Printf(c.Str("todo %s\n"), c.AllocaCStr(todo))
}
