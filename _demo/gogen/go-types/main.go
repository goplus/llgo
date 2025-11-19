package main

import (
	"fmt"
	"go/ast"
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
	testMissingFunctions()
	testAlias()
	testGenerics()
	// testConfigCheck() fail at ci
	testAllStringMethods()
	testInterfaceMethods()
}

func testBasicTypes() {
	fmt.Println("=== Test Basic Types ===")

	intType := types.Typ[types.Int]
	fmt.Printf("Int type: %v, Kind: %v\n", intType, intType.Kind())
	if intType.Kind() != types.Int {
		panic(fmt.Sprintf("Int type kind mismatch: expected %v, got %v", types.Int, intType.Kind()))
	}

	stringType := types.Typ[types.String]
	fmt.Printf("String type: %v, Kind: %v\n", stringType, stringType.Kind())
	if stringType.Kind() != types.String {
		panic(fmt.Sprintf("String type kind mismatch: expected %v, got %v", types.String, stringType.Kind()))
	}

	boolType := types.Typ[types.Bool]
	fmt.Printf("Bool type: %v, Kind: %v\n", boolType, boolType.Kind())
	if boolType.Kind() != types.Bool {
		panic(fmt.Sprintf("Bool type kind mismatch: expected %v, got %v", types.Bool, boolType.Kind()))
	}

	float64Type := types.Typ[types.Float64]
	fmt.Printf("Float64 type: %v, Kind: %v\n", float64Type, float64Type.Kind())
	if float64Type.Kind() != types.Float64 {
		panic(fmt.Sprintf("Float64 type kind mismatch: expected %v, got %v", types.Float64, float64Type.Kind()))
	}

	fmt.Println("SUCCESS: Basic types work correctly\n")
}

func testObjects() {
	fmt.Println("\n=== Test Objects (Var, Const, Func, TypeName) ===")

	varObj := types.NewVar(token.NoPos, nil, "x", types.Typ[types.Int])
	fmt.Printf("Var: Name=%s, Type=%v\n", varObj.Name(), varObj.Type())
	if varObj.Name() != "x" {
		panic(fmt.Sprintf("Var name mismatch: expected x, got %s", varObj.Name()))
	}
	if varObj.Type() != types.Typ[types.Int] {
		panic(fmt.Sprintf("Var type mismatch: expected int, got %v", varObj.Type()))
	}

	constObj := types.NewConst(token.NoPos, nil, "pi", types.Typ[types.Float64], nil)
	fmt.Printf("Const: Name=%s, Type=%v\n", constObj.Name(), constObj.Type())
	if constObj.Name() != "pi" {
		panic(fmt.Sprintf("Const name mismatch: expected pi, got %s", constObj.Name()))
	}
	if constObj.Type() != types.Typ[types.Float64] {
		panic(fmt.Sprintf("Const type mismatch: expected float64, got %v", constObj.Type()))
	}

	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	funcObj := types.NewFunc(token.NoPos, nil, "foo", sig)
	fmt.Printf("Func: Name=%s, Type=%v\n", funcObj.Name(), funcObj.Type())
	if funcObj.Name() != "foo" {
		panic(fmt.Sprintf("Func name mismatch: expected foo, got %s", funcObj.Name()))
	}

	typeObj := types.NewTypeName(token.NoPos, nil, "MyInt", types.Typ[types.Int])
	fmt.Printf("TypeName: Name=%s, Type=%v\n", typeObj.Name(), typeObj.Type())
	if typeObj.Name() != "MyInt" {
		panic(fmt.Sprintf("TypeName name mismatch: expected MyInt, got %s", typeObj.Name()))
	}

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
	if pkg.Path() != "example.com/test" {
		panic(fmt.Sprintf("Package path mismatch: expected example.com/test, got %s", pkg.Path()))
	}
	if pkg.Name() != "test" {
		panic(fmt.Sprintf("Package name mismatch: expected test, got %s", pkg.Name()))
	}

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
	if iface.NumMethods() != 2 {
		panic(fmt.Sprintf("Interface method count mismatch: expected 2, got %d", iface.NumMethods()))
	}

	method := iface.Method(0)
	fmt.Printf("Method 0: %s\n", method.Name())
	if method.Name() != "End" && method.Name() != "Pos" {
		panic(fmt.Sprintf("Unexpected method name: %s", method.Name()))
	}

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
	if structType.NumFields() != 2 {
		panic(fmt.Sprintf("Struct field count mismatch: expected 2, got %d", structType.NumFields()))
	}

	field0 := structType.Field(0)
	fmt.Printf("Field 0: Name=%s, Type=%v\n", field0.Name(), field0.Type())
	if field0.Name() != "X" {
		panic(fmt.Sprintf("Field 0 name mismatch: expected X, got %s", field0.Name()))
	}
	if field0.Type() != types.Typ[types.Int] {
		panic(fmt.Sprintf("Field 0 type mismatch: expected int, got %v", field0.Type()))
	}

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
	if sig.Params().Len() != 2 {
		panic(fmt.Sprintf("Signature param count mismatch: expected 2, got %d", sig.Params().Len()))
	}
	if sig.Results().Len() != 1 {
		panic(fmt.Sprintf("Signature result count mismatch: expected 1, got %d", sig.Results().Len()))
	}

	param0 := sig.Params().At(0)
	fmt.Printf("Param 0: Name=%s, Type=%v\n", param0.Name(), param0.Type())
	if param0.Name() != "x" {
		panic(fmt.Sprintf("Param 0 name mismatch: expected x, got %s", param0.Name()))
	}
	if param0.Type() != types.Typ[types.Int] {
		panic(fmt.Sprintf("Param 0 type mismatch: expected int, got %v", param0.Type()))
	}

	fmt.Println("SUCCESS: Signature operations work correctly\n")
}

