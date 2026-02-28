package crc64_test

import (
	"bytes"
	"encoding"
	"hash"
	"hash/crc64"
	"io"
	"testing"
)

type golden struct {
	in      string
	outISO  uint64
	outECMA uint64
}

var goldens = []golden{
	{"", 0x0, 0x0},
	{"a", 0x3420000000000000, 0x330284772e652b05},
	{"ab", 0x36c4200000000000, 0xbc6573200e84b046},
	{"abc", 0x3776c42000000000, 0x2cd8094a1a277627},
	{"123456789", 0xb90956c775a41001, 0x995dc9bbdf1939fa},
}

func TestChecksumGolden(t *testing.T) {
	isoTable := crc64.MakeTable(crc64.ISO)
	ecmaTable := crc64.MakeTable(crc64.ECMA)
	for _, g := range goldens {
		if got := crc64.Checksum([]byte(g.in), isoTable); got != g.outISO {
			t.Fatalf("ISO Checksum(%q) = %#x, want %#x", g.in, got, g.outISO)
		}
		if got := crc64.Checksum([]byte(g.in), ecmaTable); got != g.outECMA {
			t.Fatalf("ECMA Checksum(%q) = %#x, want %#x", g.in, got, g.outECMA)
		}
	}
}

func TestUpdateMatchesChecksum(t *testing.T) {
	parts := []string{"12", "34", "56", "789"}
	isoTable := crc64.MakeTable(crc64.ISO)
	ecmaTable := crc64.MakeTable(crc64.ECMA)

	var iso uint64
	var ecma uint64
	for _, p := range parts {
		b := []byte(p)
		iso = crc64.Update(iso, isoTable, b)
		ecma = crc64.Update(ecma, ecmaTable, b)
	}

	if want := crc64.Checksum([]byte("123456789"), isoTable); iso != want {
		t.Fatalf("ISO Update result = %#x, want %#x", iso, want)
	}
	if want := crc64.Checksum([]byte("123456789"), ecmaTable); ecma != want {
		t.Fatalf("ECMA Update result = %#x, want %#x", ecma, want)
	}
}

func testHash64(t *testing.T, tab *crc64.Table, input string) {
	t.Helper()

	h := crc64.New(tab)
	if h.Size() != crc64.Size {
		t.Fatalf("Size() = %d, want %d", h.Size(), crc64.Size)
	}
	if h.BlockSize() != 1 {
		t.Fatalf("BlockSize() = %d, want 1", h.BlockSize())
	}
	if _, err := io.WriteString(h, input); err != nil {
		t.Fatalf("WriteString failed: %v", err)
	}
	sum := h.Sum(nil)
	if len(sum) != crc64.Size {
		t.Fatalf("len(Sum(nil)) = %d, want %d", len(sum), crc64.Size)
	}
	h64, ok := interface{}(h).(hash.Hash64)
	if !ok {
		t.Fatalf("New returned %T, not hash.Hash64", h)
	}
	want := crc64.Checksum([]byte(input), tab)
	if got := h64.Sum64(); got != want {
		t.Fatalf("Sum64() = %#x, want %#x", got, want)
	}
}

func TestNewAndInterfaces(t *testing.T) {
	testHash64(t, crc64.MakeTable(crc64.ISO), "hello iso")
	testHash64(t, crc64.MakeTable(crc64.ECMA), "hello ecma")
}

func testMarshalRoundTrip(t *testing.T, tab *crc64.Table, input string) {
	t.Helper()

	h1 := crc64.New(tab)
	h2 := crc64.New(tab)

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
	appended, err := appender.AppendBinary(nil)
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
		t.Fatalf("write second half h1 failed: %v", err)
	}
	if _, err := io.WriteString(h2, second); err != nil {
		t.Fatalf("write second half h2 failed: %v", err)
	}

	sum1 := h1.(hash.Hash64).Sum64()
	sum2 := h2.(hash.Hash64).Sum64()
	if sum1 != sum2 {
		t.Fatalf("marshal round trip mismatch: %#x != %#x", sum1, sum2)
	}
}

func TestMarshalRoundTrip(t *testing.T) {
	for _, input := range []string{"", "a", "abc", "hello-crc64"} {
		testMarshalRoundTrip(t, crc64.MakeTable(crc64.ISO), input)
		testMarshalRoundTrip(t, crc64.MakeTable(crc64.ECMA), input)
	}
}
