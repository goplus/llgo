//go:build !llgo

package rc4_test

import (
	"bytes"
	"crypto/rc4"
	"encoding/hex"
	"testing"
)

// Test NewCipher with valid keys
func TestNewCipher(t *testing.T) {
	tests := []struct {
		name    string
		keySize int
	}{
		{"5-byte key", 5},
		{"16-byte key", 16},
		{"32-byte key", 32},
		{"256-byte key", 256},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			key := make([]byte, tt.keySize)
			for i := range key {
				key[i] = byte(i)
			}

			cipher, err := rc4.NewCipher(key)
			if err != nil {
				t.Fatalf("NewCipher(%d-byte key) error = %v", tt.keySize, err)
			}
			if cipher == nil {
				t.Fatal("NewCipher returned nil cipher")
			}
		})
	}
}

// Test NewCipher with invalid key sizes
func TestNewCipherInvalidKey(t *testing.T) {
	tests := []struct {
		name    string
		keySize int
	}{
		{"empty key", 0},
		{"257-byte key", 257},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			key := make([]byte, tt.keySize)
			_, err := rc4.NewCipher(key)
			if err == nil {
				t.Errorf("NewCipher with %d-byte key should return error, got nil", tt.keySize)
			}
			if _, ok := err.(rc4.KeySizeError); !ok {
				t.Errorf("NewCipher with %d-byte key should return KeySizeError, got %T", tt.keySize, err)
			}
		})
	}
}

// Test KeySizeError type and its Error method
func TestKeySizeError(t *testing.T) {
	tests := []struct {
		size int
		want string
	}{
		{0, "crypto/rc4: invalid key size 0"},
		{257, "crypto/rc4: invalid key size 257"},
	}

	for _, tt := range tests {
		err := rc4.KeySizeError(tt.size)
		if err.Error() != tt.want {
			t.Errorf("KeySizeError(%d).Error() = %q, want %q", tt.size, err.Error(), tt.want)
		}
	}
}

// Test XORKeyStream encryption and decryption
func TestXORKeyStream(t *testing.T) {
	key := []byte("testkey123")
	plaintext := []byte("Hello, World! This is a test message.")

	// Encrypt
	cipher1, err := rc4.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}

	ciphertext := make([]byte, len(plaintext))
	cipher1.XORKeyStream(ciphertext, plaintext)

	// Verify encryption changed the data
	if bytes.Equal(ciphertext, plaintext) {
		t.Error("XORKeyStream did not change the plaintext")
	}

	// Decrypt
	cipher2, err := rc4.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}

	decrypted := make([]byte, len(ciphertext))
	cipher2.XORKeyStream(decrypted, ciphertext)

	// Verify decryption restored original data
	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("XORKeyStream decrypt result = %q, want %q", decrypted, plaintext)
	}
}

// Test with known RC4 test vector
func TestKnownVector(t *testing.T) {
	// Test vector from RFC 6229
	key, _ := hex.DecodeString("0102030405")
	expectedOutput, _ := hex.DecodeString("b2396305f03dc027ccc3524a0a1118a8")

	cipher, err := rc4.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}

	plaintext := make([]byte, 16)
	ciphertext := make([]byte, 16)
	cipher.XORKeyStream(ciphertext, plaintext)

	if !bytes.Equal(ciphertext, expectedOutput) {
		t.Errorf("XORKeyStream result = %x, want %x", ciphertext, expectedOutput)
	}
}

// Test Reset method
func TestReset(t *testing.T) {
	key := []byte("testkey")

	cipher, err := rc4.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}

	// Test that Reset is callable (it zeros the key data)
	// Reset is deprecated and makes the cipher unusable
	cipher.Reset()

	// After Reset, the cipher has been zeroed
	// We just verify Reset doesn't panic
}

// Test encrypting/decrypting in chunks
func TestXORKeyStreamChunks(t *testing.T) {
	key := []byte("testkey")
	plaintext := []byte("This is a longer test message that will be processed in chunks.")

	// Encrypt all at once
	cipher1, _ := rc4.NewCipher(key)
	allAtOnce := make([]byte, len(plaintext))
	cipher1.XORKeyStream(allAtOnce, plaintext)

	// Encrypt in chunks
	cipher2, _ := rc4.NewCipher(key)
	inChunks := make([]byte, len(plaintext))
	chunkSize := 10
	for i := 0; i < len(plaintext); i += chunkSize {
		end := i + chunkSize
		if end > len(plaintext) {
			end = len(plaintext)
		}
		cipher2.XORKeyStream(inChunks[i:end], plaintext[i:end])
	}

	// Results should be identical
	if !bytes.Equal(allAtOnce, inChunks) {
		t.Error("Chunked encryption produced different result than all-at-once encryption")
	}
}

// Test Cipher type methods
func TestCipherType(t *testing.T) {
	key := []byte("testkey")
	cipher, err := rc4.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}

	// Test that cipher is not nil and has expected methods
	if cipher == nil {
		t.Fatal("NewCipher returned nil")
	}

	// Test XORKeyStream is callable (already tested above, but verifying method exists)
	data := []byte("test")
	output := make([]byte, len(data))
	cipher.XORKeyStream(output, data) // Should not panic

	// Test Reset is callable
	cipher.Reset() // Should not panic
}

// Test encryption and decryption are symmetric
func TestSymmetric(t *testing.T) {
	key := []byte("secretkey")
	plaintext := []byte("The quick brown fox jumps over the lazy dog")

	// Encrypt
	c1, _ := rc4.NewCipher(key)
	ciphertext := make([]byte, len(plaintext))
	c1.XORKeyStream(ciphertext, plaintext)

	// Decrypt (RC4 is symmetric, so same operation decrypts)
	c2, _ := rc4.NewCipher(key)
	decrypted := make([]byte, len(ciphertext))
	c2.XORKeyStream(decrypted, ciphertext)

	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("Symmetric operation failed: got %q, want %q", decrypted, plaintext)
	}
}
