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
)

type Converter struct {
	Files      map[string]*ast.File
	curLoc     ast.Location
	curFile    *ast.File
	index      *clang.Index
	unit       *clang.TranslationUnit
	scopeStack []ast.Expr //namespace & class
}

func NewConverter(file string, temp bool) (*Converter, error) {
	args := []*c.Char{
		c.Str("-x"),
		c.Str("c++"),
		c.Str("-std=c++11"),
	}
	index := clang.CreateIndex(0, 0)

	var unit *clang.TranslationUnit

	if temp {
		content := c.AllocaCStr(file)
		tempFile := &clang.UnsavedFile{
			Filename: c.Str("temp.h"),
			Contents: content,
			Length:   c.Ulong(c.Strlen(content)),
		}
		unit = index.ParseTranslationUnit(
			tempFile.Filename,
			unsafe.SliceData(args), c.Int(len(args)),
			tempFile, 1,
			clang.DetailedPreprocessingRecord,
		)
	} else {
		unit = index.ParseTranslationUnit(
			c.AllocaCStr(file),
			unsafe.SliceData(args), c.Int(len(args)),
			nil, 0,
			clang.DetailedPreprocessingRecord,
		)
	}

	if unit == nil {
		return nil, errors.New("failed to parse translation unit")
	}

	return &Converter{
		Files: make(map[string]*ast.File),
		index: index,
		unit:  unit,
	}, nil
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
		if f, ok := ct.Files[filePath]; ok {
			ct.curFile = f
		} else {
			ct.curFile = &ast.File{
				Path:     filePath,
				Decls:    make([]ast.Decl, 0),
				Includes: make([]*ast.Include, 0),
				Macros:   make([]*ast.Macro, 0),
			}
			ct.Files[filePath] = ct.curFile
		}
	}
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
	ct.UpdateCurFile(cursor)

	switch cursor.Kind {
	case clang.CursorInclusionDirective:
		// todo(zzy)
	case clang.CursorMacroDefinition:
		// todo(zzy)
		ct.ProcessMarco(cursor)
	case clang.CursorEnumDecl:
		// todo(zzy)
	case clang.CursorClassDecl:
		ct.PushScope(cursor)
		ct.ProcessClass(cursor)
		ct.PopScope()
	case clang.CursorStructDecl:
		ct.ProcessStruct(cursor)
	case clang.CursorFunctionDecl:
		ct.curFile.Decls = append(ct.curFile.Decls, ct.ProcessFunc(cursor))
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
	case clang.TypeFunctionProto:
		// function type will only collect return type, params will be collected in ProcessFunc
		ret := ct.ProcessType(t.ResultType())
		expr = &ast.FuncType{Ret: ret}
	case clang.TypeTypedef:
		expr = ct.ProcessType(t.CanonicalType())
	case clang.TypeConstantArray, clang.TypeIncompleteArray, clang.TypeVariableArray, clang.TypeDependentSizedArray:
		if t.Kind == clang.TypeConstantArray {
			valueStr := make([]c.Char, 20)
			c.Sprintf(unsafe.SliceData(valueStr), c.Str("%d"), t.ArraySize())
			expr = &ast.ArrayType{
				Elt: ct.ProcessType(t.ArrayElementType()),
				Len: &ast.BasicLit{Kind: ast.IntLit, Value: c.GoString(unsafe.SliceData(valueStr))},
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

// current only collect marco which defined in file
func (ct *Converter) ProcessMarco(cursor clang.Cursor) {
	if ct.curFile == nil {
		return
	}
	name := cursor.String()
	defer name.Dispose()

	ran := cursor.Extent()
	var numTokens c.Uint
	var tokens *clang.Token
	ct.unit.Tokenize(ran, &tokens, &numTokens)
	tokensSlice := unsafe.Slice(tokens, int(numTokens))

	macro := &ast.Macro{
		Name: &ast.TokenInfo{
			Token: ast.Token(tokensSlice[0].Kind()),
			Lit:   c.GoString(ct.unit.Token(tokensSlice[0]).CStr()),
		},
		Body: make([]*ast.TokenInfo, 0),
	}

	if numTokens > 1 { //have body
		for i := 1; i < int(numTokens); i++ {
			tok := tokensSlice[i]
			tokStr := ct.unit.Token(tok)
			macro.Body = append(macro.Body, &ast.TokenInfo{
				Token: ast.Token(tok.Kind()),
				Lit:   c.GoString(tokStr.CStr()),
			})
			tokStr.Dispose()
		}
	}
	ct.curFile.Macros = append(ct.curFile.Macros, macro)
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

func (ct *Converter) ProcessStructOrClass(cursor clang.Cursor, tag ast.Tag) *ast.TypeDecl {
	name := cursor.String()
	defer name.Dispose()

	fields := ct.ProcessFieldList(cursor)
	methods := ct.ProcessMethods(cursor)

	decl := &ast.TypeDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Tag:      tag,
		Fields:   fields,
		Methods:  methods,
	}

	return decl
}

func (ct *Converter) ProcessStruct(cursor clang.Cursor) {
	structDecl := ct.ProcessStructOrClass(cursor, ast.Struct)
	ct.curFile.Decls = append(ct.curFile.Decls, structDecl)
}

func (ct *Converter) ProcessClass(cursor clang.Cursor) {
	classDecl := ct.ProcessStructOrClass(cursor, ast.Class)
	// other logic for class
	ct.curFile.Decls = append(ct.curFile.Decls, classDecl)
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
