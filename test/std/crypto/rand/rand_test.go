//go:build !llgo

package rand_test

import (
	"crypto/rand"
	"io"
	"math/big"
	"testing"
)

// Test Reader variable
func TestReader(t *testing.T) {
	if rand.Reader == nil {
		t.Fatal("rand.Reader is nil")
	}

	// Read some random bytes
	buf := make([]byte, 16)
	n, err := rand.Reader.Read(buf)
	if err != nil {
		t.Fatalf("Reader.Read error = %v", err)
	}
	if n != 16 {
		t.Errorf("Reader.Read returned %d bytes, want 16", n)
	}

	// Verify we got non-zero bytes (extremely unlikely to be all zeros)
	allZero := true
	for _, b := range buf {
		if b != 0 {
			allZero = false
			break
		}
	}
	if allZero {
		t.Error("Reader.Read returned all zero bytes (highly unlikely for random data)")
	}
}

// Test Read function
func TestRead(t *testing.T) {
	buf := make([]byte, 32)
	n, err := rand.Read(buf)
	if err != nil {
		t.Fatalf("Read error = %v", err)
	}
	if n != 32 {
		t.Errorf("Read returned %d bytes, want 32", n)
	}

	// Verify we got non-zero bytes
	allZero := true
	for _, b := range buf {
		if b != 0 {
			allZero = false
			break
		}
	}
	if allZero {
		t.Error("Read returned all zero bytes (highly unlikely for random data)")
	}
}

// Test Int function
func TestInt(t *testing.T) {
	// Test with small max
	max := big.NewInt(100)
	n, err := rand.Int(rand.Reader, max)
	if err != nil {
		t.Fatalf("Int error = %v", err)
	}
	if n == nil {
		t.Fatal("Int returned nil")
	}
	if n.Cmp(max) >= 0 {
		t.Errorf("Int returned %v, want < %v", n, max)
	}
	if n.Sign() < 0 {
		t.Errorf("Int returned negative number %v", n)
	}

	// Test with larger max
	max = big.NewInt(1000000)
	n, err = rand.Int(rand.Reader, max)
	if err != nil {
		t.Fatalf("Int error = %v", err)
	}
	if n.Cmp(max) >= 0 {
		t.Errorf("Int returned %v, want < %v", n, max)
	}

	// Test with max = 1 (should always return 0)
	max = big.NewInt(1)
	n, err = rand.Int(rand.Reader, max)
	if err != nil {
		t.Fatalf("Int error = %v", err)
	}
	if n.Cmp(big.NewInt(0)) != 0 {
		t.Errorf("Int with max=1 returned %v, want 0", n)
	}
}

// Test Prime function
func TestPrime(t *testing.T) {
	// Test generating small primes
	bits := 32
	p, err := rand.Prime(rand.Reader, bits)
	if err != nil {
		t.Fatalf("Prime error = %v", err)
	}
	if p == nil {
		t.Fatal("Prime returned nil")
	}

	// Verify the prime has approximately the right number of bits
	if p.BitLen() < bits-1 || p.BitLen() > bits {
		t.Errorf("Prime bit length = %d, want ~%d", p.BitLen(), bits)
	}

	// Verify it's probably prime (using Go's built-in primality test)
	if !p.ProbablyPrime(20) {
		t.Errorf("Prime returned non-prime number %v", p)
	}

	// Test with different bit sizes
	for _, bits := range []int{16, 64, 128} {
		p, err := rand.Prime(rand.Reader, bits)
		if err != nil {
			t.Errorf("Prime(%d bits) error = %v", bits, err)
			continue
		}
		if !p.ProbablyPrime(20) {
			t.Errorf("Prime(%d bits) returned non-prime %v", bits, p)
		}
	}
}

// Test Prime with invalid bits
func TestPrimeInvalidBits(t *testing.T) {
	tests := []struct {
		name string
		bits int
	}{
		{"zero bits", 0},
		{"one bit", 1},
		{"negative bits", -1},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			_, err := rand.Prime(rand.Reader, tt.bits)
			if err == nil {
				t.Errorf("Prime with %s should return error, got nil", tt.name)
			}
		})
	}
}

// Test Read with different buffer sizes
func TestReadVariousSizes(t *testing.T) {
	sizes := []int{1, 8, 16, 64, 256, 1024}

	for _, size := range sizes {
		buf := make([]byte, size)
		n, err := rand.Read(buf)
		if err != nil {
			t.Errorf("Read(%d bytes) error = %v", size, err)
			continue
		}
		if n != size {
			t.Errorf("Read(%d bytes) returned %d bytes", size, n)
		}
	}
}

// Test Text function
func TestText(t *testing.T) {
	text := rand.Text()
	if text == "" {
		t.Error("Text() returned empty string")
	}
	// Text should return a reasonable length string
	if len(text) < 10 {
		t.Errorf("Text() returned very short string: %q", text)
	}
}

// Test that Reader implements io.Reader interface
func TestReaderInterface(t *testing.T) {
	var _ io.Reader = rand.Reader
}

// Test Read consistency (multiple calls should return different data)
func TestReadRandomness(t *testing.T) {
	buf1 := make([]byte, 32)
	buf2 := make([]byte, 32)

	_, err := rand.Read(buf1)
	if err != nil {
		t.Fatalf("First Read error = %v", err)
	}

	_, err = rand.Read(buf2)
	if err != nil {
		t.Fatalf("Second Read error = %v", err)
	}

	// Check that the two reads are different (extremely likely for random data)
	identical := true
	for i := range buf1 {
		if buf1[i] != buf2[i] {
			identical = false
			break
		}
	}
	if identical {
		t.Error("Two consecutive Read calls returned identical data (highly unlikely for random data)")
	}
}
