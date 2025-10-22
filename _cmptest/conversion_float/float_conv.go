package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Println("=== Float Type Conversions ===")

	// 1. Float32 <-> Float64 precision
	fmt.Println("\n1. Float32 <-> Float64 Precision:")
	var f64 float64 = 1.23456789012345678901234567890
	var f32 float32 = float32(f64)
	var f64_2 float64 = float64(f32)
	fmt.Printf("float64: %.20f\n", f64)
	fmt.Printf("-> float32: %.20f\n", f32)
	fmt.Printf("-> float64: %.20f\n", f64_2)

	// 2. Special values
	fmt.Println("\n2. Special Float Values:")
	var inf64 float64 = math.Inf(1)
	var inf32 float32 = float32(inf64)
	fmt.Printf("float64(+Inf) -> float32: %v\n", inf32)

	var negInf64 float64 = math.Inf(-1)
	var negInf32 float32 = float32(negInf64)
	fmt.Printf("float64(-Inf) -> float32: %v\n", negInf32)

	var nan64 float64 = math.NaN()
	var nan32 float32 = float32(nan64)
	fmt.Printf("float64(NaN) -> float32: %v\n", nan32)

	// 3. Float to Int conversions (normal range)
	fmt.Println("\n3. Float to Int (Normal Range):")
	var f1 float64 = 123.456
	fmt.Printf("float64(123.456) -> int32: %d\n", int32(f1))
	fmt.Printf("float64(123.456) -> uint32: %d\n", uint32(f1))

	var f_neg float64 = -123.456
	fmt.Printf("float64(-123.456) -> int32: %d\n", int32(f_neg))

	// 4. Float to Int conversions (overflow/saturation)
	fmt.Println("\n4. Float to Int (Overflow/Saturation):")
	var f2 float64 = 1e20
	fmt.Printf("float64(1e20) -> int32: %d\n", int32(f2))
	fmt.Printf("float64(1e20) -> int8: %d\n", int8(f2))
	fmt.Printf("float64(1e20) -> uint32: %d\n", uint32(f2))

	var f3 float64 = -1e20
	fmt.Printf("float64(-1e20) -> int32: %d\n", int32(f3))
	fmt.Printf("float64(-1e20) -> int8: %d\n", int8(f3))

	// 5. Negative float to unsigned
	fmt.Println("\n5. Negative Float to Unsigned:")
	var f4 float64 = -123.456
	fmt.Printf("float64(-123.456) -> uint32: %d\n", uint32(f4))
	fmt.Printf("float64(-123.456) -> uint8: %d\n", uint8(f4))

	// 6. Special float values to int
	fmt.Println("\n6. Special Float Values to Int:")
	var fInf float64 = math.Inf(1)
	fmt.Printf("float64(+Inf) -> int32: %d\n", int32(fInf))

	var fNegInf float64 = math.Inf(-1)
	fmt.Printf("float64(-Inf) -> int32: %d\n", int32(fNegInf))

	var fNaN float64 = math.NaN()
	fmt.Printf("float64(NaN) -> int32: %d\n", int32(fNaN))

	// 7. Int to Float conversions (precision loss)
	fmt.Println("\n7. Int to Float (Precision Loss):")
	var i1 int64 = 9007199254740993 // 2^53 + 1
	var ff1 float64 = float64(i1)
	fmt.Printf("int64(9007199254740993) -> float64: %.0f\n", ff1)
	fmt.Printf("Precision lost: %v\n", int64(ff1) != i1)

	var i2 int32 = 16777217 // 2^24 + 1
	var ff2 float32 = float32(i2)
	fmt.Printf("int32(16777217) -> float32: %.0f\n", ff2)
	fmt.Printf("Precision lost: %v\n", int32(ff2) != i2)

	// 8. Large uint32 to float to int32 (the bug case)
	fmt.Println("\n8. Large Uint32 -> Float64 -> Int32:")
	var bigUint32 uint32 = 0xFFFFFFFF
	var fBig float64 = float64(bigUint32)
	var iBig int32 = int32(fBig)
	fmt.Printf("uint32(0xFFFFFFFF) = %d\n", bigUint32)
	fmt.Printf("-> float64 = %.0f\n", fBig)
	fmt.Printf("-> int32 = %d\n", iBig)

	// 9. Unsigned to float conversions
	fmt.Println("\n9. Unsigned to Float:")
	var u32 uint32 = 4000000000
	var fU32_32 float32 = float32(u32)
	var fU32_64 float64 = float64(u32)
	fmt.Printf("uint32(4000000000) -> float32: %.0f\n", fU32_32)
	fmt.Printf("uint32(4000000000) -> float64: %.0f\n", fU32_64)

	// 10. Signed to float conversions
	fmt.Println("\n10. Signed to Float:")
	var s32 int32 = -2147483648 // MinInt32
	var fS32_32 float32 = float32(s32)
	var fS32_64 float64 = float64(s32)
	fmt.Printf("int32(MinInt32) -> float32: %.0f\n", fS32_32)
	fmt.Printf("int32(MinInt32) -> float64: %.0f\n", fS32_64)
}
