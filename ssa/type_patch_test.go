//go:build !llgo
// +build !llgo

package ssa

import (
	"go/token"
	"go/types"
	"runtime"
	"strings"
	"testing"
)

func TestFieldOutOfRangePanicsWithTypeString(t *testing.T) {
	st := types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, nil, "A", types.Typ[types.Int], false),
	}, nil)
	typ := &aType{raw: rawType{Type: st}}

	var p Program
	defer func() {
		r := recover()
		if r == nil {
			t.Fatalf("expected panic")
		}
		msg := r.(string)
		if !strings.Contains(msg, "Field: struct index out of range") {
			t.Fatalf("panic = %q, want out-of-range message", msg)
		}
	}()
	_ = p.Field(typ, 1)
}

func TestTypeStringWithPkgAndIsPkgScope(t *testing.T) {
	obj := types.NewTypeName(token.NoPos, nil, "Local", nil)
	local := types.NewNamed(obj, types.Typ[types.Int], nil)
	if got := typeStringWithPkg(local); got != "Local" {
		t.Fatalf("typeStringWithPkg(local) = %q, want %q", got, "Local")
	}

	pkg1 := types.NewPackage("example.com/p", "p")
	if !isPkgScope(pkg1.Scope(), pkg1.Scope()) {
		t.Fatalf("isPkgScope(scope, scope) should be true")
	}
	if isPkgScope(nil, pkg1.Scope()) {
		t.Fatalf("isPkgScope(nil, scope) should be false")
	}
}

func TestNamedTypeEquivalent(t *testing.T) {
	pkg1 := types.NewPackage("example.com/p", "p")
	pkg2 := types.NewPackage("example.com/p", "p")
	obj1 := types.NewTypeName(token.NoPos, pkg1, "T", nil)
	obj2 := types.NewTypeName(token.NoPos, pkg2, "T", nil)
	a := types.NewNamed(obj1, types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, nil, "A", types.Typ[types.Int], false),
	}, nil), nil)
	b := types.NewNamed(obj2, types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, nil, "A", types.Typ[types.Int], false),
	}, nil), nil)
	if !namedTypeEquivalent(a, b) {
		t.Fatalf("namedTypeEquivalent should be true for equivalent named structs")
	}

	c := types.NewNamed(types.NewTypeName(token.NoPos, pkg2, "T", nil), types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, nil, "A", types.Typ[types.String], false),
	}, nil), nil)
	if namedTypeEquivalent(a, c) {
		t.Fatalf("namedTypeEquivalent should be false for different underlying types")
	}
}

func TestNamedStructLayoutEquivalent(t *testing.T) {
	prog := NewProgram(nil)
	prog.TypeSizes(types.SizesFor("gc", runtime.GOARCH))

	pkg := types.NewPackage("example.com/p", "p")
	s1 := types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, nil, "A", types.Typ[types.Int], false),
	}, nil)
	n1 := types.NewNamed(types.NewTypeName(token.NoPos, pkg, "T", nil), s1, nil)
	llStruct, _ := prog.toLLVMStruct(s1)
	existing := &aType{
		ll:  llStruct,
		raw: rawType{Type: n1},
	}

	same := types.NewNamed(types.NewTypeName(token.NoPos, pkg, "T", nil), types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, nil, "A", types.Typ[types.Int], false),
	}, nil), nil)
	if !prog.namedStructLayoutEquivalent(existing, same) {
		t.Fatalf("namedStructLayoutEquivalent should be true for same layout")
	}

	diff := types.NewNamed(types.NewTypeName(token.NoPos, pkg, "T", nil), types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, nil, "A", types.Typ[types.Int], false),
		types.NewField(token.NoPos, nil, "B", types.Typ[types.Int], false),
	}, nil), nil)
	if prog.namedStructLayoutEquivalent(existing, diff) {
		t.Fatalf("namedStructLayoutEquivalent should be false for different layout")
	}
}
