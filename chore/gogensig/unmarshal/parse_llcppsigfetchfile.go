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
	var arrSize c.Int = declsObj.GetArraySize()
	decls := make([]ast.Decl, arrSize)
	var i c.Int
	for i = 0; i < arrSize; i++ {
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
	funcDecl.Name, _ = f.parseFuncName(nameObj)
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

func (f *LLCppSigfetchFile) parseFuncName(nameObj *CJSON) (*ast.Ident, error) {
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
	return nil, nil
}

func (f *LLCppSigfetchFile) parseIncludes(includesObj *CJSON) ([]*ast.Include, error) {
	if includesObj == nil {
		return nil, errors.New("invalid arg for parseIncludes")
	}
	return nil, nil
}

func (f *LLCppSigfetchFile) parseMacros(macrosObj *CJSON) ([]*ast.Macro, error) {
	if macrosObj == nil {
		return nil, errors.New("invalid arg for parseMacros")
	}
	return nil, nil
}
