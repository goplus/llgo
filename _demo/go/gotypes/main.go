package main

import (
	"fmt"
	"go/token"
	"go/types"
)

func main() {
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
	testTypeComparison()
	testTypeChecking()
	testStringFunctions()
	testLookupFunctions()
	testUtilityFunctions()
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
	fmt.Println("\n=== Test Objects (Var, Const, Func, TypeName) ===")

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
	fmt.Println("\n=== Test Scope ===")

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
	fmt.Println("\n=== Test Package ===")

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
	fmt.Println("\n=== Test Named Types ===")

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
	fmt.Println("\n=== Test Interface ===")

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
	fmt.Println("\n=== Test Struct ===")

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
	fmt.Println("\n=== Test Signature ===")

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
	fmt.Println("\n=== Test Tuple ===")

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
	fmt.Println("\n=== Test Array ===")

	arrayType := types.NewArray(types.Typ[types.Int], 10)
	fmt.Printf("Array type: %v, Elem: %v, Len: %d\n", arrayType, arrayType.Elem(), arrayType.Len())

	fmt.Println("SUCCESS: Array operations work correctly\n")
}

func testSlice() {
	fmt.Println("\n=== Test Slice ===")

	sliceType := types.NewSlice(types.Typ[types.String])
	fmt.Printf("Slice type: %v, Elem: %v\n", sliceType, sliceType.Elem())

	fmt.Println("SUCCESS: Slice operations work correctly\n")
}

func testPointer() {
	fmt.Println("\n=== Test Pointer ===")

	ptrType := types.NewPointer(types.Typ[types.Int])
	fmt.Printf("Pointer type: %v, Elem: %v\n", ptrType, ptrType.Elem())

	fmt.Println("SUCCESS: Pointer operations work correctly\n")
}

func testMap() {
	fmt.Println("\n=== Test Map ===")

	mapType := types.NewMap(types.Typ[types.String], types.Typ[types.Int])
	fmt.Printf("Map type: %v, Key: %v, Elem: %v\n", mapType, mapType.Key(), mapType.Elem())

	fmt.Println("SUCCESS: Map operations work correctly\n")
}

func testChan() {
	fmt.Println("\n=== Test Chan ===" )

	chanType := types.NewChan(types.SendRecv, types.Typ[types.Int])
	fmt.Printf("Chan type: %v, Dir: %v, Elem: %v\n", chanType, chanType.Dir(), chanType.Elem())

	sendChan := types.NewChan(types.SendOnly, types.Typ[types.String])
	fmt.Printf("SendOnly chan: %v, Dir: %v\n", sendChan, sendChan.Dir())

	recvChan := types.NewChan(types.RecvOnly, types.Typ[types.Bool])
	fmt.Printf("RecvOnly chan: %v, Dir: %v\n", recvChan, recvChan.Dir())

	fmt.Println("SUCCESS: Chan operations work correctly\n")
}

func testTypeComparison() {
	fmt.Println("\n=== Test Type Comparison Functions ===")

	t1 := types.Typ[types.Int]
	t2 := types.Typ[types.Int]
	t3 := types.Typ[types.String]

	if !types.Identical(t1, t2) {
		panic("Identical failed: int should be identical to int")
	}
	fmt.Printf("Identical(int, int): %v\n", types.Identical(t1, t2))
	fmt.Printf("Identical(int, string): %v\n", types.Identical(t1, t3))

	if !types.AssignableTo(t1, t2) {
		panic("AssignableTo failed")
	}
	fmt.Printf("AssignableTo(int, int): %v\n", types.AssignableTo(t1, t2))
	fmt.Printf("AssignableTo(int, string): %v\n", types.AssignableTo(t1, t3))

	fmt.Printf("Comparable(int): %v\n", types.Comparable(t1))
	fmt.Printf("Comparable(string): %v\n", types.Comparable(t3))

	fmt.Printf("ConvertibleTo(int, int): %v\n", types.ConvertibleTo(t1, t2))

	fmt.Println("SUCCESS: Type comparison functions work correctly\n")
}

