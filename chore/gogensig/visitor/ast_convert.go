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

func NewAstConvert(name string, symbFile string) *AstConvert {
	p := new(AstConvert)
	p.BaseDocVisitor = NewBaseDocVisitor(p)
	pkg := genpkg.NewPackage(".", name, nil)
	p.pkg = pkg
	p.setupSymbleTableFile(symbFile)
	return p
}

func (p *AstConvert) setupSymbleTableFile(fileName string) error {
	symbTable, err := symb.NewSymbolTable(fileName)
	if err != nil {
		return err
	}
	p.symbTable = symbTable
	return nil
}

func (p *AstConvert) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	p.pkg.NewFuncDeclWithSymbolTable(funcDecl, p.symbTable)
}

func (p *AstConvert) VisitTypeDecl(typeDecl *ast.TypeDecl) {
	fmt.Println(typeDecl.Name.Name)
}

func (p *AstConvert) VisitDone(docPath string) {
	p.pkg.Write(docPath)
}