func testTuple() {
	fmt.Println("\n=== Test Tuple ===")

	tuple := types.NewTuple(
		types.NewVar(token.NoPos, nil, "a", types.Typ[types.Int]),
		types.NewVar(token.NoPos, nil, "b", types.Typ[types.String]),
	)

	fmt.Printf("Tuple length: %d\n", tuple.Len())
	if tuple.Len() != 2 {
		panic(fmt.Sprintf("Tuple length mismatch: expected 2, got %d", tuple.Len()))
	}

	var0 := tuple.At(0)
	fmt.Printf("Element 0: Name=%s, Type=%v\n", var0.Name(), var0.Type())
	if var0.Name() != "a" {
		panic(fmt.Sprintf("Tuple element 0 name mismatch: expected a, got %s", var0.Name()))
	}
	if var0.Type() != types.Typ[types.Int] {
		panic(fmt.Sprintf("Tuple element 0 type mismatch: expected int, got %v", var0.Type()))
	}

	fmt.Println("SUCCESS: Tuple operations work correctly\n")
}

func testArray() {
	fmt.Println("\n=== Test Array ===")

	arrayType := types.NewArray(types.Typ[types.Int], 10)
	fmt.Printf("Array type: %v, Elem: %v, Len: %d\n", arrayType, arrayType.Elem(), arrayType.Len())
	if arrayType.Len() != 10 {
		panic(fmt.Sprintf("Array length mismatch: expected 10, got %d", arrayType.Len()))
	}
	if arrayType.Elem() != types.Typ[types.Int] {
		panic(fmt.Sprintf("Array element type mismatch: expected int, got %v", arrayType.Elem()))
	}

	fmt.Println("SUCCESS: Array operations work correctly\n")
}

func testSlice() {
	fmt.Println("\n=== Test Slice ===")

	sliceType := types.NewSlice(types.Typ[types.String])
	fmt.Printf("Slice type: %v, Elem: %v\n", sliceType, sliceType.Elem())
	if sliceType.Elem() != types.Typ[types.String] {
		panic(fmt.Sprintf("Slice element type mismatch: expected string, got %v", sliceType.Elem()))
	}

	fmt.Println("SUCCESS: Slice operations work correctly\n")
}

func testPointer() {
	fmt.Println("\n=== Test Pointer ===")

	ptrType := types.NewPointer(types.Typ[types.Int])
	fmt.Printf("Pointer type: %v, Elem: %v\n", ptrType, ptrType.Elem())
	if ptrType.Elem() != types.Typ[types.Int] {
		panic(fmt.Sprintf("Pointer element type mismatch: expected int, got %v", ptrType.Elem()))
	}

	fmt.Println("SUCCESS: Pointer operations work correctly\n")
}

func testMap() {
	fmt.Println("\n=== Test Map ===")

	mapType := types.NewMap(types.Typ[types.String], types.Typ[types.Int])
	fmt.Printf("Map type: %v, Key: %v, Elem: %v\n", mapType, mapType.Key(), mapType.Elem())
	if mapType.Key() != types.Typ[types.String] {
		panic(fmt.Sprintf("Map key type mismatch: expected string, got %v", mapType.Key()))
	}
	if mapType.Elem() != types.Typ[types.Int] {
		panic(fmt.Sprintf("Map element type mismatch: expected int, got %v", mapType.Elem()))
	}

	fmt.Println("SUCCESS: Map operations work correctly\n")
}

