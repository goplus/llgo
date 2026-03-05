package ed25519_test

import (
	"bytes"
	"crypto"
	"crypto/ed25519"
	"crypto/rand"
	"testing"
)

func TestGenerateKey(t *testing.T) {
	pub, priv, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	if len(pub) != ed25519.PublicKeySize {
		t.Errorf("Public key size = %d, want %d", len(pub), ed25519.PublicKeySize)
	}

	if len(priv) != ed25519.PrivateKeySize {
		t.Errorf("Private key size = %d, want %d", len(priv), ed25519.PrivateKeySize)
	}
}

func TestSign(t *testing.T) {
	pub, priv, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	message := []byte("test message")
	sig := ed25519.Sign(priv, message)

	if len(sig) != ed25519.SignatureSize {
		t.Errorf("Signature size = %d, want %d", len(sig), ed25519.SignatureSize)
	}

	if !ed25519.Verify(pub, message, sig) {
		t.Error("Verify() failed for valid signature")
	}
}

func TestVerify(t *testing.T) {
	pub, priv, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	message := []byte("test message")
	sig := ed25519.Sign(priv, message)

	if !ed25519.Verify(pub, message, sig) {
		t.Error("Verify() failed for valid signature")
	}

	wrongMessage := []byte("wrong message")
	if ed25519.Verify(pub, wrongMessage, sig) {
		t.Error("Verify() succeeded for invalid message")
	}

	wrongSig := make([]byte, len(sig))
	copy(wrongSig, sig)
	wrongSig[0] ^= 0xFF
	if ed25519.Verify(pub, message, wrongSig) {
		t.Error("Verify() succeeded for corrupted signature")
	}

	_, otherPriv, _ := ed25519.GenerateKey(rand.Reader)
	wrongPublicSig := ed25519.Sign(otherPriv, message)
	if ed25519.Verify(pub, message, wrongPublicSig) {
		t.Error("Verify() succeeded for signature from different key")
	}
}

func TestVerifyWithOptions(t *testing.T) {
	pub, priv, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	message := []byte("test message")
	sig := ed25519.Sign(priv, message)

	opts := &ed25519.Options{}
	if err := ed25519.VerifyWithOptions(pub, message, sig, opts); err != nil {
		t.Errorf("VerifyWithOptions() error = %v", err)
	}

	wrongMessage := []byte("wrong message")
	if err := ed25519.VerifyWithOptions(pub, wrongMessage, sig, opts); err == nil {
		t.Error("VerifyWithOptions() succeeded for invalid message")
	}
}

func TestOptionsHashFunc(t *testing.T) {
	opts := &ed25519.Options{}
	hashFunc := opts.HashFunc()
	if hashFunc != crypto.Hash(0) {
		t.Errorf("HashFunc() = %v, want 0", hashFunc)
	}
}

func TestNewKeyFromSeed(t *testing.T) {
	seed := make([]byte, ed25519.SeedSize)
	if _, err := rand.Read(seed); err != nil {
		t.Fatalf("rand.Read() error = %v", err)
	}

	priv := ed25519.NewKeyFromSeed(seed)

	if len(priv) != ed25519.PrivateKeySize {
		t.Errorf("Private key size = %d, want %d", len(priv), ed25519.PrivateKeySize)
	}

	priv2 := ed25519.NewKeyFromSeed(seed)
	if !bytes.Equal(priv, priv2) {
		t.Error("NewKeyFromSeed() with same seed produced different keys")
	}
}

func TestPrivateKeyEqual(t *testing.T) {
	_, priv1, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	_, priv2, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	if priv1.Equal(priv2) {
		t.Error("Different private keys reported as equal")
	}

	if !priv1.Equal(priv1) {
		t.Error("Same private key not equal to itself")
	}

	var notEd25519 crypto.PrivateKey = []byte("not an ed25519 key")
	if priv1.Equal(notEd25519) {
		t.Error("Equal() returned true for non-ed25519 key")
	}
}

