package ssa

import (
	"go/token"
	"go/types"
	"testing"
)

func TestAbiRuntimeMethodsSkipsNoInterface(t *testing.T) {
	prog := NewProgram(nil)
	pkg := types.NewPackage("p", "p")
	obj := types.NewTypeName(token.NoPos, pkg, "T", nil)
	named := types.NewNamed(obj, types.NewStruct(nil, nil), nil)
	recv := types.NewVar(token.NoPos, pkg, "", named)
	bad := types.NewFunc(token.Pos(10), pkg, "Bad", types.NewSignature(recv, nil, nil, false))
	good := types.NewFunc(token.Pos(20), pkg, "Good", types.NewSignature(recv, nil, nil, false))
	named.AddMethod(bad)
	named.AddMethod(good)

	badName := FuncName(pkg, bad.Name(), bad.Type().(*types.Signature).Recv(), false)
	prog.SetNoInterfaceMethod(badName)
	methods := prog.abiRuntimeMethods(types.NewMethodSet(named))
	if len(methods) != 1 || methods[0].Obj() != good {
		t.Fatalf("runtime methods = %v, want only Good", methods)
	}
}
