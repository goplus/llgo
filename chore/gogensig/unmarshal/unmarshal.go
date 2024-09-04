package unmarshal

import (
	"errors"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type LLCppSigfetchFile struct {
	File    string
	Root    *CJSON
	AstFile *ast.File
}

func NewLLCppSigfetchFile(jsonStr string, file string) (*LLCppSigfetchFile, error) {
	obj := NewCJSON(cjson.ParseString(jsonStr))
	if obj == nil {
		return nil, errors.New("failed to parse json string")
	}
	fileObj := obj.GetObjectItemCaseSensitive(file)
	sigfetchFile := &LLCppSigfetchFile{File: file, Root: obj}
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
	file.Decls, _ = parseDecls(declsObj)
	includesObj := fileObj.GetObjectItemCaseSensitive("includes")
	file.Includes, _ = parseIncludes(includesObj)
	macrosObj := fileObj.GetObjectItemCaseSensitive("macros")
	file.Macros, _ = parseMacros(macrosObj)
	return file, nil
}

func parseDecls(declsObj *CJSON) ([]ast.Decl, error) {
	if declsObj == nil {
		return nil, errors.New("invalid arg for parseDecls")
	}
	var arrSize c.Int = declsObj.GetArraySize()
	decls := make([]ast.Decl, arrSize)
	var i c.Int
	for i = 0; i < arrSize; i++ {
		declObj := declsObj.GetArrayItem(i)
		decl, err := parseDecl(declObj)
		if err != nil {
			panic(err)
		}
		decls = append(decls, decl)
	}
	return decls, nil
}

func parseDecl(declObj *CJSON) (ast.Decl, error) {
	if declObj == nil {
		return nil, errors.New("invalid arg for parseDecl")
	}
	if IsEqualString(declObj, _Type, FuncDecl) {
		return parseFuncDecl(declObj)
	}
	return nil, nil
}

func parseFuncDecl(declObj *CJSON) (ast.Decl, error) {
	var funcDecl ast.FuncDecl
	docObj := declObj.GetObjectItemCaseSensitive("Doc")
	funcDecl.Doc, _ = parseCommentGroup(docObj)
	locObj := declObj.GetObjectItemCaseSensitive("Loc")
	funcDecl.Loc, _ = parseLoc(locObj)
	parentObj := declObj.GetObjectItemCaseSensitive("Parent")
	funcDecl.Parent, _ = parseParent(parentObj)
	nameObj := declObj.GetObjectItemCaseSensitive("Name")
	funcDecl.Name, _ = parseFuncName(nameObj)
	typeObj := declObj.GetObjectItemCaseSensitive("Type")
	funcDecl.Type, _ = parseFuncType(typeObj)
	isInlineObj := declObj.GetObjectItemCaseSensitive("IsInline")
	funcDecl.IsInline = ParseBool(isInlineObj)
	isStaticObj := declObj.GetObjectItemCaseSensitive("IsStatic")
	funcDecl.IsStatic = ParseBool(isStaticObj)
	isConstObj := declObj.GetObjectItemCaseSensitive("IsConst")
	funcDecl.IsConst = ParseBool(isConstObj)
	isExplicitObj := declObj.GetObjectItemCaseSensitive("IsExplicit")
	funcDecl.IsExplicit = ParseBool(isExplicitObj)
	isConstructorObj := declObj.GetObjectItemCaseSensitive("IsConstructor")
	funcDecl.IsConstructor = ParseBool(isConstructorObj)
	isDestructorObj := declObj.GetObjectItemCaseSensitive("IsDestructor")
	funcDecl.IsDestructor = ParseBool(isDestructorObj)
	isVirtualObj := declObj.GetObjectItemCaseSensitive("IsVirtual")
	funcDecl.IsVirtual = ParseBool(isVirtualObj)
	isOverrideObj := declObj.GetObjectItemCaseSensitive("IsOverride")
	funcDecl.IsOverride = ParseBool(isOverrideObj)
	c.Printf(c.Str("func name:%s\n"), c.AllocaCStr(funcDecl.Name.Name))
	return &funcDecl, nil
}

func parseCommentGroup(docObj *CJSON) (*ast.CommentGroup, error) {
	return nil, nil
}

func parseLoc(locObj *CJSON) (*ast.Location, error) {
	return nil, nil
}

func parseParent(parentObj *CJSON) (*ast.ParenExpr, error) {
	return nil, nil
}

func parseFuncName(nameObj *CJSON) (*ast.Ident, error) {
	if nameObj == nil {
		return nil, errors.New("invalid arg for parseName")
	}
	if !IsEqualString(nameObj, _Type, Ident) {
		return nil, errors.New("invalid type for parseFuncName")
	}
	var ident ast.Ident
	ident.Name = nameObj.GetStringValue("Name")
	return &ident, nil
}

func parseFuncType(typeObj *CJSON) (*ast.FuncType, error) {
	return nil, nil
}

func parseIncludes(includesObj *CJSON) ([]*ast.Include, error) {
	if includesObj == nil {
		return nil, errors.New("invalid arg for parseIncludes")
	}
	return nil, nil
}

func parseMacros(macrosObj *CJSON) ([]*ast.Macro, error) {
	if macrosObj == nil {
		return nil, errors.New("invalid arg for parseMacros")
	}
	return nil, nil
}
