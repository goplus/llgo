package hmac_test

import (
	"crypto/hmac"
	"crypto/md5"
	"crypto/sha1"
	"crypto/sha256"
	"crypto/sha512"
	"encoding/hex"
	"hash"
	"testing"
)

func TestNew(t *testing.T) {
	key := []byte("key")
	message := []byte("The quick brown fox jumps over the lazy dog")

	tests := []struct {
		name     string
		hashFunc func() hash.Hash
		expected string
	}{
		{"SHA1", sha1.New, "de7c9b85b8b78aa6bc8a7a36f70a90701c9db4d9"},
		{"SHA256", sha256.New, "f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8"},
		{"MD5", md5.New, "80070713463e7749b90c2dc24911e275"},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			h := hmac.New(tt.hashFunc, key)
			if h == nil {
				t.Fatal("New() returned nil")
			}

			h.Write(message)
			mac := h.Sum(nil)

			result := hex.EncodeToString(mac)
			if result != tt.expected {
				t.Errorf("HMAC-%s = %s, want %s", tt.name, result, tt.expected)
			}
		})
	}
}

func TestNewWithSHA512(t *testing.T) {
	key := []byte("my-secret-key")
	message := []byte("hello world")

	h := hmac.New(sha512.New, key)
	h.Write(message)
	mac := h.Sum(nil)

	if len(mac) != sha512.Size {
		t.Errorf("HMAC-SHA512 length = %d, want %d", len(mac), sha512.Size)
	}

	h2 := hmac.New(sha512.New, key)
	h2.Write(message)
	mac2 := h2.Sum(nil)

	if hex.EncodeToString(mac) != hex.EncodeToString(mac2) {
		t.Error("Same key and message should produce same HMAC")
	}
}

func TestEqual(t *testing.T) {
	tests := []struct {
		name string
		mac1 []byte
		mac2 []byte
		want bool
	}{
		{"equal empty", []byte{}, []byte{}, true},
		{"equal same", []byte{1, 2, 3, 4}, []byte{1, 2, 3, 4}, true},
		{"not equal different length", []byte{1, 2, 3}, []byte{1, 2, 3, 4}, false},
		{"not equal different values", []byte{1, 2, 3, 4}, []byte{1, 2, 3, 5}, false},
		{"nil vs empty", nil, []byte{}, true},
		{"nil vs nil", nil, nil, true},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := hmac.Equal(tt.mac1, tt.mac2)
			if got != tt.want {
				t.Errorf("Equal(%v, %v) = %v, want %v", tt.mac1, tt.mac2, got, tt.want)
			}
		})
	}
}

func TestHashInterface(t *testing.T) {
	key := []byte("secret")
	h := hmac.New(sha256.New, key)

	data := []byte("test message")
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

	mac1 := h.Sum(nil)
	h.Reset()
	mac2 := h.Sum(nil)

	if hmac.Equal(mac1, mac2) {
		t.Error("Reset() should change HMAC state")
	}

	h.Write(data)
	mac3 := h.Sum(nil)

	if !hmac.Equal(mac1, mac3) {
		t.Error("Same data after Reset() should produce same HMAC")
	}
}

func TestMultipleWrites(t *testing.T) {
	key := []byte("key")

	h1 := hmac.New(sha256.New, key)
	h1.Write([]byte("hello"))
	h1.Write([]byte(" "))
	h1.Write([]byte("world"))
	mac1 := h1.Sum(nil)

	h2 := hmac.New(sha256.New, key)
	h2.Write([]byte("hello world"))
	mac2 := h2.Sum(nil)

	if !hmac.Equal(mac1, mac2) {
		t.Error("Multiple Write() calls should produce same result as single write")
	}
}

func TestDifferentKeys(t *testing.T) {
	message := []byte("test")

	h1 := hmac.New(sha256.New, []byte("key1"))
	h1.Write(message)
	mac1 := h1.Sum(nil)

	h2 := hmac.New(sha256.New, []byte("key2"))
	h2.Write(message)
	mac2 := h2.Sum(nil)

	if hmac.Equal(mac1, mac2) {
		t.Error("Different keys should produce different HMACs")
	}
}
