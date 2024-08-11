package parse

import (
	"errors"
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type Converter struct {
	files   map[string]*ast.File
	typeMap map[clang.Type]ast.Expr // todo(zzy):maybe a other map key for typemap is better
	declMap map[clang.Cursor]ast.Decl
	curLoc  ast.Location
	curFile *ast.File
	index   *clang.Index
	unit    *clang.TranslationUnit
	// todo(zzy):current namespace expr
}

func NewConverter(filepath string) (*Converter, error) {
	args := []*c.Char{
		c.Str("-x"),
		c.Str("c++"),
		c.Str("-std=c++11"),
	}
	index := clang.CreateIndex(0, 0)

	var unit *clang.TranslationUnit

	if config.Temp {
		content := c.AllocaCStr(config.File)
		tempFile := &clang.UnsavedFile{
			Filename: c.Str("temp.h"),
			Contents: content,
			Length:   c.Ulong(c.Strlen(content)),
		}

		unit = index.ParseTranslationUnit(
			tempFile.Filename,
			unsafe.SliceData(cArgs), c.Int(len(cArgs)),
			tempFile, 1,
			clang.DetailedPreprocessingRecord,
		)

	} else {
		cFile := c.AllocaCStr(config.File)
		unit = index.ParseTranslationUnit(
			cFile,
			unsafe.SliceData(cArgs), c.Int(len(cArgs)),
			nil, 0,
			clang.DetailedPreprocessingRecord,
		)
	}

	if unit == nil {
		return nil, nil, errors.New("failed to parse translation unit")
	}

	return &Converter{
		typeMap: make(map[clang.Type]ast.Expr),
		declMap: make(map[clang.Cursor]ast.Decl),
		files:   make(map[string]*ast.File),
		index:   index,
		unit:    unit,
	}, nil
}

func (ct *Converter) Dispose() {
	ct.index.Dispose()
	ct.unit.Dispose()
}

// visit top decls (struct,class,function,enum & marco,include)
func visit(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	// todo(zzy): set current file
	ct := (*Converter)(clientData)
	switch cursor.Kind {
	case clang.CursorInclusionDirective:
		include := ct.ProcessInclude(cursor)
		curFile.Includes = append(curFile.Includes, include)
	case clang.CursorMacroDefinition:
		macro := ct.ProcessMacro(cursor)
		curFile.Macros = append(curFile.Macros, macro)
	case clang.CursorEnumDecl:
		enum := ct.ProcessEnumDecl(cursor)
		curFile.Decls = append(curFile.Decls, enum)
	case clang.CursorClassDecl:
		classDecl := ct.ProcessClassDecl(cursor)
		curFile.Decls = append(curFile.Decls, classDecl)
	case clang.CursorStructDecl:
		structDecl := ct.ProcessStructDecl(cursor)
		curFile.Decls = append(curFile.Decls, structDecl)
	case clang.CursorUnionDecl:
		unionDecl := ct.ProcessUnionDecl(cursor)
		curFile.Decls = append(curFile.Decls, unionDecl)
	case clang.CursorFunctionDecl, clang.CursorCXXMethod, clang.CursorConstructor, clang.CursorDestructor:
		// Handle functions and class methods (including out-of-class method)
		// Example: void MyClass::myMethod() { ... } out-of-class method
		curFile.Decls = append(curFile.Decls, ct.ProcessFuncDecl(cursor))
	case clang.CursorTypedefDecl:
		curFile.Decls = append(curFile.Decls, ct.ProcessTypeDefDecl(cursor))
	case clang.CursorNamespace:
		clang.VisitChildren(cursor, visitTop, c.Pointer(ct))
	}
	return clang.ChildVisit_Continue
}

func (ct *Converter) Convert() (map[string]*ast.File, error) {
	cursor := ct.unit.Cursor()
	// visit top decls (struct,class,function & macro,include)
	clang.VisitChildren(cursor, visitTop, c.Pointer(ct))
	return ct.Files, nil
}

func (ct *Converter) Convert() (map[string]*ast.File, error) {
	cursor := ct.unit.Cursor()
	// visit top decls (struct,class,function & marco,include)
	clang.VisitChildren(cursor, visit, c.Pointer(ct))
	return nil, nil
}

func (ct *Converter) UpdateCurFile(cursor clang.Cursor) {
	loc := cursor.Location()
	var file clang.File
	loc.SpellingLocation(&file, nil, nil, nil)
	filename := file.FileName()
	defer filename.Dispose()

	if filename.CStr() == nil {
		// For some built-in macros, there is no file.
		println("todo: filename is empty")
		return
	}

	filePath := c.GoString(filename.CStr())
	if ct.curFile == nil || ct.curFile.Path != filePath {
		if f, ok := ct.files[filePath]; ok {
			ct.curFile = f
		} else {
			ct.curFile = &ast.File{
				Path:     filePath,
				Decls:    make([]ast.Decl, 0),
				Includes: make([]*ast.Include, 0),
				Macros:   make([]*ast.Macro, 0),
			}
		}
		ct.files[filePath] = ct.curFile
	}
}

func (ct *Converter) ProcessType(t clang.Type) ast.Expr {
	// todo(zzy):a other map key for typemap
	if cache, ok := ct.typeMap[t]; ok {
		return cache
	}
	var expr ast.Expr
	switch t.Kind {
	case clang.TypePointer:
		expr = &ast.PointerType{X: ct.ProcessType(t.PointeeType())}
	case clang.TypeLValueReference:
		expr = &ast.LvalueRefType{X: ct.ProcessType(t.NonReferenceType())}
	case clang.TypeRValueReference:
		expr = &ast.RvalueRefType{X: ct.ProcessType(t.NonReferenceType())}
	case clang.TypeFunctionProto:
		// function type will only collect return type, params will be collected in ProcessFuncDecl
		expr = ct.ProcessFunctionType(t)
	case clang.TypeConstantArray, clang.TypeIncompleteArray, clang.TypeVariableArray, clang.TypeDependentSizedArray:
		if t.Kind == clang.TypeConstantArray {
			len := (*c.Char)(c.Malloc(unsafe.Sizeof(c.Char(0)) * 20))
			c.Sprintf(len, c.Str("%lld"), t.ArraySize())
			defer c.Free(unsafe.Pointer(len))
			expr = &ast.ArrayType{
				Elt: ct.ProcessType(t.ArrayElementType()),
				Len: &ast.BasicLit{Kind: ast.IntLit, Value: c.GoString(len)},
			}
		} else if t.Kind == clang.TypeIncompleteArray {
			// incomplete array havent len expr
			expr = &ast.ArrayType{
				Elt: ct.ProcessType(t.ArrayElementType()),
			}
		}
	}
	ct.typeMap[t] = expr
	return expr
}

// For function types, we can only obtain the parameter types, but not the parameter names.
// This is because we cannot reverse-lookup the corresponding declaration node from a function type.
// Note: For function declarations, parameter names are collected in the ProcessFuncDecl method.
func (ct *Converter) ProcessFunctionType(t clang.Type) *ast.FuncType {
	// Note: Attempting to get the type declaration for a function type will result in CursorNoDeclFound
	// cursor := t.TypeDeclaration()
	// This would return CursorNoDeclFound

	ret := ct.ProcessType(t.ResultType())
	params := &ast.FieldList{}
	numArgs := t.NumArgTypes()
	for i := 0; i < int(numArgs); i++ {
		argType := t.ArgType(c.Uint(i))
		params.List = append(params.List, &ast.Field{
			Type: ct.ProcessType(argType),
		})
	}
	if t.IsFunctionTypeVariadic() != 0 {
		params.List = append(params.List, &ast.Field{
			Type: &ast.Variadic{},
		})
	}

	return &ast.FuncType{
		Ret:    ret,
		Params: params,
	}
}

func (ct *Converter) ProcessTypeDefDecl(cursor clang.Cursor) *ast.TypedefDecl {
	name := cursor.String()
	defer name.Dispose()
	return &ast.TypedefDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     &ast.Ident{Name: c.GoString(name.CStr())},
		Type:     ct.ProcessType(cursor.TypedefDeclUnderlyingType()),
	}
}

