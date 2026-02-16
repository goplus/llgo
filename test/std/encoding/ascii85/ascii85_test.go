package ascii85_test

import (
	"bytes"
	"encoding/ascii85"
	"io"
	"strings"
	"testing"
)

type pair struct {
	decoded string
	encoded string
}

var vectors = []pair{
	{"", ""},
	{"\x00\x00\x00\x00", "z"},
	{
		"Man is distinguished, not only by his reason, but by this singular passion from " +
			"other animals, which is a lust of the mind, that by a perseverance of delight in " +
			"the continued and indefatigable generation of knowledge, exceeds the short " +
			"vehemence of any carnal pleasure.",
		"9jqo^BlbD-BleB1DJ+*+F(f,q/0JhKF<GL>Cj@.4Gp$d7F!,L7@<6@)/0JDEF<G%<+EV:2F!,\n" +
			"O<DJ+*.@<*K0@<6L(Df-\\0Ec5e;DffZ(EZee.Bl.9pF\"AGXBPCsi+DGm>@3BB/F*&OCAfu2/AKY\n" +
			"i(DIb:@FD,*)+C]U=@3BN#EcYf8ATD3s@q?d$AftVqCh[NqF<G:8+EV:.+Cf>-FD5W8ARlolDIa\n" +
			"l(DId<j@<?3r@:F%a+D58'ATD4$Bl@l3De:,-DJs`8ARoFb/0JMK@qB4^F!,R<AKZ&-DfTqBG%G\n" +
			">uD.RTpAKYo'+CT/5+Cei#DII?(E,9)oF*2M7/c\n",
	},
}

func stripSpace(s string) string {
	out := make([]byte, 0, len(s))
	for i := 0; i < len(s); i++ {
		if s[i] > ' ' {
			out = append(out, s[i])
		}
	}
	return string(out)
}

func TestEncodeDecode(t *testing.T) {
	for _, tc := range vectors {
		encBuf := make([]byte, ascii85.MaxEncodedLen(len(tc.decoded)))
		n := ascii85.Encode(encBuf, []byte(tc.decoded))
		enc := string(encBuf[:n])
		if got, want := stripSpace(enc), stripSpace(tc.encoded); got != want {
			t.Fatalf("Encode(%q) = %q, want %q", tc.decoded, got, want)
		}

		decBuf := make([]byte, len(tc.decoded)+8)
		ndst, nsrc, err := ascii85.Decode(decBuf, []byte(tc.encoded), true)
		if err != nil {
			t.Fatalf("Decode(%q) failed: %v", tc.encoded, err)
		}
		if nsrc != len(tc.encoded) {
			t.Fatalf("Decode consumed %d bytes, want %d", nsrc, len(tc.encoded))
		}
		if got, want := string(decBuf[:ndst]), tc.decoded; got != want {
			t.Fatalf("Decode(%q) = %q, want %q", tc.encoded, got, want)
		}
	}
}

func TestStreamingEncoderDecoder(t *testing.T) {
	const src = "hello streaming ascii85"
	var b strings.Builder

	w := ascii85.NewEncoder(&b)
	if _, err := io.WriteString(w, src[:7]); err != nil {
		t.Fatalf("first write failed: %v", err)
	}
	if _, err := io.WriteString(w, src[7:]); err != nil {
		t.Fatalf("second write failed: %v", err)
	}
	if err := w.Close(); err != nil {
		t.Fatalf("Close failed: %v", err)
	}

	r := ascii85.NewDecoder(strings.NewReader(b.String()))
	decoded, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}
	if got := string(decoded); got != src {
		t.Fatalf("decoded = %q, want %q", got, src)
	}
}

func TestCorruptInputError(t *testing.T) {
	buf := make([]byte, 64)
	_, _, err := ascii85.Decode(buf, []byte("!z!!!!!!!!!"), true)
	if err == nil {
		t.Fatalf("expected decode error")
	}
	cerr, ok := err.(ascii85.CorruptInputError)
	if !ok {
		t.Fatalf("error type = %T, want ascii85.CorruptInputError", err)
	}
	if int(cerr) != 1 {
		t.Fatalf("CorruptInputError offset = %d, want 1", int(cerr))
	}
	if msg := cerr.Error(); msg == "" {
		t.Fatalf("CorruptInputError.Error returned empty string")
	}
}

func TestRoundTripLarge(t *testing.T) {
	n := 3*1000 + 1
	raw := make([]byte, n)
	const alpha = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	for i := range raw {
		raw[i] = alpha[i%len(alpha)]
	}

	var encoded bytes.Buffer
	w := ascii85.NewEncoder(&encoded)
	if nn, err := w.Write(raw); err != nil || nn != n {
		t.Fatalf("Write(raw) = %d, %v; want %d, nil", nn, err, n)
	}
	if err := w.Close(); err != nil {
		t.Fatalf("Close failed: %v", err)
	}

	decoded, err := io.ReadAll(ascii85.NewDecoder(&encoded))
	if err != nil {
		t.Fatalf("ReadAll decoder failed: %v", err)
	}
	if !bytes.Equal(decoded, raw) {
		t.Fatalf("round trip mismatch")
	}
}
