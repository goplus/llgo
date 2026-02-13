package cipher_test

import (
	"bytes"
	"crypto/aes"
	"crypto/cipher"
	"crypto/rand"
	"io"
	"testing"
)

// Helper function to create an AES cipher block for testing
func newTestBlock(t *testing.T) cipher.Block {
	key := make([]byte, 16) // AES-128
	for i := range key {
		key[i] = byte(i)
	}
	block, err := aes.NewCipher(key)
	if err != nil {
		t.Fatalf("Failed to create test block: %v", err)
	}
	return block
}

// Test Block interface
func TestBlockInterface(t *testing.T) {
	block := newTestBlock(t)

	// Test BlockSize method
	if block.BlockSize() != 16 {
		t.Errorf("BlockSize() = %d, want 16", block.BlockSize())
	}

	// Test Encrypt method
	plaintext := []byte("0123456789abcdef")
	ciphertext := make([]byte, 16)
	block.Encrypt(ciphertext, plaintext)

	// Verify encryption changed the data
	if bytes.Equal(ciphertext, plaintext) {
		t.Error("Encrypt did not change plaintext")
	}

	// Test Decrypt method
	decrypted := make([]byte, 16)
	block.Decrypt(decrypted, ciphertext)

	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("Decrypt result = %x, want %x", decrypted, plaintext)
	}
}

// Test CBC mode encryption and decryption
func TestCBC(t *testing.T) {
	block := newTestBlock(t)
	plaintext := []byte("0123456789abcdef0123456789abcdef") // 2 blocks
	iv := make([]byte, block.BlockSize())
	for i := range iv {
		iv[i] = byte(i)
	}

	// Test CBC encrypter
	encrypter := cipher.NewCBCEncrypter(block, iv)
	if encrypter == nil {
		t.Fatal("NewCBCEncrypter returned nil")
	}

	ciphertext := make([]byte, len(plaintext))
	encrypter.CryptBlocks(ciphertext, plaintext)

	// Test CBC decrypter
	decrypter := cipher.NewCBCDecrypter(block, iv)
	if decrypter == nil {
		t.Fatal("NewCBCDecrypter returned nil")
	}

	decrypted := make([]byte, len(ciphertext))
	decrypter.CryptBlocks(decrypted, ciphertext)

	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("CBC decrypt result = %x, want %x", decrypted, plaintext)
	}
}

// Test CFB mode encryption and decryption
func TestCFB(t *testing.T) {
	block := newTestBlock(t)
	plaintext := []byte("Hello, World! This is a test message.")
	iv := make([]byte, block.BlockSize())
	for i := range iv {
		iv[i] = byte(i)
	}

	// Test CFB encrypter
	encrypter := cipher.NewCFBEncrypter(block, iv)
	if encrypter == nil {
		t.Fatal("NewCFBEncrypter returned nil")
	}

	ciphertext := make([]byte, len(plaintext))
	encrypter.XORKeyStream(ciphertext, plaintext)

	// Test CFB decrypter
	decrypter := cipher.NewCFBDecrypter(block, iv)
	if decrypter == nil {
		t.Fatal("NewCFBDecrypter returned nil")
	}

	decrypted := make([]byte, len(ciphertext))
	decrypter.XORKeyStream(decrypted, ciphertext)

	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("CFB decrypt result = %q, want %q", decrypted, plaintext)
	}
}

// Test CTR mode
func TestCTR(t *testing.T) {
	block := newTestBlock(t)
	plaintext := []byte("Hello, World! This is a CTR test message.")
	iv := make([]byte, block.BlockSize())
	for i := range iv {
		iv[i] = byte(i)
	}

	// Encrypt
	ctr := cipher.NewCTR(block, iv)
	if ctr == nil {
		t.Fatal("NewCTR returned nil")
	}

	ciphertext := make([]byte, len(plaintext))
	ctr.XORKeyStream(ciphertext, plaintext)

	// Decrypt (CTR mode uses same operation for decrypt)
	ctr2 := cipher.NewCTR(block, iv)
	decrypted := make([]byte, len(ciphertext))
	ctr2.XORKeyStream(decrypted, ciphertext)

	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("CTR decrypt result = %q, want %q", decrypted, plaintext)
	}
}

