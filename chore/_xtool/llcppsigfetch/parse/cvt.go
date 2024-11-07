package parse

import (
	"fmt"
	"os"
	"runtime"
	"strings"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/_xtool/llcppsymg/clangutils"
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
	indent       int             // for verbose debug

	macroDefMap map[string]*ast.Macro // macroName -> macro
	// expansion is after the macro definition
	macroExMap map[ofRange]*ast.Macro // macroUsr -> marcro
}

type ofRange struct {
	start c.Uint
	end   c.Uint
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

func NewConverter(config *clangutils.Config) (*Converter, error) {
	if debugParse {
		fmt.Fprintln(os.Stderr, "NewConverter: config")
		fmt.Fprintln(os.Stderr, "config.File", config.File)
		fmt.Fprintln(os.Stderr, "config.Args", config.Args)
		fmt.Fprintln(os.Stderr, "config.IsCpp", config.IsCpp)
		fmt.Fprintln(os.Stderr, "config.Temp", config.Temp)
	}

	index, unit, err := clangutils.CreateTranslationUnit(config)
	if err != nil {
		return nil, err
	}

	return &Converter{
		Files:        make([]*FileEntry, 0),
		index:        index,
		unit:         unit,
		anonyTypeMap: make(map[string]bool),
		typeDecls:    make(map[string]ast.Decl),
		macroExMap:   make(map[ofRange]*ast.Macro),
		macroDefMap:  make(map[string]*ast.Macro),
	}, nil
}

func (ct *Converter) Dispose() {
	ct.logln("Dispose")
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

func (ct *Converter) logBase() string {
	return strings.Repeat(" ", ct.indent)
}
func (ct *Converter) incIndent() {
	ct.indent++
}

func (ct *Converter) decIndent() {
	if ct.indent > 0 {
		ct.indent--
	}
}

func (ct *Converter) logf(format string, args ...interface{}) {
	if debugParse {
		fmt.Fprintf(os.Stderr, ct.logBase()+format, args...)
	}
}
func (ct *Converter) logln(args ...interface{}) {
	if debugParse {
		if len(args) > 0 {
			firstArg := fmt.Sprintf("%s%v", ct.logBase(), args[0])
			fmt.Fprintln(os.Stderr, append([]interface{}{firstArg}, args[1:]...)...)
		} else {
			fmt.Fprintln(os.Stderr, ct.logBase())
		}
	}
}

func (ct *Converter) UpdateLoc(cursor clang.Cursor) {
	loc := cursor.Location()
	var file clang.File
	loc.SpellingLocation(&file, nil, nil, nil)

	filePath := toStr(file.FileName())

	if filePath == "" {
		//todo(zzy): For some built-in macros, there is no file.
		ct.curLoc = ast.Location{File: ""}
		return
	}
	ct.curLoc = ast.Location{File: filePath}
}

func (ct *Converter) GetCurFile() *ast.File {
	if ct.curLoc.File == "" {
		ct.logln("GetCurFile: NO FILE")
		return nil
	}
	// todo(zzy): more efficient
	for i, entry := range ct.Files {
		if entry.Path == ct.curLoc.File {
			ct.logln("GetCurFile: found", ct.curLoc.File)
			return ct.Files[i].Doc
		}
	}
	ct.logln("GetCurFile: Create New ast.File", ct.curLoc.File)
	newDoc := &ast.File{}
	ct.Files = append(ct.Files, &FileEntry{Path: ct.curLoc.File, Doc: newDoc})
	return newDoc
}

func (ct *Converter) SetAnonyType(cursor clang.Cursor) {
	usr := toStr(cursor.USR())
	ct.anonyTypeMap[usr] = true
}

func (ct *Converter) GetAnonyType(cursor clang.Cursor) (bool, bool) {
	usr := toStr(cursor.USR())
	isAnony, ok := ct.anonyTypeMap[usr]
	return isAnony, ok
}

func (ct *Converter) SetTypeDecl(cursor clang.Cursor, decl ast.Decl) {
	usr := toStr(cursor.USR())
	ct.typeDecls[usr] = decl
}

func (ct *Converter) GetTypeDecl(cursor clang.Cursor) (ast.Decl, bool) {
	usr := toStr(cursor.USR())
	decl, ok := ct.typeDecls[usr]
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
	rawComment := toStr(cursor.RawCommentText())
	commentGroup := &ast.CommentGroup{}
	if rawComment != "" {
		commentRange := cursor.CommentRange()
		cursorRange := cursor.Extent()
		isDoc := getOffset(commentRange.RangeStart()) < getOffset(cursorRange.RangeStart())
		commentGroup = ct.ParseComment(rawComment)
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
func (ct *Converter) visitTop(cursor, parent clang.Cursor) clang.ChildVisitResult {
	ct.incIndent()
	defer ct.decIndent()

	ct.UpdateLoc(cursor)

	curFile := ct.GetCurFile()

	name := toStr(cursor.String())
	ct.logf("visitTop: Cursor: %s\n", name)

	if curFile == nil {
		return clang.ChildVisit_Continue
	}

	switch cursor.Kind {
	case clang.CursorInclusionDirective:
		include := ct.ProcessInclude(cursor)
		curFile.Includes = append(curFile.Includes, include)
		ct.logln("visitTop: ProcessInclude END ", include.Path)
	case clang.CursorMacroDefinition:
		macro := ct.ProcessMacro(cursor)
		curFile.Macros = append(curFile.Macros, macro)
		ct.macroDefMap[macro.Name] = macro
		ct.logln("visitTop: ProcessMacro END ", macro.Name, "Tokens Length:", len(macro.Tokens))
	case clang.CursorMacroExpansion:
		ran := cursor.Extent()
		_, _, _, startOffset := clangutils.GetLocation(ran.RangeStart())
		_, _, _, endOffset := clangutils.GetLocation(ran.RangeEnd())
		macro, ok := ct.macroDefMap[name]
		if ok {
			ct.macroExMap[ofRange{start: startOffset, end: endOffset}] = macro
			ct.logln("visitTop: ProcessMacroExpansion END ", macro.Name, "Tokens Length:", len(macro.Tokens))
		}
	case clang.CursorEnumDecl:
		enum := ct.ProcessEnumDecl(cursor)
		curFile.Decls = append(curFile.Decls, enum)

		ct.logf("visitTop: ProcessEnumDecl END")
		if enum.Name != nil {
			ct.logln(enum.Name.Name)
		} else {
			ct.logln("ANONY")
		}

	case clang.CursorClassDecl:
		classDecl := ct.ProcessClassDecl(cursor)
		curFile.Decls = append(curFile.Decls, classDecl)
		// class havent anonymous situation
		ct.logln("visitTop: ProcessClassDecl END", classDecl.Name.Name)
	case clang.CursorStructDecl:
		structDecl := ct.ProcessStructDecl(cursor)
		curFile.Decls = append(curFile.Decls, structDecl)

		ct.logf("visitTop: ProcessStructDecl END")
		if structDecl.Name != nil {
			ct.logln(structDecl.Name.Name)
		} else {
			ct.logln("ANONY")
		}
	case clang.CursorUnionDecl:
		unionDecl := ct.ProcessUnionDecl(cursor)
		curFile.Decls = append(curFile.Decls, unionDecl)

		ct.logf("visitTop: ProcessUnionDecl END")
		if unionDecl.Name != nil {
			ct.logln(unionDecl.Name.Name)
		} else {
			ct.logln("ANONY")
		}
	case clang.CursorFunctionDecl, clang.CursorCXXMethod, clang.CursorConstructor, clang.CursorDestructor:
		// Handle functions and class methods (including out-of-class method)
		// Example: void MyClass::myMethod() { ... } out-of-class method
		funcDecl := ct.ProcessFuncDecl(cursor)
		curFile.Decls = append(curFile.Decls, funcDecl)
		ct.logln("visitTop: ProcessFuncDecl END", funcDecl.Name.Name, funcDecl.MangledName, "isStatic:", funcDecl.IsStatic, "isInline:", funcDecl.IsInline)
	case clang.CursorTypedefDecl:
		typedefDecl := ct.ProcessTypeDefDecl(cursor)
		curFile.Decls = append(curFile.Decls, typedefDecl)
		ct.logln("visitTop: ProcessTypeDefDecl END", typedefDecl.Name.Name)
	case clang.CursorNamespace:
		VisitChildren(cursor, ct.visitTop)
	}
	return clang.ChildVisit_Continue
}

func (ct *Converter) Convert() ([]*FileEntry, error) {
	cursor := ct.unit.Cursor()
	// visit top decls (struct,class,function & macro,include)
	VisitChildren(cursor, ct.visitTop)
	return ct.Files, nil
}

type Visitor func(cursor, parent clang.Cursor) clang.ChildVisitResult

func VisitChildren(cursor clang.Cursor, fn Visitor) c.Uint {
	return clang.VisitChildren(cursor, func(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
		cfn := *(*Visitor)(clientData)
		return cfn(cursor, parent)
	}, unsafe.Pointer(&fn))
}

func (ct *Converter) ProcessType(t clang.Type) ast.Expr {
	ct.incIndent()
	defer ct.decIndent()

	typeName, typeKind := getTypeDesc(t)
	ct.logln("ProcessType: TypeName:", typeName, "TypeKind:", typeKind)

	if t.Kind >= clang.TypeFirstBuiltin && t.Kind <= clang.TypeLastBuiltin {
		return ct.ProcessBuiltinType(t)
	}

	if t.Kind == clang.TypeElaborated {
		return ct.ProcessElaboratedType(t)
	}

	if t.Kind == clang.TypeTypedef {
		return ct.ProcessTypeDefType(t)
	}

	var expr ast.Expr
	switch t.Kind {
	case clang.TypePointer:
		name, kind := getTypeDesc(t.PointeeType())
		ct.logln("ProcessType: PointerType  Pointee TypeName:", name, "TypeKind:", kind)
		expr = &ast.PointerType{X: ct.ProcessType(t.PointeeType())}
	case clang.TypeLValueReference:
		name, kind := getTypeDesc(t.NonReferenceType())
		ct.logln("ProcessType: LvalueRefType  NonReference TypeName:", name, "TypeKind:", kind)
		expr = &ast.LvalueRefType{X: ct.ProcessType(t.NonReferenceType())}
	case clang.TypeRValueReference:
		name, kind := getTypeDesc(t.NonReferenceType())
		ct.logln("ProcessType: RvalueRefType  NonReference TypeName:", name, "TypeKind:", kind)
		expr = &ast.RvalueRefType{X: ct.ProcessType(t.NonReferenceType())}
	case clang.TypeFunctionProto, clang.TypeFunctionNoProto:
		// treating TypeFunctionNoProto as a general function without parameters
		// function type will only collect return type, params will be collected in ProcessFuncDecl
		name, kind := getTypeDesc(t)
		ct.logln("ProcessType: FunctionType  TypeName:", name, "TypeKind:", kind)
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
	default:
		name, kind := getTypeDesc(t)
		ct.logln("ProcessType: Unknown Type TypeName:", name, "TypeKind:", kind)
	}
	return expr
}

// For function types, we can only obtain the parameter types, but not the parameter names.
// This is because we cannot reverse-lookup the corresponding declaration node from a function type.
// Note: For function declarations, parameter names are collected in the ProcessFuncDecl method.
func (ct *Converter) ProcessFunctionType(t clang.Type) *ast.FuncType {
	ct.incIndent()
	defer ct.decIndent()
	typeName, typeKind := getTypeDesc(t)
	ct.logln("ProcessFunctionType: TypeName:", typeName, "TypeKind:", typeKind)
	// Note: Attempting to get the type declaration for a function type will result in CursorNoDeclFound
	// cursor := t.TypeDeclaration()
	// This would return CursorNoDeclFound
	resType := t.ResultType()

	name, kind := getTypeDesc(resType)
	ct.logln("ProcessFunctionType: ResultType TypeName:", name, "TypeKind:", kind)

	ret := ct.ProcessType(resType)
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
	ct.incIndent()
	defer ct.decIndent()
	name, kind := getCursorDesc(cursor)
	ct.logln("ProcessTypeDefDecl: CursorName:", name, "CursorKind:", kind, "CursorTypeKind:", toStr(cursor.Type().Kind.String()))

	typ := ct.ProcessUnderlyingType(cursor)

	decl := &ast.TypedefDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Name:     &ast.Ident{Name: name},
		Type:     typ,
	}

	ct.SetTypeDecl(cursor, decl)

	return decl
}

func (ct *Converter) ProcessUnderlyingType(cursor clang.Cursor) ast.Expr {
	underlyingTyp := cursor.TypedefDeclUnderlyingType()

	if underlyingTyp.Kind != clang.TypeElaborated {
		ct.logln("ProcessUnderlyingType: not elaborated")
		return ct.ProcessType(underlyingTyp)
	}

	referTypeCursor := underlyingTyp.TypeDeclaration()

	// If the type decl for the reference already exists in anonyTypeMap
	// then the refer has been processed in ProcessElaboratedType
	if _, ok := ct.GetAnonyType(referTypeCursor); !ok && isCursorChildOf(referTypeCursor, cursor) {
		// Handle unexpected named structures generated from anonymous RecordTypes in Typedefs
		// In this case, libclang incorrectly reports an anonymous struct as a named struct
		sourceCode := ct.GetTokens(referTypeCursor)
		// type from a macro expansion
		if len(sourceCode) == 0 {
			ran := referTypeCursor.Extent()
			_, _, _, startOf := clangutils.GetLocation(ran.RangeStart())
			_, _, _, endOf := clangutils.GetLocation(ran.RangeEnd())
			if macro, ok := ct.macroExMap[ofRange{start: startOf, end: endOf}]; ok {
				ct.logln("ProcessUnderlyingType: is macro expansion", macro.Name)
				sourceCode = macro.Tokens[1:]
			}
		}

		if isAnonymousStructure(sourceCode) {
			ct.logln("ProcessUnderlyingType: is anonymous structure")
			ct.SetAnonyType(referTypeCursor)
			typ, isValidType := ct.GetTypeDecl(referTypeCursor)
			if isValidType {
				// There will be no anonymous classes,here will execute enum,union,struct
				// according to a normal anonymous decl
				switch declType := typ.(type) {
				case *ast.EnumTypeDecl:
					ct.logln("ProcessUnderlyingType: is actually anonymous enum,remove name")
					declType.Name = nil
				case *ast.TypeDecl:
					if declType.Type.Tag != ast.Class {
						ct.logln("ProcessUnderlyingType: is actually anonymous struct,remove name")
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
	ct.incIndent()
	defer ct.decIndent()
	name, kind := getCursorDesc(cursor)
	mangledName := toStr(cursor.Mangling())
	ct.logln("ProcessFuncDecl: CursorName:", name, "CursorKind:", kind)

	// function type will only collect return type
	// ProcessType can't get the field names,will collect in follows
	funcType, ok := ct.ProcessType(cursor.Type()).(*ast.FuncType)
	if !ok {
		ct.logln("ProcessFuncDecl: failed to process function type")
		return nil
	}
	ct.logln("ProcessFuncDecl: ProcessFieldList")
	params := ct.ProcessFieldList(cursor)
	funcType.Params = params

	// Linux has one less leading underscore than macOS, so remove one leading underscore on macOS
	if runtime.GOOS == "darwin" {
		mangledName = strings.TrimPrefix(mangledName, "_")
	}

	funcDecl := &ast.FuncDecl{
		DeclBase:    ct.CreateDeclBase(cursor),
		Name:        &ast.Ident{Name: name},
		Type:        funcType,
		MangledName: mangledName,
	}

	if cursor.IsFunctionInlined() != 0 {
		funcDecl.IsInline = true
	}

	if isMethod(cursor) {
		ct.logln("ProcessFuncDecl: is method, ProcessMethodAttributes")
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

func (ct *Converter) ProcessEnumType(cursor clang.Cursor) *ast.EnumType {
	items := make([]*ast.EnumItem, 0)

	VisitChildren(cursor, func(cursor, parent clang.Cursor) clang.ChildVisitResult {
		if cursor.Kind == clang.CursorEnumConstantDecl {
			name := cursor.String()
			defer name.Dispose()

			val := (*c.Char)(c.Malloc(unsafe.Sizeof(c.Char(0)) * 20))
			c.Sprintf(val, c.Str("%lld"), cursor.EnumConstantDeclValue())
			defer c.Free(unsafe.Pointer(val))

			enum := &ast.EnumItem{
				Name: &ast.Ident{Name: c.GoString(name.CStr())},
				Value: &ast.BasicLit{
					Kind:  ast.IntLit,
					Value: c.GoString(val),
				},
			}
			items = append(items, enum)
		}
		return clang.ChildVisit_Continue
	})

	return &ast.EnumType{
		Items: items,
	}
}

func (ct *Converter) ProcessEnumDecl(cursor clang.Cursor) *ast.EnumTypeDecl {
	cursorName, cursorKind := getCursorDesc(cursor)
	ct.logln("ProcessEnumDecl: CursorName:", cursorName, "CursorKind:", cursorKind)

	decl := &ast.EnumTypeDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Type:     ct.ProcessEnumType(cursor),
	}

	anony := cursor.IsAnonymous()
	if anony == 0 {
		decl.Name = &ast.Ident{Name: cursorName}
		ct.logln("ProcessEnumDecl: has name", cursorName)
	} else {
		ct.logln("ProcessRecordDecl: is anonymous")
	}

	ct.SetTypeDecl(cursor, decl)
	return decl
}

// current only collect macro which defined in file
func (ct *Converter) ProcessMacro(cursor clang.Cursor) *ast.Macro {
	name := toStr(cursor.String())

	macro := &ast.Macro{
		Name:   name,
		Tokens: ct.GetTokens(cursor),
	}
	return macro
}

func (ct *Converter) ProcessInclude(cursor clang.Cursor) *ast.Include {
	name := toStr(cursor.String())
	return &ast.Include{Path: name}
}

func (ct *Converter) createBaseField(cursor clang.Cursor) *ast.Field {
	ct.incIndent()
	defer ct.decIndent()

	fieldName := toStr(cursor.String())

	typ := cursor.Type()
	typeName, typeKind := getTypeDesc(typ)

	ct.logf("createBaseField: ProcessType %s TypeKind: %s", typeName, typeKind)

	field := &ast.Field{
		Type: ct.ProcessType(typ),
	}

	commentGroup, isDoc := ct.ParseCommentGroup(cursor)
	if commentGroup != nil {
		if isDoc {
			field.Doc = commentGroup
		} else {
			field.Comment = commentGroup
		}
	}
	if fieldName != "" {
		field.Names = []*ast.Ident{{Name: fieldName}}
	}
	return field
}

// For Record Type(struct,union ...) & Func 's FieldList
func (ct *Converter) ProcessFieldList(cursor clang.Cursor) *ast.FieldList {
	ct.incIndent()
	defer ct.decIndent()

	params := &ast.FieldList{}
	ct.logln("ProcessFieldList: VisitChildren")
	VisitChildren(cursor, func(subcsr, parent clang.Cursor) clang.ChildVisitResult {
		switch subcsr.Kind {
		case clang.CursorParmDecl, clang.CursorFieldDecl:
			// In C language, parameter lists do not have similar parameter grouping in Go.
			// func foo(a, b int)

			// For follows struct, it will also parse to two FieldDecl
			// struct A {
			// 	int a, b;
			// };
			if subcsr.Kind == clang.CursorFieldDecl {
				ct.logln("ProcessFieldList: CursorFieldDecl")
			} else {
				ct.logln("ProcessFieldList: CursorParmDecl")
			}

			field := ct.createBaseField(subcsr)
			if subcsr.Kind == clang.CursorFieldDecl {
				field.Access = ast.AccessSpecifier(subcsr.CXXAccessSpecifier())
			}

			params.List = append(params.List, field)

		case clang.CursorVarDecl:
			if subcsr.StorageClass() == clang.SCStatic {
				// static member variable
				field := ct.createBaseField(subcsr)
				field.Access = ast.AccessSpecifier(subcsr.CXXAccessSpecifier())
				field.IsStatic = true
				params.List = append(params.List, field)
			}
		}
		return clang.ChildVisit_Continue
	})

	if (cursor.Kind == clang.CursorFunctionDecl || isMethod(cursor)) && cursor.IsVariadic() != 0 {
		params.List = append(params.List, &ast.Field{
			Type: &ast.Variadic{},
		})
	}
	return params
}

// Note:Public Method is considered
func (ct *Converter) ProcessMethods(cursor clang.Cursor) []*ast.FuncDecl {
	methods := make([]*ast.FuncDecl, 0)
	VisitChildren(cursor, func(subcsr, parent clang.Cursor) clang.ChildVisitResult {
		if isMethod(subcsr) && subcsr.CXXAccessSpecifier() == clang.CXXPublic {
			method := ct.ProcessFuncDecl(subcsr)
			if method != nil {
				methods = append(methods, method)
			}
		}
		return clang.ChildVisit_Continue
	})
	return methods
}

func (ct *Converter) ProcessRecordDecl(cursor clang.Cursor) *ast.TypeDecl {
	ct.incIndent()
	defer ct.decIndent()
	cursorName, cursorKind := getCursorDesc(cursor)
	ct.logln("ProcessRecordDecl: CursorName:", cursorName, "CursorKind:", cursorKind)

	decl := &ast.TypeDecl{
		DeclBase: ct.CreateDeclBase(cursor),
		Type:     ct.ProcessRecordType(cursor),
	}

	anony := cursor.IsAnonymousRecordDecl()
	if anony == 0 {
		decl.Name = &ast.Ident{Name: cursorName}
		ct.logln("ProcessRecordDecl: has name", cursorName)
	} else {
		ct.logln("ProcessRecordDecl: is anonymous")
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
	cursorName, cursorKind := getCursorDesc(cursor)
	ct.logln("ProcessClassDecl: CursorName:", cursorName, "CursorKind:", cursorKind)

	// Pushing class scope before processing its type and popping after
	base := ct.CreateDeclBase(cursor)
	typ := ct.ProcessRecordType(cursor)

	decl := &ast.TypeDecl{
		DeclBase: base,
		Name:     &ast.Ident{Name: cursorName},
		Type:     typ,
	}

	ct.SetTypeDecl(cursor, decl)
	return decl
}

func (ct *Converter) ProcessRecordType(cursor clang.Cursor) *ast.RecordType {
	ct.incIndent()
	defer ct.decIndent()

	cursorName, cursorKind := getCursorDesc(cursor)
	ct.logln("ProcessRecordType: CursorName:", cursorName, "CursorKind:", cursorKind)

	tag := toTag(cursor.Kind)
	ct.logln("ProcessRecordType: toTag", tag)

	ct.logln("ProcessRecordType: ProcessFieldList")
	fields := ct.ProcessFieldList(cursor)

	ct.logln("ProcessRecordType: ProcessMethods")
	methods := ct.ProcessMethods(cursor)

	return &ast.RecordType{
		Tag:     tag,
		Fields:  fields,
		Methods: methods,
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
	ct.incIndent()
	defer ct.decIndent()
	typeName, typeKind := getTypeDesc(t)
	ct.logln("ProcessElaboratedType: TypeName:", typeName, "TypeKind:", typeKind)

	decl := t.TypeDeclaration()
	isAnony, ok := ct.GetAnonyType(decl)

	if decl.IsAnonymous() != 0 || isAnony && ok {
		// anonymous type refer (except anonymous RecordType&EnumType in TypedefDecl)
		if decl.Kind == clang.CursorEnumDecl {
			return ct.ProcessEnumType(decl)
		}
		return ct.ProcessRecordType(decl)
	}

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

func (ct *Converter) ProcessTypeDefType(t clang.Type) ast.Expr {
	cursor := t.TypeDeclaration()
	ct.logln("ProcessTypeDefType: Typedef TypeDeclaration", toStr(cursor.String()), toStr(t.String()))
	if name := toStr(cursor.String()); name != "" {
		return &ast.Ident{Name: name}
	}
	ct.logln("ProcessTypeDefType: typedef type have no name")
	return nil
}

func (ct *Converter) ProcessBuiltinType(t clang.Type) *ast.BuiltinType {
	ct.incIndent()
	defer ct.decIndent()
	typeName, typeKind := getTypeDesc(t)
	ct.logln("ProcessBuiltinType: TypeName:", typeName, "TypeKind:", typeKind)

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
		kindStr := toStr(t.Kind.String())
		fmt.Fprintln(os.Stderr, "todo: unknown builtin type:", kindStr)
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
	parts := clangutils.BuildScopingParts(cursor)
	return buildScopingFromParts(parts)
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

func toStr(clangStr clang.String) (str string) {
	defer clangStr.Dispose()
	if clangStr.CStr() != nil {
		str = c.GoString(clangStr.CStr())
	}
	return
}

func getTypeDesc(t clang.Type) (name string, kind string) {
	name = toStr(t.String())
	kind = toStr(t.Kind.String())
	return
}

func getCursorDesc(cursor clang.Cursor) (name string, kind string) {
	name = toStr(cursor.String())
	kind = toStr(cursor.Kind.String())
	return
}
