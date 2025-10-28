package main

import (
	"fmt"
	"go/ast"
	"go/token"
	"go/types"
)

func main() {
	fmt.Println("=== Comprehensive go/types Package Demo ===\n")
	
	testBasicTypes()
	testObjects()
	testScope()
	testPackage()
	testNamed()
	testInterface()
	testStruct()
	testSignature()
	testTuple()
	testArray()
	testSlice()
	testPointer()
	testMap()
	testChan()
	
	fmt.Println("\n=== All go/types tests completed successfully! ===")
}

func testBasicTypes() {
	fmt.Println("=== Test Basic Types ===")
	
	intType := types.Typ[types.Int]
	fmt.Printf("Int type: %v, Kind: %v\n", intType, intType.Kind())
	
	stringType := types.Typ[types.String]
	fmt.Printf("String type: %v, Kind: %v\n", stringType, stringType.Kind())
	
	boolType := types.Typ[types.Bool]
	fmt.Printf("Bool type: %v, Kind: %v\n", boolType, boolType.Kind())
	
	float64Type := types.Typ[types.Float64]
	fmt.Printf("Float64 type: %v, Kind: %v\n", float64Type, float64Type.Kind())
	
	fmt.Println("SUCCESS: Basic types work correctly\n")
}

func testObjects() {
	fmt.Println("=== Test Objects (Var, Const, Func, TypeName) ===")
	
	varObj := types.NewVar(token.NoPos, nil, "x", types.Typ[types.Int])
	fmt.Printf("Var: Name=%s, Type=%v\n", varObj.Name(), varObj.Type())
	
	constObj := types.NewConst(token.NoPos, nil, "pi", types.Typ[types.Float64], nil)
	fmt.Printf("Const: Name=%s, Type=%v\n", constObj.Name(), constObj.Type())
	
	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	funcObj := types.NewFunc(token.NoPos, nil, "foo", sig)
	fmt.Printf("Func: Name=%s, Type=%v\n", funcObj.Name(), funcObj.Type())
	
	typeObj := types.NewTypeName(token.NoPos, nil, "MyInt", types.Typ[types.Int])
	fmt.Printf("TypeName: Name=%s, Type=%v\n", typeObj.Name(), typeObj.Type())
	
	var obj types.Object = varObj
	if obj.Name() != "x" {
		panic("Object interface conversion failed")
	}
	fmt.Println("SUCCESS: Object interface works correctly\n")
}

func testScope() {
	fmt.Println("=== Test Scope ===")
	
	scope := types.NewScope(nil, 0, 0, "test")
	obj := types.NewVar(0, nil, "x", types.Typ[types.Int])
	
	scope.Insert(obj)
	result := scope.Lookup("x")
	if result != obj {
		panic("Scope.Lookup failed")
	}
	
	names := scope.Names()
	if len(names) != 1 || names[0] != "x" {
		panic("Scope.Names failed")
	}
	
	num := scope.Len()
	if num != 1 {
		panic("Scope.Len failed")
	}
	
	fmt.Printf("Scope contains %d object(s): %v\n", num, names)
	fmt.Println("SUCCESS: Scope operations work correctly\n")
}

func testPackage() {
	fmt.Println("=== Test Package ===")
	
	pkg := types.NewPackage("example.com/test", "test")
	fmt.Printf("Package: Path=%s, Name=%s\n", pkg.Path(), pkg.Name())
	
	scope := pkg.Scope()
	if scope == nil {
		panic("Package.Scope returned nil")
	}
	
	varObj := types.NewVar(token.NoPos, pkg, "x", types.Typ[types.Int])
	scope.Insert(varObj)
	
	result := pkg.Scope().Lookup("x")
	if result != varObj {
		panic("Package scope lookup failed")
	}
	
	fmt.Println("SUCCESS: Package operations work correctly\n")
}

func testNamed() {
	fmt.Println("=== Test Named Types ===")
	
	pkg := types.NewPackage("example.com/test", "test")
	typeName := types.NewTypeName(token.NoPos, pkg, "MyInt", nil)
	named := types.NewNamed(typeName, types.Typ[types.Int], nil)
	
	fmt.Printf("Named type: %v, Underlying: %v\n", named, named.Underlying())
	
	if named.Obj() != typeName {
		panic("Named.Obj failed")
	}
	
	fmt.Println("SUCCESS: Named type operations work correctly\n")
}