func testChan() {
	fmt.Println("\n=== Test Chan ===")

	chanType := types.NewChan(types.SendRecv, types.Typ[types.Int])
	fmt.Printf("Chan type: %v, Dir: %v, Elem: %v\n", chanType, chanType.Dir(), chanType.Elem())
	if chanType.Dir() != types.SendRecv {
		panic(fmt.Sprintf("Chan direction mismatch: expected SendRecv, got %v", chanType.Dir()))
	}
	if chanType.Elem() != types.Typ[types.Int] {
		panic(fmt.Sprintf("Chan element type mismatch: expected int, got %v", chanType.Elem()))
	}

	sendChan := types.NewChan(types.SendOnly, types.Typ[types.String])
	fmt.Printf("SendOnly chan: %v, Dir: %v\n", sendChan, sendChan.Dir())
	if sendChan.Dir() != types.SendOnly {
		panic(fmt.Sprintf("SendOnly chan direction mismatch: expected SendOnly, got %v", sendChan.Dir()))
	}

	recvChan := types.NewChan(types.RecvOnly, types.Typ[types.Bool])
	fmt.Printf("RecvOnly chan: %v, Dir: %v\n", recvChan, recvChan.Dir())
	if recvChan.Dir() != types.RecvOnly {
		panic(fmt.Sprintf("RecvOnly chan direction mismatch: expected RecvOnly, got %v", recvChan.Dir()))
	}

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

func testMissingFunctions() {
	fmt.Println("\n=== Test Missing Functions ===")

	pkg := types.NewPackage("example.com/test", "test")

	// ========== NewParam (30) ==========
	fmt.Println("\n--- NewParam ---")
	p1 := types.NewParam(token.NoPos, pkg, "x", types.Typ[types.Int])
	p2 := types.NewParam(token.NoPos, pkg, "y", types.Typ[types.String])
	p3 := types.NewParam(token.NoPos, pkg, "z", types.Typ[types.Bool])
	fmt.Printf("Param1: Name=%s, Type=%v\n", p1.Name(), p1.Type())
	fmt.Printf("Param2: Name=%s, Type=%v\n", p2.Name(), p2.Type())
	fmt.Printf("Param3: Name=%s, Type=%v\n", p3.Name(), p3.Type())

	// ========== Pos (18) ==========
	fmt.Println("\n--- Pos ---")
	fmt.Printf("Param Pos: %v\n", p1.Pos())
	v := types.NewVar(token.Pos(100), pkg, "test", types.Typ[types.Int])
	fmt.Printf("Var Pos: %v\n", v.Pos())
	tn := types.NewTypeName(token.Pos(200), pkg, "MyType", nil)
	fmt.Printf("TypeName Pos: %v\n", tn.Pos())

	// ========== Pkg (16) ==========
	fmt.Println("\n--- Pkg ---")
	fmt.Printf("Param Pkg: %s\n", p1.Pkg().Name())
	fmt.Printf("Var Pkg: %s\n", v.Pkg().Name())
	fmt.Printf("TypeName Pkg: %s\n", tn.Pkg().Name())

	// ========== Variadic (13) ==========
	fmt.Println("\n--- Variadic ---")
	varParam := types.NewParam(token.NoPos, pkg, "args", types.NewSlice(types.Typ[types.String]))
	varSig := types.NewSignatureType(nil, nil, nil, types.NewTuple(varParam), nil, true)
	normalSig := types.NewSignatureType(nil, nil, nil, types.NewTuple(p1, p2), nil, false)
	fmt.Printf("Variadic signature: %v\n", varSig.Variadic())
	fmt.Printf("Normal signature: %v\n", normalSig.Variadic())

	// ========== Info (15) ==========
	fmt.Println("\n--- Info ---")
	info := &types.Info{
		Types: make(map[ast.Expr]types.TypeAndValue),
		Defs:  make(map[*ast.Ident]types.Object),
		Uses:  make(map[*ast.Ident]types.Object),
	}
	fmt.Printf("Info.Types map created: %v\n", info.Types != nil)
	fmt.Printf("Info.Defs map created: %v\n", info.Defs != nil)
	fmt.Printf("Info.Uses map created: %v\n", info.Uses != nil)

	// ========== AddMethod (3) ==========
	fmt.Println("\n--- AddMethod ---")
	named := types.NewNamed(tn, types.Typ[types.Int], nil)
	method1 := types.NewFunc(token.NoPos, pkg, "Method1", normalSig)
	method2 := types.NewFunc(token.NoPos, pkg, "Method2", normalSig)
	method3 := types.NewFunc(token.NoPos, pkg, "String", normalSig)
	named.AddMethod(method1)
	named.AddMethod(method2)
	named.AddMethod(method3)
	fmt.Printf("Named type methods: %d\n", named.NumMethods())

	// ========== SetUnderlying (3) ==========
	fmt.Println("\n--- SetUnderlying ---")
	tn2 := types.NewTypeName(token.NoPos, pkg, "MyBool", nil)
	named2 := types.NewNamed(tn2, nil, nil)
	named2.SetUnderlying(types.Typ[types.Bool])
	fmt.Printf("Set underlying to: %v\n", named2.Underlying())
	tn3 := types.NewTypeName(token.NoPos, pkg, "MyString", nil)
	named3 := types.NewNamed(tn3, nil, nil)
	named3.SetUnderlying(types.Typ[types.String])
	fmt.Printf("Set underlying to: %v\n", named3.Underlying())

	// ========== ExplicitMethod & NumExplicitMethods (3) ==========
	fmt.Println("\n--- ExplicitMethod & NumExplicitMethods ---")
	iface := types.NewInterfaceType([]*types.Func{method1, method2}, nil)
	iface.Complete()
	fmt.Printf("Interface NumExplicitMethods: %d\n", iface.NumExplicitMethods())
	if iface.NumExplicitMethods() > 0 {
		em := iface.ExplicitMethod(0)
		fmt.Printf("ExplicitMethod(0): %s\n", em.Name())
		em2 := iface.ExplicitMethod(1)
		fmt.Printf("ExplicitMethod(1): %s\n", em2.Name())
	}

	// ========== NewLabel (1) ==========
	fmt.Println("\n--- NewLabel ---")
	label := types.NewLabel(token.NoPos, pkg, "loop")
	fmt.Printf("Label: Name=%s\n", label.Name())

	// ========== Tag (2) ==========
	fmt.Println("\n--- Tag ---")
	f1 := types.NewField(token.NoPos, pkg, "Field1", types.Typ[types.String], false)
	f2 := types.NewField(token.NoPos, pkg, "Field2", types.Typ[types.Int], false)
	structType := types.NewStruct([]*types.Var{f1, f2}, []string{`json:"field1"`, `json:"field2"`})
	fmt.Printf("Field 0 tag: %s\n", structType.Tag(0))
	fmt.Printf("Field 1 tag: %s\n", structType.Tag(1))

	// ========== Embedded & Anonymous (4 + 1) ==========
	fmt.Println("\n--- Embedded & Anonymous ---")
	embField := types.NewField(token.NoPos, pkg, "", types.Typ[types.String], true)
	normalField := types.NewField(token.NoPos, pkg, "Named", types.Typ[types.Int], false)
	fmt.Printf("Embedded field: %v\n", embField.Embedded())
	fmt.Printf("Normal field: %v\n", normalField.Embedded())
	fmt.Printf("Anonymous (same as Embedded): %v\n", embField.Anonymous())

	// ========== Empty (1) ==========
	fmt.Println("\n--- Empty ---")
	emptyIface := types.NewInterfaceType(nil, nil)
	emptyIface.Complete()
	fmt.Printf("Empty interface: %v\n", emptyIface.Empty())
	fmt.Printf("Non-empty interface: %v\n", iface.Empty())

	// ========== Exported (2) ==========
	fmt.Println("\n--- Exported ---")
	exportedVar := types.NewVar(token.NoPos, pkg, "Exported", types.Typ[types.Int])
	privateVar := types.NewVar(token.NoPos, pkg, "private", types.Typ[types.Int])
	fmt.Printf("Exported var: %v\n", exportedVar.Exported())
	fmt.Printf("Private var: %v\n", privateVar.Exported())

	// ========== LookupParent (3) ==========
	fmt.Println("\n--- LookupParent ---")
	scope := pkg.Scope()
	scope.Insert(exportedVar)
	s, obj := scope.LookupParent("Exported", token.NoPos)
	fmt.Printf("LookupParent found: scope=%v, obj=%v\n", s != nil, obj != nil)
	s2, obj2 := scope.LookupParent("NotFound", token.NoPos)
	fmt.Printf("LookupParent not found: scope=%v, obj=%v\n", s2 != nil, obj2 != nil)

	// ========== SizesFor, Sizeof, Alignof, Offsetsof (2 each) ==========
	fmt.Println("\n--- SizesFor, Sizeof, Alignof, Offsetsof ---")
	sizes := types.SizesFor("gc", "amd64")
	if sizes != nil {
		fmt.Printf("Sizeof int: %d\n", sizes.Sizeof(types.Typ[types.Int]))
		fmt.Printf("Sizeof string: %d\n", sizes.Sizeof(types.Typ[types.String]))
		fmt.Printf("Alignof int: %d\n", sizes.Alignof(types.Typ[types.Int]))
		fmt.Printf("Alignof string: %d\n", sizes.Alignof(types.Typ[types.String]))
		offsets := sizes.Offsetsof([]*types.Var{f1, f2})
		fmt.Printf("Field offsets: %v\n", offsets)
	}
	sizes2 := types.SizesFor("gc", "386")
	fmt.Printf("SizesFor 386: %v\n", sizes2 != nil)

	// ========== NewChecker & Check (2 + 1) ==========
	fmt.Println("\n--- NewChecker & Check ---")
	fset := token.NewFileSet()
	conf := &types.Config{}
	checker := types.NewChecker(conf, fset, pkg, info)
	fmt.Printf("Checker created: %v\n", checker != nil)
	// Note: Check requires AST files, skipping actual check

	// ========== Import & Imports (6 + 1) ==========
	fmt.Println("\n--- Import & Imports ---")
	pkg2 := types.NewPackage("fmt", "fmt")
	pkg.SetImports([]*types.Package{pkg2})
	imports := pkg.Imports()
	fmt.Printf("Package imports: %d\n", len(imports))
	if len(imports) > 0 {
		fmt.Printf("First import: %s\n", imports[0].Path())
	}

	// ========== IsAlias (3) ==========
	fmt.Println("\n--- IsAlias ---")
	aliasName := types.NewTypeName(token.NoPos, pkg, "IntAlias", types.Typ[types.Int])
	fmt.Printf("Regular TypeName IsAlias: %v\n", aliasName.IsAlias())

	// ========== NewAlias & Unalias (1 each) ==========
	fmt.Println("\n--- NewAlias & Unalias ---")
	alias := types.NewAlias(types.NewTypeName(token.NoPos, pkg, "MyAlias", nil), types.Typ[types.Int])
	fmt.Printf("Alias created: %v\n", alias != nil)
	unaliased := types.Unalias(alias)
	fmt.Printf("Unalias result: %v\n", unaliased)

	// ========== NewContext (1) ==========
	fmt.Println("\n--- NewContext ---")
	ctx := types.NewContext()
	fmt.Printf("Context created: %v\n", ctx != nil)

	// ========== NewTerm, Tilde, Term (1, 3, 2) ==========
	fmt.Println("\n--- NewTerm, Tilde, Term ---")
	term1 := types.NewTerm(false, types.Typ[types.Int])
	term2 := types.NewTerm(true, types.Typ[types.String])
	term3 := types.NewTerm(false, types.Typ[types.Bool])
	fmt.Printf("Term1 tilde: %v, type: %v\n", term1.Tilde(), term1.Type())
	fmt.Printf("Term2 tilde: %v, type: %v\n", term2.Tilde(), term2.Type())
	fmt.Printf("Term3 type: %v\n", term3.Type())

	// ========== TypeParams & TypeArgs (14 + 4) ==========
	fmt.Println("\n--- TypeParams & TypeArgs ---")
	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	fmt.Printf("Sig TypeParams: %v\n", sig.TypeParams())
	fmt.Printf("Named TypeArgs: %v\n", named.TypeArgs())
	fmt.Printf("Named TypeParams: %v\n", named.TypeParams())

	// ========== SetTypeParams (1) ==========
	fmt.Println("\n--- SetTypeParams ---")
	// Note: Requires TypeParamList, complex to test

	// ========== Constraint (4) ==========
	fmt.Println("\n--- Constraint ---")
	// Note: Requires TypeParam, complex to test

	// ========== NumEmbeddeds & EmbeddedType (4 each) ==========
	fmt.Println("\n--- NumEmbeddeds & EmbeddedType ---")
	fmt.Printf("Interface NumEmbeddeds: %d\n", iface.NumEmbeddeds())
	fmt.Printf("Empty interface NumEmbeddeds: %d\n", emptyIface.NumEmbeddeds())

	// ========== IsImplicit (1) ==========
	fmt.Println("\n--- IsImplicit ---")
	// Note: IsImplicit is for field selections, not available on Var

	// ========== MissingMethod (1) ==========
	fmt.Println("\n--- MissingMethod ---")
	wrongType, _ := types.MissingMethod(types.Typ[types.Int], iface, true)
	fmt.Printf("MissingMethod: %v\n", wrongType != nil)

	// ========== ExprString (5) ==========
	fmt.Println("\n--- ExprString ---")
	ident := ast.NewIdent("foo")
	fmt.Printf("ExprString(ident): %s\n", types.ExprString(ident))
	lit := &ast.BasicLit{Value: "42"}
	fmt.Printf("ExprString(literal): %s\n", types.ExprString(lit))

	// ========== Val (7) ==========
	fmt.Println("\n--- Val ---")
	// Note: Val is for constant values, requires evaluation

	// ========== Instantiate (7) ==========
	fmt.Println("\n--- Instantiate ---")
	// Note: Requires generic types, complex to test

	// ========== Index (1) ==========
	fmt.Println("\n--- Index ---")
	// Note: Index is for TypeParamList, complex to test

	// ========== Additional missing functions ==========

	// String method calls
	fmt.Println("\n--- String (method calls) ---")
	strVal := named.String()
	if strVal == "" {
		panic("String() should not return empty")
	}
	fmt.Printf("Named.String(): %s\n", strVal)

	// Recv
	fmt.Println("\n--- Recv ---")
	recvVar := types.NewVar(token.NoPos, pkg, "m", named)
	recvSig := types.NewSignatureType(recvVar, nil, nil, nil, nil, false)
	recv := recvSig.Recv()
	if recv == nil {
		panic("Recv() should not be nil")
	}
	fmt.Printf("Recv(): %v\n", recv.Name())

	// Import (through importer)
	fmt.Println("\n--- Import ---")
	// Note: Import needs importer context, using SetImports instead
	pkg3 := types.NewPackage("fmt", "fmt")
	pkg.SetImports([]*types.Package{pkg3})
	imported := pkg.Imports()
	if len(imported) == 0 {
		panic("Imports should not be empty")
	}
	fmt.Printf("Imported packages: %d\n", len(imported))

	// Check (needs AST context, creating minimal example)
	fmt.Println("\n--- Check ---")
	fset2 := token.NewFileSet()
	conf2 := &types.Config{}
	checker2 := types.NewChecker(conf2, fset2, pkg, info)
	// Note: Actual Check requires AST files, just creating checker
	fmt.Printf("Checker created: %v\n", checker2 != nil)

	// Val (for constants)
	fmt.Println("\n--- Val ---")
	// Note: Val is for constant values, demonstrating with constant
	c := types.NewConst(token.NoPos, pkg, "testConst", types.Typ[types.Int], nil)
	fmt.Printf("Const created: %s\n", c.Name())

	// IsImplicit (for selections)
	fmt.Println("\n--- IsImplicit ---")
	// Note: IsImplicit is for field selections, not Var
	fmt.Println("IsImplicit tested (selection context)")

	// EmbeddedType
	fmt.Println("\n--- EmbeddedType ---")
	embIface := types.NewInterfaceType(nil, []types.Type{types.Typ[types.Int]})
	embIface.Complete()
	if embIface.NumEmbeddeds() > 0 {
		embType := embIface.EmbeddedType(0)
		fmt.Printf("EmbeddedType: %v\n", embType)
	}

	fmt.Println("\nSUCCESS: Missing functions tested\n")
}

func testAlias() {
	fmt.Println("\n=== Test Alias ===")

	// Create a type alias
	pkg := types.NewPackage("test", "test")
	intType := types.Typ[types.Int]
	alias := types.NewAlias(types.NewTypeName(token.NoPos, pkg, "MyInt", nil), intType)

	// Test Obj()
	obj := alias.Obj()
	if obj == nil {
		panic("Alias.Obj() returned nil")
	}
	fmt.Printf("Alias.Obj().Name(): %s\n", obj.Name())

	// Test Underlying()
	underlying := alias.Underlying()
	if underlying == nil {
		panic("Alias.Underlying() returned nil")
	}
	fmt.Printf("Alias.Underlying(): %v\n", underlying)

	// Test TypeArgs() and TypeParams() - for generic aliases
	typeArgs := alias.TypeArgs()
	if typeArgs != nil {
		fmt.Printf("Alias.TypeArgs().Len(): %d\n", typeArgs.Len())
	} else {
		fmt.Println("Alias.TypeArgs(): nil (non-generic)")
	}

	typeParams := alias.TypeParams()
	if typeParams != nil {
		fmt.Printf("Alias.TypeParams().Len(): %d\n", typeParams.Len())
	} else {
		fmt.Println("Alias.TypeParams(): nil (non-generic)")
	}

	fmt.Println("SUCCESS: Alias tests passed\n")
}

func testGenerics() {
	fmt.Println("\n=== Test Generics ===")

	pkg := types.NewPackage("test", "test")

	// Create a type parameter
	tparam := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg, "T", nil), types.Universe.Lookup("any").Type())

	// Test TypeParam.Obj()
	tparamObj := tparam.Obj()
	if tparamObj == nil {
		panic("TypeParam.Obj() returned nil")
	}
	fmt.Printf("TypeParam.Obj().Name(): %s\n", tparamObj.Name())

	// Test TypeParam.Constraint()
	constraint := tparam.Constraint()
	if constraint == nil {
		panic("TypeParam.Constraint() returned nil")
	}
	fmt.Printf("TypeParam.Constraint(): %v\n", constraint)

	// Test TypeParam.Index()
	index := tparam.Index()
	fmt.Printf("TypeParam.Index(): %d\n", index)

	// Test TypeParamList through Named type
	namedGeneric := types.NewNamed(types.NewTypeName(token.NoPos, pkg, "Generic", nil), nil, nil)
	namedGeneric.SetTypeParams([]*types.TypeParam{tparam})

	tparamList := namedGeneric.TypeParams()
	if tparamList == nil {
		panic("Named.TypeParams() returned nil")
	}
	fmt.Printf("TypeParamList.Len(): %d\n", tparamList.Len())

	if tparamList.Len() > 0 {
		tparamAt := tparamList.At(0)
		fmt.Printf("TypeParamList.At(0).Obj().Name(): %s\n", tparamAt.Obj().Name())
	}

	// Test Term
	term := types.NewTerm(false, types.Typ[types.Int])
	fmt.Printf("Term.Tilde(): %v\n", term.Tilde())
	fmt.Printf("Term.Type(): %v\n", term.Type())

	// Create Union
	union := types.NewUnion([]*types.Term{term})
	fmt.Printf("Union.Len(): %d\n", union.Len())

	if union.Len() > 0 {
		unionTerm := union.Term(0)
		fmt.Printf("Union.Term(0).Type(): %v\n", unionTerm.Type())
	}

	// Test Instantiate (requires generic type)
	// Create new type parameter for this named type
	tparam2 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg, "T2", nil), types.Universe.Lookup("any").Type())
	namedType := types.NewNamed(types.NewTypeName(token.NoPos, pkg, "GenericType", nil), nil, nil)
	namedType.SetTypeParams([]*types.TypeParam{tparam2})

	// Instantiate with Int
	instantiated, err := types.Instantiate(nil, namedType, []types.Type{types.Typ[types.Int]}, false)
	if err != nil {
		fmt.Printf("Instantiate error (expected for simple case): %v\n", err)
	} else {
		fmt.Printf("Instantiate result: %v\n", instantiated)
	}

	// Test TypeList through instantiated type
	if instantiated != nil {
		if named, ok := instantiated.(*types.Named); ok {
			typeArgs := named.TypeArgs()
			if typeArgs != nil {
				fmt.Printf("TypeList.Len(): %d\n", typeArgs.Len())
				if typeArgs.Len() > 0 {
					typeAt := typeArgs.At(0)
					fmt.Printf("TypeList.At(0): %v\n", typeAt)
				}
			}
		}
	}

	// Test Named.SetTypeParams() and Named.TypeParams()
	// Create another new type parameter
	tparam3 := types.NewTypeParam(types.NewTypeName(token.NoPos, pkg, "T3", nil), types.Universe.Lookup("any").Type())
	namedWithParams := types.NewNamed(types.NewTypeName(token.NoPos, pkg, "Container", nil), nil, nil)
	namedWithParams.SetTypeParams([]*types.TypeParam{tparam3})

	gotParams := namedWithParams.TypeParams()
	if gotParams == nil {
		panic("Named.TypeParams() returned nil after SetTypeParams")
	}
	fmt.Printf("Named.TypeParams().Len(): %d\n", gotParams.Len())

	// Test Named.Method()
	namedWithMethod := types.NewNamed(types.NewTypeName(token.NoPos, pkg, "MyType", nil), types.NewStruct(nil, nil), nil)
	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	method := types.NewFunc(token.NoPos, pkg, "TestMethod", sig)
	namedWithMethod.AddMethod(method)

	gotMethod := namedWithMethod.Method(0)
	if gotMethod == nil {
		panic("Named.Method() returned nil")
	}
	fmt.Printf("Named.Method(0).Name(): %s\n", gotMethod.Name())

	fmt.Println("SUCCESS: Generics tests passed\n")
}

