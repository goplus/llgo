/*
 * Copyright (c) 2025 The XGo Authors (xgo.dev). All rights reserved.
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
	"encoding/binary"
	"testing"
)

// Bug: nested shift with untyped constant
//
// When a shift expression `(1 << byteVar)` is used as the right operand
// of another shift expression, SSA generates `1:untyped int << byteVar`
// with type `untyped int`, which violates SSA sanity checks.
//
// SSA output for nested shift expressions:
//   t2 = 1:untyped int << t1                                    untyped int  ← BUG
//   t3 = convert uint <- untyped int (t2)                              uint
//   t4 = 1:uint32 << t3                                              uint32
//
// The bug causes SSA sanity check to fail when compiling:
//   value << (1 << bytes[3])
// but NOT when an explicit conversion is used:
//   uint(1 << bytes[3])
// because the conversion forces type resolution before SSA construction.

// nestedShift triggers the bug: value << (1 << bytes[3])
func nestedShift(bytes []byte) uint32 {
	value := uint32(1)
	return value << (1 << bytes[3])
}

// nestedShiftWithBinary is the original gohex pattern
func nestedShiftWithBinary(bytes []byte) uint32 {
	return uint32(binary.BigEndian.Uint16(bytes[4:6])) << (1 << bytes[3])
}

// TestNestedShift tests the nested shift bug.
func TestNestedShift(t *testing.T) {
	bytes := []byte{0, 0, 0, 4, 0, 1} // bytes[3] = 4

	// 1 << (1 << 4) = 1 << 16 = 65536
	if r := nestedShift(bytes); r != 65536 {
		t.Errorf("nestedShift: got %d, want 65536", r)
	}
}

// TestNestedShiftWithBinary tests the original gohex pattern.
func TestNestedShiftWithBinary(t *testing.T) {
	bytes := []byte{0, 0, 0, 4, 0, 1} // bytes[3] = 4, bytes[4:6] = 0x0001

	// binary.BigEndian.Uint16(bytes[4:6]) = 1
	// (1 << bytes[3]) = (1 << 4) = 16
	// 1 << 16 = 65536
	if r := nestedShiftWithBinary(bytes); r != 65536 {
		t.Errorf("nestedShiftWithBinary: got %d, want 65536", r)
	}
}

// TestNestedShiftEdgeCases tests edge cases.
func TestNestedShiftEdgeCases(t *testing.T) {
	bytes := []byte{0, 0, 0, 0, 0, 1} // bytes[3] = 0

	// 1 << (1 << 0) = 1 << 1 = 2
	if r := nestedShift(bytes); r != 2 {
		t.Errorf("nestedShift (shift by 1): got %d, want 2", r)
	}

	bytes[3] = 3 // 1 << (1 << 3) = 1 << 8 = 256
	if r := nestedShift(bytes); r != 256 {
		t.Errorf("nestedShift (shift by 8): got %d, want 256", r)
	}
}
