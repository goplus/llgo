package gotest

import (
	"math"
	"testing"
)

// TestIntegerOverflow tests that integer overflow wraps correctly
// Issue #961: Max int8 + 1 should be -128, not 128
func TestIntegerOverflow(t *testing.T) {
	// Use variables to avoid compile-time constant overflow detection
	var i8max int8 = 127
	var i8min int8 = -128
	var u8max uint8 = 255
	var i16max int16 = 32767
	var i16min int16 = -32768
	var u16max uint16 = 65535

	tests := []struct {
		name     string
		result   interface{}
		expected interface{}
	}{
		{"int8 max + 1", i8max + 1, int8(-128)},
		{"int8 max + 2", i8max + 2, int8(-127)},
		{"int8 min - 1", i8min - 1, int8(127)},
		{"int8 min - 2", i8min - 2, int8(126)},
		{"uint8 max + 1", u8max + 1, uint8(0)},
		{"uint8 max + 2", u8max + 2, uint8(1)},
		{"int16 max + 1", i16max + 1, int16(-32768)},
		{"int16 min - 1", i16min - 1, int16(32767)},
		{"uint16 max + 1", u16max + 1, uint16(0)},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if tt.result != tt.expected {
				t.Errorf("%s: got %v, want %v", tt.name, tt.result, tt.expected)
			}
		})
	}
}

// TestIntegerOverflowOperations tests various overflow operations
func TestIntegerOverflowOperations(t *testing.T) {
	// Multiplication overflow
	var m1 int8 = 64
	if result := m1 * 2; result != -128 {
		t.Errorf("int8(64) * 2 = %d, want -128", result)
	}

	// Addition boundary
	var a1 int8 = 100
	var a2 int8 = 50
	if result := a1 + a2; result != -106 {
		t.Errorf("int8(100) + int8(50) = %d, want -106", result)
	}

	// Negation overflow
	var n1 int8 = -128
	if result := -n1; result != -128 {
		t.Errorf("-int8(-128) = %d, want -128", result)
	}

	// Division edge case
	var d1 int8 = -128
	var d2 int8 = -1
	if result := d1 / d2; result != -128 {
		t.Errorf("int8(-128) / int8(-1) = %d, want -128", result)
	}
}

// TestFloatToIntConversion tests float-to-int conversions
// Note: Go has undefined behavior for out-of-range float-to-int conversions
// These tests document the actual behavior we observe
func TestFloatToIntConversion(t *testing.T) {
	// Test normal range conversions (well-defined behavior)
	t.Run("normal range", func(t *testing.T) {
		input := 123.456
		if result := int32(input); result != 123 {
			t.Errorf("int32(%v) = %d, want 123", input, result)
		}
		if result := int8(input); result != 123 {
			t.Errorf("int8(%v) = %d, want 123", input, result)
		}
		if result := uint32(input); result != 123 {
			t.Errorf("uint32(%v) = %d, want 123", input, result)
		}
	})

	// Out-of-range conversions have undefined behavior in Go
	// We just document what happens but don't assert specific values
	t.Run("large positive overflow - undefined behavior", func(t *testing.T) {
		input := 1e20
		result32 := int32(input)
		result8 := int8(input)
		resultu32 := uint32(input)
		t.Logf("int32(1e20) = %d (undefined behavior)", result32)
		t.Logf("int8(1e20) = %d (undefined behavior)", result8)
		t.Logf("uint32(1e20) = %d (undefined behavior)", resultu32)
	})

	t.Run("large negative underflow - undefined behavior", func(t *testing.T) {
		input := -1e20
		result32 := int32(input)
		result8 := int8(input)
		resultu32 := uint32(input)
		t.Logf("int32(-1e20) = %d (undefined behavior)", result32)
		t.Logf("int8(-1e20) = %d (undefined behavior)", result8)
		t.Logf("uint32(-1e20) = %d (undefined behavior)", resultu32)
	})

	t.Run("negative to unsigned - undefined behavior", func(t *testing.T) {
		input := -123.456
		if result := int32(input); result != -123 {
			t.Errorf("int32(%v) = %d, want -123", input, result)
		}
		if result := int8(input); result != -123 {
			t.Errorf("int8(%v) = %d, want -123", input, result)
		}
		// Negative float to unsigned is undefined behavior
		resultu32 := uint32(input)
		t.Logf("uint32(-123.456) = %d (undefined behavior)", resultu32)
	})
}

