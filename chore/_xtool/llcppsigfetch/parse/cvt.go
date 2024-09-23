package parse

import (
	"errors"
	"fmt"
	"os"
	"strings"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/llcppg/ast"
	"github.com/goplus/llgo/chore/llcppg/token"
)

type FileEntry struct {
	Path string
	Doc  *ast.File
}

type Converter struct {
	Files     []*FileEntry
	FileOrder []string // todo(zzy): more efficient struct
	curLoc    ast.Location
	index     *clang.Index
	unit      *clang.TranslationUnit

	typeDecls map[string]ast.Decl // cursorUsr -> ast.Decl

	// anonyTypeMap stores mappings for unexpected named declarations in typedefs
	// that actually represent anonymous types.
	//
	// Key: The USR (Unified Symbol Resolution) of the declaration cursor.
	// Value: The generated name for the anonymous type.
	//
	// This map is necessary due to a limitation in libclang where anonymous
	// structs, unions, or enums within typedefs are incorrectly reported as
	// named declarations. We use this map to keep track of these cases and
	// generate appropriate names for them.
	//
	// Additionally, for all nodes referencing these anonymous types, their
	// name references are updated to use the corresponding anonyname from
	// this map. This ensures consistent naming across the entire AST for
	// these anonymous types.
	//
	// Example:
	//   typedef struct { int x; } MyStruct;
	anonyTypeMap map[string]bool // cursorUsr
}

var tagMap = map[string]ast.Tag{
	"struct": ast.Struct,
	"union":  ast.Union,
	"enum":   ast.Enum,
	"class":  ast.Class,
}

type Config struct {
	File  string
	Temp  bool
	Args  []string
	IsCpp bool
}

func NewConverter(config *Config) (*Converter, error) {
	index, unit, err := CreateTranslationUnit(config)
	if err != nil {
		return nil, err
	}

	return &Converter{
		Files:        make([]*FileEntry, 0),
		index:        index,
		unit:         unit,
		anonyTypeMap: make(map[string]bool),
		typeDecls:    make(map[string]ast.Decl),
	}, nil
}

