//go:build !llgo

package sha512_test

import (
	"crypto/sha512"
	"encoding/hex"
	"testing"
)

func TestConstants(t *testing.T) {
	if sha512.Size != 64 {
		t.Errorf("Size = %d, want 64", sha512.Size)
	}
	if sha512.Size224 != 28 {
		t.Errorf("Size224 = %d, want 28", sha512.Size224)
	}
	if sha512.Size256 != 32 {
		t.Errorf("Size256 = %d, want 32", sha512.Size256)
	}
	if sha512.Size384 != 48 {
		t.Errorf("Size384 = %d, want 48", sha512.Size384)
	}
	if sha512.BlockSize != 128 {
		t.Errorf("BlockSize = %d, want 128", sha512.BlockSize)
	}
}

func TestNew(t *testing.T) {
	h := sha512.New()
	if h == nil {
		t.Fatal("New() returned nil")
	}

	data := []byte("hello world")
	h.Write(data)
	sum := h.Sum(nil)

	if len(sum) != sha512.Size {
		t.Errorf("hash length = %d, want %d", len(sum), sha512.Size)
	}

	expected := "309ecc489c12d6eb4cc40f50c902f2b4d0ed77ee511a7c7a9bcd3ca86d4cd86f989dd35bc5ff499670da34255b45b0cfd830e81f605dcf7dc5542e93ae9cd76f"
	if hex.EncodeToString(sum) != expected {
		t.Errorf("hash = %s, want %s", hex.EncodeToString(sum), expected)
	}
}

func TestNew384(t *testing.T) {
	h := sha512.New384()
	if h == nil {
		t.Fatal("New384() returned nil")
	}

	data := []byte("hello world")
	h.Write(data)
	sum := h.Sum(nil)

	if len(sum) != sha512.Size384 {
		t.Errorf("hash length = %d, want %d", len(sum), sha512.Size384)
	}

	expected := "fdbd8e75a67f29f701a4e040385e2e23986303ea10239211af907fcbb83578b3e417cb71ce646efd0819dd8c088de1bd"
	if hex.EncodeToString(sum) != expected {
		t.Errorf("hash = %s, want %s", hex.EncodeToString(sum), expected)
	}
}

func TestNew512_224(t *testing.T) {
	h := sha512.New512_224()
	if h == nil {
		t.Fatal("New512_224() returned nil")
	}

	data := []byte("hello world")
	h.Write(data)
	sum := h.Sum(nil)

	if len(sum) != sha512.Size224 {
		t.Errorf("hash length = %d, want %d", len(sum), sha512.Size224)
	}

	expected := "22e0d52336f64a998085078b05a6e37b26f8120f43bf4db4c43a64ee"
	if hex.EncodeToString(sum) != expected {
		t.Errorf("hash = %s, want %s", hex.EncodeToString(sum), expected)
	}
}

func TestNew512_256(t *testing.T) {
	h := sha512.New512_256()
	if h == nil {
		t.Fatal("New512_256() returned nil")
	}

	data := []byte("hello world")
	h.Write(data)
	sum := h.Sum(nil)

	if len(sum) != sha512.Size256 {
		t.Errorf("hash length = %d, want %d", len(sum), sha512.Size256)
	}

	expected := "0ac561fac838104e3f2e4ad107b4bee3e938bf15f2b15f009ccccd61a913f017"
	if hex.EncodeToString(sum) != expected {
		t.Errorf("hash = %s, want %s", hex.EncodeToString(sum), expected)
	}
}

func TestSum512(t *testing.T) {
	tests := []struct {
		input    string
		expected string
	}{
		{"", "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e"},
		{"a", "1f40fc92da241694750979ee6cf582f2d5d7d28e18335de05abc54d0560e0f5302860c652bf08d560252aa5e74210546f369fbbbce8c12cfc7957b2652fe9a75"},
		{"abc", "ddaf35a193617abacc417349ae20413112e6fa4e89a97ea20a9eeee64b55d39a2192992a274fc1a836ba3c23a3feebbd454d4423643ce80e2a9ac94fa54ca49f"},
		{"hello world", "309ecc489c12d6eb4cc40f50c902f2b4d0ed77ee511a7c7a9bcd3ca86d4cd86f989dd35bc5ff499670da34255b45b0cfd830e81f605dcf7dc5542e93ae9cd76f"},
	}

	for _, tt := range tests {
		sum := sha512.Sum512([]byte(tt.input))
		result := hex.EncodeToString(sum[:])
		if result != tt.expected {
			t.Errorf("Sum512(%q) = %s, want %s", tt.input, result, tt.expected)
		}
	}
}

