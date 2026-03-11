package x509_test

import (
	"bytes"
	"crypto"
	"crypto/ecdsa"
	"crypto/ed25519"
	"crypto/elliptic"
	"crypto/rand"
	"crypto/rsa"
	"crypto/x509"
	"crypto/x509/pkix"
	"encoding/asn1"
	"encoding/pem"
	"math/big"
	"net"
	"net/url"
	"testing"
	"time"
)

func TestErrorConstants(t *testing.T) {
	if x509.ErrUnsupportedAlgorithm == nil {
		t.Error("ErrUnsupportedAlgorithm is nil")
	}
	if x509.IncorrectPasswordError == nil {
		t.Error("IncorrectPasswordError is nil")
	}
}

func TestPublicKeyAlgorithm(t *testing.T) {
	algorithms := []x509.PublicKeyAlgorithm{
		x509.UnknownPublicKeyAlgorithm,
		x509.RSA,
		x509.DSA,
		x509.ECDSA,
		x509.Ed25519,
	}

	for _, algo := range algorithms {
		str := algo.String()
		if str == "" {
			t.Errorf("PublicKeyAlgorithm(%d).String() returned empty", algo)
		}
	}
}

func TestSignatureAlgorithm(t *testing.T) {
	algorithms := []x509.SignatureAlgorithm{
		x509.UnknownSignatureAlgorithm,
		x509.MD2WithRSA,
		x509.MD5WithRSA,
		x509.SHA1WithRSA,
		x509.SHA256WithRSA,
		x509.SHA384WithRSA,
		x509.SHA512WithRSA,
		x509.DSAWithSHA1,
		x509.DSAWithSHA256,
		x509.ECDSAWithSHA1,
		x509.ECDSAWithSHA256,
		x509.ECDSAWithSHA384,
		x509.ECDSAWithSHA512,
		x509.SHA256WithRSAPSS,
		x509.SHA384WithRSAPSS,
		x509.SHA512WithRSAPSS,
		x509.PureEd25519,
	}

	for _, algo := range algorithms {
		str := algo.String()
		if str == "" {
			t.Errorf("SignatureAlgorithm(%d).String() returned empty", algo)
		}
	}
}

func TestInsecureAlgorithmError(t *testing.T) {
	err := x509.InsecureAlgorithmError(x509.MD5WithRSA)
	if err.Error() == "" {
		t.Error("InsecureAlgorithmError.Error() returned empty")
	}
}

func TestKeyUsage(t *testing.T) {
	usages := []x509.KeyUsage{
		x509.KeyUsageDigitalSignature,
		x509.KeyUsageContentCommitment,
		x509.KeyUsageKeyEncipherment,
		x509.KeyUsageDataEncipherment,
		x509.KeyUsageKeyAgreement,
		x509.KeyUsageCertSign,
		x509.KeyUsageCRLSign,
		x509.KeyUsageEncipherOnly,
		x509.KeyUsageDecipherOnly,
	}

	for _, usage := range usages {
		_ = usage
	}
}

func TestExtKeyUsage(t *testing.T) {
	usages := []x509.ExtKeyUsage{
		x509.ExtKeyUsageAny,
		x509.ExtKeyUsageServerAuth,
		x509.ExtKeyUsageClientAuth,
		x509.ExtKeyUsageCodeSigning,
		x509.ExtKeyUsageEmailProtection,
		x509.ExtKeyUsageIPSECEndSystem,
		x509.ExtKeyUsageIPSECTunnel,
		x509.ExtKeyUsageIPSECUser,
		x509.ExtKeyUsageTimeStamping,
		x509.ExtKeyUsageOCSPSigning,
		x509.ExtKeyUsageMicrosoftServerGatedCrypto,
		x509.ExtKeyUsageNetscapeServerGatedCrypto,
		x509.ExtKeyUsageMicrosoftCommercialCodeSigning,
		x509.ExtKeyUsageMicrosoftKernelCodeSigning,
	}

	for _, usage := range usages {
		_ = usage
	}
}

func TestInvalidReason(t *testing.T) {
	reasons := []x509.InvalidReason{
		x509.NotAuthorizedToSign,
		x509.Expired,
		x509.CANotAuthorizedForThisName,
		x509.TooManyIntermediates,
		x509.IncompatibleUsage,
		x509.NameMismatch,
		x509.NameConstraintsWithoutSANs,
		x509.UnconstrainedName,
		x509.TooManyConstraints,
		x509.CANotAuthorizedForExtKeyUsage,
	}

	for _, reason := range reasons {
		_ = reason
	}
}

