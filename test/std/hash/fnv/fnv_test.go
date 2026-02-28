package fnv_test

import (
	"bytes"
	"encoding"
	"encoding/binary"
	"hash"
	"hash/fnv"
	"io"
	"testing"
)

type golden struct {
	in  string
	out []byte
}

var (
	golden32 = []golden{
		{"", []byte{0x81, 0x1c, 0x9d, 0xc5}},
		{"a", []byte{0x05, 0x0c, 0x5d, 0x7e}},
		{"ab", []byte{0x70, 0x77, 0x2d, 0x38}},
		{"abc", []byte{0x43, 0x9c, 0x2f, 0x4b}},
	}
	golden32a = []golden{
		{"", []byte{0x81, 0x1c, 0x9d, 0xc5}},
		{"a", []byte{0xe4, 0x0c, 0x29, 0x2c}},
		{"ab", []byte{0x4d, 0x25, 0x05, 0xca}},
		{"abc", []byte{0x1a, 0x47, 0xe9, 0x0b}},
	}
	golden64 = []golden{
		{"", []byte{0xcb, 0xf2, 0x9c, 0xe4, 0x84, 0x22, 0x23, 0x25}},
		{"a", []byte{0xaf, 0x63, 0xbd, 0x4c, 0x86, 0x01, 0xb7, 0xbe}},
		{"ab", []byte{0x08, 0x32, 0x67, 0x07, 0xb4, 0xeb, 0x37, 0xb8}},
		{"abc", []byte{0xd8, 0xdc, 0xca, 0x18, 0x6b, 0xaf, 0xad, 0xcb}},
	}
	golden64a = []golden{
		{"", []byte{0xcb, 0xf2, 0x9c, 0xe4, 0x84, 0x22, 0x23, 0x25}},
		{"a", []byte{0xaf, 0x63, 0xdc, 0x4c, 0x86, 0x01, 0xec, 0x8c}},
		{"ab", []byte{0x08, 0x9c, 0x44, 0x07, 0xb5, 0x45, 0x98, 0x6a}},
		{"abc", []byte{0xe7, 0x1f, 0xa2, 0x19, 0x05, 0x41, 0x57, 0x4b}},
	}
	golden128 = []golden{
		{"", []byte{0x6c, 0x62, 0x27, 0x2e, 0x07, 0xbb, 0x01, 0x42, 0x62, 0xb8, 0x21, 0x75, 0x62, 0x95, 0xc5, 0x8d}},
		{"a", []byte{0xd2, 0x28, 0xcb, 0x69, 0x10, 0x1a, 0x8c, 0xaf, 0x78, 0x91, 0x2b, 0x70, 0x4e, 0x4a, 0x14, 0x1e}},
		{"ab", []byte{0x08, 0x80, 0x94, 0x5a, 0xee, 0xab, 0x1b, 0xe9, 0x5a, 0xa0, 0x73, 0x30, 0x55, 0x26, 0xc0, 0x88}},
		{"abc", []byte{0xa6, 0x8b, 0xb2, 0xa4, 0x34, 0x8b, 0x58, 0x22, 0x83, 0x6d, 0xbc, 0x78, 0xc6, 0xae, 0xe7, 0x3b}},
	}
	golden128a = []golden{
		{"", []byte{0x6c, 0x62, 0x27, 0x2e, 0x07, 0xbb, 0x01, 0x42, 0x62, 0xb8, 0x21, 0x75, 0x62, 0x95, 0xc5, 0x8d}},
		{"a", []byte{0xd2, 0x28, 0xcb, 0x69, 0x6f, 0x1a, 0x8c, 0xaf, 0x78, 0x91, 0x2b, 0x70, 0x4e, 0x4a, 0x89, 0x64}},
		{"ab", []byte{0x08, 0x80, 0x95, 0x44, 0xbb, 0xab, 0x1b, 0xe9, 0x5a, 0xa0, 0x73, 0x30, 0x55, 0xb6, 0x9a, 0x62}},
		{"abc", []byte{0xa6, 0x8d, 0x62, 0x2c, 0xec, 0x8b, 0x58, 0x22, 0x83, 0x6d, 0xbc, 0x79, 0x77, 0xaf, 0x7f, 0x3b}},
	}
)

