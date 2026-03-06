package ecdsa_test

import (
	"crypto"
	"crypto/ecdh"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/rand"
	"crypto/sha256"
	"math/big"
	"testing"
)

func TestGenerateKey(t *testing.T) {
	curves := []elliptic.Curve{
		elliptic.P224(),
		elliptic.P256(),
		elliptic.P384(),
		elliptic.P521(),
	}

	for _, curve := range curves {
		priv, err := ecdsa.GenerateKey(curve, rand.Reader)
		if err != nil {
			t.Errorf("GenerateKey() error = %v", err)
			continue
		}
		if priv == nil {
			t.Error("GenerateKey() returned nil private key")
		}
		if priv.PublicKey.Curve != curve {
			t.Error("Generated key has wrong curve")
		}
	}
}

func TestSign(t *testing.T) {
	priv, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	hash := sha256.Sum256([]byte("test message"))

	r, s, err := ecdsa.Sign(rand.Reader, priv, hash[:])
	if err != nil {
		t.Fatalf("Sign() error = %v", err)
	}

	if r == nil || s == nil {
		t.Error("Sign() returned nil r or s")
	}

	if r.Sign() == 0 || s.Sign() == 0 {
		t.Error("Sign() returned zero r or s")
	}
}

func TestSignASN1(t *testing.T) {
	priv, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	hash := sha256.Sum256([]byte("test message"))

	sig, err := ecdsa.SignASN1(rand.Reader, priv, hash[:])
	if err != nil {
		t.Fatalf("SignASN1() error = %v", err)
	}

	if len(sig) == 0 {
		t.Error("SignASN1() returned empty signature")
	}
}

func TestVerify(t *testing.T) {
	priv, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	hash := sha256.Sum256([]byte("test message"))

	r, s, err := ecdsa.Sign(rand.Reader, priv, hash[:])
	if err != nil {
		t.Fatalf("Sign() error = %v", err)
	}

	if !ecdsa.Verify(&priv.PublicKey, hash[:], r, s) {
		t.Error("Verify() failed for valid signature")
	}

	wrongHash := sha256.Sum256([]byte("wrong message"))
	if ecdsa.Verify(&priv.PublicKey, wrongHash[:], r, s) {
		t.Error("Verify() succeeded for invalid signature")
	}

	wrongR := new(big.Int).Add(r, big.NewInt(1))
	if ecdsa.Verify(&priv.PublicKey, hash[:], wrongR, s) {
		t.Error("Verify() succeeded for invalid r")
	}
}

func TestVerifyASN1(t *testing.T) {
	priv, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	hash := sha256.Sum256([]byte("test message"))

	sig, err := ecdsa.SignASN1(rand.Reader, priv, hash[:])
	if err != nil {
		t.Fatalf("SignASN1() error = %v", err)
	}

	if !ecdsa.VerifyASN1(&priv.PublicKey, hash[:], sig) {
		t.Error("VerifyASN1() failed for valid signature")
	}

	wrongHash := sha256.Sum256([]byte("wrong message"))
	if ecdsa.VerifyASN1(&priv.PublicKey, wrongHash[:], sig) {
		t.Error("VerifyASN1() succeeded for invalid signature")
	}

	wrongSig := make([]byte, len(sig))
	copy(wrongSig, sig)
	wrongSig[0] ^= 0xFF
	if ecdsa.VerifyASN1(&priv.PublicKey, hash[:], wrongSig) {
		t.Error("VerifyASN1() succeeded for corrupted signature")
	}
}

func TestPrivateKeyECDH(t *testing.T) {
	priv, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	ecdhKey, err := priv.ECDH()
	if err != nil {
		t.Fatalf("ECDH() error = %v", err)
	}

	if ecdhKey == nil {
		t.Error("ECDH() returned nil key")
	}
}

func TestPrivateKeyEqual(t *testing.T) {
	priv1, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	priv2, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	if priv1.Equal(priv2) {
		t.Error("Different private keys reported as equal")
	}

	if !priv1.Equal(priv1) {
		t.Error("Same private key not equal to itself")
	}

	var notECDSA crypto.PrivateKey = []byte("not an ecdsa key")
	if priv1.Equal(notECDSA) {
		t.Error("Equal() returned true for non-ECDSA key")
	}
}

