package convert

import (
	"fmt"

	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type AstConvert struct {
	*visitor.BaseDocVisitor
	pkg       *Package
	visitDone func(pkg *Package, docPath string)
}

func NewAstConvert(pkgName string, symbFile string, genConfFile string) *AstConvert {
	p := new(AstConvert)
	p.BaseDocVisitor = visitor.NewBaseDocVisitor(p)
	pkg := NewPackage(".", pkgName, nil)
	p.pkg = pkg
	p.setupSymbleTableFile(symbFile)
	p.setupGenConfig(genConfFile)
	return p
}

func (p *AstConvert) SetVisitDone(fn func(pkg *Package, docPath string)) {
	p.visitDone = fn
}

func (p *AstConvert) setupSymbleTableFile(filePath string) error {
	symbTable, err := config.NewSymbolTable(filePath)
	if err != nil {
		return err
	}
	p.pkg.SetSymbolTable(symbTable)
	return nil
}

func (p *AstConvert) setupGenConfig(filePath string) error {
	conf, err := config.GetCppgFromPath(filePath)
	if err != nil {
		return err
	}
	p.pkg.SetCppgConf(conf)
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
	p.pkg.NewTypeDecl(typeDecl)
}

func (p *AstConvert) VisitEnum(enumName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	fmt.Printf("visit enum %s\n", enumName.Name)
	//TODO convert enum
}

func (p *AstConvert) VisitUnion(unionName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	//fmt.Printf("visit union %s\n", unionName.Name)
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
		p.pkg.Write(docPath, "")
	}
}
