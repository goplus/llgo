//go:build !llgo

package ssa

import (
	"go/token"
	"go/types"
	"testing"
)

func TestHasTypeParam(t *testing.T) {
	t.Helper()

	generic := newGenericNamedType("Box")
	instantiated, err := types.Instantiate(types.NewContext(), generic, []types.Type{types.Typ[types.String]}, true)
	if err != nil {
		t.Fatalf("Instantiate: %v", err)
	}

	namedGeneric := generic

	arrayType := func() types.Type {
		tp := newTypeParam("ArrayElem")
		return types.NewArray(tp, 3)
	}()

	chanType := types.NewChan(types.SendRecv, newTypeParam("ChanElem"))

	tupleType := func() types.Type {
		tp := newTypeParam("TupleElem")
		elem := types.NewVar(token.NoPos, nil, "v", tp)
		return types.NewTuple(elem)
	}()

	structWithParam := func() types.Type {
		tp := newTypeParam("StructElem")
		field := types.NewVar(token.NoPos, nil, "value", tp)
		return types.NewStruct([]*types.Var{field}, nil)
	}()

	signatureWithParam := func() types.Type {
		tp := newTypeParam("SigParam")
		params := types.NewTuple(types.NewVar(token.NoPos, nil, "x", tp))
		return types.NewSignatureType(nil, nil, []*types.TypeParam{tp}, params, types.NewTuple(), false)
	}()

	interfaceWithParam := func() types.Type {
		tp := newTypeParam("IfaceParam")
		params := types.NewTuple(types.NewVar(token.NoPos, nil, "v", tp))
		method := types.NewFunc(token.NoPos, nil, "Do", types.NewSignatureType(nil, nil, []*types.TypeParam{tp}, params, types.NewTuple(), false))
		iface := types.NewInterfaceType([]*types.Func{method}, nil)
		iface.Complete()
		return iface
	}()

	selfRecursive := func() types.Type {
		typeName := types.NewTypeName(token.NoPos, nil, "Node", nil)
		placeholder := types.NewStruct(nil, nil)
		named := types.NewNamed(typeName, placeholder, nil)
		field := types.NewVar(token.NoPos, nil, "next", types.NewPointer(named))
		structType := types.NewStruct([]*types.Var{field}, nil)
		named.SetUnderlying(structType)
		return named
	}()

	tests := []struct {
		name string
		typ  types.Type
		want bool
	}{
		{"basic", types.Typ[types.Int], false},
		{"typeParam", newTypeParam("T"), true},
		{"pointerToTypeParam", types.NewPointer(newTypeParam("PtrT")), true},
		{"sliceOfTypeParam", types.NewSlice(newTypeParam("SliceT")), true},
		{"arrayOfTypeParam", arrayType, true},
		{"mapWithTypeParam", types.NewMap(newTypeParam("MapKey"), types.Typ[types.String]), true},
		{"chanOfTypeParam", chanType, true},
		{"tupleWithTypeParam", tupleType, true},
		{"structWithTypeParam", structWithParam, true},
		{"signatureWithTypeParam", signatureWithParam, true},
		{"interfaceWithTypeParam", interfaceWithParam, true},
		{"namedGeneric", namedGeneric, true},
		{"namedInstanceNoParam", instantiated, false},
		{"selfRecursiveStruct", selfRecursive, false},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			if got := hasTypeParam(tc.typ); got != tc.want {
				t.Fatalf("hasTypeParam(%s) = %v, want %v", tc.name, got, tc.want)
			}
		})
	}
}

func newTypeParam(name string) *types.TypeParam {
	iface := types.NewInterfaceType(nil, nil)
	iface.Complete()
	return types.NewTypeParam(types.NewTypeName(token.NoPos, nil, name, nil), iface)
}

func newGenericNamedType(name string) *types.Named {
	tp := newTypeParam("T")
	field := types.NewVar(token.NoPos, nil, "value", tp)
	structType := types.NewStruct([]*types.Var{field}, nil)
	named := types.NewNamed(types.NewTypeName(token.NoPos, nil, name, nil), structType, nil)
	named.SetTypeParams([]*types.TypeParam{tp})
	return named
}
