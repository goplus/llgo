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
	visitDone func(pkg *genpkg.Package, docPath string)
}

func NewAstConvert(pkgName string, symbFile string) *AstConvert {
	p := new(AstConvert)
	p.BaseDocVisitor = NewBaseDocVisitor(p)
	pkg := genpkg.NewPackage(".", pkgName, nil)
	p.pkg = pkg
	p.setupSymbleTableFile(symbFile)
	return p
}

func (p *AstConvert) SetVisitDone(fn func(pkg *genpkg.Package, docPath string)) {
	p.visitDone = fn
}

func (p *AstConvert) setupSymbleTableFile(fileName string) error {
	symbTable, err := symb.NewSymbolTable(fileName)
	if err != nil {
		return err
	}
	p.pkg.SetSymbolTable(symbTable)
	return nil
}

func (p *AstConvert) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	p.pkg.NewFuncDecl(funcDecl)
}

func (p *AstConvert) VisitClass(className *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	fmt.Printf("visit class %s\n", className.Name)
	p.pkg.NewTypeDecl(typeDecl)
	//TODO new struct and convert fields
}

func (p *AstConvert) VisitMethod(className *ast.Ident, method *ast.FuncDecl, typeDecl *ast.TypeDecl) {
	fmt.Printf("visit method %s of %s\n", method.Name.Name, className.Name)
	//TODO convert method decl
}

func (p *AstConvert) VisitStruct(structName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	fmt.Printf("visit struct %s\n", structName.Name)
	p.pkg.NewTypeDecl(typeDecl)
}

func (p *AstConvert) VisitEnum(enumName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	fmt.Printf("visit enum %s\n", enumName.Name)
	//TODO convert enum
}

func (p *AstConvert) VisitUnion(unionName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	fmt.Printf("visit union %s\n", unionName.Name)
	//TODO convert union
}

func (p *AstConvert) VisitEnumTypeDecl(enumTypeDecl *ast.EnumTypeDecl) {
	p.pkg.NewEnumTypeDecl(enumTypeDecl)
}

func (p *AstConvert) VisitTypedefDecl(typedefDecl *ast.TypedefDecl) {
	p.pkg.NewTypedefDecl(typedefDecl)
}

func (p *AstConvert) VisitDone(docPath string) {
	if p.visitDone != nil {
		p.visitDone(p.pkg, docPath)
	} else {
		p.pkg.Write(docPath)
	}
}