// TestUint32ToFloatToInt32 tests the specific bug case from issue #961
// Note: Conversion of out-of-range float to int has undefined behavior in Go
func TestUint32ToFloatToInt32(t *testing.T) {
	var bigUint32 uint32 = 0xFFFFFFFF // max uint32
	fBig := float64(bigUint32)
	result := int32(fBig)

	// The float64 value of max uint32 (4294967295.0) is larger than max int32,
	// so the conversion has undefined behavior.
	// We just document what happens without asserting a specific value.
	t.Logf("uint32(0xFFFFFFFF) -> float64 -> int32 = %d (undefined behavior)", result)
	t.Logf("float64 value: %f", fBig)
}

// TestFloatSpecialValues tests special float values (Inf, NaN)
// Note: Conversions of Inf and NaN to int have undefined behavior
func TestFloatSpecialValues(t *testing.T) {
	// Positive infinity - undefined behavior
	fInf := math.Inf(1)
	result := int32(fInf)
	t.Logf("int32(+Inf) = %d (undefined behavior)", result)

	// Negative infinity - undefined behavior
	fNegInf := math.Inf(-1)
	result = int32(fNegInf)
	t.Logf("int32(-Inf) = %d (undefined behavior)", result)

	// NaN - behavior is implementation-defined, but should not panic
	fNaN := math.NaN()
	result = int32(fNaN)
	t.Logf("int32(NaN) = %d (undefined behavior, just ensure no panic)", result)
}

// TestSignedUnsignedConversions tests signed/unsigned type conversions
func TestSignedUnsignedConversions(t *testing.T) {
	// Negative to unsigned
	var negInt int32 = -1
	if result := uint32(negInt); result != 0xFFFFFFFF {
		t.Errorf("uint32(int32(-1)) = 0x%X, want 0xFFFFFFFF", result)
	}

	if result := uint8(negInt); result != 0xFF {
		t.Errorf("uint8(int32(-1)) = 0x%X, want 0xFF", result)
	}

	// Large unsigned to signed
	var bigUint uint32 = 0xFFFFFFFF
	if result := int32(bigUint); result != -1 {
		t.Errorf("int32(uint32(0xFFFFFFFF)) = %d, want -1", result)
	}

	// Truncation
	var i64 int64 = 0x123456789ABC
	expected := int32(0x56789ABC) // Lower 32 bits
	if result := int32(i64); result != expected {
		t.Errorf("int32(int64(0x123456789ABC)) = 0x%X, want 0x%X", uint32(result), uint32(expected))
	}
}

// TestSignExtensionVsZeroExtension tests sign vs zero extension
func TestSignExtensionVsZeroExtension(t *testing.T) {
	// Sign extension for signed types
	var i8 int8 = -1
	if result := int16(i8); result != -1 {
		t.Errorf("int16(int8(-1)) = %d, want -1 (sign extension)", result)
	}
	if result := int32(i8); result != -1 {
		t.Errorf("int32(int8(-1)) = %d, want -1 (sign extension)", result)
	}
	if result := int64(i8); result != -1 {
		t.Errorf("int64(int8(-1)) = %d, want -1 (sign extension)", result)
	}

	// Zero extension for unsigned types
	var u8 uint8 = 0xFF
	if result := uint16(u8); result != 0xFF {
		t.Errorf("uint16(uint8(0xFF)) = 0x%X, want 0xFF (zero extension)", result)
	}
	if result := uint32(u8); result != 0xFF {
		t.Errorf("uint32(uint8(0xFF)) = 0x%X, want 0xFF (zero extension)", result)
	}
}

