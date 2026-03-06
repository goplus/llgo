package hex_test

import (
	"bytes"
	"encoding/hex"
	"io"
	"strings"
	"testing"
)

type encDecCase struct {
	enc string
	dec []byte
}

var encDecCases = []encDecCase{
	{"", []byte{}},
	{"00010203", []byte{0x00, 0x01, 0x02, 0x03}},
	{"0a0b0c0d", []byte{0x0a, 0x0b, 0x0c, 0x0d}},
	{"f0f1f2f3f4f5", []byte{0xf0, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5}},
	{"676f70686572", []byte("gopher")},
}

func TestEncodeAndDecode(t *testing.T) {
	for i, tc := range encDecCases {
		dst := make([]byte, hex.EncodedLen(len(tc.dec)))
		if n := hex.Encode(dst, tc.dec); n != len(dst) {
			t.Fatalf("case %d: Encode returned %d want %d", i, n, len(dst))
		}
		if got := string(dst); got != tc.enc {
			t.Fatalf("case %d: Encode output %q want %q", i, got, tc.enc)
		}

		dst = []byte("lead")
		dst = hex.AppendEncode(dst, tc.dec)
		if got := string(dst); got != "lead"+tc.enc {
			t.Fatalf("case %d: AppendEncode output %q", i, got)
		}

		decBuf := make([]byte, hex.DecodedLen(len(tc.enc)))
		n, err := hex.Decode(decBuf, []byte(tc.enc))
		if err != nil {
			t.Fatalf("case %d: Decode error %v", i, err)
		}
		if !bytes.Equal(decBuf[:n], tc.dec) {
			t.Fatalf("case %d: Decode result %x want %x", i, decBuf[:n], tc.dec)
		}

		decBuf = []byte("lead")
		decBuf, err = hex.AppendDecode(decBuf, []byte(tc.enc))
		if err != nil {
			t.Fatalf("case %d: AppendDecode error %v", i, err)
		}
		if got := string(decBuf); got != "lead"+string(tc.dec) {
			t.Fatalf("case %d: AppendDecode output %q", i, got)
		}
	}
}

func TestEncodeDecodeString(t *testing.T) {
	for i, tc := range encDecCases {
		if got := hex.EncodeToString(tc.dec); got != tc.enc {
			t.Fatalf("case %d: EncodeToString %q want %q", i, got, tc.enc)
		}

		decoded, err := hex.DecodeString(tc.enc)
		if err != nil {
			t.Fatalf("case %d: DecodeString error %v", i, err)
		}
		if !bytes.Equal(decoded, tc.dec) {
			t.Fatalf("case %d: DecodeString result %x want %x", i, decoded, tc.dec)
		}
	}

	// uppercase input should decode successfully
	upper := strings.ToUpper(encDecCases[3].enc)
	decoded, err := hex.DecodeString(upper)
	if err != nil {
		t.Fatalf("uppercase DecodeString error %v", err)
	}
	if !bytes.Equal(decoded, encDecCases[3].dec) {
		t.Fatalf("uppercase DecodeString result %x", decoded)
	}
}

var errCases = []struct {
	in  string
	out string
	err error
}{
	{"", "", nil},
	{"0", "", hex.ErrLength},
	{"0g", "", hex.InvalidByteError('g')},
	{"d4aaz", "\xd4\xaa", hex.InvalidByteError('z')},
	{"30313", "01", hex.ErrLength},
	{"zz", "", hex.InvalidByteError('z')},
}

func TestDecodeErrors(t *testing.T) {
	for _, tc := range errCases {
		buf := make([]byte, len(tc.in)+2)
		n, err := hex.Decode(buf, []byte(tc.in))
		if string(buf[:n]) != tc.out || err != tc.err {
			t.Fatalf("Decode(%q)=%q,%v want %q,%v", tc.in, buf[:n], err, tc.out, tc.err)
		}

		out, err := hex.DecodeString(tc.in)
		if string(out) != tc.out || err != tc.err {
			t.Fatalf("DecodeString(%q)=%q,%v want %q,%v", tc.in, out, err, tc.out, tc.err)
		}
	}
}

