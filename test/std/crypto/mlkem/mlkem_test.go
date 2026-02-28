package mlkem_test

import (
	"bytes"
	"crypto/mlkem"
	"testing"
)

func TestConstants(t *testing.T) {
	if mlkem.SharedKeySize != 32 {
		t.Fatalf("SharedKeySize = %d, want 32", mlkem.SharedKeySize)
	}
	if mlkem.SeedSize != 64 {
		t.Fatalf("SeedSize = %d, want 64", mlkem.SeedSize)
	}
	if mlkem.CiphertextSize768 == 0 || mlkem.EncapsulationKeySize768 == 0 {
		t.Fatalf("768 constants should be non-zero")
	}
	if mlkem.CiphertextSize1024 == 0 || mlkem.EncapsulationKeySize1024 == 0 {
		t.Fatalf("1024 constants should be non-zero")
	}
}

func TestRoundTrip768(t *testing.T) {
	dk, err := mlkem.GenerateKey768()
	if err != nil {
		t.Fatalf("GenerateKey768 failed: %v", err)
	}
	seed := dk.Bytes()
	if len(seed) != mlkem.SeedSize {
		t.Fatalf("DecapsulationKey768.Bytes len = %d, want %d", len(seed), mlkem.SeedSize)
	}
	dk2, err := mlkem.NewDecapsulationKey768(seed)
	if err != nil {
		t.Fatalf("NewDecapsulationKey768 failed: %v", err)
	}

	ek := dk.EncapsulationKey()
	ekBytes := ek.Bytes()
	if len(ekBytes) != mlkem.EncapsulationKeySize768 {
		t.Fatalf("EncapsulationKey768.Bytes len = %d, want %d", len(ekBytes), mlkem.EncapsulationKeySize768)
	}
	ek2, err := mlkem.NewEncapsulationKey768(ekBytes)
	if err != nil {
		t.Fatalf("NewEncapsulationKey768 failed: %v", err)
	}

	shared1, ciphertext := ek2.Encapsulate()
	if len(shared1) != mlkem.SharedKeySize {
		t.Fatalf("Encapsulate shared key len = %d, want %d", len(shared1), mlkem.SharedKeySize)
	}
	if len(ciphertext) != mlkem.CiphertextSize768 {
		t.Fatalf("Encapsulate ciphertext len = %d, want %d", len(ciphertext), mlkem.CiphertextSize768)
	}
	shared2, err := dk2.Decapsulate(ciphertext)
	if err != nil {
		t.Fatalf("Decapsulate failed: %v", err)
	}
	if !bytes.Equal(shared1, shared2) {
		t.Fatalf("shared keys mismatch for 768")
	}
}

func TestRoundTrip1024(t *testing.T) {
	dk, err := mlkem.GenerateKey1024()
	if err != nil {
		t.Fatalf("GenerateKey1024 failed: %v", err)
	}
	seed := dk.Bytes()
	if len(seed) != mlkem.SeedSize {
		t.Fatalf("DecapsulationKey1024.Bytes len = %d, want %d", len(seed), mlkem.SeedSize)
	}
	dk2, err := mlkem.NewDecapsulationKey1024(seed)
	if err != nil {
		t.Fatalf("NewDecapsulationKey1024 failed: %v", err)
	}

	ek := dk.EncapsulationKey()
	ekBytes := ek.Bytes()
	if len(ekBytes) != mlkem.EncapsulationKeySize1024 {
		t.Fatalf("EncapsulationKey1024.Bytes len = %d, want %d", len(ekBytes), mlkem.EncapsulationKeySize1024)
	}
	ek2, err := mlkem.NewEncapsulationKey1024(ekBytes)
	if err != nil {
		t.Fatalf("NewEncapsulationKey1024 failed: %v", err)
	}

	shared1, ciphertext := ek2.Encapsulate()
	if len(shared1) != mlkem.SharedKeySize {
		t.Fatalf("Encapsulate shared key len = %d, want %d", len(shared1), mlkem.SharedKeySize)
	}
	if len(ciphertext) != mlkem.CiphertextSize1024 {
		t.Fatalf("Encapsulate ciphertext len = %d, want %d", len(ciphertext), mlkem.CiphertextSize1024)
	}
	shared2, err := dk2.Decapsulate(ciphertext)
	if err != nil {
		t.Fatalf("Decapsulate failed: %v", err)
	}
	if !bytes.Equal(shared1, shared2) {
		t.Fatalf("shared keys mismatch for 1024")
	}
}

func TestBadLengths(t *testing.T) {
	seed := make([]byte, mlkem.SeedSize)
	if _, err := mlkem.NewDecapsulationKey768(seed[:mlkem.SeedSize-1]); err == nil {
		t.Fatalf("NewDecapsulationKey768 should fail on short seed")
	}
	if _, err := mlkem.NewDecapsulationKey1024(seed[:mlkem.SeedSize-1]); err == nil {
		t.Fatalf("NewDecapsulationKey1024 should fail on short seed")
	}

	dk768, err := mlkem.NewDecapsulationKey768(seed)
	if err != nil {
		t.Fatalf("NewDecapsulationKey768(seed) failed: %v", err)
	}
	ek768 := dk768.EncapsulationKey().Bytes()
	if _, err := mlkem.NewEncapsulationKey768(ek768[:len(ek768)-1]); err == nil {
		t.Fatalf("NewEncapsulationKey768 should fail on short key")
	}
	_, c768 := dk768.EncapsulationKey().Encapsulate()
	if _, err := dk768.Decapsulate(c768[:len(c768)-1]); err == nil {
		t.Fatalf("DecapsulationKey768.Decapsulate should fail on short ciphertext")
	}

	dk1024, err := mlkem.NewDecapsulationKey1024(seed)
	if err != nil {
		t.Fatalf("NewDecapsulationKey1024(seed) failed: %v", err)
	}
	ek1024 := dk1024.EncapsulationKey().Bytes()
	if _, err := mlkem.NewEncapsulationKey1024(ek1024[:len(ek1024)-1]); err == nil {
		t.Fatalf("NewEncapsulationKey1024 should fail on short key")
	}
	_, c1024 := dk1024.EncapsulationKey().Encapsulate()
	if _, err := dk1024.Decapsulate(c1024[:len(c1024)-1]); err == nil {
		t.Fatalf("DecapsulationKey1024.Decapsulate should fail on short ciphertext")
	}
}
