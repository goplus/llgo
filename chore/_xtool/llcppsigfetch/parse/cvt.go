package parse

import (
	"errors"
	"fmt"
	"os"
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
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
	// todo(zzy):cache type
	// if cache, ok := ct.typeMap[t]; ok {
	// 	return cache
	// }
	var expr ast.Expr
	if t.Kind >= clang.TypeFirstBuiltin && t.Kind <= clang.TypeLastBuiltin {
		return ct.ProcessBuiltinType(t)
	}
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
