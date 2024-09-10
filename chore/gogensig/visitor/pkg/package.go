package pkg

import (
	"go/token"
	"go/types"

	"github.com/goplus/llgo/chore/llcppg/ast"
	"github.com/goplus/llgo/internal/lib/os"

	"github.com/goplus/gogen"
)

type Package struct {
	p *gogen.Package
}

func NewPackage(pkgPath, name string, conf *gogen.Config) *Package {
	pkg := &Package{}
	pkg.p = gogen.NewPackage(pkgPath, name, conf)
	return pkg
}

func (p *Package) NewFuncDecl(funcDecl *ast.FuncDecl) error {
	sig, err := toSigniture(funcDecl.Type)
	if err != nil {
		return err
	}
	p.p.NewFuncDecl(token.NoPos, funcDecl.Name.Name, sig)
	return nil
}

func (p *Package) Write() error {
	p.p.CB().Pkg().WriteTo(os.Stdout, "temp")
	return nil
}

func toSigniture(funcType *ast.FuncType) (*types.Signature, error) {
	//todo
	return nil, nil
}
