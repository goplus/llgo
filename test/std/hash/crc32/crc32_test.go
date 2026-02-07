package crc32_test

import (
	"encoding"
	"hash"
	"hash/crc32"
	"io"
	"strings"
	"testing"
)

var knownInputs = []struct {
	name   string
	input  string
	table  *crc32.Table
	expect uint32
}{
	{"ieee", "123456789", crc32.IEEETable, 0xcbf43926},
	{"castagnoli", "123456789", crc32.MakeTable(crc32.Castagnoli), 0xe3069283},
	{"koopman", "123456789", crc32.MakeTable(crc32.Koopman), 0x2d3dd0ae},
}

func TestChecksumVariants(t *testing.T) {
	for _, tc := range knownInputs {
		got := crc32.Checksum([]byte(tc.input), tc.table)
		if got != tc.expect {
			t.Fatalf("%s checksum=%#x want %#x", tc.name, got, tc.expect)
		}
	}

	ieee := crc32.ChecksumIEEE([]byte("123456789"))
	if ieee != 0xcbf43926 {
		t.Fatalf("ChecksumIEEE=%#x want %#x", ieee, 0xcbf43926)
	}

	if tab := crc32.MakeTable(crc32.IEEE); tab != crc32.IEEETable {
		t.Fatalf("MakeTable(IEEE) did not return IEEETable")
	}
}

func TestUpdateMatchesChecksum(t *testing.T) {
	parts := []string{"1234", "567", "89"}
	tab := crc32.IEEETable
	var crc uint32
	for _, part := range parts {
		crc = crc32.Update(crc, tab, []byte(part))
	}
	if crc != 0xcbf43926 {
		t.Fatalf("Update(IEEETable)=%#x want %#x", crc, 0xcbf43926)
	}

	ptrTab := crc32.MakeTable(crc32.Castagnoli)
	if ptrTab != crc32.MakeTable(crc32.Castagnoli) {
		t.Fatalf("MakeTable(Castagnoli) should reuse cached table")
	}
}

func TestHashInterface(t *testing.T) {
	h := crc32.NewIEEE()
	if h.Size() != crc32.Size {
		t.Fatalf("Size=%d want %d", h.Size(), crc32.Size)
	}
	if h.BlockSize() != 1 {
		t.Fatalf("BlockSize=%d want 1", h.BlockSize())
	}

	if _, err := io.WriteString(h, "gopher"); err != nil {
		t.Fatalf("Write error: %v", err)
	}
	sum := h.Sum32()
	if sum == 0 {
		t.Fatalf("Sum32 should not be zero")
	}

	// Sum should append big-endian bytes to the provided slice.
	base := []byte{0xAA}
	full := h.Sum(base[:1])
	if len(full) != len(base[:1])+crc32.Size {
		t.Fatalf("Sum appended %d bytes want %d", len(full)-len(base[:1]), crc32.Size)
	}

	// Reset and recompute to ensure the state is cleared.
	h.Reset()
	if h.Sum32() != 0 {
		t.Fatalf("Reset Sum32=%#x want 0", h.Sum32())
	}
}

func TestHashBinaryMarshaling(t *testing.T) {
	msg := "stateful-crc"
	half := len(msg) / 2

	h1 := crc32.NewIEEE()
	h2 := crc32.New(crc32.MakeTable(crc32.Koopman))

	if _, err := io.WriteString(h1, msg[:half]); err != nil {
		t.Fatalf("h1 first write: %v", err)
	}

	marshaler, ok := h1.(encoding.BinaryMarshaler)
	if !ok {
		t.Fatalf("NewIEEE hash should implement BinaryMarshaler")
	}
	appender, ok := h1.(encoding.BinaryAppender)
	if !ok {
		t.Fatalf("NewIEEE hash should implement BinaryAppender")
	}
	stateAppend, err := appender.AppendBinary(make([]byte, 0, 32))
	if err != nil {
		t.Fatalf("AppendBinary: %v", err)
	}
	state, err := marshaler.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary: %v", err)
	}
	if !strings.Contains(string(state), "crc") {
		t.Fatalf("state prefix missing magic: %q", state)
	}
	if string(stateAppend) != string(state) {
		t.Fatalf("AppendBinary result mismatch")
	}

	unmarshaler, ok := h1.(encoding.BinaryUnmarshaler)
	if !ok {
		t.Fatalf("NewIEEE hash should implement BinaryUnmarshaler")
	}
	if err := unmarshaler.UnmarshalBinary(state); err != nil {
		t.Fatalf("UnmarshalBinary: %v", err)
	}

	// Complete the sum with the remaining data.
	if _, err := io.WriteString(h1, msg[half:]); err != nil {
		t.Fatalf("h1 second write: %v", err)
	}

	// Ensure a different table still works and has the right type.
	if _, err := io.WriteString(h2, msg); err != nil {
		t.Fatalf("h2 write: %v", err)
	}
	if _, ok := interface{}(h2).(hash.Hash32); !ok {
		t.Fatalf("New custom table should return hash.Hash32")
	}

	ieee := crc32.ChecksumIEEE([]byte(msg))
	if h1.Sum32() != ieee {
		t.Fatalf("post-unmarshal Sum32=%#x want %#x", h1.Sum32(), ieee)
	}
}
