package parse

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/cjson"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func MarshalOutputASTFiles(files []*FileEntry) *cjson.JSON {
	root := cjson.Array()
	for _, entry := range files {
		f := cjson.Object()
		path := cjson.String(c.AllocaCStr(entry.Path))
		f.SetItem(c.Str("path"), path)
		f.SetItem(c.Str("doc"), MarshalASTFile(entry.Doc))
		f.SetItem(c.Str("IsSys"), boolField(entry.IsSys))
		root.AddItem(f)
	}
	return root
}

func MarshalASTFiles(files []*FileEntry) *cjson.JSON {
	root := cjson.Object()
	for _, entry := range files {
		root.SetItem(c.AllocaCStr(entry.Path), MarshalASTFile(entry.Doc))
	}
	return root
}

func MarshalDeclList(list []ast.Decl) *cjson.JSON {
	root := cjson.Array()
	for _, item := range list {
		root.AddItem(MarshalASTDecl(item))
	}
	return root
}

func MarshalFieldList(list []*ast.Field) *cjson.JSON {
	if list == nil {
		return cjson.Null()
	}
	root := cjson.Array()
	for _, item := range list {
		root.AddItem(MarshalASTExpr(item))
	}
	return root
}

func MarshalIncludeList(list []*ast.Include) *cjson.JSON {
	root := cjson.Array()
	for _, item := range list {
		include := cjson.Object()
		include.SetItem(c.Str("_Type"), stringField("Include"))
		include.SetItem(c.Str("Path"), stringField(item.Path))
		root.AddItem(include)
	}
	return root
}

func MarshalMacroList(list []*ast.Macro) *cjson.JSON {
	root := cjson.Array()
	for _, item := range list {
		macro := cjson.Object()
		macro.SetItem(c.Str("_Type"), stringField("Macro"))
		macro.SetItem(c.Str("Name"), stringField(item.Name))
		macro.SetItem(c.Str("Tokens"), MarshalTokenList(item.Tokens))
		root.AddItem(macro)
	}
	return root
}

func MarshalTokenList(list []*ast.Token) *cjson.JSON {
	if list == nil {
		return cjson.Null()
	}
	root := cjson.Array()
	for _, item := range list {
		root.AddItem(MarshalToken(item))
	}
	return root
}

func MarshalIdentList(list []*ast.Ident) *cjson.JSON {
	if list == nil {
		return cjson.Null()
	}
	root := cjson.Array()
	for _, item := range list {
		root.AddItem(MarshalASTExpr(item))
	}
	return root
}

func MarshalASTFile(file *ast.File) *cjson.JSON {
	root := cjson.Object()
	root.SetItem(c.Str("_Type"), stringField("File"))
	root.SetItem(c.Str("decls"), MarshalDeclList(file.Decls))
	root.SetItem(c.Str("includes"), MarshalIncludeList(file.Includes))
	root.SetItem(c.Str("macros"), MarshalMacroList(file.Macros))
	return root
}

func MarshalToken(tok *ast.Token) *cjson.JSON {
	root := cjson.Object()
	root.SetItem(c.Str("_Type"), stringField("Token"))
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
		root.SetItem(c.Str("_Type"), stringField("EnumTypeDecl"))
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
	case *ast.TypedefDecl:
		root.SetItem(c.Str("_Type"), stringField("TypedefDecl"))
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
	case *ast.FuncDecl:
		root.SetItem(c.Str("_Type"), stringField("FuncDecl"))
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("MangledName"), stringField(d.MangledName))
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
		root.SetItem(c.Str("_Type"), stringField("TypeDecl"))
		MarshalASTDeclBase(d.DeclBase, root)
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
	}
	return root
}

