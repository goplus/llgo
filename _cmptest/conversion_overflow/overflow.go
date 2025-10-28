package main

import "fmt"

func main() {
	fmt.Println("=== Overflow and Wrapping Behavior ===")

	// 1. Signed integer overflow
	fmt.Println("\n1. Signed Integer Overflow:")
	var i8max int8 = 127
	var i8min int8 = -128
	fmt.Printf("int8 max (127) + 1 = %d\n", i8max+1)
	fmt.Printf("int8 max (127) + 2 = %d\n", i8max+2)
	fmt.Printf("int8 min (-128) - 1 = %d\n", i8min-1)
	fmt.Printf("int8 min (-128) - 2 = %d\n", i8min-2)

	var i16max int16 = 32767
	var i16min int16 = -32768
	fmt.Printf("int16 max (32767) + 1 = %d\n", i16max+1)
	fmt.Printf("int16 min (-32768) - 1 = %d\n", i16min-1)

	var i32max int32 = 2147483647
	var i32min int32 = -2147483648
	fmt.Printf("int32 max + 1 = %d\n", i32max+1)
	fmt.Printf("int32 min - 1 = %d\n", i32min-1)

	// 2. Unsigned integer overflow
	fmt.Println("\n2. Unsigned Integer Overflow:")
	var u8max uint8 = 255
	fmt.Printf("uint8 max (255) + 1 = %d\n", u8max+1)
	fmt.Printf("uint8 max (255) + 2 = %d\n", u8max+2)
	fmt.Printf("uint8(0) - 1 = %d\n", uint8(0)-1)

	var u16max uint16 = 65535
	fmt.Printf("uint16 max (65535) + 1 = %d\n", u16max+1)
	fmt.Printf("uint16(0) - 1 = %d\n", uint16(0)-1)

	var u32max uint32 = 4294967295
	fmt.Printf("uint32 max + 1 = %d\n", u32max+1)
	fmt.Printf("uint32(0) - 1 = %d\n", uint32(0)-1)

	// 3. Multiplication overflow
	fmt.Println("\n3. Multiplication Overflow:")
	var mi8 int8 = 64
	fmt.Printf("int8(64) * 2 = %d\n", mi8*2)
	fmt.Printf("int8(64) * 3 = %d\n", mi8*3)

	var mi16 int16 = 256
	fmt.Printf("int16(256) * 128 = %d\n", mi16*128)
	fmt.Printf("int16(256) * 256 = %d\n", mi16*256)

	// 4. Subtraction underflow
	fmt.Println("\n4. Subtraction Underflow:")
	var s8 int8 = -100
	fmt.Printf("int8(-100) - 30 = %d\n", s8-30)
	fmt.Printf("int8(-100) - 50 = %d\n", s8-50)

	// 5. Mixed operations causing overflow
	fmt.Println("\n5. Mixed Operations Causing Overflow:")
	var m1 int8 = 100
	var m2 int8 = 50
	fmt.Printf("int8(100) + int8(50) = %d\n", m1+m2)

	var m3 int8 = 127
	var m4 int8 = 1
	fmt.Printf("int8(127) + int8(1) = %d\n", m3+m4)

	// 6. Boundary arithmetic
	fmt.Println("\n6. Boundary Value Arithmetic:")
	var b1 int8 = 127
	var b2 int8 = 127
	fmt.Printf("int8(127) + int8(127) = %d\n", b1+b2)

	var b3 int8 = -128
	var b4 int8 = -128
	fmt.Printf("int8(-128) + int8(-128) = %d\n", b3+b4)

	// 7. Division edge cases
	fmt.Println("\n7. Division Edge Cases:")
	var d1 int8 = -128
	var d2 int8 = -1
	fmt.Printf("int8(-128) / int8(-1) = %d\n", d1/d2)

	var d3 int32 = -2147483648
	var d4 int32 = -1
	fmt.Printf("int32(MinInt32) / int32(-1) = %d\n", d3/d4)

	// 8. Negation overflow
	fmt.Println("\n8. Negation Overflow:")
	var n1 int8 = -128
	fmt.Printf("-int8(-128) = %d\n", -n1)

	var n2 int32 = -2147483648
	fmt.Printf("-int32(MinInt32) = %d\n", -n2)

	// 9. Shift operations with overflow
	fmt.Println("\n9. Shift Operations:")
	var sh1 int8 = 1
	fmt.Printf("int8(1) << 7 = %d\n", sh1<<7)
	fmt.Printf("int8(1) << 8 = %d\n", sh1<<8)

	var sh2 int16 = 1
	fmt.Printf("int16(1) << 15 = %d\n", sh2<<15)
	fmt.Printf("int16(1) << 16 = %d\n", sh2<<16)

	// 10. Increment/decrement at boundaries
	fmt.Println("\n10. Increment/Decrement at Boundaries:")
	var inc1 int8 = 126
	inc1++
	fmt.Printf("int8(126)++ = %d\n", inc1)
	inc1++
	fmt.Printf("int8(127)++ = %d\n", inc1)

	var dec1 int8 = -127
	dec1--
	fmt.Printf("int8(-127)-- = %d\n", dec1)
	dec1--
	fmt.Printf("int8(-128)-- = %d\n", dec1)

	var inc2 uint8 = 254
	inc2++
	fmt.Printf("uint8(254)++ = %d\n", inc2)
	inc2++
	fmt.Printf("uint8(255)++ = %d\n", inc2)

	var dec2 uint8 = 1
	dec2--
	fmt.Printf("uint8(1)-- = %d\n", dec2)
	dec2--
	fmt.Printf("uint8(0)-- = %d\n", dec2)
}