// TestIntToFloatPrecisionLoss tests precision loss in int-to-float conversions
func TestIntToFloatPrecisionLoss(t *testing.T) {
	// 2^53 + 1 exceeds float64 precision
	var i1 int64 = 9007199254740993
	f1 := float64(i1)
	if int64(f1) == i1 {
		// This might actually be true on some systems due to rounding
		t.Logf("int64(9007199254740993) -> float64 preserves precision (unexpected but valid)")
	}

	// 2^24 + 1 exceeds float32 precision
	var i2 int32 = 16777217
	f2 := float32(i2)
	if int32(f2) == i2 {
		t.Logf("int32(16777217) -> float32 preserves precision (unexpected but valid)")
	}
}

// TestIssue961Examples tests the exact code examples from issue #961
// This ensures LLGo produces the same results as standard Go
func TestIssue961Examples(t *testing.T) {
	t.Run("int8 overflow example", func(t *testing.T) {
		var i8max int8 = 127
		result := i8max + 1
		expected := int8(-128)
		if result != expected {
			t.Errorf("Max int8 + 1: got %d, want %d (should wrap to -128)", result, expected)
		}
	})

	t.Run("uint32 to float to int32 example", func(t *testing.T) {
		var bigUint32 uint32 = 0xFFFFFFFF
		result := int32(float64(bigUint32))
		// This conversion has undefined behavior in Go
		t.Logf("uint32 max -> float64 -> int32: %d (undefined behavior)", result)
	})

	t.Run("untyped constant with typed variable", func(t *testing.T) {
		const untypedInt = 42
		var i32 int32 = 70000
		result := untypedInt + i32
		expected := int32(70042)
		if result != expected {
			t.Errorf("untypedInt + i32: got %d (type %T), want %d (type int32)", result, result, expected)
		}
	})

	t.Run("int8 arithmetic edge cases", func(t *testing.T) {
		var a int8 = 100
		var b int8 = 50
		result := a + b
		expected := int8(-106)
		if result != expected {
			t.Errorf("int8(100) + int8(50): got %d, want %d", result, expected)
		}
	})

	t.Run("int8 multiplication overflow", func(t *testing.T) {
		var m int8 = 64
		result := m * 2
		expected := int8(-128)
		if result != expected {
			t.Errorf("int8(64) * 2: got %d, want %d", result, expected)
		}
	})

	t.Run("signed to unsigned conversion", func(t *testing.T) {
		var negInt int32 = -1
		result := uint32(negInt)
		expected := uint32(0xFFFFFFFF)
		if result != expected {
			t.Errorf("uint32(int32(-1)): got 0x%X, want 0x%X", result, expected)
		}
	})

	t.Run("unsigned to signed conversion", func(t *testing.T) {
		var bigUint uint32 = 0xFFFFFFFF
		result := int32(bigUint)
		expected := int32(-1)
		if result != expected {
			t.Errorf("int32(uint32(0xFFFFFFFF)): got %d, want %d", result, expected)
		}
	})

	t.Run("sign extension", func(t *testing.T) {
		var i8 int8 = -1
		result := int32(i8)
		expected := int32(-1)
		if result != expected {
			t.Errorf("int32(int8(-1)): got %d, want %d (sign extension)", result, expected)
		}
	})

	t.Run("truncation", func(t *testing.T) {
		var i64 int64 = 0x123456789ABC
		result := int32(i64)
		expected := int32(0x56789ABC)
		if result != expected {
			t.Errorf("int32(int64(0x123456789ABC)): got 0x%X, want 0x%X (truncation)", uint32(result), uint32(expected))
		}
	})
}
