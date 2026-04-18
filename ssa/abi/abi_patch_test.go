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
	pkg := types.NewPackage("example.com/p", "p")
	aliasObj := types.NewTypeName(token.NoPos, pkg, "AliasInt", nil)
	pkg.Scope().Insert(aliasObj)
	aliasInt := types.NewAlias(aliasObj, types.Typ[types.Int])
	got := TypeArgs([]types.Type{
		types.Universe.Lookup("byte").Type(),
		types.NewPointer(types.Typ[types.Int]),
		types.NewSlice(types.Typ[types.String]),
		types.NewArray(types.Typ[types.Int], 2),
		types.NewMap(types.Typ[types.String], types.Typ[types.Int]),
		types.NewChan(types.SendRecv, types.Typ[types.Int]),
		types.NewChan(types.SendOnly, types.Typ[types.Int]),
		types.NewChan(types.RecvOnly, types.Typ[types.Int]),
		types.NewChan(types.SendRecv, types.NewChan(types.RecvOnly, types.Typ[types.Int])),
		local,
		aliasInt,
	})
	const want = "[byte,*int,[]string,[2]int,map[string]int,chan int,chan<- int,<-chan int,chan (<-chan int),Local,int]"
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

	aliasObj := types.NewTypeName(token.NoPos, pkg, "AliasInt", nil)
	pkg.Scope().Insert(aliasObj)
	aliasInt := types.NewAlias(aliasObj, types.Typ[types.Int])
	instAlias, err := types.Instantiate(types.NewContext(), generic, []types.Type{aliasInt}, false)
	if err != nil {
		t.Fatalf("Instantiate with alias failed: %v", err)
	}
	gotAlias := NamedName(instAlias.(*types.Named))
	if !strings.Contains(gotAlias, "int") {
		t.Fatalf("NamedName(%s) = %q, want canonicalized alias arg", instAlias.String(), gotAlias)
	}
}

func TestTypeName_NamedWithoutPackage(t *testing.T) {
	b := New(unsafe.Sizeof(uintptr(0)), types.SizesFor("gc", runtime.GOARCH))
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

func TestTypeName_DetachedLocalScopeUsesPosition(t *testing.T) {
	b := New(unsafe.Sizeof(uintptr(0)), types.SizesFor("gc", runtime.GOARCH))
	pkg := types.NewPackage("example.com/p", "p")
	local := types.NewScope(nil, token.Pos(100), token.Pos(200), "detached")
	obj := types.NewTypeName(token.Pos(123), pkg, "Local", nil)
	local.Insert(obj)
	named := types.NewNamed(obj, types.Typ[types.Int], nil)

	got, _ := b.TypeName(named)
	if !strings.Contains(got, "Local.p123") {
		t.Fatalf("TypeName = %q, want position suffix for detached local scope", got)
	}
}

func TestBasicName_RuneAlias(t *testing.T) {
	if got := BasicName(types.Typ[types.Rune]); got != "_llgo_int32" {
		t.Fatalf("BasicName(rune) = %q, want %q", got, "_llgo_int32")
	}
}
