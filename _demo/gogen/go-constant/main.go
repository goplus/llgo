package main

import (
	"fmt"
	"go/constant"
	"go/token"
)

func main() {
	testMakeFunctions()
	testValueMethods()
	testOperations()
	testConversions()

	fmt.Println("\n=== All go/constant tests passed ===")
}

func testMakeFunctions() {
	fmt.Println("=== Test Make Functions ===")

	// MakeBool
	boolVal := constant.MakeBool(true)
	fmt.Printf("MakeBool(true): %v\n", boolVal)

	// MakeInt64
	intVal := constant.MakeInt64(42)
	fmt.Printf("MakeInt64(42): %v\n", intVal)

	// MakeUint64
	uintVal := constant.MakeUint64(100)
	fmt.Printf("MakeUint64(100): %v\n", uintVal)

	// MakeFloat64
	floatVal := constant.MakeFloat64(3.14)
	fmt.Printf("MakeFloat64(3.14): %v\n", floatVal)

	// MakeString
	strVal := constant.MakeString("hello")
	fmt.Printf("MakeString(\"hello\"): %v\n", strVal)

	// MakeImag
	imagVal := constant.MakeImag(constant.MakeFloat64(2.0))
	fmt.Printf("MakeImag(2.0): %v\n", imagVal)

	// MakeFromLiteral
	litVal := constant.MakeFromLiteral("123", token.INT, 0)
	fmt.Printf("MakeFromLiteral(\"123\", INT): %v\n", litVal)

	// Make (generic constructor)
	genericVal := constant.Make(int64(99))
	fmt.Printf("Make(int64(99)): %v\n", genericVal)

	fmt.Println("SUCCESS: Make functions work correctly\n")
}

func testValueMethods() {
	fmt.Println("\n=== Test Value Methods ===")

	intVal := constant.MakeInt64(42)

	// Kind
	kind := intVal.Kind()
	fmt.Printf("Value.Kind(): %v\n", kind)

	if kind != constant.Int {
		panic(fmt.Sprintf("Expected Int kind, got %v", kind))
	}

	// String
	strRep := intVal.String()
	fmt.Printf("Value.String(): %s\n", strRep)

	// ExactString
	exactStr := intVal.ExactString()
	fmt.Printf("Value.ExactString(): %s\n", exactStr)

	fmt.Println("SUCCESS: Value methods work correctly\n")
}

func testOperations() {
	fmt.Println("\n=== Test Operations ===")

	a := constant.MakeInt64(10)
	b := constant.MakeInt64(3)

	// BinaryOp
	sum := constant.BinaryOp(a, token.ADD, b)
	fmt.Printf("BinaryOp(10, ADD, 3): %v\n", sum)

	// UnaryOp
	neg := constant.UnaryOp(token.SUB, a, 0)
	fmt.Printf("UnaryOp(SUB, 10): %v\n", neg)

	// Shift
	shifted := constant.Shift(a, token.SHL, 2)
	fmt.Printf("Shift(10, SHL, 2): %v\n", shifted)

	// Compare
	cmp := constant.Compare(a, token.GTR, b)
	fmt.Printf("Compare(10, GTR, 3): %v\n", cmp)

	// Sign
	sign := constant.Sign(neg)
	fmt.Printf("Sign(-10): %d\n", sign)

	if sign != -1 {
		panic(fmt.Sprintf("Expected sign -1, got %d", sign))
	}

	fmt.Println("SUCCESS: Operations work correctly\n")
}

func testConversions() {
	fmt.Println("\n=== Test Conversions ===")

	intVal := constant.MakeInt64(42)

	// Int64Val
	i64, exact := constant.Int64Val(intVal)
	fmt.Printf("Int64Val(42): %d (exact: %v)\n", i64, exact)

	if i64 != 42 || !exact {
		panic(fmt.Sprintf("Expected 42 (exact), got %d (exact: %v)", i64, exact))
	}

	// BoolVal
	boolConst := constant.MakeBool(true)
	boolResult := constant.BoolVal(boolConst)
	fmt.Printf("BoolVal(true): %v\n", boolResult)

	// StringVal
	strConst := constant.MakeString("test")
	strResult := constant.StringVal(strConst)
	fmt.Printf("StringVal(\"test\"): %s\n", strResult)

	// ToInt
	floatVal := constant.MakeFloat64(3.7)
	intConverted := constant.ToInt(floatVal)
	fmt.Printf("ToInt(3.7): %v\n", intConverted)

	// Val (get underlying value)
	val := constant.Val(intVal)
	fmt.Printf("Val(42): %v\n", val)

	fmt.Println("SUCCESS: Conversions work correctly\n")
}