// converts functions, methods, constructors, destructors (including out-of-class decl) to ast.FuncDecl nodes.
func (ct *Converter) ProcessFuncDecl(cursor clang.Cursor) *ast.FuncDecl {
	name := cursor.String()
	defer name.Dispose()

	funcType, ok := ct.ProcessType(cursor.Type()).(*ast.FuncType)
	if !ok {
		fmt.Println("failed to process function type")
		return nil
	}

	fn := &ast.FuncDecl{
		Name: &ast.Ident{Name: c.GoString(name.CStr())},
		Type: funcType,
		// todo(zzy):DeclBase use the converter's current namespace expr
	}

	decls := ct.GetCurFile()
	decls.Decls = append(decls.Decls, fn)

	ct.declMap[cursor] = fn
}

func (ct *Converter) ProcessClass(cursor clang.Cursor) {
	println("todo: Process class")
}

func (ct *Converter) Convert() (map[string]*ast.File, error) {
	cursor := ct.unit.Cursor()
	// visit top decls (struct,class,function & marco,include)
	clang.VisitChildren(cursor, visit, c.Pointer(ct))
	return nil, nil
}

func (ct *Converter) UpdateLocation(loc ast.Location) {
	ct.curLoc = loc
}

func (ct *Converter) GetCurFile() *ast.File {
	return ct.curFile
}
