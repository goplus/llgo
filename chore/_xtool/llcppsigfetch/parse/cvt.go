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

type Converter struct {
	Files      map[string]*ast.File
	curLoc     ast.Location
	index      *clang.Index
	unit       *clang.TranslationUnit
	scopeStack []ast.Expr //namespace & class
}

type Config struct {
	File string
	Temp bool
	Args []string
}

func NewConverter(config *Config) (*Converter, error) {
	index, unit, err := CreateTranslationUnit(config)
	if err != nil {
		return nil, err
	}

	return &Converter{
		Files: make(map[string]*ast.File),
		index: index,
		unit:  unit,
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

func (ct *Converter) PushScope(cursor clang.Cursor) {
	name := cursor.String()
	defer name.Dispose()
	ident := &ast.Ident{Name: c.GoString(name.CStr())}

	if len(ct.scopeStack) == 0 {
		ct.scopeStack = append(ct.scopeStack, ident)
	} else {
		parent := ct.scopeStack[len(ct.scopeStack)-1]
		newContext := &ast.ScopingExpr{Parent: parent, X: ident}
		ct.scopeStack = append(ct.scopeStack, newContext)
	}
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
		Parent: ct.GetCurScope(),
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

// visit top decls (struct,class,function,enum & marco,include)
func visit(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
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
		marco := ct.ProcessMarco(cursor)
		curFile.Macros = append(curFile.Macros, marco)
	case clang.CursorEnumDecl:
		enum := ct.ProcessEnum(cursor)
		curFile.Decls = append(curFile.Decls, enum)
	case clang.CursorClassDecl:
		ct.PushScope(cursor)
		classDecl := ct.ProcessClass(cursor)
		curFile.Decls = append(curFile.Decls, classDecl)
		ct.PopScope()
	case clang.CursorStructDecl:
		structDecl := ct.ProcessStruct(cursor)
		curFile.Decls = append(curFile.Decls, structDecl)
	case clang.CursorUnionDecl:
		unionDecl := ct.ProcessUnion(cursor)
		curFile.Decls = append(curFile.Decls, unionDecl)
	case clang.CursorFunctionDecl:
		curFile.Decls = append(curFile.Decls, ct.ProcessFunc(cursor))
	case clang.CursorTypedefDecl:
		curFile.Decls = append(curFile.Decls, ct.ProcessTypeDef(cursor))
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
	return ct.Files, nil
}

func (ct *Converter) ProcessType(t clang.Type) ast.Expr {
	var expr ast.Expr
	if t.Kind >= clang.TypeFirstBuiltin && t.Kind <= clang.TypeLastBuiltin {
		return ct.ProcessBuiltinType(t)
	}
	switch t.Kind {
	case clang.TypePointer:
		expr = &ast.PointerType{X: ct.ProcessType(t.PointeeType())}
	case clang.TypeLValueReference, clang.TypeRValueReference:
		expr = &ast.LvalueRefType{X: ct.ProcessType(t.NonReferenceType())}
	case clang.TypeFunctionProto:
		// function type will only collect return type, params will be collected in ProcessFunc
		ret := ct.ProcessType(t.ResultType())
		expr = &ast.FuncType{Ret: ret}
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

func (ct *Converter) ProcessTypeDef(cursor clang.Cursor) *ast.TypedefDecl {
	name := cursor.String()
	defer name.Dispose()
	return &ast.TypedefDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     &ast.Ident{Name: c.GoString(name.CStr())},
		Type:     ct.ProcessUnderLyingType(cursor),
	}
}

func (ct *Converter) ProcessUnderLyingType(cursor clang.Cursor) ast.Expr {
	underlying := cursor.TypedefDeclUnderlyingType()
	// enum,union,class,struct,typedef -> elaborated type
	if underlying.Kind == clang.TypeElaborated {
		return &ast.Ident{
			Name: c.GoString(underlying.String().CStr()),
		}
	}
	return ct.ProcessType(underlying)
}

func (ct *Converter) ProcessFunc(cursor clang.Cursor) *ast.FuncDecl {
	name := cursor.String()
	defer name.Dispose()
	// function type will only collect return type
	// ProcessType can't get the field names,will collect in follows
	funcType, ok := ct.ProcessType(cursor.Type()).(*ast.FuncType)
	if !ok {
		fmt.Println("failed to process function type")
		return nil
	}
	params := ct.ProcessFieldList(cursor)
	funcType.Params = params
	fn := &ast.FuncDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     &ast.Ident{Name: c.GoString(name.CStr())},
		Type:     funcType,
	}
	return fn
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

func (ct *Converter) ProcessEnum(cursor clang.Cursor) *ast.EnumTypeDecl {
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
		Items:    items,
	}
}

// current only collect marco which defined in file
func (ct *Converter) ProcessMarco(cursor clang.Cursor) *ast.Macro {
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

func (ct *Converter) ProcessFieldList(cursor clang.Cursor) *ast.FieldList {
	params := &ast.FieldList{List: []*ast.Field{}}
	ctx := &visitFieldContext{
		params:    params,
		converter: ct,
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
	if cursor.Kind == clang.CursorCXXMethod {
		method := ctx.converter.ProcessFunc(cursor)
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

func (ct *Converter) ProcessRecord(cursor clang.Cursor, tag ast.Tag) *ast.TypeDecl {
	anony := cursor.IsAnonymousRecordDecl()

	var name *ast.Ident
	if anony == 0 {
		cursorName := cursor.String()
		defer cursorName.Dispose()
		name = &ast.Ident{Name: c.GoString(cursorName.CStr())}
	}

	fields := ct.ProcessFieldList(cursor)
	methods := ct.ProcessMethods(cursor)

	decl := &ast.TypeDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     name,
		Type: &ast.RecordType{
			Tag:     tag,
			Fields:  fields,
			Methods: methods,
		},
	}

	return decl
}

func (ct *Converter) ProcessStruct(cursor clang.Cursor) *ast.TypeDecl {
	return ct.ProcessRecord(cursor, ast.Struct)
}

func (ct *Converter) ProcessUnion(cursor clang.Cursor) *ast.TypeDecl {
	return ct.ProcessRecord(cursor, ast.Union)
}

func (ct *Converter) ProcessClass(cursor clang.Cursor) *ast.TypeDecl {
	return ct.ProcessRecord(cursor, ast.Class)
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

func (ct *Converter) MarshalASTFiles() *cjson.JSON {
	return MarshalASTFiles(ct.Files)
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

func toToken(tok clang.Token) token.Token {
	if tok.Kind() < clang.Punctuation || tok.Kind() > clang.Comment {
		return token.ILLEGAL
	} else {
		return token.Token(tok.Kind() + 1)
	}
}
