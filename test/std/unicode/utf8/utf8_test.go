//go:build !llgo

package utf8_test

import (
	"testing"
	"unicode/utf8"
)

// Test constants
func TestConstants(t *testing.T) {
	if utf8.RuneError != '\uFFFD' {
		t.Errorf("RuneError should be U+FFFD, got %U", utf8.RuneError)
	}

	if utf8.RuneSelf != 0x80 {
		t.Errorf("RuneSelf should be 0x80, got %#x", utf8.RuneSelf)
	}

	if utf8.MaxRune != '\U0010FFFF' {
		t.Errorf("MaxRune should be U+10FFFF, got %U", utf8.MaxRune)
	}

	if utf8.UTFMax != 4 {
		t.Errorf("UTFMax should be 4, got %d", utf8.UTFMax)
	}
}

// Test EncodeRune and DecodeRune
func TestEncodeDecodeRune(t *testing.T) {
	tests := []rune{
		'A',
		'中',
		'文',
		'🌟',
		utf8.RuneError,
		utf8.MaxRune,
	}

	for _, r := range tests {
		buf := make([]byte, utf8.UTFMax)
		n := utf8.EncodeRune(buf, r)
		if n == 0 {
			t.Errorf("EncodeRune failed for %U", r)
			continue
		}

		decoded, size := utf8.DecodeRune(buf[:n])
		if size != n {
			t.Errorf("DecodeRune size mismatch: encoded %d, decoded %d for %U", n, size, r)
		}
		if decoded != r {
			t.Errorf("DecodeRune mismatch: encoded %U, decoded %U", r, decoded)
		}
	}
}

// Test AppendRune
func TestAppendRune(t *testing.T) {
	p := []byte("hello ")
	p = utf8.AppendRune(p, '世')
	p = utf8.AppendRune(p, '界')

	expected := "hello 世界"
	if string(p) != expected {
		t.Errorf("AppendRune result = %q, want %q", string(p), expected)
	}
}

// Test RuneLen
func TestRuneLen(t *testing.T) {
	tests := []struct {
		r    rune
		want int
	}{
		{'A', 1},
		{'中', 3},
		{'🌟', 4},
		{utf8.MaxRune, 4},
		{utf8.MaxRune + 1, -1}, // Invalid rune
		{-1, -1},               // Invalid rune
	}

	for _, tt := range tests {
		got := utf8.RuneLen(tt.r)
		if got != tt.want {
			t.Errorf("RuneLen(%U) = %d, want %d", tt.r, got, tt.want)
		}
	}
}

// Test RuneCount and RuneCountInString
func TestRuneCount(t *testing.T) {
	tests := []struct {
		s    string
		want int
	}{
		{"", 0},
		{"a", 1},
		{"abc", 3},
		{"中文", 2},
		{"Hello, 世界", 9},
		{"🌟✨", 2},
	}

	for _, tt := range tests {
		// Test RuneCount
		got := utf8.RuneCount([]byte(tt.s))
		if got != tt.want {
			t.Errorf("RuneCount(%q) = %d, want %d", tt.s, got, tt.want)
		}

		// Test RuneCountInString
		got = utf8.RuneCountInString(tt.s)
		if got != tt.want {
			t.Errorf("RuneCountInString(%q) = %d, want %d", tt.s, got, tt.want)
		}
	}
}

// Test FullRune and FullRuneInString
func TestFullRune(t *testing.T) {
	tests := []struct {
		s    string
		want bool
	}{
		{"a", true},
		{"中", true},
		{"\xE4", false},        // Incomplete UTF-8
		{"\xE4\xB8", false},    // Incomplete UTF-8
		{"\xE4\xB8\xAD", true}, // Complete "中"
		{"", false},
		{"\xF0\x9F\x8C\x9F", true}, // Complete "🌟"
		{"\xF0\x9F\x8C", false},    // Incomplete emoji
	}

	for _, tt := range tests {
		// Test FullRune
		got := utf8.FullRune([]byte(tt.s))
		if got != tt.want {
			t.Errorf("FullRune(%q) = %v, want %v", tt.s, got, tt.want)
		}

		// Test FullRuneInString
		got = utf8.FullRuneInString(tt.s)
		if got != tt.want {
			t.Errorf("FullRuneInString(%q) = %v, want %v", tt.s, got, tt.want)
		}
	}
}

