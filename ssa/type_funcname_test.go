//go:build !llgo
// +build !llgo

package ssa

import (
	"go/token"
	"go/types"
	"testing"
)

func TestFuncName_AliasPointerReceiverUsesUnderlyingNamedType(t *testing.T) {
	pkg := types.NewPackage("github.com/goplus/llgo/ssa", "ssa")
	rawObj := types.NewTypeName(token.NoPos, pkg, "aPackage", nil)
	rawNamed := types.NewNamed(rawObj, types.NewStruct(nil, nil), nil)
	aliasObj := types.NewTypeName(token.NoPos, pkg, "Package", nil)
	alias := types.NewAlias(aliasObj, types.NewPointer(rawNamed))
	recv := types.NewVar(token.NoPos, pkg, "", alias)

	got := FuncName(pkg, "NewFunc", recv, false)
	want := "github.com/goplus/llgo/ssa.(*aPackage).NewFunc"
	if got != want {
		t.Fatalf("FuncName alias receiver = %q, want %q", got, want)
	}
}
