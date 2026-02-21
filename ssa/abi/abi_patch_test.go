//go:build !llgo
// +build !llgo

package abi

import (
	"go/token"
	"go/types"
	"runtime"
	"strings"
	"testing"
	"unsafe"
)

func testLocalNamed() *types.Named {
	obj := types.NewTypeName(token.NoPos, nil, "Local", nil)
	return types.NewNamed(obj, types.Typ[types.Int], nil)
}

func testGenericNamed(pkg *types.Package, name string) *types.Named {
	tpObj := types.NewTypeName(token.NoPos, pkg, "T", nil)
	anyIface := types.Universe.Lookup("any").Type().Underlying().(*types.Interface)
	tp := types.NewTypeParam(tpObj, anyIface)
	obj := types.NewTypeName(token.NoPos, pkg, name, nil)
	n := types.NewNamed(obj, types.NewStruct(nil, nil), nil)
	n.SetTypeParams([]*types.TypeParam{tp})
	return n
}

func TestTypeArgs_FormatsCommonKinds(t *testing.T) {
	local := testLocalNamed()
	got := TypeArgs([]types.Type{
		types.Universe.Lookup("byte").Type(),
		types.NewPointer(types.Typ[types.Int]),
		types.NewSlice(types.Typ[types.String]),
		types.NewArray(types.Typ[types.Int], 2),
		types.NewMap(types.Typ[types.String], types.Typ[types.Int]),
		types.NewChan(types.SendOnly, types.Typ[types.Int]),
		local,
	})
	const want = "[byte,*int,[]string,[2]int,map[string]int,chan<- int,Local]"
	if got != want {
		t.Fatalf("TypeArgs = %q, want %q", got, want)
	}
}

func TestNamedName_UsesTypeArgString(t *testing.T) {
	pkg := types.NewPackage("example.com/p", "p")
	generic := testGenericNamed(pkg, "Box")
	inst, err := types.Instantiate(types.NewContext(), generic, []types.Type{testLocalNamed()}, false)
	if err != nil {
		t.Fatalf("Instantiate failed: %v", err)
	}
	got := NamedName(inst.(*types.Named))
	if !strings.Contains(got, "Box[") || !strings.Contains(got, "Local") {
		t.Fatalf("NamedName(%s) = %q, want Box[...] with Local", inst.String(), got)
	}
}

func TestTypeName_NamedWithoutPackage(t *testing.T) {
	b := New("main", unsafe.Sizeof(uintptr(0)), types.SizesFor("gc", runtime.GOARCH))
	obj := types.NewTypeName(token.NoPos, nil, "Anon", nil)
	named := types.NewNamed(obj, types.Typ[types.Int], nil)
	got, pub := b.TypeName(named)
	if got != "_llgo_Anon" {
		t.Fatalf("TypeName = %q, want %q", got, "_llgo_Anon")
	}
	if !pub {
		t.Fatalf("TypeName pub = false, want true for pkg=nil")
	}
}

func TestBasicName_RuneAlias(t *testing.T) {
	if got := BasicName(types.Typ[types.Rune]); got != "_llgo_int32" {
		t.Fatalf("BasicName(rune) = %q, want %q", got, "_llgo_int32")
	}
}