func TestPrivateKeyPublic(t *testing.T) {
	priv, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub := priv.Public()
	if pub == nil {
		t.Fatal("Public() returned nil")
	}

	pubKey, ok := pub.(*ecdsa.PublicKey)
	if !ok {
		t.Fatal("Public() did not return *ecdsa.PublicKey")
	}

	if pubKey.X.Cmp(priv.PublicKey.X) != 0 {
		t.Error("Public() X coordinate mismatch")
	}
	if pubKey.Y.Cmp(priv.PublicKey.Y) != 0 {
		t.Error("Public() Y coordinate mismatch")
	}
}

func TestPrivateKeySign(t *testing.T) {
	priv, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	hash := sha256.Sum256([]byte("test message"))

	sig, err := priv.Sign(rand.Reader, hash[:], nil)
	if err != nil {
		t.Fatalf("Sign() error = %v", err)
	}

	if len(sig) == 0 {
		t.Error("Sign() returned empty signature")
	}

	if !ecdsa.VerifyASN1(&priv.PublicKey, hash[:], sig) {
		t.Error("Signature verification failed")
	}
}

func TestPublicKeyECDH(t *testing.T) {
	priv, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	ecdhKey, err := priv.PublicKey.ECDH()
	if err != nil {
		t.Fatalf("ECDH() error = %v", err)
	}

	if ecdhKey == nil {
		t.Error("ECDH() returned nil key")
	}
}

func TestPublicKeyEqual(t *testing.T) {
	priv1, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	priv2, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub1 := &priv1.PublicKey
	pub2 := &priv2.PublicKey

	if pub1.Equal(pub2) {
		t.Error("Different public keys reported as equal")
	}

	if !pub1.Equal(pub1) {
		t.Error("Same public key not equal to itself")
	}

	var notECDSA crypto.PublicKey = []byte("not an ecdsa key")
	if pub1.Equal(notECDSA) {
		t.Error("Equal() returned true for non-ECDSA key")
	}
}

func TestSignVerifyRoundTrip(t *testing.T) {
	curves := []elliptic.Curve{
		elliptic.P224(),
		elliptic.P256(),
		elliptic.P384(),
		elliptic.P521(),
	}

	for _, curve := range curves {
		priv, err := ecdsa.GenerateKey(curve, rand.Reader)
		if err != nil {
			t.Errorf("GenerateKey() error = %v", err)
			continue
		}

		hash := sha256.Sum256([]byte("test message"))

		r, s, err := ecdsa.Sign(rand.Reader, priv, hash[:])
		if err != nil {
			t.Errorf("Sign() error = %v", err)
			continue
		}

		if !ecdsa.Verify(&priv.PublicKey, hash[:], r, s) {
			t.Error("Verify() failed for valid signature")
		}
	}
}

func TestECDHConversion(t *testing.T) {
	priv, err := ecdsa.GenerateKey(elliptic.P256(), rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	ecdhPriv, err := priv.ECDH()
	if err != nil {
		t.Fatalf("PrivateKey.ECDH() error = %v", err)
	}

	ecdhPub, err := priv.PublicKey.ECDH()
	if err != nil {
		t.Fatalf("PublicKey.ECDH() error = %v", err)
	}

	if ecdhPriv.PublicKey().Equal(ecdhPub) == false {
		t.Error("ECDH conversion produced mismatched public keys")
	}

	otherPriv, err := ecdh.P256().GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("ecdh.GenerateKey() error = %v", err)
	}

	secret1, err := ecdhPriv.ECDH(otherPriv.PublicKey())
	if err != nil {
		t.Fatalf("ECDH() error = %v", err)
	}

	secret2, err := otherPriv.ECDH(ecdhPub)
	if err != nil {
		t.Fatalf("ECDH() error = %v", err)
	}

	if len(secret1) == 0 || len(secret2) == 0 {
		t.Error("ECDH produced empty secrets")
	}
}