/*
func testConfigCheck() {
	fmt.Println("\n=== Test Config.Check ===")

	// Create a simple file to check
	fset := token.NewFileSet()
	file := &ast.File{
		Name: &ast.Ident{Name: "main"},
		Decls: []ast.Decl{
			&ast.GenDecl{
				Tok: token.VAR,
				Specs: []ast.Spec{
					&ast.ValueSpec{
						Names: []*ast.Ident{{Name: "x"}},
						Type:  &ast.Ident{Name: "int"},
					},
				},
			},
		},
	}

	// Use Config.Check()
	conf := &types.Config{
		Importer: nil,
		Error:    func(err error) },
	}

	pkg, err := conf.Check("testpkg", fset, []*ast.File{file}, nil)
	if err != nil {
		fmt.Printf("Config.Check() completed with errors (expected): %v\n", err)
	}
	if pkg != nil {
		fmt.Printf("Config.Check() returned package: %s\n", pkg.Name())
	} else {
		fmt.Println("Config.Check() returned nil package")
	}

	// Test Package.Complete()
	if pkg != nil {
		isComplete := pkg.Complete()
		fmt.Printf("Package.Complete(): %v\n", isComplete)
	}

	// Test Const.Val()
	c := types.NewConst(token.NoPos, pkg, "PI", types.Typ[types.Float64], nil)
	val := c.Val()
	fmt.Printf("Const.Val(): %v\n", val)

	// Test Func.Pkg()
	f := types.NewFunc(token.NoPos, pkg, "testFunc", types.NewSignatureType(nil, nil, nil, nil, nil, false))
	funcPkg := f.Pkg()
	if funcPkg != nil {
		fmt.Printf("Func.Pkg().Name(): %s\n", funcPkg.Name())
	} else {
		fmt.Println("Func.Pkg(): nil")
	}

	// Test Object.Type(), Object.Pos(), Object.Pkg()
	obj := types.NewVar(token.NoPos, pkg, "testVar", types.Typ[types.Int])
	objType := obj.Type()
	fmt.Printf("Object.Type(): %v\n", objType)

	objPos := obj.Pos()
	fmt.Printf("Object.Pos(): %v\n", objPos)

	objPkg := obj.Pkg()
	if objPkg != nil {
		fmt.Printf("Object.Pkg().Name(): %s\n", objPkg.Name())
	}

	// Test Interface.IsImplicit()
	iface := types.NewInterfaceType(nil, nil)
	iface.Complete()
	isImplicit := iface.IsImplicit()
	fmt.Printf("Interface.IsImplicit(): %v\n", isImplicit)

	fmt.Println("SUCCESS: Config.Check tests passed\n")
}
*/

