package crypto_test

import (
	"crypto"
	_ "crypto/md5"
	_ "crypto/sha1"
	_ "crypto/sha256"
	_ "crypto/sha512"
	"hash"
	"io"
	"testing"
)

func TestHashConstants(t *testing.T) {
	tests := []struct {
		name string
		hash crypto.Hash
	}{
		{"MD4", crypto.MD4},
		{"MD5", crypto.MD5},
		{"SHA1", crypto.SHA1},
		{"SHA224", crypto.SHA224},
		{"SHA256", crypto.SHA256},
		{"SHA384", crypto.SHA384},
		{"SHA512", crypto.SHA512},
		{"MD5SHA1", crypto.MD5SHA1},
		{"RIPEMD160", crypto.RIPEMD160},
		{"SHA3_224", crypto.SHA3_224},
		{"SHA3_256", crypto.SHA3_256},
		{"SHA3_384", crypto.SHA3_384},
		{"SHA3_512", crypto.SHA3_512},
		{"SHA512_224", crypto.SHA512_224},
		{"SHA512_256", crypto.SHA512_256},
		{"BLAKE2s_256", crypto.BLAKE2s_256},
		{"BLAKE2b_256", crypto.BLAKE2b_256},
		{"BLAKE2b_384", crypto.BLAKE2b_384},
		{"BLAKE2b_512", crypto.BLAKE2b_512},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if tt.hash == 0 {
				t.Errorf("Hash constant %s has zero value", tt.name)
			}
		})
	}
}

func TestHashAvailable(t *testing.T) {
	tests := []struct {
		hash      crypto.Hash
		available bool
	}{
		{crypto.MD5, true},
		{crypto.SHA1, true},
		{crypto.SHA224, true},
		{crypto.SHA256, true},
		{crypto.SHA384, true},
		{crypto.SHA512, true},
		{crypto.MD4, false},
		{crypto.RIPEMD160, false},
	}

	for _, tt := range tests {
		t.Run(tt.hash.String(), func(t *testing.T) {
			if got := tt.hash.Available(); got != tt.available {
				t.Errorf("Hash(%v).Available() = %v, want %v", tt.hash, got, tt.available)
			}
		})
	}
}

func TestHashHashFunc(t *testing.T) {
	tests := []crypto.Hash{
		crypto.MD5,
		crypto.SHA1,
		crypto.SHA256,
		crypto.SHA512,
	}

	for _, h := range tests {
		t.Run(h.String(), func(t *testing.T) {
			if got := h.HashFunc(); got != h {
				t.Errorf("Hash(%v).HashFunc() = %v, want %v", h, got, h)
			}
		})
	}
}

func TestHashNew(t *testing.T) {
	tests := []struct {
		hash   crypto.Hash
		verify func(h hash.Hash) bool
	}{
		{crypto.MD5, func(h hash.Hash) bool { return h.Size() == 16 }},
		{crypto.SHA1, func(h hash.Hash) bool { return h.Size() == 20 }},
		{crypto.SHA256, func(h hash.Hash) bool { return h.Size() == 32 }},
		{crypto.SHA512, func(h hash.Hash) bool { return h.Size() == 64 }},
	}

	for _, tt := range tests {
		t.Run(tt.hash.String(), func(t *testing.T) {
			h := tt.hash.New()
			if h == nil {
				t.Fatalf("Hash(%v).New() returned nil", tt.hash)
			}
			if !tt.verify(h) {
				t.Errorf("Hash(%v).New() verification failed", tt.hash)
			}
		})
	}
}

func TestHashNewPanic(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Error("Hash.New() should panic for unavailable hash")
		}
	}()
	crypto.MD4.New()
}

func TestHashSize(t *testing.T) {
	tests := []struct {
		hash crypto.Hash
		size int
	}{
		{crypto.MD5, 16},
		{crypto.SHA1, 20},
		{crypto.SHA224, 28},
		{crypto.SHA256, 32},
		{crypto.SHA384, 48},
		{crypto.SHA512, 64},
		{crypto.SHA512_224, 28},
		{crypto.SHA512_256, 32},
	}

	for _, tt := range tests {
		t.Run(tt.hash.String(), func(t *testing.T) {
			if got := tt.hash.Size(); got != tt.size {
				t.Errorf("Hash(%v).Size() = %d, want %d", tt.hash, got, tt.size)
			}
		})
	}
}

