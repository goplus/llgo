package visitor

import (
	"fmt"

	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg"
	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type AstConvert struct {
	*BaseDocVisitor
	pkg       *genpkg.Package
	symbTable *symb.SymbolTable
}

func NewAstConvert(name string) *AstConvert {
	p := new(AstConvert)
	p.BaseDocVisitor = NewBaseDocVisitor(p)
	pkg := genpkg.NewPackage(".", name, nil)
	p.pkg = pkg
	return p
}

func (p *AstConvert) SetupSymbleTableFile(fileName string) error {
	symbTable, err := symb.NewSymbolTable(fileName)
	if err != nil {
		return err
	}
	p.symbTable = symbTable
	return nil
}

func (p *AstConvert) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	p.pkg.NewFuncDecl(funcDecl)
}

func (p *AstConvert) VisitTypeDecl(typeDecl *ast.TypeDecl) {
	fmt.Println(typeDecl.Name.Name)
}

func (p *AstConvert) VisitDone(docPath string) {
	p.pkg.Write(docPath)
}