func TestPEMCipher(t *testing.T) {
	ciphers := []x509.PEMCipher{
		x509.PEMCipherDES,
		x509.PEMCipher3DES,
		x509.PEMCipherAES128,
		x509.PEMCipherAES192,
		x509.PEMCipherAES256,
	}

	for _, cipher := range ciphers {
		_ = cipher
	}
}

func TestOID(t *testing.T) {
	oid, err := x509.OIDFromInts([]uint64{1, 2, 840, 113549})
	if err != nil {
		t.Errorf("OIDFromInts failed: %v", err)
	}

	str := oid.String()
	if str != "1.2.840.113549" {
		t.Errorf("OID.String() = %q, want 1.2.840.113549", str)
	}

	oid2, err := x509.ParseOID("1.2.840.113549")
	if err != nil {
		t.Errorf("ParseOID failed: %v", err)
	}

	if !oid.Equal(oid2) {
		t.Error("OID.Equal returned false for equal OIDs")
	}

	asn1OID := asn1.ObjectIdentifier{1, 2, 840, 113549}
	if !oid.EqualASN1OID(asn1OID) {
		t.Error("OID.EqualASN1OID returned false")
	}

	binData, err := oid.MarshalBinary()
	if err != nil {
		t.Errorf("OID.MarshalBinary failed: %v", err)
	}

	var oid3 x509.OID
	if err := oid3.UnmarshalBinary(binData); err != nil {
		t.Errorf("OID.UnmarshalBinary failed: %v", err)
	}
	if !oid.Equal(oid3) {
		t.Error("OID roundtrip through Binary failed")
	}

	textData, err := oid.MarshalText()
	if err != nil {
		t.Errorf("OID.MarshalText failed: %v", err)
	}

	var oid4 x509.OID
	if err := oid4.UnmarshalText(textData); err != nil {
		t.Errorf("OID.UnmarshalText failed: %v", err)
	}
	if !oid.Equal(oid4) {
		t.Error("OID roundtrip through Text failed")
	}

	binData2, err := oid.AppendBinary([]byte("prefix"))
	if err != nil {
		t.Errorf("OID.AppendBinary failed: %v", err)
	}
	if string(binData2[:6]) != "prefix" {
		t.Error("OID.AppendBinary did not preserve prefix")
	}

	textData2, err := oid.AppendText([]byte("prefix"))
	if err != nil {
		t.Errorf("OID.AppendText failed: %v", err)
	}
	if string(textData2[:6]) != "prefix" {
		t.Error("OID.AppendText did not preserve prefix")
	}
}

func generateSelfSignedCert(t *testing.T) (*x509.Certificate, crypto.PrivateKey) {
	if isLLGo {
		t.Skip("Skipping generated self-signed certificate fixtures in llgo")
	}
	priv, err := rsa.GenerateKey(rand.Reader, 2048)
	if err != nil {
		t.Fatalf("Failed to generate private key: %v", err)
	}

	template := &x509.Certificate{
		SerialNumber: big.NewInt(1),
		Subject: pkix.Name{
			Organization: []string{"Test Org"},
			CommonName:   "test.example.com",
		},
		NotBefore:             time.Now(),
		NotAfter:              time.Now().Add(24 * time.Hour),
		KeyUsage:              x509.KeyUsageKeyEncipherment | x509.KeyUsageDigitalSignature | x509.KeyUsageCertSign | x509.KeyUsageCRLSign,
		ExtKeyUsage:           []x509.ExtKeyUsage{x509.ExtKeyUsageServerAuth},
		BasicConstraintsValid: true,
		IsCA:                  true,
		DNSNames:              []string{"test.example.com"},
		IPAddresses:           []net.IP{net.ParseIP("127.0.0.1")},
	}

	certDER, err := x509.CreateCertificate(rand.Reader, template, template, &priv.PublicKey, priv)
	if err != nil {
		t.Fatalf("Failed to create certificate: %v", err)
	}

	cert, err := x509.ParseCertificate(certDER)
	if err != nil {
		t.Fatalf("Failed to parse certificate: %v", err)
	}

	return cert, priv
}
