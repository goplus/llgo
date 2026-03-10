package dsa_test

import (
	"crypto/dsa"
	"crypto/rand"
	"crypto/sha256"
	"math/big"
	"testing"
)

func mustBigHex(s string) *big.Int {
	n, ok := new(big.Int).SetString(s, 16)
	if !ok {
		panic("invalid DSA parameter fixture")
	}
	return n
}

var testDSAParameters = dsa.Parameters{
	P: mustBigHex("848c73c7cdac5e1387dd17766b76565f790d185559cf18f2f892cb09c1ceee645ba805ff491dfd708f0777245d0871553fda533a06d8946b944fb143d76e07cbb332359a9c8afa2517b27da786078f3a3268df56e77a89a9b9b1aa329f8e0a621bec52e7852a8b7122406a9360c172ca4287cc0e4b7a8c610bb1ee4e9e90bc7d"),
	Q: mustBigHex("b0e3d581a8e227ff330e62434de484fe8f970d0d"),
	G: mustBigHex("1c076d314e7625c94a939d7413e8826ac3683ae088aa53960680fb5ec20b4f5f066f6d1c50c4e67ed8cb5d014e2f8bc880afe61d504c6fdf4708fb0cf47e1b0a5b25f72e0c85d3da8b294b2bf840404ecfb8bd6d3bea1b8151e15f70be5311b7a3fe05fd80aa09afa4195c67985fe0e2a444c1bd64621fb9ed7e24e9c22f2317"),
}

func clonedTestDSAParameters() dsa.Parameters {
	return dsa.Parameters{
		P: new(big.Int).Set(testDSAParameters.P),
		Q: new(big.Int).Set(testDSAParameters.Q),
		G: new(big.Int).Set(testDSAParameters.G),
	}
}

func TestParameterSizes(t *testing.T) {
	tests := []struct {
		name string
		size dsa.ParameterSizes
	}{
		{"L1024N160", dsa.L1024N160},
		{"L2048N224", dsa.L2048N224},
		{"L2048N256", dsa.L2048N256},
		{"L3072N256", dsa.L3072N256},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if tt.size < 0 {
				t.Errorf("ParameterSizes %s has negative value", tt.name)
			}
		})
	}
}

func TestGenerateParameters(t *testing.T) {
	if testing.Short() || isLLGo {
		t.Skip("Skipping expensive parameter generation in this mode")
	}

	var params dsa.Parameters
	err := dsa.GenerateParameters(&params, rand.Reader, dsa.L1024N160)
	if err != nil {
		t.Fatalf("GenerateParameters() error = %v", err)
	}

	if params.P == nil || params.Q == nil || params.G == nil {
		t.Error("GenerateParameters() returned nil parameters")
	}

	if params.P.BitLen() != 1024 {
		t.Errorf("P bit length = %d, want 1024", params.P.BitLen())
	}

	if params.Q.BitLen() != 160 {
		t.Errorf("Q bit length = %d, want 160", params.Q.BitLen())
	}
}