func TestInvalidByteErrorString(t *testing.T) {
	err := hex.InvalidByteError('z')
	if !strings.Contains(err.Error(), "byte: U+007A") {
		t.Fatalf("InvalidByteError.Error()=%q", err.Error())
	}
}

func TestStreamEncoderDecoder(t *testing.T) {
	for _, tc := range encDecCases {
		for _, mul := range []int{1, 4} {
			input := bytes.Repeat(tc.dec, mul)
			expect := strings.Repeat(tc.enc, mul)

			var encBuf bytes.Buffer
			enc := hex.NewEncoder(&encBuf)
			r := struct{ io.Reader }{bytes.NewReader(input)}
			if n, err := io.CopyBuffer(enc, r, make([]byte, 3)); err != nil || n != int64(len(input)) {
				t.Fatalf("Encode stream (%q*%d)=%d,%v", tc.dec, mul, n, err)
			}
			if got := encBuf.String(); got != expect {
				t.Fatalf("Encode stream output %q want %q", got, expect)
			}

			dec := hex.NewDecoder(&encBuf)
			var decBuf bytes.Buffer
			w := struct{ io.Writer }{&decBuf}
			if _, err := io.CopyBuffer(w, dec, make([]byte, 5)); err != nil {
				t.Fatalf("Decode stream error %v", err)
			}
			if !bytes.Equal(decBuf.Bytes(), input) {
				t.Fatalf("Decode stream result %x want %x", decBuf.Bytes(), input)
			}
		}
	}
}

func TestStreamingErrors(t *testing.T) {
	for _, tc := range errCases {
		dec := hex.NewDecoder(strings.NewReader(tc.in))
		out, err := io.ReadAll(dec)
		wantErr := tc.err
		if wantErr == hex.ErrLength {
			wantErr = io.ErrUnexpectedEOF
		}
		if string(out) != tc.out || err != wantErr {
			t.Fatalf("NewDecoder(%q)=%q,%v want %q,%v", tc.in, out, err, tc.out, wantErr)
		}
	}
}

var expectedDump = []byte("00000000  61 62 63 64 65 66 67 68  69 6a 6b 6c 6d 6e 6f 70  |abcdefghijklmnop|\n" +
	"00000010  71 72 73 74 75 76 77 78  79 7a 7b 7c 7d 7e 7f 80  |qrstuvwxyz{|}~..|\n")

func TestDumperAndDump(t *testing.T) {
	var data [32]byte
	for i := range data {
		data[i] = byte(i + 0x61)
	}

	var buf bytes.Buffer
	dumper := hex.Dumper(&buf)
	if _, err := dumper.Write(data[:16]); err != nil {
		t.Fatalf("dumper first write: %v", err)
	}
	if _, err := dumper.Write(data[16:]); err != nil {
		t.Fatalf("dumper second write: %v", err)
	}
	dumper.Close()
	if !bytes.Equal(buf.Bytes(), expectedDump) {
		t.Fatalf("Dumper output\n%s\nwant\n%s", buf.Bytes(), expectedDump)
	}

	out := []byte(hex.Dump(data[:]))
	if !bytes.Equal(out, expectedDump) {
		t.Fatalf("Dump output\n%s\nwant\n%s", out, expectedDump)
	}
}

func TestDumperDoubleClose(t *testing.T) {
	var b strings.Builder
	dumper := hex.Dumper(&b)
	dumper.Write([]byte("gopher"))
	dumper.Close()
	dumper.Close()
	dumper.Write([]byte("pher"))
	dumper.Close()

	expected := "00000000  67 6f 70 68 65 72                                 |gopher|\n"
	if b.String() != expected {
		t.Fatalf("double close result %q want %q", b.String(), expected)
	}
}

func TestDumperEarlyClose(t *testing.T) {
	var b strings.Builder
	dumper := hex.Dumper(&b)
	dumper.Close()
	dumper.Write([]byte("gopher"))
	dumper.Close()
	if b.String() != "" {
		t.Fatalf("early close result %q want empty", b.String())
	}
}
