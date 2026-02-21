package ecdh_test

import (
	"bytes"
	"crypto"
	"crypto/ecdh"
	"crypto/rand"
	"testing"
)

func TestP256(t *testing.T) {
	curve := ecdh.P256()
	if curve == nil {
		t.Fatal("P256() returned nil")
	}
}

func TestP384(t *testing.T) {
	curve := ecdh.P384()
	if curve == nil {
		t.Fatal("P384() returned nil")
	}
}

func TestP521(t *testing.T) {
	curve := ecdh.P521()
	if curve == nil {
		t.Fatal("P521() returned nil")
	}
}

func TestX25519(t *testing.T) {
	curve := ecdh.X25519()
	if curve == nil {
		t.Fatal("X25519() returned nil")
	}
}

func TestPrivateKeyBytes(t *testing.T) {
	curve := ecdh.P256()
	priv, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	b := priv.Bytes()
	if len(b) == 0 {
		t.Error("Bytes() returned empty slice")
	}
}

func TestPrivateKeyCurve(t *testing.T) {
	curve := ecdh.P256()
	priv, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	c := priv.Curve()
	if c == nil {
		t.Error("Curve() returned nil")
	}
}

func TestPrivateKeyECDH(t *testing.T) {
	curve := ecdh.P256()

	priv1, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	priv2, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub1 := priv1.PublicKey()
	pub2 := priv2.PublicKey()

	secret1, err := priv1.ECDH(pub2)
	if err != nil {
		t.Fatalf("ECDH() error = %v", err)
	}

	secret2, err := priv2.ECDH(pub1)
	if err != nil {
		t.Fatalf("ECDH() error = %v", err)
	}

	if !bytes.Equal(secret1, secret2) {
		t.Error("ECDH shared secrets do not match")
	}

	if len(secret1) == 0 {
		t.Error("ECDH() returned empty secret")
	}
}

func TestPrivateKeyEqual(t *testing.T) {
	curve := ecdh.P256()

	priv1, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	priv2, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	if priv1.Equal(priv2) {
		t.Error("Different private keys reported as equal")
	}

	if !priv1.Equal(priv1) {
		t.Error("Same private key not equal to itself")
	}
}

func TestPrivateKeyPublic(t *testing.T) {
	curve := ecdh.P256()
	priv, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub := priv.Public()
	if pub == nil {
		t.Fatal("Public() returned nil")
	}

	_, ok := pub.(crypto.PublicKey)
	if !ok {
		t.Error("Public() did not return crypto.PublicKey")
	}
}

func TestPrivateKeyPublicKey(t *testing.T) {
	curve := ecdh.P256()
	priv, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub := priv.PublicKey()
	if pub == nil {
		t.Error("PublicKey() returned nil")
	}
}

func TestPublicKeyBytes(t *testing.T) {
	curve := ecdh.P256()
	priv, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub := priv.PublicKey()
	b := pub.Bytes()
	if len(b) == 0 {
		t.Error("Bytes() returned empty slice")
	}
}

func TestPublicKeyCurve(t *testing.T) {
	curve := ecdh.P256()
	priv, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub := priv.PublicKey()
	c := pub.Curve()
	if c == nil {
		t.Error("Curve() returned nil")
	}
}

func TestPublicKeyEqual(t *testing.T) {
	curve := ecdh.P256()

	priv1, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	priv2, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub1 := priv1.PublicKey()
	pub2 := priv2.PublicKey()

	if pub1.Equal(pub2) {
		t.Error("Different public keys reported as equal")
	}

	if !pub1.Equal(pub1) {
		t.Error("Same public key not equal to itself")
	}
}

func TestCurveGenerateKey(t *testing.T) {
	curves := []ecdh.Curve{
		ecdh.P256(),
		ecdh.P384(),
		ecdh.P521(),
		ecdh.X25519(),
	}

	for _, curve := range curves {
		priv, err := curve.GenerateKey(rand.Reader)
		if err != nil {
			t.Errorf("GenerateKey() for curve error = %v", err)
			continue
		}
		if priv == nil {
			t.Error("GenerateKey() returned nil private key")
		}
	}
}

func TestCurveNewPrivateKey(t *testing.T) {
	curve := ecdh.P256()

	priv, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	keyBytes := priv.Bytes()

	priv2, err := curve.NewPrivateKey(keyBytes)
	if err != nil {
		t.Fatalf("NewPrivateKey() error = %v", err)
	}

	if !priv.Equal(priv2) {
		t.Error("NewPrivateKey() did not recreate the same key")
	}
}

func TestCurveNewPublicKey(t *testing.T) {
	curve := ecdh.P256()

	priv, err := curve.GenerateKey(rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	pub := priv.PublicKey()
	pubBytes := pub.Bytes()

	pub2, err := curve.NewPublicKey(pubBytes)
	if err != nil {
		t.Fatalf("NewPublicKey() error = %v", err)
	}

	if !pub.Equal(pub2) {
		t.Error("NewPublicKey() did not recreate the same key")
	}
}

func TestECDHWithAllCurves(t *testing.T) {
	curves := []struct {
		name  string
		curve ecdh.Curve
	}{
		{"P256", ecdh.P256()},
		{"P384", ecdh.P384()},
		{"P521", ecdh.P521()},
		{"X25519", ecdh.X25519()},
	}

	for _, tc := range curves {
		t.Run(tc.name, func(t *testing.T) {
			priv1, err := tc.curve.GenerateKey(rand.Reader)
			if err != nil {
				t.Fatalf("GenerateKey() error = %v", err)
			}

			priv2, err := tc.curve.GenerateKey(rand.Reader)
			if err != nil {
				t.Fatalf("GenerateKey() error = %v", err)
			}

			pub1 := priv1.PublicKey()
			pub2 := priv2.PublicKey()

			secret1, err := priv1.ECDH(pub2)
			if err != nil {
				t.Fatalf("ECDH() error = %v", err)
			}

			secret2, err := priv2.ECDH(pub1)
			if err != nil {
				t.Fatalf("ECDH() error = %v", err)
			}

			if !bytes.Equal(secret1, secret2) {
				t.Errorf("%s: shared secrets do not match", tc.name)
			}
		})
	}
}