func MarshalASTDeclBase(decl ast.DeclBase, root *cjson.JSON) {
	loc := cjson.Object()
	loc.SetItem(c.Str("_Type"), stringField("Location"))
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
		root.SetItem(c.Str("_Type"), stringField("EnumType"))
		items := cjson.Array()
		for _, e := range d.Items {
			items.AddItem(MarshalASTExpr(e))
		}
		root.SetItem(c.Str("Items"), items)
	case *ast.EnumItem:
		root.SetItem(c.Str("_Type"), stringField("EnumItem"))
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Value"), MarshalASTExpr(d.Value))
	case *ast.RecordType:
		root.SetItem(c.Str("_Type"), stringField("RecordType"))
		root.SetItem(c.Str("Tag"), numberField(uint(d.Tag)))
		root.SetItem(c.Str("Fields"), MarshalASTExpr(d.Fields))
		methods := cjson.Array()
		for _, m := range d.Methods {
			methods.AddItem(MarshalASTDecl(m))
		}
		root.SetItem(c.Str("Methods"), methods)
	case *ast.FuncType:
		root.SetItem(c.Str("_Type"), stringField("FuncType"))
		root.SetItem(c.Str("Params"), MarshalASTExpr(d.Params))
		root.SetItem(c.Str("Ret"), MarshalASTExpr(d.Ret))
	case *ast.FieldList:
		root.SetItem(c.Str("_Type"), stringField("FieldList"))
		root.SetItem(c.Str("List"), MarshalFieldList(d.List))
	case *ast.Field:
		root.SetItem(c.Str("_Type"), stringField("Field"))
		root.SetItem(c.Str("Type"), MarshalASTExpr(d.Type))
		root.SetItem(c.Str("Doc"), MarshalASTExpr(d.Doc))
		root.SetItem(c.Str("Comment"), MarshalASTExpr(d.Comment))
		root.SetItem(c.Str("IsStatic"), boolField(d.IsStatic))
		root.SetItem(c.Str("Access"), numberField(uint(d.Access)))
		root.SetItem(c.Str("Names"), MarshalIdentList(d.Names))
	case *ast.Variadic:
		root.SetItem(c.Str("_Type"), stringField("Variadic"))
	case *ast.Ident:
		root.SetItem(c.Str("_Type"), stringField("Ident"))
		if d == nil {
			return cjson.Null()
		}
		root.SetItem(c.Str("Name"), stringField(d.Name))
	case *ast.TagExpr:
		root.SetItem(c.Str("_Type"), stringField("TagExpr"))
		root.SetItem(c.Str("Name"), MarshalASTExpr(d.Name))
		root.SetItem(c.Str("Tag"), numberField(uint(d.Tag)))
	case *ast.BasicLit:
		root.SetItem(c.Str("_Type"), stringField("BasicLit"))
		root.SetItem(c.Str("Kind"), numberField(uint(d.Kind)))
		root.SetItem(c.Str("Value"), stringField(d.Value))
	case *ast.LvalueRefType:
		root.SetItem(c.Str("_Type"), stringField("LvalueRefType"))
		root.SetItem(c.Str("X"), MarshalASTExpr(d.X))
	case *ast.RvalueRefType:
		root.SetItem(c.Str("_Type"), stringField("RvalueRefType"))
		root.SetItem(c.Str("X"), MarshalASTExpr(d.X))
	case *ast.PointerType:
		root.SetItem(c.Str("_Type"), stringField("PointerType"))
		root.SetItem(c.Str("X"), MarshalASTExpr(d.X))
	case *ast.ArrayType:
		root.SetItem(c.Str("_Type"), stringField("ArrayType"))
		root.SetItem(c.Str("Elt"), MarshalASTExpr(d.Elt))
		root.SetItem(c.Str("Len"), MarshalASTExpr(d.Len))
	case *ast.BuiltinType:
		root.SetItem(c.Str("_Type"), stringField("BuiltinType"))
		root.SetItem(c.Str("Kind"), numberField(uint(d.Kind)))
		root.SetItem(c.Str("Flags"), numberField(uint(d.Flags)))
	case *ast.Comment:
		root.SetItem(c.Str("_Type"), stringField("Comment"))
		if d == nil {
			return cjson.Null()
		}
		root.SetItem(c.Str("Text"), stringField(d.Text))
	case *ast.CommentGroup:
		root.SetItem(c.Str("_Type"), stringField("CommentGroup"))
		if d == nil {
			return cjson.Null()
		}
		list := cjson.Array()
		for _, c := range d.List {
			list.AddItem(MarshalASTExpr(c))
		}
		root.SetItem(c.Str("List"), list)
	case *ast.ScopingExpr:
		root.SetItem(c.Str("_Type"), stringField("ScopingExpr"))
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
