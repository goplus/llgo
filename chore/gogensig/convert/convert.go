package convert

import (
	"errors"
	"log"

	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/visitor"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

type AstConvert struct {
	*visitor.BaseDocVisitor
	pkg       *Package
	visitDone func(pkg *Package, docPath string)
}

type AstConvertConfig struct {
	PkgName   string
	SymbFile  string // llcppg.symb.json
	CfgFile   string // llcppg.cfg
	OutputDir string
}

func NewAstConvert(config *AstConvertConfig) (*AstConvert, error) {
	if config == nil {
		return nil, errors.New("config is nil")
	}
	p := new(AstConvert)
	p.BaseDocVisitor = visitor.NewBaseDocVisitor(p)
	pkg := NewPackage(&PackageConfig{
		PkgPath:   ".",
		Name:      config.PkgName,
		OutputDir: config.OutputDir,
	})
	p.pkg = pkg
	p.setupSymbolTableFile(config.SymbFile)
	p.setupGenConfig(config.CfgFile)
	return p, nil
}

func (p *AstConvert) SetVisitDone(fn func(pkg *Package, docPath string)) {
	p.visitDone = fn
}

func (p *AstConvert) WriteLinkFile() {
	p.pkg.WriteLinkFile()
}

func (p *AstConvert) GetPackage() *Package {
	return p.pkg
}

func (p *AstConvert) setupSymbolTableFile(filePath string) error {
	symbTable, err := config.NewSymbolTable(filePath)
	if err != nil {
		return err
	}
	p.pkg.SetSymbolTable(symbTable)
	return nil
}

func (p *AstConvert) setupGenConfig(filePath string) error {
	conf, err := config.GetCppgCfgFromPath(filePath)
	if err != nil {
		return err
	}
	p.pkg.SetCppgConf(conf)
	return nil
}

func (p *AstConvert) VisitFuncDecl(funcDecl *ast.FuncDecl) {
	err := p.pkg.NewFuncDecl(funcDecl)
	if err != nil {
		log.Printf("NewFuncDecl %s Fail: %s\n", funcDecl.Name.Name, err.Error())
	}
}

/*
//TODO
func (p *AstConvert) VisitClass(className *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	fmt.Printf("visit class %s\n", className.Name)
	p.pkg.NewTypeDecl(typeDecl)
}

func (p *AstConvert) VisitMethod(className *ast.Ident, method *ast.FuncDecl, typeDecl *ast.TypeDecl) {
	fmt.Printf("visit method %s of %s\n", method.Name.Name, className.Name)
}*/

func (p *AstConvert) VisitStruct(structName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	err := p.pkg.NewTypeDecl(typeDecl)
	if err != nil {
		if name := typeDecl.Name; name != nil {
			log.Printf("NewTypeDecl %s Fail: %s\n", name.Name, err.Error())
		} else {
			log.Printf("NewTypeDecl anonymous Fail: %s\n", err.Error())
		}
	}
}

/*
//TODO
func (p *AstConvert) VisitUnion(unionName *ast.Ident, fields *ast.FieldList, typeDecl *ast.TypeDecl) {
	//fmt.Printf("visit union %s\n", unionName.Name)
	//TODO convert union
}*/

func (p *AstConvert) VisitEnumTypeDecl(enumTypeDecl *ast.EnumTypeDecl) {
	err := p.pkg.NewEnumTypeDecl(enumTypeDecl)
	if err != nil {
		if name := enumTypeDecl.Name; name != nil {
			log.Printf("NewEnumTypeDecl %s Fail: %s\n", name.Name, err.Error())
		} else {
			log.Printf("NewEnumTypeDecl anonymous Fail: %s\n", err.Error())
		}
	}
}

func (p *AstConvert) VisitTypedefDecl(typedefDecl *ast.TypedefDecl) {
	err := p.pkg.NewTypedefDecl(typedefDecl)
	if err != nil {
		log.Printf("NewTypedefDecl %s Fail: %s\n", typedefDecl.Name.Name, err.Error())
	}
}

func (p *AstConvert) VisitStart(docPath string) {
	p.pkg.SetCurFile(docPath, true)
}

func (p *AstConvert) VisitDone(docPath string) {
	if p.visitDone != nil {
		p.visitDone(p.pkg, docPath)
	} else {
		p.pkg.Write(docPath)
	}
}