func CreateTranslationUnit(config *Config) (*clang.Index, *clang.TranslationUnit, error) {
	// default use the c/c++ standard of clang; c:gnu17 c++:gnu++17
	// https://clang.llvm.org/docs/CommandGuide/clang.html
	defaultArgs := []string{"-x", "c"}
	if config.IsCpp {
		defaultArgs = []string{"-x", "c++"}
	}
	allArgs := append(defaultArgs, config.Args...)

	cArgs := make([]*c.Char, len(allArgs))
	for i, arg := range allArgs {
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

func (ct *Converter) GetTokens(cursor clang.Cursor) []*ast.Token {
	ran := cursor.Extent()
	var numTokens c.Uint
	var tokens *clang.Token
	ct.unit.Tokenize(ran, &tokens, &numTokens)
	defer ct.unit.DisposeTokens(tokens, numTokens)

	tokensSlice := unsafe.Slice(tokens, int(numTokens))

	result := make([]*ast.Token, 0, int(numTokens))
	for _, tok := range tokensSlice {
		tokStr := ct.unit.Token(tok)
		result = append(result, &ast.Token{
			Token: toToken(tok),
			Lit:   c.GoString(tokStr.CStr()),
		})
		tokStr.Dispose()
	}
	return result
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
	// todo(zzy): more efficient
	for i, entry := range ct.Files {
		if entry.Path == ct.curLoc.File {
			return ct.Files[i].Doc
		}
	}
	newDoc := &ast.File{}
	ct.Files = append(ct.Files, &FileEntry{Path: ct.curLoc.File, Doc: newDoc})
	return newDoc
}

func (ct *Converter) SetAnonyType(cursor clang.Cursor) {
	usr := cursor.USR()
	usrStr := c.GoString(usr.CStr())
	defer usr.Dispose()
	ct.anonyTypeMap[usrStr] = true
}

func (ct *Converter) GetAnonyType(cursor clang.Cursor) (bool, bool) {
	usr := cursor.USR()
	usrStr := c.GoString(usr.CStr())
	defer usr.Dispose()
	isAnony, ok := ct.anonyTypeMap[usrStr]
	return isAnony, ok
}

func (ct *Converter) SetTypeDecl(cursor clang.Cursor, decl ast.Decl) {
	usr := cursor.USR()
	usrStr := c.GoString(usr.CStr())
	ct.typeDecls[usrStr] = decl
	usr.Dispose()
}

func (ct *Converter) GetTypeDecl(cursor clang.Cursor) (ast.Decl, bool) {
	usr := cursor.USR()
	usrStr := c.GoString(usr.CStr())
	decl, ok := ct.typeDecls[usrStr]
	usr.Dispose()
	return decl, ok
}

func (ct *Converter) CreateDeclBase(cursor clang.Cursor) ast.DeclBase {
	base := ast.DeclBase{
		Loc:    &ct.curLoc,
		Parent: ct.BuildScopingExpr(cursor.SemanticParent()),
	}
	commentGroup, isDoc := ct.ParseCommentGroup(cursor)
	if isDoc {
		base.Doc = commentGroup
	}
	return base
}

// extracts and parses comments associated with a given Clang cursor,
// distinguishing between documentation comments and line comments.
// It uses libclang to parse only Doxygen-style comments.

// Reference for Doxygen documentation blocks: https://www.doxygen.nl/manual/docblocks.html

// The function determines whether a comment is a documentation comment or a line comment by
// comparing the range of the comment node with the range of the declaration node in the AST.

// Note: In cases where both documentation comments and line comments conceptually exist,
// only the line comment will be preserved.
func (ct *Converter) ParseCommentGroup(cursor clang.Cursor) (comentGroup *ast.CommentGroup, isDoc bool) {
	rawComment := cursor.RawCommentText()
	defer rawComment.Dispose()
	commentGroup := &ast.CommentGroup{}
	if rawComment.CStr() != nil {
		commentRange := cursor.CommentRange()
		cursorRange := cursor.Extent()
		isDoc := getOffset(commentRange.RangeStart()) < getOffset(cursorRange.RangeStart())
		commentGroup = ct.ParseComment(c.GoString(rawComment.CStr()))
		if len(commentGroup.List) > 0 {
			return commentGroup, isDoc
		}
	}
	return nil, false
}

func (ct *Converter) ParseComment(rawComment string) *ast.CommentGroup {
	lines := strings.Split(rawComment, "\n")
	commentGroup := &ast.CommentGroup{}
	for _, line := range lines {
		commentGroup.List = append(commentGroup.List, &ast.Comment{Text: line + "\n"})
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

func (ct *Converter) Convert() ([]*FileEntry, error) {
	cursor := ct.unit.Cursor()
	// visit top decls (struct,class,function & macro,include)
	clang.VisitChildren(cursor, visitTop, c.Pointer(ct))
	return ct.Files, nil
}

func (ct *Converter) ProcessType(t clang.Type) ast.Expr {
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
	case clang.TypeFunctionProto, clang.TypeFunctionNoProto:
		// treating TypeFunctionNoProto as a general function without parameters
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

	typ := ct.ProcessUnderlyingType(cursor)

	decl := &ast.TypedefDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     &ast.Ident{Name: c.GoString(name.CStr())},
		Type:     typ,
	}

	ct.SetTypeDecl(cursor, decl)
	return decl
}

func (ct *Converter) ProcessUnderlyingType(cursor clang.Cursor) ast.Expr {
	underlyingTyp := cursor.TypedefDeclUnderlyingType()
	if underlyingTyp.Kind != clang.TypeElaborated {
		return ct.ProcessType(underlyingTyp)
	}

	referTypeCursor := underlyingTyp.TypeDeclaration()

	// If the type decl for the reference already exists in anonyTypeMap
	// then the refer has been processed in ProcessElaboratedType
	if _, ok := ct.GetAnonyType(referTypeCursor); !ok && isCursorChildOf(referTypeCursor, cursor) {
		// Handle unexpected named structures generated from anonymous RecordTypes in Typedefs
		// In this case, libclang incorrectly reports an anonymous struct as a named struct
		sourceCode := ct.GetTokens(referTypeCursor)
		if isAnonymousStructure(sourceCode) {
			ct.SetAnonyType(referTypeCursor)
			typ, isValidType := ct.GetTypeDecl(referTypeCursor)
			if isValidType {
				// There will be no anonymous classes,here will execute enum,union,struct
				// according to a normal anonymous decl
				switch declType := typ.(type) {
				case *ast.EnumTypeDecl:
					declType.Name = nil
				case *ast.TypeDecl:
					if declType.Type.Tag != ast.Class {
						declType.Name = nil
					} else {
						// Unreachable: There should be no anonymous classes in this context
						fmt.Fprintln(os.Stderr, "unexpect typedef anonymous class %s", declType.Name.Name)
					}
				}
			} else {
				// Unreachable:When referencing an anonymous node, its collection must have been completed beforehand
				fmt.Fprintln(os.Stderr, "anonymous node not collected before reference")
			}
		}
	}

	return ct.ProcessElaboratedType(underlyingTyp)
}

// converts functions, methods, constructors, destructors (including out-of-class decl) to ast.FuncDecl nodes.
func (ct *Converter) ProcessFuncDecl(cursor clang.Cursor) *ast.FuncDecl {
	name := cursor.String()
	mangledName := cursor.Mangling()
	defer name.Dispose()
	defer mangledName.Dispose()

	// function type will only collect return type
	// ProcessType can't get the field names,will collect in follows
	funcType, ok := ct.ProcessType(cursor.Type()).(*ast.FuncType)
	if !ok {
		fmt.Println("failed to process function type")
		return nil
	}
	params := ct.ProcessFieldList(cursor)
	funcType.Params = params

	mangledNameStr := c.GoString(mangledName.CStr())
	if len(mangledNameStr) >= 1 && mangledNameStr[0] == '_' {
		mangledNameStr = mangledNameStr[1:]
	}

	funcDecl := &ast.FuncDecl{
		DeclBase:    ct.CreateDeclBase(cursor),
		Name:        &ast.Ident{Name: c.GoString(name.CStr())},
		Type:        funcType,
		MangledName: mangledNameStr,
	}

	if cursor.IsFunctionInlined() != 0 {
		funcDecl.IsInline = true
	}

	if isMethod(cursor) {
		ct.ProcessMethodAttributes(cursor, funcDecl)
	} else {
		if cursor.StorageClass() == clang.SCStatic {
			funcDecl.IsStatic = true
		}
	}

	ct.SetTypeDecl(cursor, funcDecl)

	return funcDecl
}

// get Methods Attributes
func (ct *Converter) ProcessMethodAttributes(cursor clang.Cursor, fn *ast.FuncDecl) {
	if parent := cursor.SemanticParent(); parent.Equal(cursor.LexicalParent()) != 1 {
		fn.DeclBase.Parent = ct.BuildScopingExpr(cursor.SemanticParent())
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

func (ct *Converter) ProcessEnumType(cursor clang.Cursor) *ast.EnumType {
	items := make([]*ast.EnumItem, 0)
	ctx := &visitEnumContext{
		enum:      &items,
		converter: ct,
	}
	clang.VisitChildren(cursor, visitEnum, c.Pointer(ctx))
	return &ast.EnumType{
		Items: items,
	}
}

func (ct *Converter) ProcessEnumDecl(cursor clang.Cursor) *ast.EnumTypeDecl {
	name := cursor.String()
	defer name.Dispose()

	decl := &ast.EnumTypeDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     &ast.Ident{Name: c.GoString(name.CStr())},
		Type:     ct.ProcessEnumType(cursor),
	}
	ct.SetTypeDecl(cursor, decl)
	return decl
}

// current only collect macro which defined in file
func (ct *Converter) ProcessMacro(cursor clang.Cursor) *ast.Macro {
	name := cursor.String()
	defer name.Dispose()

	macro := &ast.Macro{
		Name:   c.GoString(name.CStr()),
		Tokens: ct.GetTokens(cursor),
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

func (p *visitFieldContext) createBaseField(cursor clang.Cursor) *ast.Field {
	field := &ast.Field{
		Type: p.converter.ProcessType(cursor.Type()),
	}
	fieldName := cursor.String()
	defer fieldName.Dispose()

	commentGroup, isDoc := p.converter.ParseCommentGroup(cursor)
	if commentGroup != nil {
		if isDoc {
			field.Doc = commentGroup
		} else {
			field.Comment = commentGroup
		}
	}
	if name := fieldName.CStr(); name != nil {
		field.Names = []*ast.Ident{{Name: c.GoString(name)}}
	}
	return field
}
func visitFieldList(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	ctx := (*visitFieldContext)(clientData)

	switch cursor.Kind {
	case clang.CursorParmDecl, clang.CursorFieldDecl:
		// In C language, parameter lists do not have similar parameter grouping in Go.
		// func foo(a, b int)

		// For follows struct, it will also parse to two FieldDecl
		// struct A {
		// 	int a, b;
		// };
		field := ctx.createBaseField(cursor)
		if cursor.Kind == clang.CursorFieldDecl {
			field.Access = ast.AccessSpecifier(cursor.CXXAccessSpecifier())
		}

		ctx.params.List = append(ctx.params.List, field)

	case clang.CursorVarDecl:
		if cursor.StorageClass() == clang.SCStatic {
			// static member variable
			field := ctx.createBaseField(cursor)
			field.Access = ast.AccessSpecifier(cursor.CXXAccessSpecifier())
			field.IsStatic = true
			ctx.params.List = append(ctx.params.List, field)
		}
	}

	return clang.ChildVisit_Continue
}

// For Record Type(struct,union ...) & Func 's FieldList
func (ct *Converter) ProcessFieldList(cursor clang.Cursor) *ast.FieldList {
	params := &ast.FieldList{}
	ctx := &visitFieldContext{
		params:    params,
		converter: ct,
	}
	clang.VisitChildren(cursor, visitFieldList, c.Pointer(ctx))
	if (cursor.Kind == clang.CursorFunctionDecl || isMethod(cursor)) && cursor.IsVariadic() != 0 {
		params.List = append(params.List, &ast.Field{
			Type: &ast.Variadic{},
		})
	}
	return params
}

type visitMethodsContext struct {
	methods   *[]*ast.FuncDecl
	converter *Converter
}

func visitMethods(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	ctx := (*visitMethodsContext)(clientData)
	if isMethod(cursor) && cursor.CXXAccessSpecifier() == clang.CXXPublic {
		method := ctx.converter.ProcessFuncDecl(cursor)
		if method != nil {
			*ctx.methods = append(*ctx.methods, method)
		}
	}
	return clang.ChildVisit_Continue
}

// Note:Public Method is considered
func (ct *Converter) ProcessMethods(cursor clang.Cursor) []*ast.FuncDecl {
	methods := make([]*ast.FuncDecl, 0)
	ctx := &visitMethodsContext{
		methods:   &methods,
		converter: ct,
	}
	clang.VisitChildren(cursor, visitMethods, c.Pointer(ctx))
	return methods
}

func (ct *Converter) ProcessRecordDecl(cursor clang.Cursor) *ast.TypeDecl {
	anony := cursor.IsAnonymousRecordDecl()
	var name *ast.Ident
	if anony == 0 {
		cursorName := cursor.String()
		defer cursorName.Dispose()
		name = &ast.Ident{Name: c.GoString(cursorName.CStr())}
	}

	decl := &ast.TypeDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     name,
		Type:     ct.ProcessRecordType(cursor),
	}
	ct.SetTypeDecl(cursor, decl)

	return decl
}

func (ct *Converter) ProcessStructDecl(cursor clang.Cursor) *ast.TypeDecl {
	return ct.ProcessRecordDecl(cursor)
}

func (ct *Converter) ProcessUnionDecl(cursor clang.Cursor) *ast.TypeDecl {
	return ct.ProcessRecordDecl(cursor)
}

func (ct *Converter) ProcessClassDecl(cursor clang.Cursor) *ast.TypeDecl {
	// Pushing class scope before processing its type and popping after
	base := ct.CreateDeclBase(cursor)
	typ := ct.ProcessRecordType(cursor)

	decl := &ast.TypeDecl{
		DeclBase: base,
		Name:     &ast.Ident{Name: c.GoString(cursor.String().CStr())},
		Type:     typ,
	}
	ct.SetTypeDecl(cursor, decl)

	return decl
}

func (ct *Converter) ProcessRecordType(cursor clang.Cursor) *ast.RecordType {
	return &ast.RecordType{
		Tag:     toTag(cursor.Kind),
		Fields:  ct.ProcessFieldList(cursor),
		Methods: ct.ProcessMethods(cursor),
	}
}

// process ElaboratedType Reference
//
// 1. Named elaborated type references:
// - Examples: struct MyStruct, union MyUnion, class MyClass, enum MyEnum
// - Handling: Constructed as TagExpr or ScopingExpr references
//
// 2. Anonymous elaborated type references:
// - Examples: struct { int x; int y; }, union { int a; float b; }
// - Handling: Retrieve their corresponding concrete types
func (ct *Converter) ProcessElaboratedType(t clang.Type) ast.Expr {
	name := t.String()
	defer name.Dispose()

	decl := t.TypeDeclaration()
	isAnony, ok := ct.GetAnonyType(decl)

	if decl.IsAnonymous() != 0 || isAnony && ok {
		// anonymous type refer (except anonymous RecordType&EnumType in TypedefDecl)
		if decl.Kind == clang.CursorEnumDecl {
			return ct.ProcessEnumType(decl)
		}
		return ct.ProcessRecordType(decl)
	}

	typeName := c.GoString(name.CStr())

	// for elaborated type, it could have a tag description
	// like struct A, union B, class C, enum D
	parts := strings.SplitN(typeName, " ", 2)
	if len(parts) == 2 {
		if tagValue, ok := tagMap[parts[0]]; ok {
			return &ast.TagExpr{
				Tag:  tagValue,
				Name: ct.BuildScopingExpr(decl),
			}
		}
	}

	return ct.BuildScopingExpr(decl)
}

func (ct *Converter) ProcessBuiltinType(t clang.Type) *ast.BuiltinType {
	kind := ast.Void
	var flags ast.TypeFlag

	switch t.Kind {
	case clang.TypeVoid:
		kind = ast.Void
	case clang.TypeBool:
		kind = ast.Bool
	case clang.TypeCharU, clang.TypeUChar, clang.TypeCharS, clang.TypeSChar:
		kind = ast.Char
	case clang.TypeChar16:
		kind = ast.Char16
	case clang.TypeChar32:
		kind = ast.Char32
	case clang.TypeWChar:
		kind = ast.WChar
	case clang.TypeShort, clang.TypeUShort:
		kind = ast.Int
		flags |= ast.Short
	case clang.TypeInt, clang.TypeUInt:
		kind = ast.Int
	case clang.TypeLong, clang.TypeULong:
		kind = ast.Int
		flags |= ast.Long
	case clang.TypeLongLong, clang.TypeULongLong:
		kind = ast.Int
		flags |= ast.LongLong
	case clang.TypeInt128, clang.TypeUInt128:
		kind = ast.Int128
	case clang.TypeFloat:
		kind = ast.Float
	case clang.TypeHalf, clang.TypeFloat16:
		kind = ast.Float16
	case clang.TypeDouble:
		kind = ast.Float
		flags |= ast.Double
	case clang.TypeLongDouble:
		kind = ast.Float
		flags |= ast.Long | ast.Double
	case clang.TypeFloat128:
		kind = ast.Float128
	case clang.TypeComplex:
		kind = ast.Complex
		complexKind := t.ElementType().Kind
		if complexKind == clang.TypeLongDouble {
			flags |= ast.Long | ast.Double
		} else if complexKind == clang.TypeDouble {
			flags |= ast.Double
		}
		// float complfex flag is not set
	default:
		// like IBM128,NullPtr,Accum
		kindStr := t.Kind.String()
		defer kindStr.Dispose()
		fmt.Fprintln(os.Stderr, "todo: unknown builtin type:", c.GoString(kindStr.CStr()))
	}

	if IsExplicitSigned(t) {
		flags |= ast.Signed
	} else if IsExplicitUnsigned(t) {
		flags |= ast.Unsigned
	}

	return &ast.BuiltinType{
		Kind:  kind,
		Flags: flags,
	}
}

// Constructs a complete scoping expression by traversing the semantic parents, starting from the given clang.Cursor
// For anonymous decl of typedef references, use their anonymous name
func (ct *Converter) BuildScopingExpr(cursor clang.Cursor) ast.Expr {
	parts := ct.BuildScopingParts(cursor)
	return buildScopingFromParts(parts)
}

func (ct *Converter) BuildScopingParts(cursor clang.Cursor) []string {
	var parts []string
	// Traverse up the semantic parents
	for cursor.IsNull() != 1 && cursor.Kind != clang.CursorTranslationUnit {
		name := cursor.String()
		qualified := c.GoString(name.CStr())
		parts = append([]string{qualified}, parts...)
		cursor = cursor.SemanticParent()
		name.Dispose()
	}
	return parts
}

func (ct *Converter) MarshalASTFiles() *cjson.JSON {
	return MarshalASTFiles(ct.Files)
}

func (ct *Converter) MarshalOutputASTFiles() *cjson.JSON {
	return MarshalOutputASTFiles(ct.Files)
}

func IsExplicitSigned(t clang.Type) bool {
	return t.Kind == clang.TypeCharS || t.Kind == clang.TypeSChar
}

func IsExplicitUnsigned(t clang.Type) bool {
	return t.Kind == clang.TypeCharU || t.Kind == clang.TypeUChar ||
		t.Kind == clang.TypeUShort || t.Kind == clang.TypeUInt ||
		t.Kind == clang.TypeULong || t.Kind == clang.TypeULongLong ||
		t.Kind == clang.TypeUInt128
}

func toTag(kind clang.CursorKind) ast.Tag {
	switch kind {
	case clang.CursorStructDecl:
		return ast.Struct
	case clang.CursorUnionDecl:
		return ast.Union
	case clang.CursorClassDecl:
		return ast.Class
	default:
		panic(fmt.Sprintf("Unexpected cursor kind in toTag: %v", kind))
	}
}

func toToken(tok clang.Token) token.Token {
	if tok.Kind() < clang.Punctuation || tok.Kind() > clang.Comment {
		return token.ILLEGAL
	} else {
		return token.Token(tok.Kind() + 1)
	}
}
func isMethod(cursor clang.Cursor) bool {
	return cursor.Kind == clang.CursorCXXMethod || cursor.Kind == clang.CursorConstructor || cursor.Kind == clang.CursorDestructor
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

// isCursorChildOf checks if the child cursor is contained within the parent cursor.
// This function is necessary because libclang doesn't correctly report the lexical
// or semantic parent for anonymous structs inside typedefs. By comparing source ranges,
// we can determine if one cursor is nested inside another.
func isCursorChildOf(child, parent clang.Cursor) bool {
	return isRangeChildOf(child.Extent(), parent.Extent())
}

func isRangeChildOf(childRange, parentRange clang.SourceRange) bool {
	return getOffset(childRange.RangeStart()) >= getOffset(parentRange.RangeStart()) &&
		getOffset(childRange.RangeEnd()) <= getOffset(parentRange.RangeEnd())
}

func getOffset(location clang.SourceLocation) c.Uint {
	var offset c.Uint
	location.SpellingLocation(nil, nil, nil, &offset)
	return offset
}

// checks if the source code represents an actual anonymous structure
func isAnonymousStructure(sourceCode []*ast.Token) bool {
	_, isValidTag := tagMap[sourceCode[0].Lit]
	return sourceCode[0].Token == token.KEYWORD &&
		isValidTag &&
		sourceCode[1].Token == token.PUNCT &&
		sourceCode[1].Lit == "{"
}
