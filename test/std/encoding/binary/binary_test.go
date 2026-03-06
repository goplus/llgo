package binary_test

import (
	"bytes"
	"encoding/binary"
	"errors"
	"io"
	"math"
	"testing"
)

func TestEndianUintRoundTrip(t *testing.T) {
	orders := []struct {
		name  string
		order binary.ByteOrder
	}{
		{"little", binary.LittleEndian},
		{"big", binary.BigEndian},
	}

	values16 := []uint16{0, 1, 0x1234, math.MaxUint16}
	values32 := []uint32{0, 1, 0x89abcdef, math.MaxUint32}
	values64 := []uint64{0, 1, 0x0102030405060708, math.MaxUint64}

	buf := make([]byte, 8)
	for _, order := range orders {
		for _, v := range values16 {
			order.order.PutUint16(buf[:2], v)
			if got := order.order.Uint16(buf[:2]); got != v {
				t.Fatalf("%s Uint16 round-trip mismatch: got 0x%x want 0x%x", order.name, got, v)
			}
		}
		for _, v := range values32 {
			order.order.PutUint32(buf[:4], v)
			if got := order.order.Uint32(buf[:4]); got != v {
				t.Fatalf("%s Uint32 round-trip mismatch: got 0x%x want 0x%x", order.name, got, v)
			}
		}
		for _, v := range values64 {
			order.order.PutUint64(buf, v)
			if got := order.order.Uint64(buf); got != v {
				t.Fatalf("%s Uint64 round-trip mismatch: got 0x%x want 0x%x", order.name, got, v)
			}
		}
	}
}

type testPacket struct {
	Magic   uint32
	Flags   uint16
	Payload [3]byte
	Value   int32
}

func TestReadWriteStruct(t *testing.T) {
	src := testPacket{
		Magic:   0xfeedbeef,
		Flags:   0x1234,
		Payload: [3]byte{1, 2, 3},
		Value:   -42,
	}

	size := binary.Size(src)
	if size != 13 {
		t.Fatalf("unexpected binary size: got %d want 13", size)
	}

	var buf bytes.Buffer
	if err := binary.Write(&buf, binary.LittleEndian, &src); err != nil {
		t.Fatalf("Write failed: %v", err)
	}

	var dst testPacket
	if err := binary.Read(&buf, binary.LittleEndian, &dst); err != nil {
		t.Fatalf("Read failed: %v", err)
	}

	if dst != src {
		t.Fatalf("decoded struct mismatch: %#v != %#v", dst, src)
	}
}

func TestReadReportsShortBuffer(t *testing.T) {
	data := []byte{0x01, 0x02, 0x03}
	var hdr struct {
		A uint32
		B uint16
	}

	reader := bytes.NewReader(data)
	err := binary.Read(reader, binary.BigEndian, &hdr)
	if err == nil {
		t.Fatal("expected error on short buffer")
	}
	if !errors.Is(err, io.ErrUnexpectedEOF) {
		t.Fatalf("expected io.ErrUnexpectedEOF, got %v", err)
	}
}

func TestVarintRoundTrip(t *testing.T) {
	ints := []int64{0, 1, -1, math.MaxInt32, math.MinInt32, math.MaxInt64, math.MinInt64}
	buf := make([]byte, binary.MaxVarintLen64)

	for _, v := range ints {
		n := binary.PutVarint(buf, v)
		got, size := binary.Varint(buf[:n])
		if size <= 0 {
			t.Fatalf("Varint(%d) returned size %d", v, size)
		}
		if got != v {
			t.Fatalf("Varint round-trip mismatch: got %d want %d", got, v)
		}
	}

	uints := []uint64{0, 1, math.MaxUint32, math.MaxUint64}
	for _, v := range uints {
		n := binary.PutUvarint(buf, v)
		got, size := binary.Uvarint(buf[:n])
		if size <= 0 {
			t.Fatalf("Uvarint(%d) returned size %d", v, size)
		}
		if got != v {
			t.Fatalf("Uvarint round-trip mismatch: got %d want %d", got, v)
		}
	}
}