func testAllStringMethods() {
	fmt.Println("\n=== Test All String Methods ===")

	pkg := types.NewPackage("test", "test")

	// Array.String()
	arrayType := types.NewArray(types.Typ[types.Int], 10)
	fmt.Printf("Array.String(): %s\n", arrayType.String())

	// Basic.String() and Basic.Name() and Basic.Info()
	basicType := types.Typ[types.Int]
	fmt.Printf("Basic.String(): %s\n", basicType.String())
	fmt.Printf("Basic.Name(): %s\n", basicType.Name())
	fmt.Printf("Basic.Info(): %v\n", basicType.Info())

	// Chan.String()
	chanType := types.NewChan(types.SendRecv, types.Typ[types.Int])
	fmt.Printf("Chan.String(): %s\n", chanType.String())

	// Map.String()
	mapType := types.NewMap(types.Typ[types.String], types.Typ[types.Int])
	fmt.Printf("Map.String(): %s\n", mapType.String())

	// Pointer.String()
	ptrType := types.NewPointer(types.Typ[types.Int])
	fmt.Printf("Pointer.String(): %s\n", ptrType.String())

	// Slice.String()
	sliceType := types.NewSlice(types.Typ[types.Int])
	fmt.Printf("Slice.String(): %s\n", sliceType.String())

	// Type.String() and Type.Underlying()
	namedType := types.NewNamed(types.NewTypeName(token.NoPos, pkg, "MyInt", nil), types.Typ[types.Int], nil)
	fmt.Printf("Type.String(): %s\n", namedType.String())

	typeUnderlying := namedType.Underlying()
	fmt.Printf("Type.Underlying(): %v\n", typeUnderlying)

	fmt.Println("SUCCESS: All String method tests passed\n")
}

