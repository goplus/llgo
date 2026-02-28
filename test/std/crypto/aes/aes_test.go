package aes_test

import (
	"crypto/aes"
	"crypto/cipher"
	"encoding/hex"
	"testing"
)

// Test BlockSize constant
func TestBlockSize(t *testing.T) {
	if aes.BlockSize != 16 {
		t.Errorf("BlockSize = %d, want 16", aes.BlockSize)
	}
}

// Test NewCipher with valid keys
func TestNewCipher(t *testing.T) {
	tests := []struct {
		name    string
		keySize int
	}{
		{"AES-128", 16},
		{"AES-192", 24},
		{"AES-256", 32},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			key := make([]byte, tt.keySize)
			for i := range key {
				key[i] = byte(i)
			}

			block, err := aes.NewCipher(key)
			if err != nil {
				t.Fatalf("NewCipher(%d-byte key) error = %v", tt.keySize, err)
			}
			if block == nil {
				t.Fatal("NewCipher returned nil block")
			}

			// Verify block size
			if block.BlockSize() != aes.BlockSize {
				t.Errorf("block.BlockSize() = %d, want %d", block.BlockSize(), aes.BlockSize)
			}
		})
	}
}

// Test NewCipher with invalid key sizes
func TestNewCipherInvalidKey(t *testing.T) {
	invalidSizes := []int{0, 8, 15, 17, 23, 25, 31, 33, 64}

	for _, size := range invalidSizes {
		key := make([]byte, size)
		_, err := aes.NewCipher(key)
		if err == nil {
			t.Errorf("NewCipher with %d-byte key should return error, got nil", size)
		}
		if _, ok := err.(aes.KeySizeError); !ok {
			t.Errorf("NewCipher with %d-byte key should return KeySizeError, got %T", size, err)
		}
	}
}

// Test KeySizeError type and its Error method
func TestKeySizeError(t *testing.T) {
	tests := []struct {
		size int
		want string
	}{
		{8, "crypto/aes: invalid key size 8"},
		{15, "crypto/aes: invalid key size 15"},
		{17, "crypto/aes: invalid key size 17"},
	}

	for _, tt := range tests {
		err := aes.KeySizeError(tt.size)
		if err.Error() != tt.want {
			t.Errorf("KeySizeError(%d).Error() = %q, want %q", tt.size, err.Error(), tt.want)
		}
	}
}

// Test encryption and decryption roundtrip
func TestEncryptDecrypt(t *testing.T) {
	key := []byte("0123456789abcdef")       // 16 bytes for AES-128
	plaintext := []byte("exampleplaintext") // 16 bytes (one block)

	block, err := aes.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}

	// Encrypt
	ciphertext := make([]byte, len(plaintext))
	block.Encrypt(ciphertext, plaintext)

	// Verify encryption changed the data
	if string(ciphertext) == string(plaintext) {
		t.Error("Encrypt did not change the plaintext")
	}

	// Decrypt
	decrypted := make([]byte, len(ciphertext))
	block.Decrypt(decrypted, ciphertext)

	// Verify decryption restored original data
	if string(decrypted) != string(plaintext) {
		t.Errorf("Decrypt result = %q, want %q", decrypted, plaintext)
	}
}

// Test with known test vector (FIPS 197 example)
func TestKnownVector(t *testing.T) {
	// Test vector from FIPS 197 (AES specification)
	key, _ := hex.DecodeString("000102030405060708090a0b0c0d0e0f")
	plaintext, _ := hex.DecodeString("00112233445566778899aabbccddeeff")
	expectedCiphertext, _ := hex.DecodeString("69c4e0d86a7b0430d8cdb78070b4c55a")

	block, err := aes.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}

	ciphertext := make([]byte, len(plaintext))
	block.Encrypt(ciphertext, plaintext)

	if hex.EncodeToString(ciphertext) != hex.EncodeToString(expectedCiphertext) {
		t.Errorf("Encrypt result = %x, want %x", ciphertext, expectedCiphertext)
	}
}

// Test that Block implements cipher.Block interface
func TestBlockInterface(t *testing.T) {
	key := make([]byte, 16)
	block, err := aes.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}

	// Verify it implements cipher.Block
	var _ cipher.Block = block
}
