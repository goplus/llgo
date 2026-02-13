package pem_test

import (
	"bytes"
	"encoding/pem"
	"testing"
)

const testPEM = `-----BEGIN TEST-----
dGVzdCBkYXRh
-----END TEST-----
`

func TestDecode(t *testing.T) {
	block, rest := pem.Decode([]byte(testPEM))
	if block == nil {
		t.Fatal("Decode() returned nil block")
	}
	if block.Type != "TEST" {
		t.Errorf("Decode() Type = %q, want %q", block.Type, "TEST")
	}
	if string(block.Bytes) != "test data" {
		t.Errorf("Decode() Bytes = %q, want %q", string(block.Bytes), "test data")
	}
	if len(rest) != 0 {
		t.Errorf("Decode() rest = %q, want empty", string(rest))
	}
}

func TestDecodeNil(t *testing.T) {
	block, rest := pem.Decode([]byte("not a PEM block"))
	if block != nil {
		t.Errorf("Decode() of non-PEM data returned block %v, want nil", block)
	}
	if len(rest) == 0 {
		t.Error("Decode() rest should contain original data")
	}
}

func TestEncodeToMemory(t *testing.T) {
	block := &pem.Block{
		Type:  "TEST",
		Bytes: []byte("test data"),
	}
	encoded := pem.EncodeToMemory(block)
	if encoded == nil {
		t.Fatal("EncodeToMemory() returned nil")
	}
	if !bytes.Contains(encoded, []byte("BEGIN TEST")) {
		t.Error("EncodeToMemory() missing BEGIN header")
	}
	if !bytes.Contains(encoded, []byte("END TEST")) {
		t.Error("EncodeToMemory() missing END footer")
	}

	decodedBlock, _ := pem.Decode(encoded)
	if decodedBlock == nil {
		t.Fatal("Could not decode EncodeToMemory() output")
	}
	if decodedBlock.Type != "TEST" {
		t.Errorf("Round-trip Type = %q, want %q", decodedBlock.Type, "TEST")
	}
	if string(decodedBlock.Bytes) != "test data" {
		t.Errorf("Round-trip Bytes = %q, want %q", string(decodedBlock.Bytes), "test data")
	}
}

func TestEncode(t *testing.T) {
	var buf bytes.Buffer
	block := &pem.Block{
		Type:  "CERTIFICATE",
		Bytes: []byte("cert data"),
	}
	err := pem.Encode(&buf, block)
	if err != nil {
		t.Fatalf("Encode() error = %v", err)
	}
	encoded := buf.Bytes()
	if !bytes.Contains(encoded, []byte("BEGIN CERTIFICATE")) {
		t.Error("Encode() missing BEGIN header")
	}
	if !bytes.Contains(encoded, []byte("END CERTIFICATE")) {
		t.Error("Encode() missing END footer")
	}

	decodedBlock, _ := pem.Decode(encoded)
	if decodedBlock == nil {
		t.Fatal("Could not decode Encode() output")
	}
	if decodedBlock.Type != "CERTIFICATE" {
		t.Errorf("Round-trip Type = %q, want %q", decodedBlock.Type, "CERTIFICATE")
	}
	if string(decodedBlock.Bytes) != "cert data" {
		t.Errorf("Round-trip Bytes = %q, want %q", string(decodedBlock.Bytes), "cert data")
	}
}

func TestBlockFields(t *testing.T) {
	block := &pem.Block{
		Type: "RSA PRIVATE KEY",
		Headers: map[string]string{
			"Proc-Type": "4,ENCRYPTED",
			"DEK-Info":  "DES-EDE3-CBC,0123456789ABCDEF",
		},
		Bytes: []byte("encrypted key data"),
	}

	encoded := pem.EncodeToMemory(block)
	decodedBlock, _ := pem.Decode(encoded)
	if decodedBlock == nil {
		t.Fatal("Could not decode block with headers")
	}

	if decodedBlock.Type != "RSA PRIVATE KEY" {
		t.Errorf("Type = %q, want %q", decodedBlock.Type, "RSA PRIVATE KEY")
	}

	if len(decodedBlock.Headers) != 2 {
		t.Errorf("Headers length = %d, want 2", len(decodedBlock.Headers))
	}

	if decodedBlock.Headers["Proc-Type"] != "4,ENCRYPTED" {
		t.Errorf("Proc-Type = %q, want %q", decodedBlock.Headers["Proc-Type"], "4,ENCRYPTED")
	}

	if string(decodedBlock.Bytes) != "encrypted key data" {
		t.Errorf("Bytes = %q, want %q", string(decodedBlock.Bytes), "encrypted key data")
	}
}

func TestDecodeMultipleBlocks(t *testing.T) {
	multiPEM := `-----BEGIN FIRST-----
Zmlyc3Q=
-----END FIRST-----
-----BEGIN SECOND-----
c2Vjb25k
-----END SECOND-----
`

	block1, rest := pem.Decode([]byte(multiPEM))
	if block1 == nil {
		t.Fatal("First Decode() returned nil")
	}
	if block1.Type != "FIRST" {
		t.Errorf("First block Type = %q, want %q", block1.Type, "FIRST")
	}
	if string(block1.Bytes) != "first" {
		t.Errorf("First block Bytes = %q, want %q", string(block1.Bytes), "first")
	}

	block2, rest := pem.Decode(rest)
	if block2 == nil {
		t.Fatal("Second Decode() returned nil")
	}
	if block2.Type != "SECOND" {
		t.Errorf("Second block Type = %q, want %q", block2.Type, "SECOND")
	}
	if string(block2.Bytes) != "second" {
		t.Errorf("Second block Bytes = %q, want %q", string(block2.Bytes), "second")
	}

	if len(rest) != 0 {
		t.Errorf("Final rest = %q, want empty", string(rest))
	}
}