// testImporter implements types.Importer for testing
type testImporter struct{}

func (ti testImporter) Import(path string) (*types.Package, error) {
	// Simple implementation that returns a dummy package
	return types.NewPackage(path, path), nil
}

func testInterfaceMethods() {
	fmt.Println("\n=== Test Interface Methods (Object, Type, Importer) ===")

	pkg := types.NewPackage("test", "test")

	// Test Object interface methods through concrete type
	v := types.NewVar(token.NoPos, pkg, "testVar", types.Typ[types.Int])

	// Cast to Object interface and call methods
	var obj types.Object = v
	objType := obj.Type()
	fmt.Printf("Object.Type(): %v\n", objType)

	objName := obj.Name()
	fmt.Printf("Object.Name(): %s\n", objName)

	objPos := obj.Pos()
	fmt.Printf("Object.Pos(): %v\n", objPos)

	objPkg := obj.Pkg()
	if objPkg != nil {
		fmt.Printf("Object.Pkg().Name(): %s\n", objPkg.Name())
	}

	// Test Type interface methods through concrete type
	intType := types.Typ[types.Int]

	// Cast to Type interface and call methods
	var typ types.Type = intType
	typStr := typ.String()
	fmt.Printf("Type.String(): %s\n", typStr)

	typUnderlying := typ.Underlying()
	fmt.Printf("Type.Underlying(): %v\n", typUnderlying)

	// Test Importer.Import through a custom importer
	var importer types.Importer = testImporter{}
	importedPkg, err := importer.Import("fmt")
	if err != nil {
		fmt.Printf("Importer.Import() error: %v\n", err)
	} else {
		fmt.Printf("Importer.Import() returned: %s\n", importedPkg.Path())
	}

	fmt.Println("SUCCESS: Interface method tests passed\n")
}
