package base32_test

import (
	"bytes"
	"encoding/base32"
	"io"
	"strings"
	"testing"
)

func TestStdAndHexEncodings(t *testing.T) {
	std := base32.StdEncoding
	hex := base32.HexEncoding

	if got, want := std.EncodeToString([]byte("foobar")), "MZXW6YTBOI======"; got != want {
		t.Fatalf("StdEncoding.EncodeToString = %q, want %q", got, want)
	}
	if got, want := hex.EncodeToString([]byte("foobar")), "CPNMUOJ1E8======"; got != want {
		t.Fatalf("HexEncoding.EncodeToString = %q, want %q", got, want)
	}

	gotStd, err := std.DecodeString("MZXW6YTBOI======")
	if err != nil {
		t.Fatalf("StdEncoding.DecodeString failed: %v", err)
	}
	if string(gotStd) != "foobar" {
		t.Fatalf("StdEncoding.DecodeString = %q, want %q", gotStd, "foobar")
	}

	gotHex, err := hex.DecodeString("CPNMUOJ1E8======")
	if err != nil {
		t.Fatalf("HexEncoding.DecodeString failed: %v", err)
	}
	if string(gotHex) != "foobar" {
		t.Fatalf("HexEncoding.DecodeString = %q, want %q", gotHex, "foobar")
	}
}

func TestEncodeDecodeBufferAPIs(t *testing.T) {
	enc := base32.StdEncoding
	src := []byte("hello base32")

	buf := make([]byte, enc.EncodedLen(len(src)))
	enc.Encode(buf, src)

	dst := make([]byte, enc.DecodedLen(len(buf)))
	n, err := enc.Decode(dst, buf)
	if err != nil {
		t.Fatalf("Decode failed: %v", err)
	}
	if got := string(dst[:n]); got != string(src) {
		t.Fatalf("Decode output = %q, want %q", got, src)
	}
}

func TestAppendAPIs(t *testing.T) {
	enc := base32.StdEncoding
	src := []byte("append")

	withPrefix := enc.AppendEncode([]byte("lead:"), src)
	if !strings.HasPrefix(string(withPrefix), "lead:") {
		t.Fatalf("AppendEncode missing prefix: %q", withPrefix)
	}

	decoded, err := enc.AppendDecode([]byte("lead:"), withPrefix[len("lead:"):])
	if err != nil {
		t.Fatalf("AppendDecode failed: %v", err)
	}
	if got, want := string(decoded), "lead:"+string(src); got != want {
		t.Fatalf("AppendDecode = %q, want %q", got, want)
	}
}

func TestWithPaddingAndNewEncoding(t *testing.T) {
	custom := base32.NewEncoding("abcdefghijklmnopqrstuvwxyz234567")
	encoded := custom.EncodeToString([]byte("go"))
	decoded, err := custom.DecodeString(encoded)
	if err != nil {
		t.Fatalf("custom DecodeString failed: %v", err)
	}
	if string(decoded) != "go" {
		t.Fatalf("custom round-trip = %q, want %q", decoded, "go")
	}

	noPad := base32.StdEncoding.WithPadding(base32.NoPadding)
	if got := noPad.EncodeToString([]byte("foo")); strings.ContainsRune(got, base32.StdPadding) {
		t.Fatalf("no-pad encoding still contains padding: %q", got)
	}
	gotNoPad, err := noPad.DecodeString(noPad.EncodeToString([]byte("foo")))
	if err != nil {
		t.Fatalf("no-pad DecodeString failed: %v", err)
	}
	if string(gotNoPad) != "foo" {
		t.Fatalf("no-pad round-trip = %q, want %q", gotNoPad, "foo")
	}

	dotPad := base32.StdEncoding.WithPadding('.')
	if got := dotPad.EncodeToString([]byte("f")); !strings.ContainsRune(got, '.') {
		t.Fatalf("custom padding not used: %q", got)
	}
}

func TestStreamingAPI(t *testing.T) {
	src := "streaming-base32-data"
	var b bytes.Buffer
	w := base32.NewEncoder(base32.StdEncoding, &b)
	if _, err := io.WriteString(w, src[:10]); err != nil {
		t.Fatalf("first write failed: %v", err)
	}
	if _, err := io.WriteString(w, src[10:]); err != nil {
		t.Fatalf("second write failed: %v", err)
	}
	if err := w.Close(); err != nil {
		t.Fatalf("Close failed: %v", err)
	}

	r := base32.NewDecoder(base32.StdEncoding, bytes.NewReader(b.Bytes()))
	decoded, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}
	if got := string(decoded); got != src {
		t.Fatalf("stream decode = %q, want %q", got, src)
	}
}

func TestCorruptInputError(t *testing.T) {
	_, err := base32.StdEncoding.DecodeString("MZXW6YTb")
	if err == nil {
		t.Fatalf("expected decode error")
	}
	cerr, ok := err.(base32.CorruptInputError)
	if !ok {
		t.Fatalf("error type = %T, want base32.CorruptInputError", err)
	}
	if msg := cerr.Error(); msg == "" {
		t.Fatalf("CorruptInputError.Error returned empty string")
	}
}
