package visitor

import (
	"fmt"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

type AstConvert struct {
	*BaseDocVisitor
}

func NewAstConvert() *AstConvert {
	p := new(AstConvert)
	p.BaseDocVisitor = NewBaseDocVisitor(p)
	return p
}

func (p *AstConvert) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	fmt.Println(funcDecl.Name.Name)
}

func (p *AstConvert) VisitTypeDecl(typeDecl *ast.TypeDecl) {
	fmt.Println(typeDecl.Name.Name)
}
