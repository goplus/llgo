package md5_test

import (
	"crypto/md5"
	"encoding/hex"
	"testing"
)

func TestBlockSize(t *testing.T) {
	if md5.BlockSize != 64 {
		t.Errorf("BlockSize = %d, want 64", md5.BlockSize)
	}
}

func TestSize(t *testing.T) {
	if md5.Size != 16 {
		t.Errorf("Size = %d, want 16", md5.Size)
	}
}

func TestSum(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"", "d41d8cd98f00b204e9800998ecf8427e"},
		{"a", "0cc175b9c0f1b6a831c399e269772661"},
		{"abc", "900150983cd24fb0d6963f7d28e17f72"},
		{"message digest", "f96b697d7cb7938d525a2f31aaf161d0"},
		{"abcdefghijklmnopqrstuvwxyz", "c3fcd3d76192e4007dfb496cca67e13b"},
		{"The quick brown fox jumps over the lazy dog", "9e107d9d372bb6826bd81d3542a419d6"},
	}

	for _, tt := range tests {
		result := md5.Sum([]byte(tt.input))
		got := hex.EncodeToString(result[:])
		if got != tt.want {
			t.Errorf("Sum(%q) = %s, want %s", tt.input, got, tt.want)
		}
	}
}

func TestNew(t *testing.T) {
	h := md5.New()
	if h == nil {
		t.Fatal("New() returned nil")
	}

	if h.Size() != md5.Size {
		t.Errorf("Size() = %d, want %d", h.Size(), md5.Size)
	}

	if h.BlockSize() != md5.BlockSize {
		t.Errorf("BlockSize() = %d, want %d", h.BlockSize(), md5.BlockSize)
	}
}

func TestHashWrite(t *testing.T) {
	h := md5.New()
	h.Write([]byte("The quick brown fox "))
	h.Write([]byte("jumps over the lazy dog"))

	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "9e107d9d372bb6826bd81d3542a419d6"

	if got != want {
		t.Errorf("Hash = %s, want %s", got, want)
	}
}

func TestHashReset(t *testing.T) {
	h := md5.New()
	h.Write([]byte("data"))
	h.Reset()
	h.Write([]byte("abc"))

	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "900150983cd24fb0d6963f7d28e17f72"

	if got != want {
		t.Errorf("After reset, Hash = %s, want %s", got, want)
	}
}

func TestHashSumAppend(t *testing.T) {
	h := md5.New()
	h.Write([]byte("abc"))

	prefix := []byte("prefix")
	result := h.Sum(prefix)

	if len(result) != len(prefix)+md5.Size {
		t.Errorf("Sum(prefix) length = %d, want %d", len(result), len(prefix)+md5.Size)
	}

	for i := 0; i < len(prefix); i++ {
		if result[i] != prefix[i] {
			t.Error("Sum modified prefix")
			break
		}
	}

	hash := hex.EncodeToString(result[len(prefix):])
	want := "900150983cd24fb0d6963f7d28e17f72"
	if hash != want {
		t.Errorf("Hash = %s, want %s", hash, want)
	}
}

func TestEmptyHash(t *testing.T) {
	h := md5.New()
	result := h.Sum(nil)
	got := hex.EncodeToString(result)
	want := "d41d8cd98f00b204e9800998ecf8427e"

	if got != want {
		t.Errorf("Empty hash = %s, want %s", got, want)
	}
}
