package des_test

import (
	"crypto/cipher"
	"crypto/des"
	"encoding/hex"
	"testing"
)

// Test BlockSize constant
func TestBlockSize(t *testing.T) {
	if des.BlockSize != 8 {
		t.Errorf("BlockSize = %d, want 8", des.BlockSize)
	}
}

// Test NewCipher with valid key
func TestNewCipher(t *testing.T) {
	key := []byte("12345678") // 8 bytes for DES

	block, err := des.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}
	if block == nil {
		t.Fatal("NewCipher returned nil block")
	}

	// Verify block size
	if block.BlockSize() != des.BlockSize {
		t.Errorf("block.BlockSize() = %d, want %d", block.BlockSize(), des.BlockSize)
	}
}

// Test NewCipher with invalid key sizes
func TestNewCipherInvalidKey(t *testing.T) {
	invalidSizes := []int{0, 7, 9, 16, 24}

	for _, size := range invalidSizes {
		key := make([]byte, size)
		_, err := des.NewCipher(key)
		if err == nil {
			t.Errorf("NewCipher with %d-byte key should return error, got nil", size)
		}
		if _, ok := err.(des.KeySizeError); !ok {
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
		{7, "crypto/des: invalid key size 7"},
		{9, "crypto/des: invalid key size 9"},
		{16, "crypto/des: invalid key size 16"},
	}

	for _, tt := range tests {
		err := des.KeySizeError(tt.size)
		if err.Error() != tt.want {
			t.Errorf("KeySizeError(%d).Error() = %q, want %q", tt.size, err.Error(), tt.want)
		}
	}
}

// Test encryption and decryption roundtrip
func TestEncryptDecrypt(t *testing.T) {
	key := []byte("testkey8")       // 8 bytes for DES
	plaintext := []byte("plainext") // 8 bytes (one block)

	block, err := des.NewCipher(key)
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

// Test NewTripleDESCipher with valid keys
func TestNewTripleDESCipher(t *testing.T) {
	tests := []struct {
		name    string
		keySize int
	}{
		{"TripleDES with 24-byte key", 24},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			key := make([]byte, tt.keySize)
			for i := range key {
				key[i] = byte(i)
			}

			block, err := des.NewTripleDESCipher(key)
			if err != nil {
				t.Fatalf("NewTripleDESCipher(%d-byte key) error = %v", tt.keySize, err)
			}
			if block == nil {
				t.Fatal("NewTripleDESCipher returned nil block")
			}

			// Verify block size (still 8 bytes)
			if block.BlockSize() != des.BlockSize {
				t.Errorf("block.BlockSize() = %d, want %d", block.BlockSize(), des.BlockSize)
			}
		})
	}
}

// Test NewTripleDESCipher with invalid key sizes
func TestNewTripleDESCipherInvalidKey(t *testing.T) {
	invalidSizes := []int{0, 8, 15, 16, 17, 23, 25, 32}

	for _, size := range invalidSizes {
		key := make([]byte, size)
		_, err := des.NewTripleDESCipher(key)
		if err == nil {
			t.Errorf("NewTripleDESCipher with %d-byte key should return error, got nil", size)
		}
		if _, ok := err.(des.KeySizeError); !ok {
			t.Errorf("NewTripleDESCipher with %d-byte key should return KeySizeError, got %T", size, err)
		}
	}
}

// Test TripleDES encryption and decryption roundtrip
func TestTripleDESEncryptDecrypt(t *testing.T) {
	key := []byte("012345678901234567890123") // 24 bytes for 3DES
	plaintext := []byte("testdata")           // 8 bytes (one block)

	block, err := des.NewTripleDESCipher(key)
	if err != nil {
		t.Fatalf("NewTripleDESCipher error = %v", err)
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

// Test with known DES test vector
func TestKnownVector(t *testing.T) {
	// NIST test vector
	key, _ := hex.DecodeString("0123456789ABCDEF")
	plaintext, _ := hex.DecodeString("4E6F772069732074")
	expectedCiphertext, _ := hex.DecodeString("3FA40E8A984D4815")

	block, err := des.NewCipher(key)
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
	key := make([]byte, 8)
	block, err := des.NewCipher(key)
	if err != nil {
		t.Fatalf("NewCipher error = %v", err)
	}

	// Verify it implements cipher.Block
	var _ cipher.Block = block
}

// Test that TripleDES Block implements cipher.Block interface
func TestTripleDESBlockInterface(t *testing.T) {
	key := make([]byte, 24)
	block, err := des.NewTripleDESCipher(key)
	if err != nil {
		t.Fatalf("NewTripleDESCipher error = %v", err)
	}

	// Verify it implements cipher.Block
	var _ cipher.Block = block
}
