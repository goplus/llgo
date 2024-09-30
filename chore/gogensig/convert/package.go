package convert

import (
	"bytes"
	"fmt"
	"go/token"
	"go/types"
	"os"
	"path/filepath"
	"strings"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/llcppg/ast"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

type Package struct {
	name string
	p    *gogen.Package
	cvt  *TypeConv
	dels []any
}

func NewPackage(pkgPath, name string, conf *gogen.Config) *Package {
	p := &Package{
		p: gogen.NewPackage(pkgPath, name, conf),
	}
	clib := p.p.Import("github.com/goplus/llgo/c")
	p.p.Unsafe().MarkForceUsed(p.p)
	typeMap := NewBuiltinTypeMapWithPkgRefS(clib, p.p.Unsafe())
	p.cvt = NewConv(p.p.Types, typeMap)
	p.name = name
	p.dels = make([]any, 0)
	return p
}

func (p *Package) SetSymbolTable(symbolTable *config.SymbolTable) {
	p.cvt.SetSymbolTable(symbolTable)
}

func (p *Package) SetCppgConf(conf *cppgtypes.Config) {
	if conf == nil {
		return
	}
	p.cvt.SetCppgConf(conf)
	if conf.Libs != "" {
		p.linkLib(conf.Libs)
	}
}

func (p *Package) GetGenPackage() *gogen.Package {
	return p.p
}

// todo(zzy):refine logic
func (p *Package) linkLib(lib string) error {
	linkString := fmt.Sprintf("link: %s;", lib)
	p.p.CB().NewConstStart(types.Typ[types.String], "LLGoPackage").Val(linkString).EndInit(1)
	return nil
}

func (p *Package) NewFuncDecl(funcDecl *ast.FuncDecl) error {
	// todo(zzy) accept the name of llcppg.symb.json
	goFuncName, err := p.cvt.LookupSymbol(config.MangleNameType(funcDecl.MangledName))
	if err != nil {
		// not gen the function not in the symbolmap
		return err
	}
	sig, err := p.cvt.ToSignature(funcDecl.Type)
	if err != nil {
		return err
	}
	decl := p.p.NewFuncDecl(token.NoPos, string(goFuncName), sig)
	doc := CommentGroup(funcDecl.Doc)
	doc.AddCommentGroup(NewFuncDocComments(funcDecl.Name.Name, string(goFuncName)))
	decl.SetComments(p.p, doc.CommentGroup)
	p.addToDelete(decl)
	return nil
}

// todo(zzy): for class,union,struct
func (p *Package) NewTypeDecl(typeDecl *ast.TypeDecl) error {
	name := p.cvt.RemovePrefixedName(typeDecl.Name.Name)
	typeBlock := p.p.NewTypeDefs()
	typeBlock.SetComments(CommentGroup(typeDecl.Doc).CommentGroup)
	decl := typeBlock.NewType(name)
	structType, err := p.cvt.RecordTypeToStruct(typeDecl.Type)
	if err != nil {
		return err
	}
	decl.InitType(p.p, structType)
	p.addToDelete(decl)
	return nil
}

func (p *Package) addToDelete(node ast.Node) {
	p.dels = append(p.dels, node)
}

func (p *Package) NewTypedefDecl(typedefDecl *ast.TypedefDecl) error {
	genDecl := p.p.NewTypeDefs()
	typ, err := p.ToType(typedefDecl.Type)
	if err != nil {
		return err
	}
	// todo(zzy): add to test case
	if typ == nil {
		return fmt.Errorf("underlying type must not be nil")
	}
	name := p.cvt.RemovePrefixedName(typedefDecl.Name.Name)
	if named, ok := typ.(*types.Named); ok {
		// Compare the type name with typedefDecl.Name.Name
		if named.Obj().Name() == name {
			// If they're the same, don't create a new typedef
			return nil
		}
	}
	typeSpecdecl := genDecl.NewType(name)
	typeSpecdecl.InitType(p.p, typ)
	if _, ok := typ.(*types.Signature); ok {
		genDecl.SetComments(NewTypecDocComments())
	}
	p.addToDelete(typeSpecdecl)
	return nil
}

// Convert ast.Expr to types.Type
func (p *Package) ToType(expr ast.Expr) (types.Type, error) {
	return p.cvt.ToType(expr)
}

func (p *Package) NewEnumTypeDecl(enumTypeDecl *ast.EnumTypeDecl) error {
	if len(enumTypeDecl.Type.Items) > 0 {
		constDefs := p.p.NewConstDefs(p.p.CB().Scope())
		for _, item := range enumTypeDecl.Type.Items {
			name := ToTitle(enumTypeDecl.Name.Name) + "_" + item.Name.Name
			val, err := Expr(item.Value).ToInt()
			if err != nil {
				continue
			}
			constDefs.New(func(cb *gogen.CodeBuilder) int {
				cb.Val(val)
				return 1
			}, 0, token.NoPos, nil, name)
		}
	}
	return nil
}

func (p *Package) delete() {
	for _, del := range p.dels {
		switch v := del.(type) {
		case *gogen.TypeDecl:
			// todo(zzy):cause a unexcepted space line
			// may because the delete function dont remove the GenDecl in ast
			v.Delete()
		}
	}
}

// Write generates a Go file based on the package content.
// The output file will be generated in a subdirectory named after the package within the outputDir.
// If outputDir is not provided, the current directory will be used.
// The header file name is the go file name.
func (p *Package) Write(headerFile, outputDir string) error {
	dir, err := p.prepareOutputDir(outputDir)
	if err != nil {
		return fmt.Errorf("failed to prepare output directory: %w", err)
	}

	fileName := p.processFileName(headerFile)

	if err := p.p.WriteFile(filepath.Join(dir, fileName)); err != nil {
		return fmt.Errorf("failed to write file: %w", err)
	}

	p.delete()
	return nil
}

func (p *Package) WriteToBuffer(buf *bytes.Buffer) error {
	err := p.p.WriteTo(buf)
	p.delete()
	return err
}

func (p *Package) prepareOutputDir(outputDir string) (string, error) {
	if outputDir == "" {
		outputDir = "."
	}

	absDir, err := filepath.Abs(outputDir)
	if err != nil {
		return "", err
	}

	dir := filepath.Join(absDir, p.name)
	if err := os.MkdirAll(dir, 0755); err != nil {
		return "", err
	}

	return dir, nil
}

func (p *Package) processFileName(headerFile string) string {
	_, fileName := filepath.Split(headerFile)
	ext := filepath.Ext(fileName)
	if len(ext) > 0 {
		fileName = strings.TrimSuffix(fileName, ext)
	}
	if len(fileName) <= 0 {
		fileName = "temp"
	}
	return fileName + ".go"
}