func testGolden(t *testing.T, h hash.Hash, goldens []golden) {
	t.Helper()
	for _, g := range goldens {
		h.Reset()
		n, err := h.Write([]byte(g.in))
		if err != nil {
			t.Fatalf("Write(%q) failed: %v", g.in, err)
		}
		if n != len(g.in) {
			t.Fatalf("Write(%q) wrote %d bytes, want %d", g.in, n, len(g.in))
		}
		got := h.Sum(nil)
		if !bytes.Equal(got, g.out) {
			t.Fatalf("Sum(%q) = %#v, want %#v", g.in, got, g.out)
		}
	}
}

func TestGolden(t *testing.T) {
	testGolden(t, fnv.New32(), golden32)
	testGolden(t, fnv.New32a(), golden32a)
	testGolden(t, fnv.New64(), golden64)
	testGolden(t, fnv.New64a(), golden64a)
	testGolden(t, fnv.New128(), golden128)
	testGolden(t, fnv.New128a(), golden128a)
}

func testMarshal(t *testing.T, newHash func() hash.Hash, input string) {
	t.Helper()
	h1 := newHash()
	h2 := newHash()

	first := input[:len(input)/2]
	second := input[len(input)/2:]
	if _, err := io.WriteString(h1, first); err != nil {
		t.Fatalf("write first half failed: %v", err)
	}

	marshaler, ok := h1.(encoding.BinaryMarshaler)
	if !ok {
		t.Fatalf("hash type %T does not implement BinaryMarshaler", h1)
	}
	state, err := marshaler.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary failed: %v", err)
	}

	appender, ok := h1.(encoding.BinaryAppender)
	if !ok {
		t.Fatalf("hash type %T does not implement BinaryAppender", h1)
	}
	appended, err := appender.AppendBinary(make([]byte, 0, len(state)))
	if err != nil {
		t.Fatalf("AppendBinary failed: %v", err)
	}
	if !bytes.Equal(appended, state) {
		t.Fatalf("AppendBinary and MarshalBinary mismatch")
	}

	unmarshaler, ok := h2.(encoding.BinaryUnmarshaler)
	if !ok {
		t.Fatalf("hash type %T does not implement BinaryUnmarshaler", h2)
	}
	if err := unmarshaler.UnmarshalBinary(state); err != nil {
		t.Fatalf("UnmarshalBinary failed: %v", err)
	}

	if _, err := io.WriteString(h1, second); err != nil {
		t.Fatalf("write second half to h1 failed: %v", err)
	}
	if _, err := io.WriteString(h2, second); err != nil {
		t.Fatalf("write second half to h2 failed: %v", err)
	}

	sum1 := h1.Sum(nil)
	sum2 := h2.Sum(nil)
	if !bytes.Equal(sum1, sum2) {
		t.Fatalf("marshal round trip mismatch: %x != %x", sum1, sum2)
	}

	switch h1.Size() {
	case 4:
		h32, ok := h1.(hash.Hash32)
		if !ok {
			t.Fatalf("hash type %T does not implement hash.Hash32", h1)
		}
		if got, want := h32.Sum32(), binary.BigEndian.Uint32(sum1); got != want {
			t.Fatalf("Sum32 = %#x, want %#x", got, want)
		}
	case 8:
		h64, ok := h1.(hash.Hash64)
		if !ok {
			t.Fatalf("hash type %T does not implement hash.Hash64", h1)
		}
		if got, want := h64.Sum64(), binary.BigEndian.Uint64(sum1); got != want {
			t.Fatalf("Sum64 = %#x, want %#x", got, want)
		}
	}
}

func TestMarshalRoundTrip(t *testing.T) {
	for _, input := range []string{"", "a", "abc", "hello-fnv"} {
		testMarshal(t, func() hash.Hash { return fnv.New32() }, input)
		testMarshal(t, func() hash.Hash { return fnv.New32a() }, input)
		testMarshal(t, func() hash.Hash { return fnv.New64() }, input)
		testMarshal(t, func() hash.Hash { return fnv.New64a() }, input)
		testMarshal(t, fnv.New128, input)
		testMarshal(t, fnv.New128a, input)
	}
}
