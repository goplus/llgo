package sha1_test

import (
	"crypto/sha1"
	"encoding/hex"
	"testing"
)

func TestBlockSize(t *testing.T) {
	if sha1.BlockSize != 64 {
		t.Errorf("BlockSize = %d, want 64", sha1.BlockSize)
	}
}

func TestSize(t *testing.T) {
	if sha1.Size != 20 {
		t.Errorf("Size = %d, want 20", sha1.Size)
	}
}

func TestSum(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"", "da39a3ee5e6b4b0d3255bfef95601890afd80709"},
		{"a", "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"},
		{"abc", "a9993e364706816aba3e25717850c26c9cd0d89d"},
		{"message digest", "c12252ceda8be8994d5fa0290a47231c1d16aae3"},
		{"The quick brown fox jumps over the lazy dog", "2fd4e1c67a2d28fced849ee1bb76e7391b93eb12"},
	}

	for _, tt := range tests {
		result := sha1.Sum([]byte(tt.input))
		got := hex.EncodeToString(result[:])
		if got != tt.want {
			t.Errorf("Sum(%q) = %s, want %s", tt.input, got, tt.want)
		}
	}
}

func TestNew(t *testing.T) {
	h := sha1.New()
	if h == nil {
		t.Fatal("New() returned nil")
	}

	if h.Size() != sha1.Size {
		t.Errorf("Size() = %d, want %d", h.Size(), sha1.Size)
	}

	if h.BlockSize() != sha1.BlockSize {
		t.Errorf("BlockSize() = %d, want %d", h.BlockSize(), sha1.BlockSize)
	}
}

func TestHashWrite(t *testing.T) {
	h := sha1.New()
	h.Write([]byte("The quick brown fox "))
	h.Write([]byte("jumps over the lazy dog"))

	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "2fd4e1c67a2d28fced849ee1bb76e7391b93eb12"

	if got != want {
		t.Errorf("Hash = %s, want %s", got, want)
	}
}

func TestHashReset(t *testing.T) {
	h := sha1.New()
	h.Write([]byte("data"))
	h.Reset()
	h.Write([]byte("abc"))

	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "a9993e364706816aba3e25717850c26c9cd0d89d"

	if got != want {
		t.Errorf("After reset, Hash = %s, want %s", got, want)
	}
}

func TestEmptyHash(t *testing.T) {
	h := sha1.New()
	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "da39a3ee5e6b4b0d3255bfef95601890afd80709"

	if got != want {
		t.Errorf("Empty hash = %s, want %s", got, want)
	}
}
