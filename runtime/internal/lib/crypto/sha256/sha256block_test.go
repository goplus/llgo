// Copyright 2023 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package sha256

import (
	"bytes"
	"encoding/binary"
	"encoding/hex"
	"testing"
)

func Test_sha256block(t *testing.T) {
	tests := []struct {
		name     string
		input    string
		expected string
	}{
		{
			name:     "empty string",
			input:    "",
			expected: "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
		},
		{
			name:     "abc",
			input:    "abc",
			expected: "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad",
		},
		{
			name:     "longer text",
			input:    "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq",
			expected: "248d6a61d20638b8e5c026930c3e6039a33ce45964ff2167f6ecedd419db06c1",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			// Initialize hash state
			h := []uint32{
				0x6a09e667,
				0xbb67ae85,
				0x3c6ef372,
				0xa54ff53a,
				0x510e527f,
				0x9b05688c,
				0x1f83d9ab,
				0x5be0cd19,
			}

			// Prepare input
			msg := []byte(tt.input)
			msgLen := len(msg)

			// Calculate padding length
			// We need space for the 0x80 byte and the 8-byte length
			// Total length must be a multiple of 64
			padding := 64 - ((msgLen + 9) % 64)
			if padding == 64 {
				padding = 0
			}

			// Create padded message
			paddedLen := msgLen + 1 + padding + 8 // original + 0x80 + padding + length
			paddedMsg := make([]byte, paddedLen)

			// Copy original message
			copy(paddedMsg, msg)

			// Add padding
			paddedMsg[msgLen] = 0x80

			// Add length in bits as big-endian uint64 at the end
			bits := uint64(msgLen * 8)
			binary.BigEndian.PutUint64(paddedMsg[paddedLen-8:], bits)

			// Process blocks
			sha256block(h, paddedMsg, k)

			// Convert result to bytes
			hash := make([]byte, 32)
			for i := 0; i < 8; i++ {
				binary.BigEndian.PutUint32(hash[i*4:], h[i])
			}

			// Compare with expected
			expectedBytes, _ := hex.DecodeString(tt.expected)
			if !bytes.Equal(hash, expectedBytes) {
				t.Errorf("got %x, want %s", hash, tt.expected)
			}
		})
	}
}

// Test vectors from FIPS 180-4
func Test_sha256block_LongMessage(t *testing.T) {
	// Test with "a" repeated 1000000 times
	input := bytes.Repeat([]byte("a"), 1000000)
	expected := "cdc76e5c9914fb9281a1c7e284d73e67f1809a48a497200e046d39ccc7112cd0"

	h := []uint32{
		0x6a09e667,
		0xbb67ae85,
		0x3c6ef372,
		0xa54ff53a,
		0x510e527f,
		0x9b05688c,
		0x1f83d9ab,
		0x5be0cd19,
	}

	// Prepare padded message
	msgLen := len(input)
	padding := 64 - ((msgLen + 9) % 64)
	if padding == 64 {
		padding = 0
	}

	// Create padded message
	paddedLen := msgLen + 1 + padding + 8 // original + 0x80 + padding + length
	paddedMsg := make([]byte, paddedLen)

	// Copy original message
	copy(paddedMsg, input)

	// Add padding
	paddedMsg[msgLen] = 0x80

	// Add length in bits as big-endian uint64 at the end
	bits := uint64(msgLen * 8)
	binary.BigEndian.PutUint64(paddedMsg[paddedLen-8:], bits)

	// Process blocks
	sha256block(h, paddedMsg, k)

	// Convert result to bytes
	hash := make([]byte, 32)
	for i := 0; i < 8; i++ {
		binary.BigEndian.PutUint32(hash[i*4:], h[i])
	}

	expectedBytes, _ := hex.DecodeString(expected)
	if !bytes.Equal(hash, expectedBytes) {
		t.Errorf("got %x, want %s", hash, expected)
	}
}
