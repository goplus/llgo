package gotest

import "testing"

// TestUntypedConstantWithTypedVariable tests untyped constants in operations with typed variables
// Issue #961: Program crashes when using untyped constants with typed variables
func TestUntypedConstantWithTypedVariable(t *testing.T) {
	const untypedInt = 42
	const untypedFloat = 3.14
	const untypedComplex = 1 + 2i

	// Test with int32
	var i32 int32 = 70000
	result := untypedInt + i32
	expected := int32(70042)
	if result != expected {
		t.Errorf("untypedInt(42) + int32(70000) = %d (type %T), want %d (type int32)", result, result, expected)
	}

	// Test with int16 (no overflow)
	var i16 int16 = 100
	result16 := untypedInt + i16
	expected16 := int16(142)
	if result16 != expected16 {
		t.Errorf("untypedInt(42) + int16(100) = %d (type %T), want %d (type int16)", result16, result16, expected16)
	}

	// Test with float32
	var f32 float32 = 3.14159
	resultF32 := untypedFloat + f32
	expectedF32 := float32(6.28159)
	if resultF32 < expectedF32-0.00001 || resultF32 > expectedF32+0.00001 {
		t.Errorf("untypedFloat(3.14) + float32(3.14159) = %f (type %T), want ~%f (type float32)", resultF32, resultF32, expectedF32)
	}

	// Test with complex64
	var c64 complex64 = 1 + 2i
	resultC64 := untypedComplex + c64
	expectedC64 := complex64(2 + 4i)
	if resultC64 != expectedC64 {
		t.Errorf("untypedComplex(1+2i) + complex64(1+2i) = %v (type %T), want %v (type complex64)", resultC64, resultC64, expectedC64)
	}
}

// TestUntypedConstantArithmetic tests arithmetic with untyped constants
func TestUntypedConstantArithmetic(t *testing.T) {
	const a = 100
	const b = 200

	// Basic operations
	if c := a + b; c != 300 {
		t.Errorf("100 + 200 = %d, want 300", c)
	}
	if d := a * b; d != 20000 {
		t.Errorf("100 * 200 = %d, want 20000", d)
	}
	if e := b / a; e != 2 {
		t.Errorf("200 / 100 = %d, want 2", e)
	}
	if f := b % a; f != 0 {
		t.Errorf("200 %% 100 = %d, want 0", f)
	}
}

// TestUntypedConstantExpression tests complex constant expressions
func TestUntypedConstantExpression(t *testing.T) {
	const c1 = 1 << 10
	const c2 = c1 * 1024
	const c3 = c2 / 3

	if c1 != 1024 {
		t.Errorf("1 << 10 = %d, want 1024", c1)
	}
	if c2 != 1048576 {
		t.Errorf("(1 << 10) * 1024 = %d, want 1048576", c2)
	}
	if c3 != 349525 {
		t.Errorf("c2 / 3 = %d, want 349525", c3)
	}
}

// TestMixedUntypedTypedExpressions tests expressions mixing untyped and typed
func TestMixedUntypedTypedExpressions(t *testing.T) {
	const uConst = 10

	var v1 int8 = 5
	var v2 int16 = 10
	var v3 int32 = 20

	// These should take the type of the typed variable
	result1 := uConst + v1
	if _, ok := interface{}(result1).(int8); !ok {
		t.Errorf("const(10) + int8(5) should be int8, got %T", result1)
	}
	if result1 != 15 {
		t.Errorf("const(10) + int8(5) = %d, want 15", result1)
	}

	result2 := uConst + v2
	if _, ok := interface{}(result2).(int16); !ok {
		t.Errorf("const(10) + int16(10) should be int16, got %T", result2)
	}
	if result2 != 20 {
		t.Errorf("const(10) + int16(10) = %d, want 20", result2)
	}

	result3 := uConst + v3
	if _, ok := interface{}(result3).(int32); !ok {
		t.Errorf("const(10) + int32(20) should be int32, got %T", result3)
	}
	if result3 != 30 {
		t.Errorf("const(10) + int32(20) = %d, want 30", result3)
	}
}

// TestUntypedBool tests untyped boolean constants
func TestUntypedBool(t *testing.T) {
	const untypedTrue = true
	const untypedFalse = false

	var b1 bool = untypedTrue
	var b2 bool = untypedFalse

	if !b1 {
		t.Error("untypedTrue should be true")
	}
	if b2 {
		t.Error("untypedFalse should be false")
	}
}

// TestUntypedString tests untyped string constants
func TestUntypedString(t *testing.T) {
	const untypedString = "hello"
	var s1 string = untypedString

	if s1 != "hello" {
		t.Errorf("untypedString = %q, want %q", s1, "hello")
	}
}

// TestUntypedRune tests untyped rune constants
func TestUntypedRune(t *testing.T) {
	const untypedRune = 'A'

	var r1 rune = untypedRune
	var r2 int32 = untypedRune

	if r1 != 'A' {
		t.Errorf("untypedRune as rune = %c, want 'A'", r1)
	}
	if r2 != 'A' {
		t.Errorf("untypedRune as int32 = %d, want %d", r2, int32('A'))
	}
	if r1 != r2 {
		t.Errorf("rune and int32 should be the same: %d != %d", r1, r2)
	}
}

// TestUntypedZeroValues tests untyped zero constants
func TestUntypedZeroValues(t *testing.T) {
	const zero = 0
	const zeroFloat = 0.0
	const emptyString = ""

	var iz int32 = zero
	var fz float64 = zeroFloat
	var sz string = emptyString

	if iz != 0 {
		t.Errorf("untyped 0 -> int32 = %d, want 0", iz)
	}
	if fz != 0.0 {
		t.Errorf("untyped 0.0 -> float64 = %f, want 0.0", fz)
	}
	if sz != "" {
		t.Errorf("untyped \"\" -> string = %q, want \"\"", sz)
	}
}