func TestGenerateKey(t *testing.T) {
	if testing.Short() {
		t.Skip("Skipping key generation in short mode")
	}

	params := clonedTestDSAParameters()

	var priv dsa.PrivateKey
	priv.Parameters = params
	err := dsa.GenerateKey(&priv, rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	if priv.X == nil {
		t.Error("GenerateKey() X is nil")
	}

	if priv.Y == nil {
		t.Error("GenerateKey() Y is nil")
	}

	if priv.X.Sign() <= 0 {
		t.Error("GenerateKey() X is not positive")
	}

	if priv.Y.Sign() <= 0 {
		t.Error("GenerateKey() Y is not positive")
	}
}

func TestSignAndVerify(t *testing.T) {
	if testing.Short() {
		t.Skip("Skipping sign/verify test in short mode")
	}

	params := clonedTestDSAParameters()

	var priv dsa.PrivateKey
	priv.Parameters = params
	err := dsa.GenerateKey(&priv, rand.Reader)
	if err != nil {
		t.Fatalf("GenerateKey() error = %v", err)
	}

	message := []byte("test message")
	hash := sha256.Sum256(message)

	r, s, err := dsa.Sign(rand.Reader, &priv, hash[:])
	if err != nil {
		t.Fatalf("Sign() error = %v", err)
	}

	if r == nil || s == nil {
		t.Fatal("Sign() returned nil signature components")
	}

	if r.Sign() <= 0 || s.Sign() <= 0 {
		t.Error("Sign() returned non-positive signature components")
	}

	pub := &priv.PublicKey
	if !dsa.Verify(pub, hash[:], r, s) {
		t.Error("Verify() failed for valid signature")
	}

	wrongHash := sha256.Sum256([]byte("wrong message"))
	if dsa.Verify(pub, wrongHash[:], r, s) {
		t.Error("Verify() succeeded for wrong hash")
	}

	wrongR := new(big.Int).Add(r, big.NewInt(1))
	if dsa.Verify(pub, hash[:], wrongR, s) {
		t.Error("Verify() succeeded for wrong r")
	}

	wrongS := new(big.Int).Add(s, big.NewInt(1))
	if dsa.Verify(pub, hash[:], r, wrongS) {
		t.Error("Verify() succeeded for wrong s")
	}
}

func TestErrInvalidPublicKey(t *testing.T) {
	if dsa.ErrInvalidPublicKey == nil {
		t.Error("ErrInvalidPublicKey is nil")
	}

	expectedMsg := "crypto/dsa: invalid public key"
	if dsa.ErrInvalidPublicKey.Error() != expectedMsg {
		t.Errorf("ErrInvalidPublicKey.Error() = %q, want %q",
			dsa.ErrInvalidPublicKey.Error(), expectedMsg)
	}
}

func TestParameters(t *testing.T) {
	params := dsa.Parameters{
		P: big.NewInt(123),
		Q: big.NewInt(456),
		G: big.NewInt(789),
	}

	if params.P.Int64() != 123 {
		t.Errorf("Parameters.P = %v, want 123", params.P)
	}

	if params.Q.Int64() != 456 {
		t.Errorf("Parameters.Q = %v, want 456", params.Q)
	}

	if params.G.Int64() != 789 {
		t.Errorf("Parameters.G = %v, want 789", params.G)
	}
}

func TestPublicKey(t *testing.T) {
	pub := dsa.PublicKey{
		Parameters: dsa.Parameters{
			P: big.NewInt(123),
			Q: big.NewInt(456),
			G: big.NewInt(789),
		},
		Y: big.NewInt(111),
	}

	if pub.Y.Int64() != 111 {
		t.Errorf("PublicKey.Y = %v, want 111", pub.Y)
	}

	if pub.Parameters.P.Int64() != 123 {
		t.Errorf("PublicKey.Parameters.P = %v, want 123", pub.Parameters.P)
	}
}

func TestPrivateKey(t *testing.T) {
	priv := dsa.PrivateKey{
		PublicKey: dsa.PublicKey{
			Parameters: dsa.Parameters{
				P: big.NewInt(123),
				Q: big.NewInt(456),
				G: big.NewInt(789),
			},
			Y: big.NewInt(111),
		},
		X: big.NewInt(222),
	}

	if priv.X.Int64() != 222 {
		t.Errorf("PrivateKey.X = %v, want 222", priv.X)
	}

	if priv.PublicKey.Y.Int64() != 111 {
		t.Errorf("PrivateKey.PublicKey.Y = %v, want 111", priv.PublicKey.Y)
	}

	if priv.PublicKey.Parameters.P.Int64() != 123 {
		t.Errorf("PrivateKey.PublicKey.Parameters.P = %v, want 123", priv.PublicKey.Parameters.P)
	}
}
