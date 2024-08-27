package parse

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func MarshalASTFiles(files map[string]*ast.File) *cjson.JSON {
	root := cjson.Object()
	for path, file := range files {
		root.SetItem(c.AllocaCStr(path), MarshalASTFile(file))
	}
	return root
}

func MarshalASTFile(file *ast.File) *cjson.JSON {
	root := cjson.Object()
	decls := cjson.Array()

	for _, decl := range file.Decls {
		decls.AddItem(MarshalASTDecl(decl))
	}

	root.SetItem(c.Str("decls"), decls)

	// json:includes,omitempty
	if file.Includes != nil {
		includes := cjson.Array()
		for _, i := range file.Includes {
			include := cjson.Object()
			include.SetItem(c.Str("Path"), stringField(i.Path))
			includes.AddItem(include)
		}
		root.SetItem(c.Str("includes"), includes)
	}

	// json:macros,omitempty
	if file.Macros != nil {
		macros := cjson.Array()
		for _, m := range file.Macros {
			marco := cjson.Object()
			marco.SetItem(c.Str("Name"), stringField(m.Name))
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
	root.SetItem(c.Str("Token"), numberField(uint(tok.Token)))
	root.SetItem(c.Str("Lit"), stringField(tok.Lit))
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
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
	case *ast.TypedefDecl:
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
	case *ast.FuncDecl:
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
		root.SetItem(c.Str("IsInline"), boolField(d.IsInline))
		root.SetItem(c.Str("IsStatic"), boolField(d.IsStatic))
		root.SetItem(c.Str("IsConst"), boolField(d.IsConst))
		root.SetItem(c.Str("IsExplicit"), boolField(d.IsExplicit))
		root.SetItem(c.Str("IsConstructor"), boolField(d.IsConstructor))
		root.SetItem(c.Str("IsDestructor"), boolField(d.IsDestructor))
		root.SetItem(c.Str("IsVirtual"), boolField(d.IsVirtual))
		root.SetItem(c.Str("IsOverride"), boolField(d.IsOverride))
	case *ast.TypeDecl:
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
	}
	return root
}

func MarshalASTDeclBase(decl ast.DeclBase, root *cjson.JSON) {
	loc := cjson.Object()
	loc.SetItem(c.Str("File"), stringField(decl.Loc.File))
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
	case *ast.EnumType:
		items := cjson.Array()
		for _, e := range d.Items {
			items.AddItem(MarshalASTExpr(e))
		}
		root.SetItem(c.Str("Items"), items)
	case *ast.EnumItem:
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Value"), MarshalASTExpr(d.Value))
	case *ast.RecordType:
		root.SetItem(c.Str("Tag"), numberField(uint(d.Tag)))
		root.SetItem(c.Str("Fields"), MarshalASTExpr(d.Fields))
		methods := cjson.Array()
		for _, m := range d.Methods {
			methods.AddItem(MarshalASTDecl(m))
		}
		root.SetItem(c.Str("Methods"), methods)
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
	case *ast.Variadic:
	case *ast.Ident:
		if d == nil {
			return cjson.Null()
		}
		root.SetItem(c.Str("Name"), stringField(d.Name))
	case *ast.TagExpr:
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Tag"), numberField(uint(d.Tag)))
	case *ast.BasicLit:
		root.SetItem(c.Str("Kind"), numberField(uint(d.Kind)))
		root.SetItem(c.Str("Value"), stringField(d.Value))
	case *ast.LvalueRefType:
		root.SetItem(c.Str("X"), MarshalASTExpr(d.X))
	case *ast.RvalueRefType:
		root.SetItem(c.Str("X"), MarshalASTExpr(d.X))
	case *ast.PointerType:
		root.SetItem(c.Str("X"), MarshalASTExpr(d.X))
	case *ast.ArrayType:
		root.SetItem(c.Str("Elt"), MarshalASTExpr(d.Elt))
		root.SetItem(c.Str("Len"), MarshalASTExpr(d.Len))
	case *ast.BuiltinType:
		root.SetItem(c.Str("Kind"), numberField(uint(d.Kind)))
		root.SetItem(c.Str("Flags"), numberField(uint(d.Flags)))
	case *ast.Comment:
		if d == nil {
			return cjson.Null()
		}
		root.SetItem(c.Str("Text"), stringField(d.Text))
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

func stringField(s string) *cjson.JSON {
	return cjson.String(c.AllocaCStr(s))
}

func numberField(n uint) *cjson.JSON {
	return cjson.Number(float64(n))
}

func boolField(b bool) *cjson.JSON {
	if b {
		return cjson.True()
	}
	return cjson.False()
}
