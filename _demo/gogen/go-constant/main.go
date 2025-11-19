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
	if constant.BoolVal(boolVal) != true {
		panic("MakeBool(true) did not create true value")
	}
	fmt.Printf("MakeBool(true): %v\n", boolVal)

	// MakeInt64
	intVal := constant.MakeInt64(42)
	i64, exact := constant.Int64Val(intVal)
	if i64 != 42 || !exact {
		panic(fmt.Sprintf("MakeInt64(42) failed: got %d, exact=%v", i64, exact))
	}
	fmt.Printf("MakeInt64(42): %v\n", intVal)

	// MakeUint64
	uintVal := constant.MakeUint64(100)
	u64, exact := constant.Uint64Val(uintVal)
	if u64 != 100 || !exact {
		panic(fmt.Sprintf("MakeUint64(100) failed: got %d, exact=%v", u64, exact))
	}
	fmt.Printf("MakeUint64(100): %v\n", uintVal)

	// MakeFloat64
	floatVal := constant.MakeFloat64(3.14)
	f64, exact := constant.Float64Val(floatVal)
	if f64 < 3.13 || f64 > 3.15 || !exact {
		panic(fmt.Sprintf("MakeFloat64(3.14) failed: got %f, exact=%v", f64, exact))
	}
	fmt.Printf("MakeFloat64(3.14): %v\n", floatVal)

	// MakeString
	strVal := constant.MakeString("hello")
	if constant.StringVal(strVal) != "hello" {
		panic(fmt.Sprintf("MakeString failed: got %s", constant.StringVal(strVal)))
	}
	fmt.Printf("MakeString(\"hello\"): %v\n", strVal)

	// MakeImag
	imagVal := constant.MakeImag(constant.MakeFloat64(2.0))
	if imagVal.Kind() != constant.Complex {
		panic(fmt.Sprintf("MakeImag should create Complex, got %v", imagVal.Kind()))
	}
	fmt.Printf("MakeImag(2.0): %v\n", imagVal)

	// MakeFromLiteral
	litVal := constant.MakeFromLiteral("123", token.INT, 0)
	litInt, exact := constant.Int64Val(litVal)
	if litInt != 123 || !exact {
		panic(fmt.Sprintf("MakeFromLiteral failed: got %d, exact=%v", litInt, exact))
	}
	fmt.Printf("MakeFromLiteral(\"123\", INT): %v\n", litVal)

	// Make (generic constructor)
	genericVal := constant.Make(int64(99))
	genInt, exact := constant.Int64Val(genericVal)
	if genInt != 99 || !exact {
		panic(fmt.Sprintf("Make failed: got %d, exact=%v", genInt, exact))
	}
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
	sumVal, _ := constant.Int64Val(sum)
	if sumVal != 13 {
		panic(fmt.Sprintf("BinaryOp ADD failed: expected 13, got %d", sumVal))
	}
	fmt.Printf("BinaryOp(10, ADD, 3): %v\n", sum)

	// UnaryOp
	neg := constant.UnaryOp(token.SUB, a, 0)
	negVal, _ := constant.Int64Val(neg)
	if negVal != -10 {
		panic(fmt.Sprintf("UnaryOp SUB failed: expected -10, got %d", negVal))
	}
	fmt.Printf("UnaryOp(SUB, 10): %v\n", neg)

	// Shift
	shifted := constant.Shift(a, token.SHL, 2)
	shiftVal, _ := constant.Int64Val(shifted)
	if shiftVal != 40 {
		panic(fmt.Sprintf("Shift failed: expected 40, got %d", shiftVal))
	}
	fmt.Printf("Shift(10, SHL, 2): %v\n", shifted)

	// Compare
	cmp := constant.Compare(a, token.GTR, b)
	if !cmp {
		panic("Compare(10, GTR, 3) should be true")
	}
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
	if !boolResult {
		panic("BoolVal(true) should return true")
	}

	// StringVal
	strConst := constant.MakeString("test")
	strResult := constant.StringVal(strConst)
	fmt.Printf("StringVal(\"test\"): %s\n", strResult)
	if strResult != "test" {
		panic(fmt.Sprintf("StringVal failed: expected \"test\", got %s", strResult))
	}

	// ToInt
	floatVal := constant.MakeFloat64(3.0)
	intConverted := constant.ToInt(floatVal)
	fmt.Printf("ToInt(3.0): %v\n", intConverted)
	if intConverted.Kind() != constant.Int {
		panic(fmt.Sprintf("ToInt should return Int kind, got %v", intConverted.Kind()))
	}
	intConvVal, exact := constant.Int64Val(intConverted)
	if intConvVal != 3 || !exact {
		panic(fmt.Sprintf("ToInt(3.0) should be 3, got %d", intConvVal))
	}

	// Val (get underlying value)
	val := constant.Val(intVal)
	fmt.Printf("Val(42): %v\n", val)
	if val == nil {
		panic("Val(42) should not be nil")
	}

	fmt.Println("SUCCESS: Conversions work correctly\n")
}
