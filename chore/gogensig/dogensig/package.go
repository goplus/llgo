package dogensig

import (
	"go/token"
	"go/types"

	"github.com/goplus/gogen"
)

type Package struct {
	*gogen.Package
}

func NewPackage(pkgPath, name string, conf *Config) *Package {
	pkg := &Package{}
	pkg.Package = gogen.NewPackage(pkgPath, name, conf.Config)
	return pkg
}

// NewFuncDecl creates a new function without function body (declaration only).
func (p *Package) NewFuncDecl(pos token.Pos, name string, sig *types.Signature) (*gogen.Func, error) {
	return p.NewFuncWith(pos, name, sig, nil)
}
