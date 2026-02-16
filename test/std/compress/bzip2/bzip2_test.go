package bzip2_test

import (
	"bytes"
	"compress/bzip2"
	"encoding/hex"
	"errors"
	"io"
	"testing"
)

func mustDecodeHex(t *testing.T, s string) []byte {
	t.Helper()
	b, err := hex.DecodeString(s)
	if err != nil {
		t.Fatalf("hex decode failed: %v", err)
	}
	return b
}

func TestNewReaderHelloWorld(t *testing.T) {
	compressed := mustDecodeHex(t, ""+
		"425a68393141592653594eece83600000251800010400006449080200031064c"+
		"4101a7a9a580bb9431f8bb9229c28482776741b0",
	)

	r := bzip2.NewReader(bytes.NewReader(compressed))
	out, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}
	if string(out) != "hello world\n" {
		t.Fatalf("decompressed = %q, want %q", out, "hello world\n")
	}
}

func TestStructuralError(t *testing.T) {
	se0 := bzip2.StructuralError("bad magic value")
	if got, want := se0.Error(), "bzip2 data invalid: bad magic value"; got != want {
		t.Fatalf("StructuralError.Error() = %q, want %q", got, want)
	}

	var errIfc error = se0
	if got, want := errIfc.Error(), "bzip2 data invalid: bad magic value"; got != want {
		t.Fatalf("StructuralError.Error() = %q, want %q", got, want)
	}

	r := bzip2.NewReader(bytes.NewReader([]byte("not-bzip2")))
	_, err := io.ReadAll(r)
	if err == nil {
		t.Fatalf("expected read failure on invalid bzip2 data")
	}

	var se bzip2.StructuralError
	if !errors.As(err, &se) {
		t.Fatalf("error type = %T, want bzip2.StructuralError", err)
	}
}
