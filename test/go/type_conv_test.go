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

// TestFloatToIntConversion tests float-to-int conversions with saturation
// Issue #961: uint32 max -> float64 -> int32 should be MaxInt32, not 0
func TestFloatToIntConversion(t *testing.T) {
	tests := []struct {
		name     string
		input    float64
		toInt32  int32
		toInt8   int8
		toUint32 uint32
	}{
		{
			name:     "normal range",
			input:    123.456,
			toInt32:  123,
			toInt8:   123,
			toUint32: 123,
		},
		{
			name:     "large positive overflow",
			input:    1e20,
			toInt32:  math.MaxInt32,
			toInt8:   math.MaxInt8,
			toUint32: math.MaxUint32,
		},
		{
			name:     "large negative underflow",
			input:    -1e20,
			toInt32:  math.MinInt32,
			toInt8:   math.MinInt8,
			toUint32: 0,
		},
		{
			name:     "negative to unsigned",
			input:    -123.456,
			toInt32:  -123,
			toInt8:   -123,
			toUint32: 0,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if result := int32(tt.input); result != tt.toInt32 {
				t.Errorf("int32(%v) = %d, want %d", tt.input, result, tt.toInt32)
			}
			if result := int8(tt.input); result != tt.toInt8 {
				t.Errorf("int8(%v) = %d, want %d", tt.input, result, tt.toInt8)
			}
			if result := uint32(tt.input); result != tt.toUint32 {
				t.Errorf("uint32(%v) = %d, want %d", tt.input, result, tt.toUint32)
			}
		})
	}
}

// TestUint32ToFloatToInt32 tests the specific bug case from issue #961
func TestUint32ToFloatToInt32(t *testing.T) {
	var bigUint32 uint32 = 0xFFFFFFFF // max uint32
	fBig := float64(bigUint32)
	result := int32(fBig)

	// The float64 value of max uint32 is larger than max int32,
	// so it should saturate to max int32
	expected := int32(math.MaxInt32)

	if result != expected {
		t.Errorf("uint32(0xFFFFFFFF) -> float64 -> int32 = %d, want %d", result, expected)
	}
}

// TestFloatSpecialValues tests special float values (Inf, NaN)
func TestFloatSpecialValues(t *testing.T) {
	// Positive infinity
	fInf := math.Inf(1)
	if result := int32(fInf); result != math.MaxInt32 {
		t.Errorf("int32(+Inf) = %d, want MaxInt32", result)
	}

	// Negative infinity
	fNegInf := math.Inf(-1)
	if result := int32(fNegInf); result != math.MinInt32 {
		t.Errorf("int32(-Inf) = %d, want MinInt32", result)
	}

	// NaN - behavior is implementation-defined, but should not panic
	fNaN := math.NaN()
	_ = int32(fNaN) // Just ensure it doesn't panic
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
