package convert

import (
	"testing"

	"github.com/goplus/llgo/chore/llcppg/ast"
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
