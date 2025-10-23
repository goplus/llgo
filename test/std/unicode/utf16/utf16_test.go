//go:build !llgo

package utf16_test

import (
	"testing"
	"unicode/utf16"
)

// Test Encode and Decode
func TestEncodeDecode(t *testing.T) {
	tests := [][]rune{
		{},
		{'A'},
		{'A', 'B', 'C'},
		{'中', '文'},
		{'🌟', '✨'},
		{'H', 'e', 'l', 'l', 'o', ',', ' ', '世', '界'},
	}

	for _, runes := range tests {
		encoded := utf16.Encode(runes)
		decoded := utf16.Decode(encoded)

		if len(decoded) != len(runes) {
			t.Errorf("Decode(Encode(%v)) length = %d, want %d", runes, len(decoded), len(runes))
			continue
		}

		for i := range runes {
			if decoded[i] != runes[i] {
				t.Errorf("Decode(Encode(%v))[%d] = %U, want %U", runes, i, decoded[i], runes[i])
			}
		}
	}
}

// Test EncodeRune and DecodeRune
func TestEncodeDecodeRune(t *testing.T) {
	// EncodeRune only returns valid pairs for non-BMP characters
	// For BMP characters, it returns U+FFFD, U+FFFD
	tests := []struct {
		r    rune
		r1   rune
		r2   rune
		desc string
	}{
		{'A', 0xFFFD, 0xFFFD, "ASCII character (doesn't need encoding)"},
		{'中', 0xFFFD, 0xFFFD, "BMP character (doesn't need encoding)"},
		{'🌟', 0xD83C, 0xDF1F, "Non-BMP character (emoji)"},
		{'😀', 0xD83D, 0xDE00, "Non-BMP character (smiley)"},
		{0x10000, 0xD800, 0xDC00, "First non-BMP character"},
		{0x10FFFF, 0xDBFF, 0xDFFF, "Last valid Unicode character"},
	}

	for _, tt := range tests {
		r1, r2 := utf16.EncodeRune(tt.r)
		if r1 != tt.r1 || r2 != tt.r2 {
			t.Errorf("EncodeRune(%U) = (%U, %U), want (%U, %U) [%s]",
				tt.r, r1, r2, tt.r1, tt.r2, tt.desc)
		}

		// Only test DecodeRune for valid surrogate pairs (not 0xFFFD)
		if r1 != 0xFFFD && r2 != 0xFFFD {
			decoded := utf16.DecodeRune(r1, r2)
			if decoded != tt.r {
				t.Errorf("DecodeRune(%U, %U) = %U, want %U [%s]",
					r1, r2, decoded, tt.r, tt.desc)
			}
		}
	}
}

// Test IsSurrogate
func TestIsSurrogate(t *testing.T) {
	tests := []struct {
		r    rune
		want bool
	}{
		{'A', false},
		{'中', false},
		{0xD7FF, false}, // Just before surrogate range
		{0xD800, true},  // First high surrogate
		{0xDBFF, true},  // Last high surrogate
		{0xDC00, true},  // First low surrogate
		{0xDFFF, true},  // Last low surrogate
		{0xE000, false}, // Just after surrogate range
		{'🌟', false},
	}

	for _, tt := range tests {
		got := utf16.IsSurrogate(tt.r)
		if got != tt.want {
			t.Errorf("IsSurrogate(%U) = %v, want %v", tt.r, got, tt.want)
		}
	}
}

// Test RuneLen
func TestRuneLen(t *testing.T) {
	tests := []struct {
		r    rune
		want int
	}{
		{'A', 1},
		{'中', 1},
		{0xD7FF, 1},  // Last BMP character before surrogates
		{0xE000, 1},  // First BMP character after surrogates
		{0xFFFF, 1},  // Last BMP character
		{0x10000, 2}, // First non-BMP character (requires surrogate pair)
		{'🌟', 2},
		{0x10FFFF, 2},  // Last valid Unicode character
		{0x110000, -1}, // Invalid (beyond Unicode range)
		{-1, -1},       // Invalid (negative)
	}

	for _, tt := range tests {
		got := utf16.RuneLen(tt.r)
		if got != tt.want {
			t.Errorf("RuneLen(%U) = %d, want %d", tt.r, got, tt.want)
		}
	}
}

// Test AppendRune
func TestAppendRune(t *testing.T) {
	// Start with empty slice
	a := []uint16{}

	// Append BMP character
	a = utf16.AppendRune(a, 'A')
	if len(a) != 1 || a[0] != 'A' {
		t.Errorf("After AppendRune 'A', got %v, want [65]", a)
	}

	// Append another BMP character
	a = utf16.AppendRune(a, '中')
	if len(a) != 2 || a[1] != '中' {
		t.Errorf("After AppendRune '中', got %v", a)
	}

	// Append non-BMP character (requires surrogate pair)
	a = utf16.AppendRune(a, '🌟')
	if len(a) != 4 {
		t.Errorf("After AppendRune '🌟', length = %d, want 4", len(a))
	}

	// Verify we can decode it back
	decoded := utf16.Decode(a)
	expected := []rune{'A', '中', '🌟'}
	if len(decoded) != len(expected) {
		t.Errorf("Decoded length = %d, want %d", len(decoded), len(expected))
	}
	for i := range expected {
		if decoded[i] != expected[i] {
			t.Errorf("Decoded[%d] = %U, want %U", i, decoded[i], expected[i])
		}
	}
}

// Test edge cases
func TestEdgeCases(t *testing.T) {
	// Test empty slices
	emptyRunes := []rune{}
	encoded := utf16.Encode(emptyRunes)
	if len(encoded) != 0 {
		t.Errorf("Encode([]) = %v, want []", encoded)
	}

	emptyUint16 := []uint16{}
	decoded := utf16.Decode(emptyUint16)
	if len(decoded) != 0 {
		t.Errorf("Decode([]) = %v, want []", decoded)
	}

	// Test invalid surrogate pairs
	invalidPairs := [][]uint16{
		{0xD800},         // High surrogate without low surrogate
		{0xDC00},         // Low surrogate without high surrogate
		{0xD800, 'A'},    // High surrogate followed by non-surrogate
		{0xDC00, 0xD800}, // Low surrogate followed by high surrogate
	}

	for _, pair := range invalidPairs {
		decoded := utf16.Decode(pair)
		// Decode should handle invalid sequences gracefully
		// (exact behavior may vary, but it shouldn't crash)
		_ = decoded
	}
}

// Test with real-world text
func TestRealWorld(t *testing.T) {
	testStrings := []string{
		"Hello, World!",
		"你好，世界！",
		"🌍🌎🌏",
		"Hello, 世界! 🌟",
		"Emoji: 😀😁😂🤣😃😄😅😆",
	}

	for _, str := range testStrings {
		runes := []rune(str)
		encoded := utf16.Encode(runes)
		decoded := utf16.Decode(encoded)

		if string(decoded) != str {
			t.Errorf("Round-trip failed for %q: got %q", str, string(decoded))
		}
	}
}