func TestSum384(t *testing.T) {
	tests := []struct {
		input    string
		expected string
	}{
		{"", "38b060a751ac96384cd9327eb1b1e36a21fdb71114be07434c0cc7bf63f6e1da274edebfe76f65fbd51ad2f14898b95b"},
		{"a", "54a59b9f22b0b80880d8427e548b7c23abd873486e1f035dce9cd697e85175033caa88e6d57bc35efae0b5afd3145f31"},
		{"abc", "cb00753f45a35e8bb5a03d699ac65007272c32ab0eded1631a8b605a43ff5bed8086072ba1e7cc2358baeca134c825a7"},
		{"hello world", "fdbd8e75a67f29f701a4e040385e2e23986303ea10239211af907fcbb83578b3e417cb71ce646efd0819dd8c088de1bd"},
	}

	for _, tt := range tests {
		sum := sha512.Sum384([]byte(tt.input))
		result := hex.EncodeToString(sum[:])
		if result != tt.expected {
			t.Errorf("Sum384(%q) = %s, want %s", tt.input, result, tt.expected)
		}
	}
}

func TestSum512_224(t *testing.T) {
	tests := []struct {
		input    string
		expected string
	}{
		{"", "6ed0dd02806fa89e25de060c19d3ac86cabb87d6a0ddd05c333b84f4"},
		{"a", "d5cdb9ccc769a5121d4175f2bfdd13d6310e0d3d361ea75d82108327"},
		{"abc", "4634270f707b6a54daae7530460842e20e37ed265ceee9a43e8924aa"},
		{"hello world", "22e0d52336f64a998085078b05a6e37b26f8120f43bf4db4c43a64ee"},
	}

	for _, tt := range tests {
		sum := sha512.Sum512_224([]byte(tt.input))
		result := hex.EncodeToString(sum[:])
		if result != tt.expected {
			t.Errorf("Sum512_224(%q) = %s, want %s", tt.input, result, tt.expected)
		}
	}
}

func TestSum512_256(t *testing.T) {
	tests := []struct {
		input    string
		expected string
	}{
		{"", "c672b8d1ef56ed28ab87c3622c5114069bdd3ad7b8f9737498d0c01ecef0967a"},
		{"a", "455e518824bc0601f9fb858ff5c37d417d67c2f8e0df2babe4808858aea830f8"},
		{"abc", "53048e2681941ef99b2e29b76b4c7dabe4c2d0c634fc6d46e0e2f13107e7af23"},
		{"hello world", "0ac561fac838104e3f2e4ad107b4bee3e938bf15f2b15f009ccccd61a913f017"},
	}

	for _, tt := range tests {
		sum := sha512.Sum512_256([]byte(tt.input))
		result := hex.EncodeToString(sum[:])
		if result != tt.expected {
			t.Errorf("Sum512_256(%q) = %s, want %s", tt.input, result, tt.expected)
		}
	}
}

func TestHashInterface(t *testing.T) {
	h := sha512.New()

	data := []byte("test")
	n, err := h.Write(data)
	if err != nil {
		t.Errorf("Write() error = %v", err)
	}
	if n != len(data) {
		t.Errorf("Write() wrote %d bytes, want %d", n, len(data))
	}

	if h.Size() != sha512.Size {
		t.Errorf("Size() = %d, want %d", h.Size(), sha512.Size)
	}

	if h.BlockSize() != sha512.BlockSize {
		t.Errorf("BlockSize() = %d, want %d", h.BlockSize(), sha512.BlockSize)
	}

	h.Reset()
	sum := h.Sum(nil)

	expected := sha512.Sum512(nil)
	if hex.EncodeToString(sum) != hex.EncodeToString(expected[:]) {
		t.Error("Reset() did not properly reset hash state")
	}
}

func TestMultipleWrites(t *testing.T) {
	h1 := sha512.New()
	h1.Write([]byte("hello"))
	h1.Write([]byte(" "))
	h1.Write([]byte("world"))
	sum1 := h1.Sum(nil)

	sum2 := sha512.Sum512([]byte("hello world"))

	if hex.EncodeToString(sum1) != hex.EncodeToString(sum2[:]) {
		t.Error("Multiple Write() calls should produce same result as single write")
	}
}
