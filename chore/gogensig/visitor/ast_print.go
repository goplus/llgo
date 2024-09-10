package visitor

import (
	"fmt"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

type AstPrint struct {
	*BaseDocVisitor
}

func NewAstPrint() *AstPrint {
	p := new(AstPrint)
	p.BaseDocVisitor = NewBaseDocVisitor(p)
	return p
}

func (p *AstPrint) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	fmt.Println(funcDecl.Name.Name)
}

func (p *AstPrint) VisitDone(docVisitor DocVisitor) {

}

func (p *AstPrint) VisitTypeDecl(typeDecl *ast.TypeDecl) {
	fmt.Println(typeDecl.Name.Name)
}
