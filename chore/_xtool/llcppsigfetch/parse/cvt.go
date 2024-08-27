package parse

import (
	"errors"
	"fmt"
	"strings"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/llcppg/ast"
	"github.com/goplus/llgo/chore/llcppg/token"
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

type Config struct {
	File string
	Temp bool
	Args []string
}

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

func CreateTranslationUnit(config *Config) (*clang.Index, *clang.TranslationUnit, error) {
	if config.Args == nil {
		config.Args = []string{"-x", "c++", "-std=c++11"}
	}

	cArgs := make([]*c.Char, len(config.Args))
	for i, arg := range config.Args {
		cArgs[i] = c.AllocaCStr(arg)
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

	return index, unit, nil
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
	if len(ct.scopeContext) > 0 {
		ct.scopeContext = ct.scopeContext[:len(ct.scopeContext)-1]
	}
}

func (ct *Converter) GetCurScope() ast.Expr {
	if len(ct.scopeContext) == 0 {
		return nil
	}
	return ct.scopeContext[len(ct.scopeContext)-1]
}

func (ct *Converter) UpdateLoc(cursor clang.Cursor) {
	loc := cursor.Location()
	var file clang.File
	loc.SpellingLocation(&file, nil, nil, nil)
	filename := file.FileName()
	defer filename.Dispose()

	if filename.CStr() == nil {
		//todo(zzy): For some built-in macros, there is no file.
		ct.curLoc = ast.Location{File: ""}
		return
	}

	filePath := c.GoString(filename.CStr())
	ct.curLoc = ast.Location{File: filePath}

}

func (ct *Converter) GetCurFile() *ast.File {
	if ct.curLoc.File == "" {
		return nil
	}
	file, ok := ct.Files[ct.curLoc.File]
	if !ok {
		file = &ast.File{
			Decls:    make([]ast.Decl, 0),
			Includes: make([]*ast.Include, 0),
			Macros:   make([]*ast.Macro, 0),
		}
		ct.Files[ct.curLoc.File] = file
	}
	return file
}

func (ct *Converter) CreateDeclBase(cursor clang.Cursor) ast.DeclBase {
	rawComment := cursor.RawCommentText()
	defer rawComment.Dispose()

	commentGroup := &ast.CommentGroup{}
	if rawComment.CStr() != nil {
		commentGroup = ct.ParseComment(c.GoString(rawComment.CStr()))
	}

	loc := ct.curLoc
	return ast.DeclBase{
		Loc:    &loc,
		Parent: buildScopingExpr(cursor.SemanticParent()),
		Doc:    commentGroup,
	}
}

func (ct *Converter) ParseComment(rawComment string) *ast.CommentGroup {
	lines := strings.Split(rawComment, "\n")
	commentGroup := &ast.CommentGroup{}
	for _, line := range lines {
		commentGroup.List = append(commentGroup.List, &ast.Comment{Text: line})
	}
	return commentGroup
}

// visit top decls (struct,class,function,enum & macro,include)
func visitTop(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	ct := (*Converter)(clientData)
	ct.UpdateLoc(cursor)

	curFile := ct.GetCurFile()
	if curFile == nil {
		return clang.ChildVisit_Continue
	}

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

func (ct *Converter) ProcessType(t clang.Type) ast.Expr {
	// todo(zzy):a other map key for typemap
	if cache, ok := ct.typeMap[t]; ok {
		return cache
	}
	var expr ast.Expr
	if t.Kind >= clang.TypeFirstBuiltin && t.Kind <= clang.TypeLastBuiltin {
		return ct.ProcessBuiltinType(t)
	}

	if t.Kind == clang.TypeElaborated {
		return ct.ProcessElaboratedType(t)
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

// get Methods Attributes
func (ct *Converter) ProcessMethodAttributes(cursor clang.Cursor, fn *ast.FuncDecl) {
	if parent := cursor.SemanticParent(); parent.Equal(cursor.LexicalParent()) != 1 {
		fn.DeclBase.Parent = buildScopingExpr(cursor.SemanticParent())
	}

	switch cursor.Kind {
	case clang.CursorDestructor:
		fn.IsDestructor = true
	case clang.CursorConstructor:
		fn.IsConstructor = true
		if cursor.IsExplicit() != 0 {
			fn.IsExplicit = true
		}
	}

	if cursor.IsStatic() != 0 {
		fn.IsStatic = true
	}
	if cursor.IsVirtual() != 0 || cursor.IsPureVirtual() != 0 {
		fn.IsVirtual = true
	}
	if cursor.IsConst() != 0 {
		fn.IsConst = true
	}

	var numOverridden c.Uint
	var overridden *clang.Cursor
	cursor.OverriddenCursors(&overridden, &numOverridden)
	if numOverridden > 0 {
		fn.IsOverride = true
	}
	overridden.DisposeOverriddenCursors()
}

type visitEnumContext struct {
	enum      *[]*ast.EnumItem
	converter *Converter
}

func visitEnum(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	ctx := (*visitEnumContext)(clientData)
	if cursor.Kind == clang.CursorEnumConstantDecl {
		name := cursor.String()
		val := (*c.Char)(c.Malloc(unsafe.Sizeof(c.Char(0)) * 20))
		c.Sprintf(val, c.Str("%lld"), cursor.EnumConstantDeclValue())
		defer c.Free(unsafe.Pointer(val))
		defer name.Dispose()
		enum := &ast.EnumItem{
			Name: &ast.Ident{Name: c.GoString(name.CStr())},
			Value: &ast.BasicLit{
				Kind:  ast.IntLit,
				Value: c.GoString(val),
			},
		}
		*ctx.enum = append(*ctx.enum, enum)
	}
	return clang.ChildVisit_Continue
}

func (ct *Converter) ProcessEnumDecl(cursor clang.Cursor) *ast.EnumTypeDecl {
	name := cursor.String()
	defer name.Dispose()
	items := make([]*ast.EnumItem, 0)
	ctx := &visitEnumContext{
		enum:      &items,
		converter: ct,
	}
	clang.VisitChildren(cursor, visitEnum, c.Pointer(ctx))

	return &ast.EnumTypeDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     &ast.Ident{Name: c.GoString(name.CStr())},
		Type: &ast.EnumType{
			Items: items,
		},
	}
}

// current only collect macro which defined in file
func (ct *Converter) ProcessMacro(cursor clang.Cursor) *ast.Macro {
	name := cursor.String()
	defer name.Dispose()

	ran := cursor.Extent()
	var numTokens c.Uint
	var tokens *clang.Token
	ct.unit.Tokenize(ran, &tokens, &numTokens)
	defer ct.unit.DisposeTokens(tokens, numTokens)

	tokensSlice := unsafe.Slice(tokens, int(numTokens))

	macro := &ast.Macro{
		Name:   c.GoString(name.CStr()),
		Tokens: make([]*ast.Token, 0),
	}

	for _, tok := range tokensSlice {
		tokStr := ct.unit.Token(tok)
		macro.Tokens = append(macro.Tokens, &ast.Token{
			Token: toToken(tok),
			Lit:   c.GoString(tokStr.CStr()),
		})
		tokStr.Dispose()
	}
	return macro
}

func (ct *Converter) ProcessInclude(cursor clang.Cursor) *ast.Include {
	name := cursor.String()
	defer name.Dispose()
	return &ast.Include{Path: c.GoString(name.CStr())}
}

type visitFieldContext struct {
	params    *ast.FieldList
	converter *Converter
}

func visitFieldList(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	ctx := (*visitFieldContext)(clientData)
	if cursor.Kind == clang.CursorParmDecl || cursor.Kind == clang.CursorFieldDecl {
		paramName := cursor.String()
		defer paramName.Dispose()
		argType := ctx.converter.ProcessType(cursor.Type())

		// In C language, parameter lists do not have similar parameter grouping in Go.
		// func foo(a, b int)

		// For follows struct, it will also parse to two FieldDecl
		// struct A {
		// 	int a, b;
		// };
		ctx.params.List = append(ctx.params.List,
			&ast.Field{
				//todo(zzy): comment & doc
				Doc:     &ast.CommentGroup{},
				Comment: &ast.CommentGroup{},
				Type:    argType,
				Names: []*ast.Ident{
					{Name: c.GoString(paramName.CStr())},
				},
			})
	}
	return clang.ChildVisit_Continue
}

// For Record Type(struct,union ...) & Func 's FieldList
func (ct *Converter) ProcessFieldList(cursor clang.Cursor) *ast.FieldList {
	params := &ast.FieldList{List: []*ast.Field{}}
	ctx := &visitFieldContext{
		params:    params,
		converter: ct,
	}
	if (cursor.Kind == clang.CursorFunctionDecl || isMethod(cursor)) && cursor.IsVariadic() != 0 {
		params.List = append(params.List, &ast.Field{
			Type: &ast.Variadic{},
		})
	}
	clang.VisitChildren(cursor, visitFieldList, c.Pointer(ctx))
	return params
}

type visitMethodsContext struct {
	methods   *[]*ast.FuncDecl
	converter *Converter
}

func visitMethods(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	ctx := (*visitMethodsContext)(clientData)
	if isMethod(cursor) && cursor.CXXAccessSpecifier() != clang.CXXPrivate {
		method := ctx.converter.ProcessFuncDecl(cursor)
		if method != nil {
			*ctx.methods = append(*ctx.methods, method)
		}
	}
	return clang.ChildVisit_Continue
}

func (ct *Converter) ProcessMethods(cursor clang.Cursor) []*ast.FuncDecl {
	methods := make([]*ast.FuncDecl, 0)
	ctx := &visitMethodsContext{
		methods:   &methods,
		converter: ct,
	}
	clang.VisitChildren(cursor, visitMethods, c.Pointer(ctx))
	return methods
}

func (ct *Converter) ProcessRecordDecl(cursor clang.Cursor, tag ast.Tag) *ast.TypeDecl {
	anony := cursor.IsAnonymousRecordDecl()

	var name *ast.Ident
	if anony == 0 {
		cursorName := cursor.String()
		defer cursorName.Dispose()
		name = &ast.Ident{Name: c.GoString(cursorName.CStr())}
	}

	return &ast.TypeDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     name,
		Type:     ct.ProcessRecordType(cursor, tag),
	}
}

func (ct *Converter) ProcessStructDecl(cursor clang.Cursor) *ast.TypeDecl {
	return ct.ProcessRecordDecl(cursor, ast.Struct)
}

func (ct *Converter) ProcessUnionDecl(cursor clang.Cursor) *ast.TypeDecl {
	return ct.ProcessRecordDecl(cursor, ast.Union)
}

func (ct *Converter) ProcessClassDecl(cursor clang.Cursor) *ast.TypeDecl {
	// Pushing class scope before processing its type and popping after
	base := ct.CreateDeclBase(cursor)

	typ := ct.ProcessRecordType(cursor, ast.Class)

	return &ast.TypeDecl{
		DeclBase: base,
		Name:     &ast.Ident{Name: c.GoString(cursor.String().CStr())},
		Type:     typ,
	}
}

func (ct *Converter) ProcessRecordType(cursor clang.Cursor, tag ast.Tag) *ast.RecordType {
	return &ast.RecordType{
		Tag:     tag,
		Fields:  ct.ProcessFieldList(cursor),
		Methods: ct.ProcessMethods(cursor),
	}
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
func isMethod(cursor clang.Cursor) bool {
	return cursor.Kind == clang.CursorCXXMethod || cursor.Kind == clang.CursorConstructor || cursor.Kind == clang.CursorDestructor
}

// Constructs a complete scoping expression by traversing the semantic parents, starting from the given clang.Cursor
func buildScopingExpr(cursor clang.Cursor) ast.Expr {
	var parts []string

	// Traverse up the semantic parents
	for cursor.IsNull() != 1 && cursor.Kind != clang.CursorTranslationUnit {
		name := cursor.String()
		qualified := c.GoString(name.CStr())
		parts = append([]string{qualified}, parts...)
		cursor = cursor.SemanticParent()
		name.Dispose()
	}

	return buildScopingFromParts(parts)
}

func buildScopingFromParts(parts []string) ast.Expr {
	if len(parts) == 0 {
		return nil
	}

	var expr ast.Expr = &ast.Ident{Name: parts[0]}
	for _, part := range parts[1:] {
		expr = &ast.ScopingExpr{
			Parent: expr,
			X:      &ast.Ident{Name: part},
		}
	}
	return expr
}
