/*
 * Copyright (c) 2025 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package gotest

import (
	"fmt"
	"strings"
	"testing"
)

// TestIntegerOverflow tests integer overflow behavior
func TestIntegerOverflow(t *testing.T) {
	// Test int8 overflow
	var i8max int8 = 127
	result := i8max + 1
	expected := int8(-128)
	if result != expected {
		t.Errorf("int8 overflow: got %d, want %d", result, expected)
	}

	// Test uint8 overflow
	var u8max uint8 = 255
	resultU8 := u8max + 1
	expectedU8 := uint8(0)
	if resultU8 != expectedU8 {
		t.Errorf("uint8 overflow: got %d, want %d", resultU8, expectedU8)
	}

	// Test int8 underflow
	var i8min int8 = -128
	resultMin := i8min - 1
	expectedMin := int8(127)
	if resultMin != expectedMin {
		t.Errorf("int8 underflow: got %d, want %d", resultMin, expectedMin)
	}
}

// TestUint32ToInt64Conversion tests uint32 to int64 conversion
func TestUint32ToInt64Conversion(t *testing.T) {
	var u32 uint32 = 4000000000
	result := int64(u32)
	expected := int64(4000000000)
	if result != expected {
		t.Errorf("uint32 to int64 conversion: got %d, want %d", result, expected)
	}

	// Test with max uint32
	var maxU32 uint32 = 0xFFFFFFFF
	resultMax := int64(maxU32)
	expectedMax := int64(4294967295)
	if resultMax != expectedMax {
		t.Errorf("max uint32 to int64 conversion: got %d, want %d", resultMax, expectedMax)
	}
}

// TestUint32ToFloatToInt32 tests uint32 -> float64 -> int32 conversion
func TestUint32ToFloatToInt32(t *testing.T) {
	var bigUint32 uint32 = 0xFFFFFFFF // max uint32 = 4294967295
	result := int32(float64(bigUint32))

	// Note: In Go, converting a value larger than MaxInt32 to int32
	// results in implementation-defined behavior. The most common
	// behavior is to return MinInt32 (-2147483648), not 2147483647.
	// This test documents the actual Go behavior.
	expected := int32(-2147483648)
	if result != expected {
		t.Errorf("uint32 max -> float64 -> int32: got %d, want %d", result, expected)
	}
}

// TestMixedSignedUnsignedAddition tests mixed signed/unsigned integer addition
func TestMixedSignedUnsignedAddition(t *testing.T) {
	var i32 int32 = 70000
	var u32 uint32 = 4000000000
	result := int64(i32) + int64(u32)
	expected := int64(4000070000)
	if result != expected {
		t.Errorf("int32 + uint32 as int64: got %d, want %d", result, expected)
	}
}

// TestUntypedConstantsWithTypedVariables tests untyped constant arithmetic
func TestUntypedConstantsWithTypedVariables(t *testing.T) {
	const untypedInt = 42
	var i32 int32 = 70000
	result := untypedInt + i32
	expected := int32(70042)
	if result != expected {
		t.Errorf("untypedInt + i32: got %d, want %d", result, expected)
	}

	const untypedFloat = 3.14
	var f32 float32 = 3.14159
	resultFloat := untypedFloat + f32
	expectedFloat := float32(6.28159)
	// Use approximate comparison for floats
	if resultFloat < expectedFloat-0.001 || resultFloat > expectedFloat+0.001 {
		t.Errorf("untypedFloat + f32: got %f, want %f", resultFloat, expectedFloat)
	}

	const untypedComplex = 1 + 2i
	var c64 complex64 = 1 + 2i
	resultComplex := untypedComplex + c64
	expectedComplex := complex64(2 + 4i)
	if resultComplex != expectedComplex {
		t.Errorf("untypedComplex + c64: got %v, want %v", resultComplex, expectedComplex)
	}
}

// TestSignedIntegerConversions tests conversions between signed integers
func TestSignedIntegerConversions(t *testing.T) {
	var i8 int8 = 64
	var i16 int16 = 1000

	result16 := int16(i8) + i16
	expected16 := int16(1064)
	if result16 != expected16 {
		t.Errorf("i8 + i16: got %d, want %d", result16, expected16)
	}

	var i32 int32 = 70000
	result32 := int32(i16) + i32
	expected32 := int32(71000)
	if result32 != expected32 {
		t.Errorf("i16 + i32: got %d, want %d", result32, expected32)
	}

	var i64 int64 = 1<<32 - 1
	result64 := int64(i32) + i64
	expected64 := int64(4295037295)
	if result64 != expected64 {
		t.Errorf("i32 + i64: got %d, want %d", result64, expected64)
	}
}

// TestUnsignedIntegerConversions tests conversions between unsigned integers
func TestUnsignedIntegerConversions(t *testing.T) {
	var u8 uint8 = 200
	var u16 uint16 = 50000

	result16 := uint16(u8) + u16
	expected16 := uint16(50200)
	if result16 != expected16 {
		t.Errorf("u8 + u16: got %d, want %d", result16, expected16)
	}

	var u32 uint32 = 4000000000
	result32 := uint32(u16) + u32
	expected32 := uint32(4000050000)
	if result32 != expected32 {
		t.Errorf("u16 + u32: got %d, want %d", result32, expected32)
	}

	var u64 uint64 = 1<<64 - 1
	result64 := uint64(u32) + u64
	expected64 := uint64(3999999999) // Note: wraps around due to u64 being max
	if result64 != expected64 {
		t.Errorf("u32 + u64: got %d, want %d", result64, expected64)
	}
}

// TestMixedFloatOperations tests mixed float operations
func TestMixedFloatOperations(t *testing.T) {
	var f32 float32 = 3.14159
	var f64 float64 = 3.14159265359

	result := float64(f32) + f64
	expected := 6.283183
	if result < expected-0.001 || result > expected+0.001 {
		t.Errorf("f32 + f64: got %f, want %f", result, expected)
	}

	var i32 int32 = 70000
	resultI := float64(i32) + f64
	expectedI := 70003.141593
	if resultI < expectedI-0.001 || resultI > expectedI+0.001 {
		t.Errorf("i32 + f64: got %f, want %f", resultI, expectedI)
	}

	var u32 uint32 = 4000000000
	resultU := float32(u32) + f32
	expectedU := float32(4000000000.0)
	if resultU < expectedU-1.0 || resultU > expectedU+1.0 {
		t.Errorf("u32 + f32: got %f, want %f", resultU, expectedU)
	}
}

// TestComplexNumberOperations tests complex number operations
func TestComplexNumberOperations(t *testing.T) {
	var c64 complex64 = 1 + 2i
	var c128 complex128 = 1 + 2i

	result := complex128(c64) + c128
	expected := complex128(2 + 4i)
	if result != expected {
		t.Errorf("c64 + c128: got %v, want %v", result, expected)
	}

	var f64 float64 = 3.14159265359
	resultF := complex(f64, 0) + c128
	expectedF := complex128(4.14159265359 + 2i)
	// Approximate comparison for complex
	if real(resultF) < real(expectedF)-0.001 || real(resultF) > real(expectedF)+0.001 {
		t.Errorf("f64 + c128: got %v, want %v", resultF, expectedF)
	}

	var i32 int32 = 70000
	resultI := complex(float32(i32), 0) + c64
	expectedI := complex64(70001 + 2i)
	if resultI != expectedI {
		t.Errorf("i32 + c64: got %v, want %v", resultI, expectedI)
	}
}

// TestComplexDivisionAndMultiplication tests complex division and multiplication
func TestComplexDivisionAndMultiplication(t *testing.T) {
	var c64 complex64 = 1 + 2i
	var c128 complex128 = 1 + 2i

	// Test division
	resultDiv := complex128(c64) / c128
	expectedDiv := complex128(1 + 0i)
	if resultDiv != expectedDiv {
		t.Errorf("complex division: got %v, want %v", resultDiv, expectedDiv)
	}

	// Test multiplication
	resultMul := c64 * complex64(c128)
	expectedMul := complex64(-3 + 4i)
	if resultMul != expectedMul {
		t.Errorf("complex multiplication: got %v, want %v", resultMul, expectedMul)
	}
}

// TestInt16ToUint32Conversion tests int16 to uint32 conversion
func TestInt16ToUint32Conversion(t *testing.T) {
	var i16 int16 = -1
	result := uint32(i16)
	expected := uint32(0xFFFFFFFF)
	if result != expected {
		t.Errorf("int16(-1) to uint32: got %d, want %d", result, expected)
	}
}

// TestUint16ToInt32Conversion tests uint16 to int32 conversion
func TestUint16ToInt32Conversion(t *testing.T) {
	var u16 uint16 = 0xFFFF
	result := int32(u16)
	expected := int32(65535)
	if result != expected {
		t.Errorf("uint16(0xFFFF) to int32: got %d, want %d", result, expected)
	}
}

// TestFmtSprintfIntegerOverflow tests integer overflow with fmt.Sprintf
// This catches issues where conversion to any in fmt.Printf may hide bugs
func TestFmtSprintfIntegerOverflow(t *testing.T) {
	var i8max int8 = 127
	result := i8max + 1

	// Test direct value
	if result != -128 {
		t.Errorf("int8 overflow: got %d, want -128", result)
	}

	// Test fmt.Sprintf output
	str := fmt.Sprintf("%d", result)
	expectedStr := "-128"
	if str != expectedStr {
		t.Errorf("int8 overflow fmt.Sprintf: got %s, want %s", str, expectedStr)
	}

	// Test type preservation through any conversion
	var anyVal any = result
	if v, ok := anyVal.(int8); !ok || v != -128 {
		t.Errorf("int8 overflow any conversion: got %v (type %T), want -128 (type int8)", anyVal, anyVal)
	}
}

// TestFmtSprintfUint32ToInt64 tests uint32 to int64 conversion with fmt.Sprintf
func TestFmtSprintfUint32ToInt64(t *testing.T) {
	var u32 uint32 = 4000000000
	result := int64(u32)

	// Test direct value
	if result != 4000000000 {
		t.Errorf("uint32 to int64: got %d, want 4000000000", result)
	}

	// Test fmt.Sprintf output
	str := fmt.Sprintf("%d", result)
	expectedStr := "4000000000"
	if str != expectedStr {
		t.Errorf("uint32 to int64 fmt.Sprintf: got %s, want %s", str, expectedStr)
	}

	// Test with type in format
	strTyped := fmt.Sprintf("%d (type %T)", result, result)
	expectedTyped := "4000000000 (type int64)"
	if strTyped != expectedTyped {
		t.Errorf("uint32 to int64 with type: got %s, want %s", strTyped, expectedTyped)
	}
}

// TestFmtSprintfMixedSignedUnsigned tests mixed operations with fmt.Sprintf
func TestFmtSprintfMixedSignedUnsigned(t *testing.T) {
	var i32 int32 = 70000
	var u32 uint32 = 4000000000
	result := int64(i32) + int64(u32)

	// Test direct value
	if result != 4000070000 {
		t.Errorf("int32 + uint32 as int64: got %d, want 4000070000", result)
	}

	// Test fmt.Sprintf output
	str := fmt.Sprintf("%d", result)
	expectedStr := "4000070000"
	if str != expectedStr {
		t.Errorf("mixed addition fmt.Sprintf: got %s, want %s", str, expectedStr)
	}
}

// TestFmtSprintfUntypedConstants tests untyped constant operations with fmt.Sprintf
func TestFmtSprintfUntypedConstants(t *testing.T) {
	const untypedInt = 42
	var i32 int32 = 70000
	result := untypedInt + i32

	// Test value and type
	str := fmt.Sprintf("%d (type %T)", result, result)
	expectedStr := "70042 (type int32)"
	if str != expectedStr {
		t.Errorf("untypedInt + i32: got %s, want %s", str, expectedStr)
	}

	// Test float
	const untypedFloat = 3.14
	var f32 float32 = 3.14159
	resultFloat := untypedFloat + f32
	strFloat := fmt.Sprintf("%f (type %T)", resultFloat, resultFloat)
	// Note: using Contains check due to float precision
	if !contains(strFloat, "6.28") || !contains(strFloat, "float32") {
		t.Errorf("untypedFloat + f32: got %s, want ~6.28... (type float32)", strFloat)
	}

	// Test complex
	const untypedComplex = 1 + 2i
	var c64 complex64 = 1 + 2i
	resultComplex := untypedComplex + c64
	strComplex := fmt.Sprintf("%v (type %T)", resultComplex, resultComplex)
	if !contains(strComplex, "(2+4i)") || !contains(strComplex, "complex64") {
		t.Errorf("untypedComplex + c64: got %s, want (2+4i) (type complex64)", strComplex)
	}
}

// Helper function for string contains check
func contains(s, substr string) bool {
	return strings.Contains(s, substr)
}

// TestFmtSprintfComplexOperations tests complex number operations with fmt.Sprintf
func TestFmtSprintfComplexOperations(t *testing.T) {
	var c64 complex64 = 1 + 2i
	var c128 complex128 = 1 + 2i

	// Test addition
	resultAdd := complex128(c64) + c128
	strAdd := fmt.Sprintf("%v", resultAdd)
	if strAdd != "(2+4i)" {
		t.Errorf("c64 + c128: got %s, want (2+4i)", strAdd)
	}

	// Test division
	resultDiv := complex128(c64) / c128
	strDiv := fmt.Sprintf("%v", resultDiv)
	if strDiv != "(1+0i)" {
		t.Errorf("complex division: got %s, want (1+0i)", strDiv)
	}

	// Test multiplication
	resultMul := c64 * complex64(c128)
	strMul := fmt.Sprintf("%v", resultMul)
	if strMul != "(-3+4i)" {
		t.Errorf("complex multiplication: got %s, want (-3+4i)", strMul)
	}
}
