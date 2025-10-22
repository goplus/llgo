package main

import "fmt"

func main() {
	fmt.Println("=== Untyped Constant Conversions ===")

	// 1. Untyped int with typed variables
	fmt.Println("\n1. Untyped Int with Typed Variables:")
	const untypedInt = 42
	var i8 int8 = 100
	var i16 int16 = 1000
	var i32 int32 = 70000
	var i64 int64 = 1 << 32

	fmt.Printf("untypedInt(42) + int8(100): %d (type %T)\n", untypedInt+i8, untypedInt+i8)
	fmt.Printf("untypedInt(42) + int16(1000): %d (type %T)\n", untypedInt+i16, untypedInt+i16)
	fmt.Printf("untypedInt(42) + int32(70000): %d (type %T)\n", untypedInt+i32, untypedInt+i32)
	fmt.Printf("untypedInt(42) + int64(1<<32): %d (type %T)\n", untypedInt+i64, untypedInt+i64)

	// 2. Untyped float with typed variables
	fmt.Println("\n2. Untyped Float with Typed Variables:")
	const untypedFloat = 3.14
	var f32 float32 = 2.5
	var f64 float64 = 2.5

	fmt.Printf("untypedFloat(3.14) + float32(2.5): %f (type %T)\n", untypedFloat+f32, untypedFloat+f32)
	fmt.Printf("untypedFloat(3.14) + float64(2.5): %f (type %T)\n", untypedFloat+f64, untypedFloat+f64)

	// 3. Untyped complex with typed variables
	fmt.Println("\n3. Untyped Complex with Typed Variables:")
	const untypedComplex = 1 + 2i
	var c64 complex64 = 1 + 2i
	var c128 complex128 = 1 + 2i

	fmt.Printf("untypedComplex(1+2i) + complex64(1+2i): %v (type %T)\n", untypedComplex+c64, untypedComplex+c64)
	fmt.Printf("untypedComplex(1+2i) + complex128(1+2i): %v (type %T)\n", untypedComplex+c128, untypedComplex+c128)

	// 4. Untyped bool
	fmt.Println("\n4. Untyped Bool:")
	const untypedBool = true
	const untypedBoolFalse = false
	var b1 bool = untypedBool
	var b2 bool = untypedBoolFalse
	fmt.Printf("untypedBool(true): %v (type %T)\n", b1, b1)
	fmt.Printf("untypedBool(false): %v (type %T)\n", b2, b2)

	// 5. Untyped string
	fmt.Println("\n5. Untyped String:")
	const untypedString = "hello"
	var s1 string = untypedString
	fmt.Printf("untypedString: %s (type %T)\n", s1, s1)

	// 6. Untyped rune
	fmt.Println("\n6. Untyped Rune:")
	const untypedRune = 'A'
	var r1 rune = untypedRune
	var r2 int32 = untypedRune
	fmt.Printf("untypedRune('A'): %c = %d (type %T)\n", r1, r1, r1)
	fmt.Printf("untypedRune('A') as int32: %d (type %T)\n", r2, r2)

	// 7. Untyped constant expressions
	fmt.Println("\n7. Untyped Constant Expressions:")
	const c1 = 1 << 10
	const c2 = c1 * 1024
	const c3 = float64(c2) / 3.0
	const c4 = int(c3)

	fmt.Printf("1 << 10 = %d\n", c1)
	fmt.Printf("(1 << 10) * 1024 = %d\n", c2)
	fmt.Printf("float64(c2) / 3.0 = %f\n", c3)
	fmt.Printf("int(c3) = %d\n", c4)

	// 8. Untyped operations
	fmt.Println("\n8. Untyped Operations:")
	const a = 100
	const b = 200
	const c = a + b
	const d = a * b
	const e = b / a
	const f = b % a

	fmt.Printf("100 + 200 = %d\n", c)
	fmt.Printf("100 * 200 = %d\n", d)
	fmt.Printf("200 / 100 = %d\n", e)
	fmt.Printf("200 %% 100 = %d\n", f)

	// 9. Mixed untyped and typed in expressions
	fmt.Println("\n9. Mixed Untyped and Typed in Expressions:")
	const uConst = 10
	var v1 int8 = 5
	var v2 int16 = 10
	var v3 int32 = 20

	// These should take the type of the typed variable
	var result1 = uConst + v1
	var result2 = uConst + v2
	var result3 = uConst + v3

	fmt.Printf("const(10) + int8(5) = %d (type %T)\n", result1, result1)
	fmt.Printf("const(10) + int16(10) = %d (type %T)\n", result2, result2)
	fmt.Printf("const(10) + int32(20) = %d (type %T)\n", result3, result3)

	// 10. Untyped zero values
	fmt.Println("\n10. Untyped Zero Values:")
	const zero = 0
	const zeroFloat = 0.0
	const emptyString = ""

	var iz int32 = zero
	var fz float64 = zeroFloat
	var sz string = emptyString

	fmt.Printf("untyped 0 -> int32: %d (type %T)\n", iz, iz)
	fmt.Printf("untyped 0.0 -> float64: %f (type %T)\n", fz, fz)
	fmt.Printf("untyped \"\" -> string: %q (type %T)\n", sz, sz)
}