func TestPrivateKeyPublic(t *testing.T) {
	pub, priv, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pubFromPriv := priv.Public()
	if pubFromPriv == nil {
		t.Fatal("Public() returned nil")
	}

	pubKey, ok := pubFromPriv.(ed25519.PublicKey)
	if !ok {
		t.Fatal("Public() did not return ed25519.PublicKey")
	}

	if !bytes.Equal(pub, pubKey) {
		t.Error("Public() returned different public key")
	}
}

func TestPrivateKeySeed(t *testing.T) {
	seed := make([]byte, ed25519.SeedSize)
	if _, err := rand.Read(seed); err != nil {
		t.Fatalf("rand.Read() error = %v", err)
	}

	priv := ed25519.NewKeyFromSeed(seed)
	recoveredSeed := priv.Seed()

	if !bytes.Equal(seed, recoveredSeed) {
		t.Error("Seed() did not return original seed")
	}

	if len(recoveredSeed) != ed25519.SeedSize {
		t.Errorf("Seed size = %d, want %d", len(recoveredSeed), ed25519.SeedSize)
	}
}

func TestPrivateKeySign(t *testing.T) {
	pub, priv, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	message := []byte("test message")
	sig, err := priv.Sign(rand.Reader, message, crypto.Hash(0))
	if err != nil {
		t.Fatalf("Sign() error = %v", err)
	}

	if len(sig) != ed25519.SignatureSize {
		t.Errorf("Signature size = %d, want %d", len(sig), ed25519.SignatureSize)
	}

	if !ed25519.Verify(pub, message, sig) {
		t.Error("Signature verification failed")
	}
}

func TestPublicKeyEqual(t *testing.T) {
	pub1, _, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub2, _, err := ed25519.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	if pub1.Equal(pub2) {
		t.Error("Different public keys reported as equal")
	}

	if !pub1.Equal(pub1) {
		t.Error("Same public key not equal to itself")
	}

	var notEd25519 crypto.PublicKey = []byte("not an ed25519 key")
	if pub1.Equal(notEd25519) {
		t.Error("Equal() returned true for non-ed25519 key")
	}
}

func TestConstantSizes(t *testing.T) {
	if ed25519.PublicKeySize != 32 {
		t.Errorf("PublicKeySize = %d, want 32", ed25519.PublicKeySize)
	}

	if ed25519.PrivateKeySize != 64 {
		t.Errorf("PrivateKeySize = %d, want 64", ed25519.PrivateKeySize)
	}

	if ed25519.SignatureSize != 64 {
		t.Errorf("SignatureSize = %d, want 64", ed25519.SignatureSize)
	}

	if ed25519.SeedSize != 32 {
		t.Errorf("SeedSize = %d, want 32", ed25519.SeedSize)
	}
}

func TestSignVerifyRoundTrip(t *testing.T) {
	messages := [][]byte{
		[]byte(""),
		[]byte("a"),
		[]byte("test message"),
		[]byte("longer message with more content"),
		make([]byte, 1000),
	}

	for i, message := range messages {
		pub, priv, err := ed25519.GenerateKey(rand.Reader)
		if err != nil {
			t.Fatalf("Test %d: GenerateKey() error = %v", i, err)
		}

		sig := ed25519.Sign(priv, message)
		if !ed25519.Verify(pub, message, sig) {
			t.Errorf("Test %d: Signature verification failed", i)
		}
	}
}

func TestDeterministicSigning(t *testing.T) {
	seed := make([]byte, ed25519.SeedSize)
	if _, err := rand.Read(seed); err != nil {
		t.Fatalf("rand.Read() error = %v", err)
	}

	priv := ed25519.NewKeyFromSeed(seed)
	message := []byte("test message")

	sig1 := ed25519.Sign(priv, message)
	sig2 := ed25519.Sign(priv, message)

	if !bytes.Equal(sig1, sig2) {
		t.Error("Ed25519 signatures should be deterministic")
	}
}
