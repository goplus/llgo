package hkdf_test

import (
	"bytes"
	"crypto/hkdf"
	"crypto/sha256"
	"strings"
	"testing"
)

func TestExtractAndExpandRFC5869Case1(t *testing.T) {
	hash := sha256.New
	ikm := bytes.Repeat([]byte{0x0b}, 22)
	salt := []byte{
		0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
		0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c,
	}
	info := []byte{0xf0, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8, 0xf9}
	wantPRK := []byte{
		0x07, 0x77, 0x09, 0x36, 0x2c, 0x2e, 0x32, 0xdf,
		0x0d, 0xdc, 0x3f, 0x0d, 0xc4, 0x7b, 0xba, 0x63,
		0x90, 0xb6, 0xc7, 0x3b, 0xb5, 0x0f, 0x9c, 0x31,
		0x22, 0xec, 0x84, 0x4a, 0xd7, 0xc2, 0xb3, 0xe5,
	}
	wantOKM := []byte{
		0x3c, 0xb2, 0x5f, 0x25, 0xfa, 0xac, 0xd5, 0x7a,
		0x90, 0x43, 0x4f, 0x64, 0xd0, 0x36, 0x2f, 0x2a,
		0x2d, 0x2d, 0x0a, 0x90, 0xcf, 0x1a, 0x5a, 0x4c,
		0x5d, 0xb0, 0x2d, 0x56, 0xec, 0xc4, 0xc5, 0xbf,
		0x34, 0x00, 0x72, 0x08, 0xd5, 0xb8, 0x87, 0x18,
		0x58, 0x65,
	}

	prk, err := hkdf.Extract(hash, ikm, salt)
	if err != nil {
		t.Fatalf("Extract failed: %v", err)
	}
	if !bytes.Equal(prk, wantPRK) {
		t.Fatalf("Extract mismatch:\n got: %x\nwant: %x", prk, wantPRK)
	}

	okm, err := hkdf.Expand(hash, prk, string(info), 42)
	if err != nil {
		t.Fatalf("Expand failed: %v", err)
	}
	if !bytes.Equal(okm, wantOKM) {
		t.Fatalf("Expand mismatch:\n got: %x\nwant: %x", okm, wantOKM)
	}
}

func TestKeyMatchesExtractThenExpand(t *testing.T) {
	hash := sha256.New
	secret := []byte("hkdf secret")
	salt := []byte("hkdf salt")
	info := "hkdf info"
	n := 48

	prk, err := hkdf.Extract(hash, secret, salt)
	if err != nil {
		t.Fatalf("Extract failed: %v", err)
	}
	k1, err := hkdf.Expand(hash, prk, info, n)
	if err != nil {
		t.Fatalf("Expand failed: %v", err)
	}
	k2, err := hkdf.Key(hash, secret, salt, info, n)
	if err != nil {
		t.Fatalf("Key failed: %v", err)
	}
	if !bytes.Equal(k1, k2) {
		t.Fatalf("Key() output differs from Extract()+Expand()")
	}
}

func TestKeyLengthTooLarge(t *testing.T) {
	hash := sha256.New
	limit := hash().Size() * 255
	_, err := hkdf.Key(hash, []byte("s"), nil, "", limit+1)
	if err == nil {
		t.Fatalf("Key should fail for keyLength > %d", limit)
	}
	if !strings.Contains(err.Error(), "too large") {
		t.Fatalf("unexpected Key error: %v", err)
	}

	_, err = hkdf.Expand(hash, bytes.Repeat([]byte{1}, hash().Size()), "", limit+1)
	if err == nil {
		t.Fatalf("Expand should fail for keyLength > %d", limit)
	}
	if !strings.Contains(err.Error(), "too large") {
		t.Fatalf("unexpected Expand error: %v", err)
	}
}
