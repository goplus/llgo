package main

import "fmt"

func main() {
	// Test 1: int8 overflow wrapping
	var i8max int8 = 127
	fmt.Printf("int8(127) + 1 = %d\n", i8max+1)

	// Test 2: int8 arithmetic edge cases
	var a int8 = 100
	var b int8 = 50
	fmt.Printf("int8(100) + int8(50) = %d\n", a+b)

	// Test 3: int8 multiplication overflow
	var m int8 = 64
	fmt.Printf("int8(64) * 2 = %d\n", m*2)

	// Test 4: uint32 to float64 to int32 conversion
	var bigUint32 uint32 = 0xFFFFFFFF
	fmt.Printf("int32(float64(uint32(0xFFFFFFFF))) = %d\n", int32(float64(bigUint32)))

	// Test 5: untyped constant with typed variable
	const untypedInt = 42
	var i32 int32 = 70000
	fmt.Printf("const(42) + int32(70000) = %d\n", untypedInt+i32)

	// Test 6: signed to unsigned conversion
	var negInt int32 = -1
	fmt.Printf("uint32(int32(-1)) = 0x%X\n", uint32(negInt))

	// Test 7: unsigned to signed conversion
	var bigUint uint32 = 0xFFFFFFFF
	fmt.Printf("int32(uint32(0xFFFFFFFF)) = %d\n", int32(bigUint))

	// Test 8: sign extension
	var i8 int8 = -1
	fmt.Printf("int32(int8(-1)) = %d\n", int32(i8))

	// Test 9: truncation
	var i64 int64 = 0x123456789ABC
	fmt.Printf("int32(int64(0x123456789ABC)) = 0x%X\n", uint32(int32(i64)))

	// Test 10: more overflow cases
	var i8min int8 = -128
	fmt.Printf("int8(-128) - 1 = %d\n", i8min-1)

	var u8max uint8 = 255
	fmt.Printf("uint8(255) + 1 = %d\n", u8max+1)

	// Test 11: negation overflow
	var n1 int8 = -128
	fmt.Printf("-int8(-128) = %d\n", -n1)

	// Test 12: division edge case
	var d1 int8 = -128
	var d2 int8 = -1
	fmt.Printf("int8(-128) / int8(-1) = %d\n", d1/d2)

	// Test 13: int16 overflow
	var i16max int16 = 32767
	fmt.Printf("int16(32767) + 1 = %d\n", i16max+1)

	// Test 14: uint8 truncation from int32
	var negInt8 int32 = -1
	fmt.Printf("uint8(int32(-1)) = 0x%X\n", uint8(negInt8))

	// Test 15: zero extension
	var u8 uint8 = 0xFF
	fmt.Printf("uint32(uint8(0xFF)) = 0x%X\n", uint32(u8))
}
