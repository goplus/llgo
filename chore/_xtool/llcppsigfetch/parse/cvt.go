package parse

import (
	"errors"
	"fmt"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
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

func NewConverter(file string, temp bool) (*Converter, error) {
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

func (ct *Converter) PopScope() {
	if len(ct.scopeStack) > 0 {
		ct.scopeStack = ct.scopeStack[:len(ct.scopeStack)-1]
	}
}

func (ct *Converter) GetCurScope() ast.Expr {
	if len(ct.scopeStack) == 0 {
		return nil
	}
	return ct.scopeStack[len(ct.scopeStack)-1]
}

func (ct *Converter) UpdateCurFile(cursor clang.Cursor) {
	loc := cursor.Location()
	var file clang.File
	loc.SpellingLocation(&file, nil, nil, nil)
	filename := file.FileName()
	defer filename.Dispose()

	if filename.CStr() == nil {
		//todo(zzy): For some built-in macros, there is no file.
		return
	}

	filePath := c.GoString(filename.CStr())
	ct.curLoc = ast.Location{File: filePath}

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
			ct.files[filePath] = ct.curFile
		}
	}
}

func (ct *Converter) CreateDeclBase(cursor clang.Cursor) ast.DeclBase {
	return ast.DeclBase{
		Loc:    &ct.curLoc,
		Parent: ct.GetCurScope(),
	}
}

// visit top decls (struct,class,function,enum & marco,include)
func visit(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	ct := (*Converter)(clientData)
	ct.UpdateCurFile(cursor)

	switch cursor.Kind {
	case clang.CursorInclusionDirective:
		// todo(zzy)
	case clang.CursorMacroDefinition:
		// todo(zzy)
	case clang.CursorEnumDecl:
		// todo(zzy)
	case clang.CursorClassDecl:
		ct.PushScope(cursor)
		ct.ProcessClass(cursor)
		ct.PopScope()
	case clang.CursorStructDecl:
		// todo(zzy)
	case clang.CursorFunctionDecl:
		ct.ProcessFunc(cursor)
	case clang.CursorNamespace:
		ct.PushScope(cursor)
		clang.VisitChildren(cursor, visit, c.Pointer(ct))
		ct.PopScope()
	}
	return clang.ChildVisit_Continue
}

func (ct *Converter) Convert() (map[string]*ast.File, error) {
	cursor := ct.unit.Cursor()
	// visit top decls (struct,class,function & marco,include)
	clang.VisitChildren(cursor, visit, c.Pointer(ct))
	return ct.files, nil
}

func (ct *Converter) ProcessType(t clang.Type) ast.Expr {
	// todo(zzy):a other map key for typemap
	if cache, ok := ct.typeMap[t]; ok {
		return cache
	}
	var expr ast.Expr
	if t.Kind >= clang.TypeFirstBuiltin && t.Kind <= clang.TypeLastBuiltin {
		return ct.ProcessBuiltinType(t)
	}
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
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     &ast.Ident{Name: c.GoString(name.CStr())},
		Type:     funcType,
	}

	decls := ct.GetCurFile()
	decls.Decls = append(decls.Decls, fn)

	ct.declMap[cursor] = fn
}

type visitParamContext struct {
	params    *ast.FieldList
	converter *Converter
}

// visit top decls (struct,class,function,enum & marco,include)
func visitParamDecl(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	ctx := (*visitParamContext)(clientData)
	if cursor.Kind == clang.CursorParmDecl {
		paramName := cursor.String()
		defer paramName.Dispose()
		argType := ctx.converter.ProcessType(cursor.Type())

		// In C language, parameter lists do not have similar parameter grouping in Go.
		// func foo(a, b int)
		ctx.params.List = append(ctx.params.List,
			&ast.Field{
				Type: argType,
				Names: []*ast.Ident{
					{Name: c.GoString(paramName.CStr())},
				},
			})
	}
	return clang.ChildVisit_Continue
}

func (ct *Converter) ProcessFuncParams(cursor clang.Cursor) *ast.FieldList {
	params := &ast.FieldList{List: []*ast.Field{}}
	ctx := &visitParamContext{
		params:    params,
		converter: ct,
	}
	clang.VisitChildren(cursor, visitParamDecl, c.Pointer(ctx))
	return params
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

func (ct *Converter) GetFilesJSON() *cjson.JSON {
	root := cjson.Object()

	Files := cjson.Object()
	root.SetItem(c.Str("Files"), Files)

	for _, file := range ct.files {
		f := cjson.Object()
		f.SetItem(c.Str("Path"), cjson.String(c.AllocaCStr(file.Path)))
		ct.FileJSON(file, f)
		Files.SetItem(c.AllocaCStr(file.Path), f)
	}
	return root
}

func (ct *Converter) FileJSON(file *ast.File, root *cjson.JSON) {
	decls := cjson.Array()
	includes := cjson.Array()
	macros := cjson.Array()

	for _, decl := range file.Decls {
		ct.DeclJSON(decl, decls)
	}

	root.SetItem(c.Str("decls"), decls)
	root.SetItem(c.Str("includes"), includes)
	root.SetItem(c.Str("macros"), macros)
}

func (ct *Converter) DeclJSON(decl ast.Decl, root *cjson.JSON) {
	switch d := decl.(type) {
	case *ast.FuncDecl:
		fn := cjson.Object()
		fntype := cjson.Object()
		fn.SetItem(c.Str("Name"), cjson.String(c.AllocaCStr(d.Name.Name)))
		ct.TypeJSON(d.Type, fntype)
		fn.SetItem(c.Str("Type"), fntype)
		root.AddItem(fn)
	}
}
func (ct *Converter) TypeJSON(t ast.Expr, root *cjson.JSON) {

	switch d := t.(type) {
	case *ast.FuncType:
		params := cjson.Array()

		for _, p := range d.Params.List {
			param := cjson.Object()
			ct.TypeJSON(p.Type, param)
			params.AddItem(param)
		}

		root.SetItem(c.Str("Params"), params)
		ret := cjson.Object()
		ct.TypeJSON(d.Ret, ret)
		root.SetItem(c.Str("Ret"), ret)
	case *ast.BuiltinType:
		root.SetItem(c.Str("Kind"), cjson.Number(float64(d.Kind)))
		root.SetItem(c.Str("Flags"), cjson.Number(float64(d.Flags)))
	}
}
