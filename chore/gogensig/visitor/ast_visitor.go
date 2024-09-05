package visitor

import (
	"fmt"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

type DocVisitor interface {
	Visit(_Type string, node ast.Node)
	VisitFuncDecl(*ast.FuncDecl)
	VisitTypeDecl(*ast.TypeDecl)
}

type BaseDocVisitor struct {
	DocVisitor
}

func NewBaseDocVisitor(Visitor DocVisitor) *BaseDocVisitor {
	return &BaseDocVisitor{DocVisitor: Visitor}
}

func (p *BaseDocVisitor) visitDecl(decl ast.Decl) {
	switch v := decl.(type) {
	case *ast.FuncDecl:
		p.visitFuncDecl(v)
	case *ast.TypeDecl:
		p.visitTypeDecl(v)
	default:
		panic(fmt.Errorf("todo visit %v", v))
	}
}

func (p *BaseDocVisitor) Visit(_Type string, node ast.Node) {
	switch v := node.(type) {
	case *ast.File:
		for _, decl := range v.Decls {
			p.visitDecl(decl)
		}
	case *ast.FuncDecl:
		p.visitFuncDecl(v)
	default:
		panic(fmt.Errorf("todo visit %s", v))
	}
}

func (p *BaseDocVisitor) visitFuncDecl(funcDecl *ast.FuncDecl) {
	p.VisitFuncDecl(funcDecl)
}

func (p *BaseDocVisitor) visitTypeDecl(typeDecl *ast.TypeDecl) {
	p.VisitTypeDecl(typeDecl)
}
