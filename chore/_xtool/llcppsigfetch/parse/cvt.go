package parse

import (
	"errors"
	"fmt"
	"os"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/clang"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type Converter struct {
	files   map[string]*ast.File
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
		files: make(map[string]*ast.File),
		index: index,
		unit:  unit,
	}, nil
}

func (ct *Converter) Dispose() {
	ct.index.Dispose()
	ct.unit.Dispose()
}

// visit top decls (struct,class,function,enum & marco,include)
func visit(cursor, parent clang.Cursor, clientData unsafe.Pointer) clang.ChildVisitResult {
	ct := (*Converter)(clientData)
	ct.UpdateCurFile(cursor)

	switch cursor.Kind {
	case clang.CursorInclusionDirective:
		// todo(zzy)
		return clang.ChildVisit_Continue
	case clang.CursorMacroDefinition:
		// todo(zzy)
		return clang.ChildVisit_Continue
	case clang.CursorEnumDecl:
		// todo(zzy)
		return clang.ChildVisit_Continue
	case clang.CursorClassDecl:
		ct.ProcessClass(cursor)
		return clang.ChildVisit_Continue
	case clang.CursorStructDecl:
		// todo(zzy)
		return clang.ChildVisit_Continue
	case clang.CursorFunctionDecl:
		ct.ProcessFunc(cursor)
		return clang.ChildVisit_Continue
	default:
		// non-top-level decl, continue recursion
		return clang.ChildVisit_Recurse
	}
}

func (ct *Converter) Convert() (map[string]*ast.File, error) {
	cursor := ct.unit.Cursor()
	// visit top decls (struct,class,function & marco,include)
	clang.VisitChildren(cursor, visit, c.Pointer(ct))
	return ct.files, nil
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

func (ct *Converter) ProcessFunc(cursor clang.Cursor) {
	name := cursor.String()
	defer name.Dispose()

	// function type will only collect return type
	// ProcessType can't get the field names,will collect in follows
	funcType, ok := ct.ProcessType(cursor.Type()).(*ast.FuncType)
	if !ok {
		fmt.Println("failed to process function type")
		return
	}
	params := ct.ProcessFuncParams(cursor)
	funcType.Params = params
	fn := &ast.FuncDecl{
		Name: &ast.Ident{Name: c.GoString(name.CStr())},
		Type: funcType,
		// todo(zzy):DeclBase use the converter's current namespace expr
	}
	ct.curFile.Decls = append(ct.curFile.Decls, fn)
	// ct.declMap[cursor] = fn
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
		fmt.Fprintln(os.Stderr, "todo: unknown builtin type:", c.GoString(t.Kind.String().CStr()))
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
func IsExplicitSigned(t clang.Type) bool {
	return t.Kind == clang.TypeCharS || t.Kind == clang.TypeSChar
}

func IsExplicitUnsigned(t clang.Type) bool {
	return t.Kind == clang.TypeCharU || t.Kind == clang.TypeUChar ||
		t.Kind == clang.TypeUShort || t.Kind == clang.TypeUInt ||
		t.Kind == clang.TypeULong || t.Kind == clang.TypeULongLong ||
		t.Kind == clang.TypeUInt128
}
