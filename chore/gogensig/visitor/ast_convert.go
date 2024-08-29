package visitor

import (
	"fmt"

	"github.com/goplus/llgo/chore/gogensig/visitor/pkg"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type AstConvert struct {
	*BaseDocVisitor
	pkg *pkg.Package
}

func NewAstConvert() *AstConvert {
	p := new(AstConvert)
	p.BaseDocVisitor = NewBaseDocVisitor(p)
	pkg := pkg.NewPackage("", "temp", nil)
	p.pkg = pkg
	return p
}

func (p *AstConvert) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	p.pkg.NewFuncDecl(funcDecl)
}

func (p *AstConvert) VisitTypeDecl(typeDecl *ast.TypeDecl) {
	fmt.Println(typeDecl.Name.Name)
}

func (p *AstConvert) VisitDone(docVisitor DocVisitor) {
	p.pkg.Write()
}
