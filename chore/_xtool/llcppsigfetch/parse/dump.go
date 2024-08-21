package parse

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func MarshalASTFiles(files map[string]*ast.File) *cjson.JSON {
	root := cjson.Object()
	for _, file := range files {
		root.SetItem(c.AllocaCStr(file.Path), MarshalASTFile(file))
	}
	return root
}

func MarshalASTFile(file *ast.File) *cjson.JSON {
	root := cjson.Object()
	decls := cjson.Array()

	for _, decl := range file.Decls {
		decls.AddItem(MarshalASTDecl(decl))
	}

	root.SetItem(c.Str("path"), cjson.String(c.AllocaCStr(file.Path)))
	root.SetItem(c.Str("decls"), decls)

	// json:includes,omitempty
	if file.Includes != nil {
		includes := cjson.Array()
		for _, i := range file.Includes {
			include := cjson.Object()
			include.SetItem(c.Str("Path"), cjson.String(c.AllocaCStr(i.Path)))
			includes.AddItem(include)
		}
		root.SetItem(c.Str("includes"), includes)
	}

	// json:macros,omitempty
	if file.Macros != nil {
		macros := cjson.Array()
		for _, m := range file.Macros {
			marco := cjson.Object()
			marco.SetItem(c.Str("Name"), cjson.String(c.AllocaCStr(m.Name)))
			tokens := cjson.Array()
			for _, tok := range m.Tokens {
				tokens.AddItem(Token(tok))
			}
			marco.SetItem(c.Str("Tokens"), tokens)
			macros.AddItem(marco)
		}
		root.SetItem(c.Str("macros"), macros)
	}
	return root
}
func Token(tok *ast.Token) *cjson.JSON {
	root := cjson.Object()
	root.SetItem(c.Str("Token"), cjson.Number(float64(tok.Token)))
	root.SetItem(c.Str("Lit"), cjson.String(c.AllocaCStr(tok.Lit)))
	return root
}

func MarshalASTDecl(decl ast.Decl) *cjson.JSON {
	if decl == nil {
		return cjson.Null()
	}
	root := cjson.Object()
	switch d := decl.(type) {
	case *ast.EnumTypeDecl:
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		items := cjson.Array()
		for _, i := range d.Items {
			items.AddItem(MarshalASTExpr(i))
		}
		root.SetItem(c.Str("Items"), items)
	case *ast.FuncDecl:
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
	case *ast.TypeDecl:
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Tag"), cjson.Number(float64(d.Tag)))
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Fields"), MarshalASTExpr(d.Fields))
		methods := cjson.Array()
		for _, m := range d.Methods {
			methods.AddItem(MarshalASTDecl(m))
		}
		root.SetItem(c.Str("Methods"), methods)
	}
	return root
}

func MarshalASTDeclBase(decl ast.DeclBase, root *cjson.JSON) {
	loc := cjson.Object()
	loc.SetItem(c.Str("File"), cjson.String(c.AllocaCStr(decl.Loc.File)))
	root.SetItem(c.Str("Loc"), loc)

	root.SetItem(c.Str("Doc"), MarshalASTExpr(decl.Doc))
	root.SetItem(c.Str("Parent"), MarshalASTExpr(decl.Parent))
}

func MarshalASTExpr(t ast.Expr) *cjson.JSON {
	if t == nil {
		return cjson.Null()
	}

	root := cjson.Object()

	switch d := t.(type) {
	case *ast.FuncType:
		root.SetItem(c.Str("Params"), MarshalASTExpr(d.Params))
		root.SetItem(c.Str("Ret"), MarshalASTExpr(d.Ret))
	case *ast.FieldList:
		if d == nil {
			return cjson.Null()
		}
		list := cjson.Array()
		for _, f := range d.List {
			list.AddItem(MarshalASTExpr(f))
		}
		root.SetItem(c.Str("List"), list)
	case *ast.Field:
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
		root.SetItem(c.Str("Doc"), MarshalASTExpr(d.Doc))
		root.SetItem(c.Str("Comment"), MarshalASTExpr(d.Comment))
		names := cjson.Array()
		for _, n := range d.Names {
			names.AddItem(MarshalASTExpr(n))
		}
		root.SetItem(c.Str("Names"), names)
	case *ast.Ident:
		if d == nil {
			return cjson.Null()
		}
		root.SetItem(c.Str("Name"), cjson.String(c.AllocaCStr(d.Name)))
	case *ast.EnumItem:
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Value"), MarshalASTExpr(d.Value))
	case *ast.BasicLit:
		root.SetItem(c.Str("Kind"), cjson.Number(float64(d.Kind)))
		root.SetItem(c.Str("Value"), cjson.String(c.AllocaCStr(d.Value)))
	case *ast.PointerType:
		root.SetItem(c.Str("X"), MarshalASTExpr(d.X))
	case *ast.ArrayType:
		root.SetItem(c.Str("Elt"), MarshalASTExpr(d.Elt))
		root.SetItem(c.Str("Len"), MarshalASTExpr(d.Len))
	case *ast.BuiltinType:
		root.SetItem(c.Str("Kind"), cjson.Number(float64(d.Kind)))
		root.SetItem(c.Str("Flags"), cjson.Number(float64(d.Flags)))
	case *ast.Comment:
		if d == nil {
			return cjson.Null()
		}
		root.SetItem(c.Str("Text"), cjson.String(c.AllocaCStr(d.Text)))
	case *ast.CommentGroup:
		if d == nil {
			return cjson.Null()
		}
		list := cjson.Array()
		for _, c := range d.List {
			list.AddItem(MarshalASTExpr(c))
		}
		root.SetItem(c.Str("List"), list)
	case *ast.ScopingExpr:
		root.SetItem(c.Str("X"), MarshalASTExpr(d.X))
		root.SetItem(c.Str("Parent"), MarshalASTExpr(d.Parent))
	default:
		return cjson.Null()
	}
	return root
}
