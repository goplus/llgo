package visitor

import (
	"fmt"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

type DocVisitor interface {
	Visit(_Type string, node ast.Node, docPath string)
	VisitFuncDecl(*ast.FuncDecl)
	VisitTypeDecl(*ast.TypeDecl)
	VisitDone(docPath string)
}

type BaseDocVisitor struct {
	DocVisitor
}

func NewBaseDocVisitor(Visitor DocVisitor) *BaseDocVisitor {
	return &BaseDocVisitor{DocVisitor: Visitor}
}

func (p *BaseDocVisitor) visitNode(decl ast.Node) {
	switch v := decl.(type) {
	case *ast.FuncDecl:
		p.visitFuncDecl(v)
	case *ast.TypeDecl:
		p.visitTypeDecl(v)
	default:
		panic(fmt.Errorf("todo visit %v", v))
	}
}

func (p *BaseDocVisitor) Visit(_Type string, node ast.Node, docPath string) {
	switch v := node.(type) {
	case *ast.File:
		for _, decl := range v.Decls {
			p.visitNode(decl)
		}
	default:
		p.visitNode(v)
	}
	p.visitDone(docPath)
}

func (p *BaseDocVisitor) visitFuncDecl(funcDecl *ast.FuncDecl) {
	p.VisitFuncDecl(funcDecl)
}

func (p *BaseDocVisitor) visitTypeDecl(typeDecl *ast.TypeDecl) {
	p.VisitTypeDecl(typeDecl)
}

func (p *BaseDocVisitor) visitDone(docPath string) {
	p.DocVisitor.VisitDone(docPath)
}
