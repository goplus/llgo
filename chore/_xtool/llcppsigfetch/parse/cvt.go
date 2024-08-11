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
	files map[string]*ast.File
	// typeMap map[clang.Type]ast.Expr // todo(zzy):cache type
	// declMap map[clang.Cursor]ast.Decl
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
	unit := index.ParseTranslationUnit(
		c.AllocaCStr(filepath),
		unsafe.SliceData(args), 3,
		nil, 0,
		clang.DetailedPreprocessingRecord,
	)
	if unit == nil {
		return nil, errors.New("failed to parse translation unit")
	}

	return &Converter{
		// typeMap: make(map[clang.Type]ast.Expr),
		// declMap: make(map[clang.Cursor]ast.Decl),
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
		fmt.Println("todo: Process include")
		return clang.ChildVisit_Continue
	case clang.CursorMacroDefinition:
		fmt.Println("todo: Process macro")
		return clang.ChildVisit_Continue
	case clang.CursorEnumDecl:
		fmt.Println("todo: Process enum")
		return clang.ChildVisit_Continue
	case clang.CursorClassDecl:
		ct.ProcessClass(cursor)
		return clang.ChildVisit_Continue
	case clang.CursorStructDecl:
		fmt.Println("todo: Process struct")
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
	// todo(zzy):cache type
	// if cache, ok := ct.typeMap[t]; ok {
	// 	return cache
	// }
	var expr ast.Expr
	switch t.Kind {
	case clang.TypePointer:
		expr = &ast.PointerType{X: ct.ProcessType(t.PointeeType())}
	case clang.TypeFunctionProto:
		ret := ct.ProcessType(t.ResultType())
		params := &ast.FieldList{}
		for i := 0; i < int(t.NumArgTypes()); i++ {
			argType := ct.ProcessType(t.ArgType(c.Uint(i)))
			params.List = append(params.List, &ast.Field{Type: argType})
			// todo(zzy):field name
		}
		expr = &ast.FuncType{Params: params, Ret: ret}
	case clang.TypeTypedef:
		expr = ct.ProcessType(t.CanonicalType())
	case clang.TypeConstantArray, clang.TypeVariableArray, clang.TypeIncompleteArray, clang.TypeDependentSizedArray:
		expr = &ast.ArrayType{
			Elt: ct.ProcessType(t.ArrayElementType()),
		}
		// todo(zzy):array length
	}
	// ct.typeMap[t] = expr
	return expr
}

func (ct *Converter) ProcessFunc(cursor clang.Cursor) {
	name := cursor.String()
	defer name.Dispose()
	funcType, ok := ct.ProcessType(cursor.Type()).(*ast.FuncType)
	if !ok {
		fmt.Println("failed to process function type")
		return
	}
	fn := &ast.FuncDecl{
		Name: &ast.Ident{Name: c.GoString(name.CStr())},
		Type: funcType,
		// todo(zzy):DeclBase use the converter's current namespace expr
	}
	ct.curFile.Decls = append(ct.curFile.Decls, fn)
	// ct.declMap[cursor] = fn
}

func (ct *Converter) ProcessClass(cursor clang.Cursor) {
	println("todo: Process class")
}
