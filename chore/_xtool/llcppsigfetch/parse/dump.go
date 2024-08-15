package parse

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func (ct *Converter) GetFilesJSON() *cjson.JSON {
	root := cjson.Object()
	for _, file := range ct.files {
		root.SetItem(c.AllocaCStr(file.Path), ct.FileJSON(file))
	}
	return root
}

func (ct *Converter) FileJSON(file *ast.File) *cjson.JSON {
	root := cjson.Object()
	decls := cjson.Array()
	includes := cjson.Array()
	macros := cjson.Array()

	for _, decl := range file.Decls {
		decls.AddItem(ct.DeclJSON(decl))
	}

	root.SetItem(c.Str("path"), cjson.String(c.AllocaCStr(file.Path)))
	root.SetItem(c.Str("decls"), decls)
	root.SetItem(c.Str("includes"), includes)
	root.SetItem(c.Str("macros"), macros)
	return root
}

func (ct *Converter) DeclJSON(decl ast.Decl) *cjson.JSON {
	if decl == nil {
		return cjson.Null()
	}
	root := cjson.Object()
	switch d := decl.(type) {
	case *ast.FuncDecl:
		ct.DeclBaseJSON(d.DeclBase, root)
		root.SetItem(c.Str("Name"), ct.TypeJSON(d.Name))
		root.SetItem(c.Str("Type"), ct.TypeJSON(d.Type))
	case *ast.TypeDecl:
		ct.DeclBaseJSON(d.DeclBase, root)
		root.SetItem(c.Str("Tag"), cjson.Number(float64(d.Tag)))
		root.SetItem(c.Str("Fields"), ct.TypeJSON(d.Fields))
		methods := cjson.Array()
		for _, m := range d.Methods {
			methods.AddItem(ct.DeclJSON(m))
		}
		root.SetItem(c.Str("Methods"), methods)
	}
	return root
}
func (ct *Converter) DeclBaseJSON(decl ast.DeclBase, root *cjson.JSON) {
	if decl.Loc == nil {
		root.SetItem(c.Str("Loc"), cjson.Null())
	} else {
		loc := cjson.Object()
		loc.SetItem(c.Str("File"), cjson.String(c.AllocaCStr(decl.Loc.File)))
		root.SetItem(c.Str("Loc"), loc)
	}
	root.SetItem(c.Str("Doc"), ct.TypeJSON(decl.Doc))
	root.SetItem(c.Str("Parent"), ct.TypeJSON(decl.Parent))
}

func (ct *Converter) TypeJSON(t ast.Expr) *cjson.JSON {
	if t == nil {
		return cjson.Null()
	}

	root := cjson.Object()

	switch d := t.(type) {
	case *ast.FuncType:
		root.SetItem(c.Str("Params"), ct.TypeJSON(d.Params))
		root.SetItem(c.Str("Ret"), ct.TypeJSON(d.Ret))
	case *ast.FieldList:
		if d == nil {
			return cjson.Null()
		}
		list := cjson.Array()
		for _, f := range d.List {
			list.AddItem(ct.TypeJSON(f))
		}
		root.SetItem(c.Str("List"), list)
	case *ast.Field:
		root.SetItem(c.Str("Type"), ct.TypeJSON(d.Type))
		root.SetItem(c.Str("Doc"), ct.TypeJSON(d.Doc))
		root.SetItem(c.Str("Comment"), ct.TypeJSON(d.Comment))
		names := cjson.Array()
		for _, n := range d.Names {
			names.AddItem(ct.TypeJSON(n))
		}
		root.SetItem(c.Str("Names"), names)
	case *ast.Ident:
		root.SetItem(c.Str("Name"), cjson.String(c.AllocaCStr(d.Name)))
	case *ast.BasicLit:
		root.SetItem(c.Str("Kind"), cjson.Number(float64(d.Kind)))
		root.SetItem(c.Str("Value"), cjson.String(c.AllocaCStr(d.Value)))
	case *ast.PointerType:
		root.SetItem(c.Str("X"), ct.TypeJSON(d.X))
	case *ast.ArrayType:
		root.SetItem(c.Str("Elt"), ct.TypeJSON(d.Elt))
		root.SetItem(c.Str("Len"), ct.TypeJSON(d.Len))
	case *ast.BuiltinType:
		root.SetItem(c.Str("Kind"), cjson.Number(float64(d.Kind)))
		root.SetItem(c.Str("Flags"), cjson.Number(float64(d.Flags)))
	case *ast.Comment:
		root.SetItem(c.Str("Text"), cjson.String(c.AllocaCStr(d.Text)))
	case *ast.CommentGroup:
		if d == nil {
			return cjson.Null()
		}
		list := cjson.Array()
		for _, c := range d.List {
			list.AddItem(ct.TypeJSON(c))
		}
		root.SetItem(c.Str("List"), list)
	case *ast.ScopingExpr:
		root.SetItem(c.Str("X"), ct.TypeJSON(d.X))
		root.SetItem(c.Str("Parent"), ct.TypeJSON(d.Parent))
	default:
		return cjson.Null()
	}
	return root
}
