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
	typeMap map[clang.Type]*ast.Expr
	declMap map[clang.Cursor]*ast.Decl
	curLoc  ast.Location
	index   *clang.Index
	unit    *clang.TranslationUnit
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
		typeMap: make(map[clang.Type]*ast.Expr),
		declMap: make(map[clang.Cursor]*ast.Decl),
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
	ct := (*Converter)(clientData)
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

func (ct *Converter) ProcessFunc(cursor clang.Cursor) {
	println("todo: Process func")
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