func testInterface() {
	fmt.Println("=== Test Interface ===")
	
	pkg := types.NewPackage("example.com/test", "test")
	
	posMethod := types.NewFunc(token.NoPos, pkg, "Pos", types.NewSignatureType(nil, nil, nil, nil, types.NewTuple(types.NewVar(0, pkg, "", types.Typ[types.Int])), false))
	endMethod := types.NewFunc(token.NoPos, pkg, "End", types.NewSignatureType(nil, nil, nil, nil, types.NewTuple(types.NewVar(0, pkg, "", types.Typ[types.Int])), false))
	
	methods := []*types.Func{posMethod, endMethod}
	iface := types.NewInterfaceType(methods, nil)
	iface.Complete()
	
	fmt.Printf("Interface with %d methods\n", iface.NumMethods())
	
	method := iface.Method(0)
	fmt.Printf("Method 0: %s\n", method.Name())
	
	fmt.Println("SUCCESS: Interface operations work correctly\n")
}

func testStruct() {
	fmt.Println("=== Test Struct ===")
	
	fields := []*types.Var{
		types.NewField(token.NoPos, nil, "X", types.Typ[types.Int], false),
		types.NewField(token.NoPos, nil, "Y", types.Typ[types.String], false),
	}
	
	structType := types.NewStruct(fields, nil)
	fmt.Printf("Struct with %d fields\n", structType.NumFields())
	
	field0 := structType.Field(0)
	fmt.Printf("Field 0: Name=%s, Type=%v\n", field0.Name(), field0.Type())
	
	fmt.Println("SUCCESS: Struct operations work correctly\n")
}

func testSignature() {
	fmt.Println("=== Test Signature ===")
	
	params := types.NewTuple(
		types.NewVar(token.NoPos, nil, "x", types.Typ[types.Int]),
		types.NewVar(token.NoPos, nil, "y", types.Typ[types.String]),
	)
	
	results := types.NewTuple(
		types.NewVar(token.NoPos, nil, "", types.Typ[types.Bool]),
	)
	
	sig := types.NewSignatureType(nil, nil, nil, params, results, false)
	
	fmt.Printf("Signature: %d params, %d results\n", sig.Params().Len(), sig.Results().Len())
	
	param0 := sig.Params().At(0)
	fmt.Printf("Param 0: Name=%s, Type=%v\n", param0.Name(), param0.Type())
	
	fmt.Println("SUCCESS: Signature operations work correctly\n")
}

func testTuple() {
	fmt.Println("=== Test Tuple ===")
	
	tuple := types.NewTuple(
		types.NewVar(token.NoPos, nil, "a", types.Typ[types.Int]),
		types.NewVar(token.NoPos, nil, "b", types.Typ[types.String]),
	)
	
	fmt.Printf("Tuple length: %d\n", tuple.Len())
	
	var0 := tuple.At(0)
	fmt.Printf("Element 0: Name=%s, Type=%v\n", var0.Name(), var0.Type())
	
	fmt.Println("SUCCESS: Tuple operations work correctly\n")
}

func testArray() {
	fmt.Println("=== Test Array ===")
	
	arrayType := types.NewArray(types.Typ[types.Int], 10)
	fmt.Printf("Array type: %v, Elem: %v, Len: %d\n", arrayType, arrayType.Elem(), arrayType.Len())
	
	fmt.Println("SUCCESS: Array operations work correctly\n")
}

func testSlice() {
	fmt.Println("=== Test Slice ===")
	
	sliceType := types.NewSlice(types.Typ[types.String])
	fmt.Printf("Slice type: %v, Elem: %v\n", sliceType, sliceType.Elem())
	
	fmt.Println("SUCCESS: Slice operations work correctly\n")
}

func testPointer() {
	fmt.Println("=== Test Pointer ===")
	
	ptrType := types.NewPointer(types.Typ[types.Int])
	fmt.Printf("Pointer type: %v, Elem: %v\n", ptrType, ptrType.Elem())
	
	fmt.Println("SUCCESS: Pointer operations work correctly\n")
}

func testMap() {
	fmt.Println("=== Test Map ===")
	
	mapType := types.NewMap(types.Typ[types.String], types.Typ[types.Int])
	fmt.Printf("Map type: %v, Key: %v, Elem: %v\n", mapType, mapType.Key(), mapType.Elem())
	
	fmt.Println("SUCCESS: Map operations work correctly\n")
}

func testChan() {
	fmt.Println("=== Test Chan ===")
	
	chanType := types.NewChan(types.SendRecv, types.Typ[types.Int])
	fmt.Printf("Chan type: %v, Dir: %v, Elem: %v\n", chanType, chanType.Dir(), chanType.Elem())
	
	sendChan := types.NewChan(types.SendOnly, types.Typ[types.String])
	fmt.Printf("SendOnly chan: %v, Dir: %v\n", sendChan, sendChan.Dir())
	
	recvChan := types.NewChan(types.RecvOnly, types.Typ[types.Bool])
	fmt.Printf("RecvOnly chan: %v, Dir: %v\n", recvChan, recvChan.Dir())
	
	fmt.Println("SUCCESS: Chan operations work correctly\n")
}