// Test OFB mode
func TestOFB(t *testing.T) {
	block := newTestBlock(t)
	plaintext := []byte("Hello, World! This is an OFB test message.")
	iv := make([]byte, block.BlockSize())
	for i := range iv {
		iv[i] = byte(i)
	}

	// Encrypt
	ofb := cipher.NewOFB(block, iv)
	if ofb == nil {
		t.Fatal("NewOFB returned nil")
	}

	ciphertext := make([]byte, len(plaintext))
	ofb.XORKeyStream(ciphertext, plaintext)

	// Decrypt (OFB mode uses same operation for decrypt)
	ofb2 := cipher.NewOFB(block, iv)
	decrypted := make([]byte, len(ciphertext))
	ofb2.XORKeyStream(decrypted, ciphertext)

	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("OFB decrypt result = %q, want %q", decrypted, plaintext)
	}
}

// Test GCM mode (AEAD interface)
func TestGCM(t *testing.T) {
	block := newTestBlock(t)

	// Test NewGCM
	gcm, err := cipher.NewGCM(block)
	if err != nil {
		t.Fatalf("NewGCM error = %v", err)
	}
	if gcm == nil {
		t.Fatal("NewGCM returned nil")
	}

	// Test NonceSize
	nonceSize := gcm.NonceSize()
	if nonceSize != 12 {
		t.Errorf("GCM NonceSize() = %d, want 12", nonceSize)
	}

	// Test Overhead
	overhead := gcm.Overhead()
	if overhead != 16 {
		t.Errorf("GCM Overhead() = %d, want 16", overhead)
	}

	// Test Seal and Open
	plaintext := []byte("Hello, World!")
	nonce := make([]byte, nonceSize)
	io.ReadFull(rand.Reader, nonce)
	additionalData := []byte("additional data")

	ciphertext := gcm.Seal(nil, nonce, plaintext, additionalData)

	decrypted, err := gcm.Open(nil, nonce, ciphertext, additionalData)
	if err != nil {
		t.Fatalf("GCM Open error = %v", err)
	}

	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("GCM decrypt result = %q, want %q", decrypted, plaintext)
	}
}

// Test NewGCMWithNonceSize
func TestGCMWithNonceSize(t *testing.T) {
	block := newTestBlock(t)

	tests := []struct {
		name      string
		nonceSize int
		wantErr   bool
	}{
		{"valid nonce size 12", 12, false},
		{"valid nonce size 16", 16, false},
		{"invalid nonce size 0", 0, true},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			gcm, err := cipher.NewGCMWithNonceSize(block, tt.nonceSize)
			if tt.wantErr {
				if err == nil {
					t.Error("NewGCMWithNonceSize should return error, got nil")
				}
			} else {
				if err != nil {
					t.Errorf("NewGCMWithNonceSize error = %v", err)
				}
				if gcm == nil {
					t.Error("NewGCMWithNonceSize returned nil")
				}
				if gcm != nil && gcm.NonceSize() != tt.nonceSize {
					t.Errorf("NonceSize() = %d, want %d", gcm.NonceSize(), tt.nonceSize)
				}
			}
		})
	}
}