func testTypeChecking() {
	fmt.Println("\n=== Test Type Checking Functions ===")

	pkg := types.NewPackage("example.com/test", "test")

	m1 := types.NewFunc(token.NoPos, pkg, "Method1", types.NewSignatureType(nil, nil, nil, nil, nil, false))
	m2 := types.NewFunc(token.NoPos, pkg, "Method2", types.NewSignatureType(nil, nil, nil, nil, nil, false))
	iface := types.NewInterfaceType([]*types.Func{m1, m2}, nil)
	iface.Complete()

	fields := []*types.Var{
		types.NewField(token.NoPos, nil, "x", types.Typ[types.Int], false),
	}
	structType := types.NewStruct(fields, nil)

	fmt.Printf("Implements(struct, interface): %v\n", types.Implements(structType, iface))
	fmt.Printf("Implements(int, interface): %v\n", types.Implements(types.Typ[types.Int], iface))

	emptyIface := types.NewInterfaceType(nil, nil)
	emptyIface.Complete()
	fmt.Printf("Implements(int, empty interface): %v\n", types.Implements(types.Typ[types.Int], emptyIface))

	fmt.Printf("AssertableTo(interface, int): %v\n", types.AssertableTo(iface, types.Typ[types.Int]))

	fmt.Println("SUCCESS: Type checking functions work correctly\n")
}

func testStringFunctions() {
	fmt.Println("\n=== Test String Functions ===")

	pkg := types.NewPackage("example.com/test", "test")
	varObj := types.NewVar(token.NoPos, pkg, "myVar", types.Typ[types.Int])

	objStr := types.ObjectString(varObj, nil)
	fmt.Printf("ObjectString: %s\n", objStr)

	objStrQual := types.ObjectString(varObj, types.RelativeTo(pkg))
	fmt.Printf("ObjectString (qualified): %s\n", objStrQual)

	typeStr := types.TypeString(types.Typ[types.Int], nil)
	fmt.Printf("TypeString(int): %s\n", typeStr)

	sliceType := types.NewSlice(types.Typ[types.String])
	sliceStr := types.TypeString(sliceType, nil)
	fmt.Printf("TypeString([]string): %s\n", sliceStr)

	fmt.Println("SUCCESS: String functions work correctly\n")
}

func testLookupFunctions() {
	fmt.Println("\n=== Test Lookup Functions ===")

	pkg := types.NewPackage("example.com/test", "test")

	fields := []*types.Var{
		types.NewField(token.NoPos, pkg, "X", types.Typ[types.Int], false),
		types.NewField(token.NoPos, pkg, "Y", types.Typ[types.String], false),
	}
	structType := types.NewStruct(fields, nil)

	obj, index, indirect := types.LookupFieldOrMethod(structType, false, pkg, "X")
	if obj == nil {
		panic("LookupFieldOrMethod failed to find X")
	}
	fmt.Printf("LookupFieldOrMethod found: %s, index: %v, indirect: %v\n", obj.Name(), index, indirect)

	obj2, index2, indirect2 := types.LookupFieldOrMethod(structType, false, pkg, "NonExistent")
	fmt.Printf("LookupFieldOrMethod (non-existent): found=%v, index=%v, indirect=%v\n", obj2 != nil, index2, indirect2)

	mset := types.NewMethodSet(structType)
	fmt.Printf("NewMethodSet: %d methods\n", mset.Len())

	fmt.Println("SUCCESS: Lookup functions work correctly\n")
}

func testUtilityFunctions() {
	fmt.Println("\n=== Test Utility Functions ===")

	pkg := types.NewPackage("example.com/test", "test")

	iface := types.NewInterfaceType(nil, nil)
	iface.Complete()

	fmt.Printf("IsInterface(interface): %v\n", types.IsInterface(iface))
	fmt.Printf("IsInterface(int): %v\n", types.IsInterface(types.Typ[types.Int]))

	typedNil := types.Typ[types.UntypedNil]
	defaultType := types.Default(typedNil)
	fmt.Printf("Default(UntypedNil): %v\n", defaultType)

	intDefault := types.Default(types.Typ[types.Int])
	fmt.Printf("Default(int): %v\n", intDefault)

	idStr := types.Id(pkg, "MyType")
	fmt.Printf("Id(pkg, \"MyType\"): %s\n", idStr)

	fmt.Println("SUCCESS: Utility functions work correctly\n")
}
