//go:build !llgo
// +build !llgo

package ssa

import (
	"go/token"
	"go/types"
	"testing"
)

func testMethodInfoNamed(pkg *types.Package, name string) *types.Named {
	obj := types.NewTypeName(token.NoPos, pkg, name, nil)
	return types.NewNamed(obj, types.NewStruct(nil, nil), nil)
}

func testInterfaceInfoNamed(pkg *types.Package, name string) *types.Named {
	obj := types.NewTypeName(token.NoPos, pkg, name, nil)
	iface := types.NewInterfaceType(nil, nil)
	iface.Complete()
	return types.NewNamed(obj, iface, nil)
}

func testMethodInfoGenericNamed(pkg *types.Package, name string) *types.Named {
	tpObj := types.NewTypeName(token.NoPos, pkg, "T", nil)
	anyIface := types.Universe.Lookup("any").Type().Underlying().(*types.Interface)
	tp := types.NewTypeParam(tpObj, anyIface)
	obj := types.NewTypeName(token.NoPos, pkg, name, nil)
	named := types.NewNamed(obj, types.NewStruct(nil, nil), nil)
	named.SetTypeParams([]*types.TypeParam{tp})
	return named
}

func testInterfaceInfoGenericNamed(pkg *types.Package, name string) *types.Named {
	tpObj := types.NewTypeName(token.NoPos, pkg, "T", nil)
	anyIface := types.Universe.Lookup("any").Type().Underlying().(*types.Interface)
	tp := types.NewTypeParam(tpObj, anyIface)
	obj := types.NewTypeName(token.NoPos, pkg, name, nil)
	iface := types.NewInterfaceType(nil, nil)
	iface.Complete()
	named := types.NewNamed(obj, iface, nil)
	named.SetTypeParams([]*types.TypeParam{tp})
	return named
}

func TestShouldEmitOwnedTypeMetadataForMethodInfo(t *testing.T) {
	pkg := Package(&aPackage{path: "example.com/current"})
	current := types.NewPackage("example.com/current", "current")
	imported := types.NewPackage("example.com/imported", "imported")

	localNamed := testMethodInfoNamed(current, "Local")
	importedNamed := testMethodInfoNamed(imported, "Imported")
	importedGeneric := testMethodInfoGenericNamed(imported, "Box")
	importedInst, err := types.Instantiate(types.NewContext(), importedGeneric, []types.Type{types.Typ[types.Int]}, false)
	if err != nil {
		t.Fatalf("Instantiate(Box[int]) failed: %v", err)
	}

	tests := []struct {
		name string
		typ  types.Type
		want bool
	}{
		{
			name: "local named",
			typ:  localNamed,
			want: true,
		},
		{
			name: "local anonymous struct",
			typ:  types.NewStruct(nil, nil),
			want: true,
		},
		{
			name: "imported non-generic named",
			typ:  importedNamed,
			want: false,
		},
		{
			name: "pointer to imported non-generic named",
			typ:  types.NewPointer(importedNamed),
			want: false,
		},
		{
			name: "imported generic instance",
			typ:  importedInst,
			want: true,
		},
		{
			name: "pointer to imported generic instance",
			typ:  types.NewPointer(importedInst),
			want: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := pkg.shouldEmitOwnedTypeMetadata(tt.typ); got != tt.want {
				t.Fatalf("shouldEmitOwnedTypeMetadata(%v) = %v, want %v", tt.typ, got, tt.want)
			}
		})
	}
}

func TestShouldEmitOwnedTypeMetadataForInterfaceInfo(t *testing.T) {
	pkg := Package(&aPackage{path: "example.com/current"})
	current := types.NewPackage("example.com/current", "current")
	imported := types.NewPackage("example.com/imported", "imported")

	localNamed := testInterfaceInfoNamed(current, "Local")
	importedNamed := testInterfaceInfoNamed(imported, "Imported")
	importedGeneric := testInterfaceInfoGenericNamed(imported, "Box")
	importedInst, err := types.Instantiate(types.NewContext(), importedGeneric, []types.Type{types.Typ[types.Int]}, false)
	if err != nil {
		t.Fatalf("Instantiate(Box[int]) failed: %v", err)
	}

	tests := []struct {
		name string
		typ  types.Type
		want bool
	}{
		{
			name: "local named interface",
			typ:  localNamed,
			want: true,
		},
		{
			name: "local anonymous interface",
			typ: func() types.Type {
				iface := types.NewInterfaceType(nil, nil)
				iface.Complete()
				return iface
			}(),
			want: true,
		},
		{
			name: "imported non-generic named interface",
			typ:  importedNamed,
			want: false,
		},
		{
			name: "imported generic interface instance",
			typ:  importedInst,
			want: true,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := pkg.shouldEmitOwnedTypeMetadata(tt.typ); got != tt.want {
				t.Fatalf("shouldEmitOwnedTypeMetadata(%v) = %v, want %v", tt.typ, got, tt.want)
			}
		})
	}
}
