// Copyright 2023 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package crc32

import (
	"testing"
)

func Test_castagnoliUpdate(t *testing.T) {
	tests := []struct {
		name     string
		initial  uint32
		input    []byte
		expected uint32
	}{
		{
			name:     "empty string",
			initial:  0,
			input:    []byte(""),
			expected: 0,
		},
		{
			name:     "single byte",
			initial:  0,
			input:    []byte{0x01},
			expected: 0xf26b8303,
		},
		{
			name:     "two bytes",
			initial:  0,
			input:    []byte{0x01, 0x02},
			expected: 0xf299e880,
		},
		{
			name:     "four bytes",
			initial:  0,
			input:    []byte{0x01, 0x02, 0x03, 0x04},
			expected: 0x6157c733,
		},
		{
			name:     "eight bytes",
			initial:  0,
			input:    []byte{0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08},
			expected: 0xcaa1ad0b,
		},
		{
			name:     "sixteen bytes",
			initial:  0,
			input:    []byte{0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10},
			expected: 0xe2aefdfe,
		},
		{
			name:     "with initial value",
			initial:  0xFFFFFFFF,
			input:    []byte{0x01, 0x02, 0x03, 0x04},
			expected: 0xd6cf730b,
		},
		{
			name:     "text string",
			initial:  0,
			input:    []byte("Hello, World!"),
			expected: 0xf10eb58c,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := castagnoliUpdate(tt.initial, tt.input)
			if got != tt.expected {
				t.Errorf("castagnoliUpdate() = %x, want %x", got, tt.expected)
			}
		})
	}
}

func Test_ieeeUpdate(t *testing.T) {
	tests := []struct {
		name     string
		initial  uint32
		input    []byte
		expected uint32
	}{
		{
			name:     "empty string",
			initial:  0,
			input:    []byte(""),
			expected: 0,
		},
		{
			name:     "single byte",
			initial:  0,
			input:    []byte{0x01},
			expected: 0x77073096,
		},
		{
			name:     "two bytes",
			initial:  0,
			input:    []byte{0x01, 0x02},
			expected: 0xf715506d,
		},
		{
			name:     "four bytes",
			initial:  0,
			input:    []byte{0x01, 0x02, 0x03, 0x04},
			expected: 0x977824d1,
		},
		{
			name:     "eight bytes",
			initial:  0,
			input:    []byte{0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08},
			expected: 0x5ae857ac,
		},
		{
			name:     "sixteen bytes",
			initial:  0,
			input:    []byte{0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10},
			expected: 0xe5f7cba4,
		},
		{
			name:     "with initial value",
			initial:  0xFFFFFFFF,
			input:    []byte{0x01, 0x02, 0x03, 0x04},
			expected: 0x49c30432,
		},
		{
			name:     "text string",
			initial:  0,
			input:    []byte("Hello, World!"),
			expected: 0xe33e8552,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := ieeeUpdate(tt.initial, tt.input)
			if got != tt.expected {
				t.Errorf("ieeeUpdate() = %x, want %x", got, tt.expected)
			}
		})
	}
}

// Test both functions with large input
func Test_LargeInput(t *testing.T) {
	// Create a large input that's not aligned to any boundary
	size := 10007 // Prime number to ensure we hit all code paths
	input := make([]byte, size)
	for i := range input {
		input[i] = byte(i & 0xFF)
	}

	t.Run("castagnoli large input", func(t *testing.T) {
		crc := uint32(0)
		crc = castagnoliUpdate(crc, input)
		if crc == 0 {
			t.Error("expected non-zero CRC for large input")
		}
	})

	t.Run("ieee large input", func(t *testing.T) {
		crc := uint32(0)
		crc = ieeeUpdate(crc, input)
		if crc == 0 {
			t.Error("expected non-zero CRC for large input")
		}
	})
}