// Test NewGCMWithTagSize
func TestGCMWithTagSize(t *testing.T) {
	block := newTestBlock(t)

	tests := []struct {
		name    string
		tagSize int
		wantErr bool
	}{
		{"valid tag size 16", 16, false},
		{"valid tag size 12", 12, false},
		{"invalid tag size 0", 0, true},
		{"invalid tag size 11", 11, true},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			gcm, err := cipher.NewGCMWithTagSize(block, tt.tagSize)
			if tt.wantErr {
				if err == nil {
					t.Error("NewGCMWithTagSize should return error, got nil")
				}
			} else {
				if err != nil {
					t.Errorf("NewGCMWithTagSize error = %v", err)
				}
				if gcm == nil {
					t.Error("NewGCMWithTagSize returned nil")
				}
			}
		})
	}
}

// Test NewGCMWithRandomNonce (Go 1.24+)
func TestGCMWithRandomNonce(t *testing.T) {
	block := newTestBlock(t)

	gcm, err := cipher.NewGCMWithRandomNonce(block)
	if err != nil {
		// This function may not be available in older Go versions
		t.Skipf("NewGCMWithRandomNonce not available: %v", err)
	}
	if gcm == nil {
		t.Fatal("NewGCMWithRandomNonce returned nil")
	}

	// Test that it works with nil nonce (should generate random nonce)
	plaintext := []byte("Hello, World!")
	ciphertext := gcm.Seal(nil, nil, plaintext, nil)

	// The ciphertext should contain the nonce
	if len(ciphertext) < gcm.NonceSize()+len(plaintext)+gcm.Overhead() {
		t.Errorf("Ciphertext too short: %d bytes", len(ciphertext))
	}
}

// Test StreamReader
func TestStreamReader(t *testing.T) {
	block := newTestBlock(t)
	plaintext := []byte("Hello, World! This is a stream reader test.")
	iv := make([]byte, block.BlockSize())

	// Create a stream cipher
	stream := cipher.NewCTR(block, iv)

	// Encrypt using stream directly
	ciphertext := make([]byte, len(plaintext))
	stream.XORKeyStream(ciphertext, plaintext)

	// Decrypt using StreamReader
	stream2 := cipher.NewCTR(block, iv)
	reader := &cipher.StreamReader{
		S: stream2,
		R: bytes.NewReader(ciphertext),
	}

	decrypted, err := io.ReadAll(reader)
	if err != nil {
		t.Fatalf("StreamReader.Read error = %v", err)
	}

	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("StreamReader decrypt result = %q, want %q", decrypted, plaintext)
	}
}

// Test StreamReader.Read method explicitly
func TestStreamReaderRead(t *testing.T) {
	block := newTestBlock(t)
	plaintext := []byte("Test message for Read method.")
	iv := make([]byte, block.BlockSize())

	// Encrypt
	stream := cipher.NewCTR(block, iv)
	ciphertext := make([]byte, len(plaintext))
	stream.XORKeyStream(ciphertext, plaintext)

	// Decrypt using StreamReader.Read
	stream2 := cipher.NewCTR(block, iv)
	reader := &cipher.StreamReader{
		S: stream2,
		R: bytes.NewReader(ciphertext),
	}

	// Read in chunks
	chunk1 := make([]byte, 10)
	n, err := reader.Read(chunk1)
	if err != nil {
		t.Fatalf("StreamReader.Read error = %v", err)
	}
	if n != 10 {
		t.Errorf("StreamReader.Read returned %d bytes, want 10", n)
	}

	// Read remaining data
	chunk2 := make([]byte, len(plaintext))
	n2, err := reader.Read(chunk2)
	if err != nil && err != io.EOF {
		t.Fatalf("StreamReader.Read error = %v", err)
	}

	// Combine chunks
	decrypted := append(chunk1, chunk2[:n2]...)
	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("StreamReader.Read decrypt result = %q, want %q", decrypted, plaintext)
	}
}

