package convert

import (
	"go/token"
	"go/types"
	"testing"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/llcppg/ast"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func TestIdentRef(t *testing.T) {
	ct := &TypeConv{}
	_, err := ct.handleIdentRefer(&ast.BuiltinType{Kind: ast.Bool})
	if err == nil {
		t.Fatal("Expect Error")
	}
}

func TestLookupSymbolError(t *testing.T) {
	p := &TypeConv{}
	_, err := p.LookupSymbol("")
	if err == nil {
		t.Fatal("Expect Error")
	}
}

func TestSubstObj(t *testing.T) {
	pkg := NewPackage(&PackageConfig{
		PkgPath:     ".",
		Name:        "testpkg",
		GenConf:     &gogen.Config{},
		OutputDir:   "",
		SymbolTable: &config.SymbolTable{},
		CppgConf:    &cppgtypes.Config{},
	})
	if pkg == nil {
		t.Fatal("NewPackage failed")
	}

	corg := types.NewNamed(types.NewTypeName(token.NoPos, nil, "origin", nil), types.Typ[types.Int], nil)
	corg2 := types.NewNamed(types.NewTypeName(token.NoPos, nil, "origin2", nil), types.Typ[types.Int], nil)
	substObj(pkg.p.Types, pkg.p.Types.Scope(), "GoPub", corg.Obj())
	name := gogen.Lookup(pkg.p.Types.Scope(), "GoPub")
	if name == nil {
		t.Fatal("Lookup failed")
	}
	if name.Type().String() != corg.String() {
		t.Fatal("Type not equal")
	}

	// reassign
	substObj(pkg.p.Types, pkg.p.Types.Scope(), "GoPub", corg2.Obj())
	name2 := gogen.Lookup(pkg.p.Types.Scope(), "GoPub")
	if name2 == nil {
		t.Fatal("Lookup failed")
	}
	if name2.Type().String() != corg2.String() {
		t.Fatal("Type not equal")
	}
}