func TestAppendHelpers(t *testing.T) {
	type record struct {
		A uint16
		B uint32
		C int16
	}

	input := record{A: 0x1122, B: 0x33445566, C: -1234}

	buf, err := binary.Append(nil, binary.LittleEndian, input)
	if err != nil {
		t.Fatalf("Append failed: %v", err)
	}
	if len(buf) != binary.Size(input) {
		t.Fatalf("Append length mismatch: got %d want %d", len(buf), binary.Size(input))
	}

	var decoded record
	n, err := binary.Decode(buf, binary.LittleEndian, &decoded)
	if err != nil {
		t.Fatalf("Decode failed: %v", err)
	}
	if n != len(buf) {
		t.Fatalf("Decode consumed %d bytes, expected %d", n, len(buf))
	}
	if decoded != input {
		t.Fatalf("Decode mismatch: %#v != %#v", decoded, input)
	}

	dst := make([]byte, len(buf))
	written, err := binary.Encode(dst, binary.LittleEndian, input)
	if err != nil {
		t.Fatalf("Encode failed: %v", err)
	}
	if written != len(buf) {
		t.Fatalf("Encode wrote %d bytes, expected %d", written, len(buf))
	}

	var decoded2 record
	if _, err := binary.Decode(dst[:written], binary.LittleEndian, &decoded2); err != nil {
		t.Fatalf("Decode after Encode failed: %v", err)
	}
	if decoded2 != input {
		t.Fatalf("Decode after Encode mismatch: %#v != %#v", decoded2, input)
	}

	var order binary.AppendByteOrder = binary.LittleEndian
	app := order.AppendUint16(nil, 0xABCD)
	app = order.AppendUint32(app, 0x01020304)
	app = order.AppendUint64(app, 0x05060708090A0B0C)
	if len(app) != 2+4+8 {
		t.Fatalf("AppendByteOrder length mismatch: %d", len(app))
	}
	if v := binary.LittleEndian.Uint16(app[:2]); v != 0xABCD {
		t.Fatalf("AppendUint16 value mismatch: 0x%x", v)
	}
	if v := binary.LittleEndian.Uint32(app[2:6]); v != 0x01020304 {
		t.Fatalf("AppendUint32 value mismatch: 0x%x", v)
	}
	if v := binary.LittleEndian.Uint64(app[6:]); v != 0x05060708090A0B0C {
		t.Fatalf("AppendUint64 value mismatch: 0x%x", v)
	}
}

func TestVarintReaders(t *testing.T) {
	varBuf := binary.AppendVarint(nil, -12345)
	reader := bytes.NewReader(varBuf)
	val, err := binary.ReadVarint(reader)
	if err != nil {
		t.Fatalf("ReadVarint failed: %v", err)
	}
	if val != -12345 {
		t.Fatalf("ReadVarint mismatch: got %d", val)
	}

	uvarBuf := binary.AppendUvarint(nil, math.MaxUint32)
	uReader := bytes.NewReader(uvarBuf)
	uval, err := binary.ReadUvarint(uReader)
	if err != nil {
		t.Fatalf("ReadUvarint failed: %v", err)
	}
	if uval != math.MaxUint32 {
		t.Fatalf("ReadUvarint mismatch: got %d", uval)
	}
}

func TestVarintAppendLengths(t *testing.T) {
	buf := make([]byte, binary.MaxVarintLen32)
	n := binary.PutUvarint(buf, math.MaxUint32)
	if n > binary.MaxVarintLen32 {
		t.Fatalf("PutUvarint wrote %d bytes, exceeds MaxVarintLen32=%d", n, binary.MaxVarintLen32)
	}

	buf16 := make([]byte, binary.MaxVarintLen16)
	n = binary.PutUvarint(buf16, math.MaxUint16)
	if n > binary.MaxVarintLen16 {
		t.Fatalf("PutUvarint wrote %d bytes, exceeds MaxVarintLen16=%d", n, binary.MaxVarintLen16)
	}

	varintBuf := binary.AppendVarint(nil, math.MinInt32)
	if len(varintBuf) > binary.MaxVarintLen32 {
		t.Fatalf("AppendVarint length %d exceeds MaxVarintLen32=%d", len(varintBuf), binary.MaxVarintLen32)
	}

	uvarintBuf := binary.AppendUvarint(nil, math.MaxUint16)
	if len(uvarintBuf) > binary.MaxVarintLen16 {
		t.Fatalf("AppendUvarint length %d exceeds MaxVarintLen16=%d", len(uvarintBuf), binary.MaxVarintLen16)
	}
}

func TestNativeEndianRoundTrip(t *testing.T) {
	order := binary.NativeEndian
	buf := make([]byte, 8)
	order.PutUint32(buf[:4], 0x0A0B0C0D)
	order.PutUint32(buf[4:], 0x01020304)
	if got := order.Uint32(buf[:4]); got != 0x0A0B0C0D {
		t.Fatalf("NativeEndian Uint32 mismatch: 0x%x", got)
	}
	if got := order.Uint32(buf[4:]); got != 0x01020304 {
		t.Fatalf("NativeEndian Uint32 mismatch: 0x%x", got)
	}
}