// Test StreamWriter
func TestStreamWriter(t *testing.T) {
	block := newTestBlock(t)
	plaintext := []byte("Hello, World! This is a stream writer test.")
	iv := make([]byte, block.BlockSize())

	// Encrypt using StreamWriter
	stream := cipher.NewCTR(block, iv)
	var buf bytes.Buffer
	writer := &cipher.StreamWriter{
		S: stream,
		W: &buf,
	}

	n, err := writer.Write(plaintext)
	if err != nil {
		t.Fatalf("StreamWriter.Write error = %v", err)
	}
	if n != len(plaintext) {
		t.Errorf("StreamWriter.Write wrote %d bytes, want %d", n, len(plaintext))
	}

	ciphertext := buf.Bytes()

	// Decrypt
	stream2 := cipher.NewCTR(block, iv)
	decrypted := make([]byte, len(ciphertext))
	stream2.XORKeyStream(decrypted, ciphertext)

	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("StreamWriter decrypt result = %q, want %q", decrypted, plaintext)
	}
}

// writeCloserTracker is a test helper that tracks Close calls
type writeCloserTracker struct {
	bytes.Buffer
	closed bool
}

func (w *writeCloserTracker) Close() error {
	w.closed = true
	return nil
}

// Test StreamWriter.Close method
func TestStreamWriterClose(t *testing.T) {
	block := newTestBlock(t)
	iv := make([]byte, block.BlockSize())

	// Use a closeable writer
	tracker := &writeCloserTracker{}

	stream := cipher.NewCTR(block, iv)
	writer := &cipher.StreamWriter{
		S: stream,
		W: tracker,
	}

	// Write some data
	_, err := writer.Write([]byte("test"))
	if err != nil {
		t.Fatalf("StreamWriter.Write error = %v", err)
	}

	// Close the writer
	err = writer.Close()
	if err != nil {
		t.Fatalf("StreamWriter.Close error = %v", err)
	}

	// Verify the underlying writer was closed
	if !tracker.closed {
		t.Error("StreamWriter.Close did not close underlying writer")
	}
}

// Test BlockMode interface
func TestBlockModeInterface(t *testing.T) {
	block := newTestBlock(t)
	iv := make([]byte, block.BlockSize())

	encrypter := cipher.NewCBCEncrypter(block, iv)

	// Test BlockSize method
	if encrypter.BlockSize() != block.BlockSize() {
		t.Errorf("BlockMode.BlockSize() = %d, want %d", encrypter.BlockSize(), block.BlockSize())
	}

	// Verify it implements BlockMode interface
	var _ cipher.BlockMode = encrypter
}

// Test Stream interface
func TestStreamInterface(t *testing.T) {
	block := newTestBlock(t)
	iv := make([]byte, block.BlockSize())

	stream := cipher.NewCTR(block, iv)

	// Verify it implements Stream interface
	var _ cipher.Stream = stream

	// Test XORKeyStream
	plaintext := []byte("test")
	ciphertext := make([]byte, len(plaintext))
	stream.XORKeyStream(ciphertext, plaintext)

	if bytes.Equal(ciphertext, plaintext) {
		t.Error("XORKeyStream did not change plaintext")
	}
}

// Test AEAD interface
func TestAEADInterface(t *testing.T) {
	block := newTestBlock(t)
	gcm, err := cipher.NewGCM(block)
	if err != nil {
		t.Fatalf("NewGCM error = %v", err)
	}

	// Verify it implements AEAD interface
	var _ cipher.AEAD = gcm

	// Test required methods exist
	_ = gcm.NonceSize()
	_ = gcm.Overhead()

	nonce := make([]byte, gcm.NonceSize())
	plaintext := []byte("test")

	// Test Seal
	ciphertext := gcm.Seal(nil, nonce, plaintext, nil)
	if len(ciphertext) == 0 {
		t.Error("Seal returned empty ciphertext")
	}

	// Test Open
	decrypted, err := gcm.Open(nil, nonce, ciphertext, nil)
	if err != nil {
		t.Errorf("Open error = %v", err)
	}
	if !bytes.Equal(decrypted, plaintext) {
		t.Errorf("Open result = %q, want %q", decrypted, plaintext)
	}
}