func TestHashString(t *testing.T) {
	tests := []struct {
		hash crypto.Hash
		want string
	}{
		{crypto.MD5, "MD5"},
		{crypto.SHA1, "SHA-1"},
		{crypto.SHA224, "SHA-224"},
		{crypto.SHA256, "SHA-256"},
		{crypto.SHA384, "SHA-384"},
		{crypto.SHA512, "SHA-512"},
		{crypto.SHA512_224, "SHA-512/224"},
		{crypto.SHA512_256, "SHA-512/256"},
	}

	for _, tt := range tests {
		t.Run(tt.want, func(t *testing.T) {
			if got := tt.hash.String(); got != tt.want {
				t.Errorf("Hash(%d).String() = %q, want %q", tt.hash, got, tt.want)
			}
		})
	}
}

func TestRegisterHash(t *testing.T) {
	testRegisterHashFunc := func() {
		const customHash crypto.Hash = 999
		crypto.RegisterHash(customHash, func() hash.Hash {
			return nil
		})
	}

	_ = testRegisterHashFunc

	if !crypto.MD5.Available() {
		t.Fatal("MD5 should be available (registered via RegisterHash in crypto/md5 init)")
	}

	h := crypto.MD5.New()
	if h == nil {
		t.Fatal("crypto.MD5.New() returned nil")
	}

	if h.Size() != 16 {
		t.Errorf("MD5 hash size = %d, want 16", h.Size())
	}
}

type testPrivateKey struct{}

func (testPrivateKey) Public() crypto.PublicKey {
	return testPublicKey{}
}

func (testPrivateKey) Equal(x crypto.PrivateKey) bool {
	_, ok := x.(testPrivateKey)
	return ok
}

type testPublicKey struct{}

func (testPublicKey) Equal(x crypto.PublicKey) bool {
	_, ok := x.(testPublicKey)
	return ok
}

func TestPrivateKeyInterface(t *testing.T) {
	var _ crypto.PrivateKey = testPrivateKey{}
	priv := testPrivateKey{}

	pub := priv.Public()
	if pub == nil {
		t.Error("PrivateKey.Public() returned nil")
	}

	if !priv.Equal(testPrivateKey{}) {
		t.Error("PrivateKey.Equal() failed for equal keys")
	}

	if priv.Equal(nil) {
		t.Error("PrivateKey.Equal() should return false for nil")
	}
}

func TestPublicKeyInterface(t *testing.T) {
	var _ crypto.PublicKey = testPublicKey{}
	pub := testPublicKey{}

	if !pub.Equal(testPublicKey{}) {
		t.Error("PublicKey.Equal() failed for equal keys")
	}

	if pub.Equal(nil) {
		t.Error("PublicKey.Equal() should return false for nil")
	}
}

type testSigner struct {
	testPrivateKey
}

func (testSigner) Sign(rand io.Reader, digest []byte, opts crypto.SignerOpts) (signature []byte, err error) {
	return digest, nil
}

func TestSignerInterface(t *testing.T) {
	var _ crypto.Signer = testSigner{}
	signer := testSigner{}

	sig, err := signer.Sign(nil, []byte("test"), crypto.SHA256)
	if err != nil {
		t.Fatalf("Signer.Sign() error = %v", err)
	}
	if string(sig) != "test" {
		t.Errorf("Signer.Sign() = %q, want %q", sig, "test")
	}
}

type testDecrypter struct {
	testPrivateKey
}

func (testDecrypter) Decrypt(rand io.Reader, msg []byte, opts crypto.DecrypterOpts) (plaintext []byte, err error) {
	return msg, nil
}

func TestDecrypterInterface(t *testing.T) {
	var _ crypto.Decrypter = testDecrypter{}
	dec := testDecrypter{}

	plain, err := dec.Decrypt(nil, []byte("encrypted"), nil)
	if err != nil {
		t.Fatalf("Decrypter.Decrypt() error = %v", err)
	}
	if string(plain) != "encrypted" {
		t.Errorf("Decrypter.Decrypt() = %q, want %q", plain, "encrypted")
	}
}

func TestSignerOptsInterface(t *testing.T) {
	var opts crypto.SignerOpts = crypto.SHA256

	h := opts.HashFunc()
	if h != crypto.SHA256 {
		t.Errorf("SignerOpts.HashFunc() = %v, want %v", h, crypto.SHA256)
	}
}

func TestDecrypterOptsType(t *testing.T) {
	var _ crypto.DecrypterOpts = nil
	var _ crypto.DecrypterOpts = "test"
	var _ crypto.DecrypterOpts = 42
}
