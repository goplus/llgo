package ast

import (
	"go/ast"
	"go/token"
)

// decl
type (
	// #include
	// #define()
	// typedef(namespace)
	// struct(namespace)
	// class(namespace)
	GenDecl struct {
	}

	// keep use FuncType
	CFuncDecl struct {
		// receiver is not need
		Doc      *ast.CommentGroup
		Name     *ast.Ident
		Type     *ast.FuncType
		Body     *ast.BlockStmt
		IsInline bool
	}
	CMethodDecl struct {
		CFuncDecl
		IsConstructor bool
		IsDestructor  bool
	}
)

func (d *CFuncDecl) Pos() token.Pos { return d.Type.Pos() }
func (d *CFuncDecl) End() token.Pos {
	if d.Body != nil {
		return d.Body.End()
	}
	return d.Type.End()
}
func (*CFuncDecl) declNode() {}

// expression
type (
	// for aaa::bbb
	NamespaceExpr struct {
		X   ast.Expr
		Sel *ast.Ident
	}
	Variadic struct {
		Ellipsis token.Pos // position of "..."
	}
)

func (x *NamespaceExpr) Pos() token.Pos { return x.X.Pos() }
func (x *Variadic) Pos() token.Pos      { return x.Ellipsis }

func (x *NamespaceExpr) End() token.Pos { return x.Sel.End() }
func (x *Variadic) End() token.Pos      { return x.Ellipsis + 3 }

func (*NamespaceExpr) exprNode() {}
func (*Variadic) exprNode()      {}
