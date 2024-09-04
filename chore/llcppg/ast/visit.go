package ast

type AstVisitor interface {
	VisitFuncDecl(*FuncDecl)
}
