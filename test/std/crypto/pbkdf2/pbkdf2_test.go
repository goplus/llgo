package pbkdf2_test

import (
	"bytes"
	"crypto/pbkdf2"
	"crypto/sha1"
	"crypto/sha256"
	"testing"
)

func TestKeyRFC6070VectorsSHA1(t *testing.T) {
	tests := []struct {
		password string
		salt     []byte
		iter     int
		want     []byte
	}{
		{
			password: "password",
			salt:     []byte("salt"),
			iter:     1,
			want: []byte{
				0x0c, 0x60, 0xc8, 0x0f, 0x96, 0x1f, 0x0e, 0x71,
				0xf3, 0xa9, 0xb5, 0x24, 0xaf, 0x60, 0x12, 0x06,
				0x2f, 0xe0, 0x37, 0xa6,
			},
		},
		{
			password: "password",
			salt:     []byte("salt"),
			iter:     2,
			want: []byte{
				0xea, 0x6c, 0x01, 0x4d, 0xc7, 0x2d, 0x6f, 0x8c,
				0xcd, 0x1e, 0xd9, 0x2a, 0xce, 0x1d, 0x41, 0xf0,
				0xd8, 0xde, 0x89, 0x57,
			},
		},
	}
	for i, tt := range tests {
		got, err := pbkdf2.Key(sha1.New, tt.password, tt.salt, tt.iter, len(tt.want))
		if err != nil {
			t.Fatalf("case %d: Key failed: %v", i, err)
		}
		if !bytes.Equal(got, tt.want) {
			t.Fatalf("case %d: Key mismatch:\n got: %x\nwant: %x", i, got, tt.want)
		}
	}
}

func TestKeySHA256Vector(t *testing.T) {
	want := []byte{
		0x12, 0x0f, 0xb6, 0xcf, 0xfc, 0xf8, 0xb3, 0x2c,
		0x43, 0xe7, 0x22, 0x52, 0x56, 0xc4, 0xf8, 0x37,
		0xa8, 0x65, 0x48, 0xc9,
	}
	got, err := pbkdf2.Key(sha256.New, "password", []byte("salt"), 1, len(want))
	if err != nil {
		t.Fatalf("Key failed: %v", err)
	}
	if !bytes.Equal(got, want) {
		t.Fatalf("Key mismatch:\n got: %x\nwant: %x", got, want)
	}
}

func TestKeyInvalidLengths(t *testing.T) {
	_, err := pbkdf2.Key(sha256.New, "password", []byte("salt"), 1, 0)
	if err == nil {
		t.Fatalf("expected error for keyLength=0")
	}
	_, err = pbkdf2.Key(sha256.New, "password", []byte("salt"), 1, -1)
	if err == nil {
		t.Fatalf("expected error for keyLength<0")
	}
}
