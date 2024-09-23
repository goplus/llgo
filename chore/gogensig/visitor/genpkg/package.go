package genpkg

import (
	"bytes"
	"fmt"
	"go/token"
	"go/types"
	"os"
	"path/filepath"
	"strings"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg/gentypes/comment"
	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg/gentypes/convert"
	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg/gentypes/typmap"
	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
	"github.com/goplus/llgo/chore/llcppg/ast"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

type Package struct {
	name string
	p    *gogen.Package
	cvt  *convert.TypeConv
	dels []any
}

func NewPackage(pkgPath, name string, conf *gogen.Config) *Package {
	p := &Package{
		p: gogen.NewPackage(pkgPath, name, conf),
	}
	clib := p.p.Import("github.com/goplus/llgo/c")
	typeMap := typmap.NewBuiltinTypeMap(clib)
	p.cvt = convert.NewConv(p.p.Types, typeMap)
	p.name = name
	p.dels = make([]any, 0)
	return p
}

func (p *Package) SetSymbolTable(symbolTable *symb.SymbolTable) {
	p.cvt.SetSymbolTable(symbolTable)
}

func (p *Package) SetCppgConf(conf *cppgtypes.Config) {
	p.cvt.SetCppgConf(conf)
	if conf.Libs != "" {
		p.linkLib(conf.Libs)
	}

}

// todo(zzy):refine logic
func (p *Package) linkLib(lib string) error {
	linkString := fmt.Sprintf("link: %s;", lib)
	p.p.CB().NewConstStart(types.Typ[types.String], "LLGoPackage").Val(linkString).EndInit(1)
	return nil
}

func (p *Package) NewFuncDecl(funcDecl *ast.FuncDecl) error {
	// todo(zzy) accept the name of llcppg.symb.json
	goFuncName, err := p.cvt.LookupSymbol(symb.MangleNameType(funcDecl.MangledName))
	if err != nil {
		// not gen the function not in the symbolmap
		return err
	}
	sig, err := p.cvt.ToSignature(funcDecl.Type)
	if err != nil {
		return err
	}
	decl := p.p.NewFuncDecl(token.NoPos, string(goFuncName), sig)
	doc := convert.CommentGroup(funcDecl.Doc)
	doc.AddCommentGroup(comment.NewFuncDocComments(funcDecl.Name.Name, string(goFuncName)))
	decl.SetComments(p.p, doc.CommentGroup)
	return nil
}

// todo(zzy): for class,union,struct
func (p *Package) NewTypeDecl(typeDecl *ast.TypeDecl) error {
	name, err := p.cvt.RemovePrefixedName(typeDecl.Name.Name)
	if err != nil {
		return err
	}
	typeBlock := p.p.NewTypeDefs()
	typeBlock.SetComments(convert.CommentGroup(typeDecl.Doc).CommentGroup)
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
	if typ == nil {
		return fmt.Errorf("underlying type must not be nil")
	}
	name, err := p.cvt.RemovePrefixedName(typedefDecl.Name.Name)
	if err != nil {
		return err
	}
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
		genDecl.SetComments(comment.NewTypecDocComments())
	}
	p.addToDelete(genDecl)
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
			name := convert.ToTitle(enumTypeDecl.Name.Name) + "_" + item.Name.Name
			val, err := convert.Expr(item.Value).ToInt()
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
			v.Delete()
		}
	}
}

func (p *Package) Write(docPath string) error {
	fnMakeDir := func(dir string) (string, error) {
		if len(dir) <= 0 {
			dir = "."
		}
		curDir, err := filepath.Abs(dir)
		if err != nil {
			return "", err
		}
		path := filepath.Join(curDir, p.name)
		err = os.MkdirAll(path, 0755)
		if err != nil {
			return "", err
		}
		return path, nil
	}
	_, fileName := filepath.Split(docPath)
	dir, err := fnMakeDir("")
	if err != nil {
		return err
	}
	ext := filepath.Ext(fileName)
	if len(ext) > 0 {
		fileName = strings.TrimSuffix(fileName, ext)
	}
	if len(fileName) <= 0 {
		fileName = "temp"
	}
	fileName = fileName + ".go"
	p.p.WriteFile(filepath.Join(dir, fileName))
	p.delete()
	return nil
}

func (p *Package) WriteToBuffer(buf *bytes.Buffer) error {
	err := p.p.WriteTo(buf)
	p.delete()
	return err
}