// Test DecodeRuneInString
func TestDecodeRuneInString(t *testing.T) {
	tests := []struct {
		s        string
		wantRune rune
		wantSize int
	}{
		{"a", 'a', 1},
		{"中文", '中', 3},
		{"🌟", '🌟', 4},
		{"", utf8.RuneError, 0},
		{"\x80", utf8.RuneError, 1}, // Invalid UTF-8
	}

	for _, tt := range tests {
		r, size := utf8.DecodeRuneInString(tt.s)
		if r != tt.wantRune || size != tt.wantSize {
			t.Errorf("DecodeRuneInString(%q) = (%U, %d), want (%U, %d)",
				tt.s, r, size, tt.wantRune, tt.wantSize)
		}
	}
}

// Test DecodeLastRune and DecodeLastRuneInString
func TestDecodeLastRune(t *testing.T) {
	tests := []struct {
		s        string
		wantRune rune
		wantSize int
	}{
		{"a", 'a', 1},
		{"abc", 'c', 1},
		{"中文", '文', 3},
		{"Hello世界", '界', 3},
		{"", utf8.RuneError, 0},
		{"\x80", utf8.RuneError, 1}, // Invalid UTF-8
	}

	for _, tt := range tests {
		// Test DecodeLastRune
		r, size := utf8.DecodeLastRune([]byte(tt.s))
		if r != tt.wantRune || size != tt.wantSize {
			t.Errorf("DecodeLastRune(%q) = (%U, %d), want (%U, %d)",
				tt.s, r, size, tt.wantRune, tt.wantSize)
		}

		// Test DecodeLastRuneInString
		r, size = utf8.DecodeLastRuneInString(tt.s)
		if r != tt.wantRune || size != tt.wantSize {
			t.Errorf("DecodeLastRuneInString(%q) = (%U, %d), want (%U, %d)",
				tt.s, r, size, tt.wantRune, tt.wantSize)
		}
	}
}

// Test Valid and ValidString
func TestValid(t *testing.T) {
	tests := []struct {
		s    string
		want bool
	}{
		{"", true},
		{"a", true},
		{"abc", true},
		{"中文", true},
		{"Hello, 世界", true},
		{"🌟", true},
		{"\x80", false},             // Invalid UTF-8
		{"\xC0\x80", false},         // Invalid UTF-8
		{"\xE4\xB8", false},         // Incomplete UTF-8
		{"\xF0\x9F\x8C", false},     // Incomplete UTF-8
		{"valid\x80invalid", false}, // Mixed valid/invalid
	}

	for _, tt := range tests {
		// Test Valid
		got := utf8.Valid([]byte(tt.s))
		if got != tt.want {
			t.Errorf("Valid(%q) = %v, want %v", tt.s, got, tt.want)
		}

		// Test ValidString
		got = utf8.ValidString(tt.s)
		if got != tt.want {
			t.Errorf("ValidString(%q) = %v, want %v", tt.s, got, tt.want)
		}
	}
}

// Test ValidRune
func TestValidRune(t *testing.T) {
	tests := []struct {
		r    rune
		want bool
	}{
		{'a', true},
		{'中', true},
		{'🌟', true},
		{utf8.MaxRune, true},
		{utf8.MaxRune + 1, false},
		{-1, false},
		{0xD800, false}, // Surrogate pair (invalid in UTF-8)
		{0xDFFF, false}, // Surrogate pair (invalid in UTF-8)
	}

	for _, tt := range tests {
		got := utf8.ValidRune(tt.r)
		if got != tt.want {
			t.Errorf("ValidRune(%U) = %v, want %v", tt.r, got, tt.want)
		}
	}
}

// Test RuneStart
func TestRuneStart(t *testing.T) {
	tests := []struct {
		b    byte
		want bool
	}{
		{0x00, true},  // ASCII
		{0x7F, true},  // ASCII
		{0x80, false}, // Continuation byte
		{0xBF, false}, // Continuation byte
		{0xC0, true},  // Start of 2-byte sequence
		{0xE0, true},  // Start of 3-byte sequence
		{0xF0, true},  // Start of 4-byte sequence
		{0xF8, true},  // Invalid but still a start byte
	}

	for _, tt := range tests {
		got := utf8.RuneStart(tt.b)
		if got != tt.want {
			t.Errorf("RuneStart(%#x) = %v, want %v", tt.b, got, tt.want)
		}
	}
}
