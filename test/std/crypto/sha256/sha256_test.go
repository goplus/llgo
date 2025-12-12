//go:build !llgo

package sha256_test

import (
	"crypto/sha256"
	"encoding/hex"
	"testing"
)

func TestBlockSize(t *testing.T) {
	if sha256.BlockSize != 64 {
		t.Errorf("BlockSize = %d, want 64", sha256.BlockSize)
	}
}

func TestSize(t *testing.T) {
	if sha256.Size != 32 {
		t.Errorf("Size = %d, want 32", sha256.Size)
	}
}

func TestSize224(t *testing.T) {
	if sha256.Size224 != 28 {
		t.Errorf("Size224 = %d, want 28", sha256.Size224)
	}
}

func TestNew(t *testing.T) {
	h := sha256.New()
	if h == nil {
		t.Fatal("New() returned nil")
	}

	data := []byte("hello world")
	h.Write(data)
	sum := h.Sum(nil)

	if len(sum) != sha256.Size {
		t.Errorf("hash length = %d, want %d", len(sum), sha256.Size)
	}

	expected := "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"
	if hex.EncodeToString(sum) != expected {
		t.Errorf("hash = %s, want %s", hex.EncodeToString(sum), expected)
	}
}

func TestNew224(t *testing.T) {
	h := sha256.New224()
	if h == nil {
		t.Fatal("New224() returned nil")
	}

	data := []byte("hello world")
	h.Write(data)
	sum := h.Sum(nil)

	if len(sum) != sha256.Size224 {
		t.Errorf("hash length = %d, want %d", len(sum), sha256.Size224)
	}

	expected := "2f05477fc24bb4faefd86517156dafdecec45b8ad3cf2522a563582b"
	if hex.EncodeToString(sum) != expected {
		t.Errorf("hash = %s, want %s", hex.EncodeToString(sum), expected)
	}
}

func TestSum224(t *testing.T) {
	tests := []struct {
		input    string
		expected string
	}{
		{"", "d14a028c2a3a2bc9476102bb288234c415a2b01f828ea62ac5b3e42f"},
		{"a", "abd37534c7d9a2efb9465de931cd7055ffdb8879563ae98078d6d6d5"},
		{"abc", "23097d223405d8228642a477bda255b32aadbce4bda0b3f7e36c9da7"},
		{"hello world", "2f05477fc24bb4faefd86517156dafdecec45b8ad3cf2522a563582b"},
	}

	for _, tt := range tests {
		sum := sha256.Sum224([]byte(tt.input))
		result := hex.EncodeToString(sum[:])
		if result != tt.expected {
			t.Errorf("Sum224(%q) = %s, want %s", tt.input, result, tt.expected)
		}
	}
}

func TestSum256(t *testing.T) {
	tests := []struct {
		input    string
		expected string
	}{
		{"", "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"},
		{"a", "ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb"},
		{"abc", "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"},
		{"hello world", "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"},
		{"The quick brown fox jumps over the lazy dog", "d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592"},
	}

	for _, tt := range tests {
		sum := sha256.Sum256([]byte(tt.input))
		result := hex.EncodeToString(sum[:])
		if result != tt.expected {
			t.Errorf("Sum256(%q) = %s, want %s", tt.input, result, tt.expected)
		}
	}
}

func TestHashInterface(t *testing.T) {
	h := sha256.New()

	data := []byte("test")
	n, err := h.Write(data)
	if err != nil {
		t.Errorf("Write() error = %v", err)
	}
	if n != len(data) {
		t.Errorf("Write() wrote %d bytes, want %d", n, len(data))
	}

	if h.Size() != sha256.Size {
		t.Errorf("Size() = %d, want %d", h.Size(), sha256.Size)
	}

	if h.BlockSize() != sha256.BlockSize {
		t.Errorf("BlockSize() = %d, want %d", h.BlockSize(), sha256.BlockSize)
	}

	sum := h.Sum(nil)
	h.Reset()
	sum2 := h.Sum(nil)

	expected := sha256.Sum256(nil)
	if hex.EncodeToString(sum2) != hex.EncodeToString(expected[:]) {
		t.Error("Reset() did not reset hash state")
	}

	if hex.EncodeToString(sum) == hex.EncodeToString(sum2) {
		t.Error("Reset() should have changed hash state")
	}
}

func TestMultipleWrites(t *testing.T) {
	h1 := sha256.New()
	h1.Write([]byte("hello"))
	h1.Write([]byte(" "))
	h1.Write([]byte("world"))
	sum1 := h1.Sum(nil)

	sum2 := sha256.Sum256([]byte("hello world"))

	if hex.EncodeToString(sum1) != hex.EncodeToString(sum2[:]) {
		t.Error("Multiple Write() calls should produce same result as single write")
	}
}
