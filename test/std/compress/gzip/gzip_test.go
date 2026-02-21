package gzip_test

import (
	"bytes"
	"compress/gzip"
	"io"
	"strings"
	"testing"
	"time"
)

func TestGzipRoundTrip(t *testing.T) {
	testCases := []struct {
		name  string
		input string
		level int
	}{
		{"empty", "", gzip.DefaultCompression},
		{"short", "hello", gzip.DefaultCompression},
		{"medium", strings.Repeat("test data ", 100), gzip.DefaultCompression},
		{"long", strings.Repeat("abcdefghijklmnopqrstuvwxyz", 1000), gzip.DefaultCompression},
		{"no compression", "test", gzip.NoCompression},
		{"best speed", "test data", gzip.BestSpeed},
		{"best compression", "test data", gzip.BestCompression},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			var buf bytes.Buffer
			w, err := gzip.NewWriterLevel(&buf, tc.level)
			if err != nil {
				t.Fatalf("NewWriterLevel failed: %v", err)
			}

			_, err = w.Write([]byte(tc.input))
			if err != nil {
				t.Fatalf("Write failed: %v", err)
			}

			err = w.Close()
			if err != nil {
				t.Fatalf("Close failed: %v", err)
			}

			r, err := gzip.NewReader(&buf)
			if err != nil {
				t.Fatalf("NewReader failed: %v", err)
			}

			output, err := io.ReadAll(r)
			if err != nil {
				t.Fatalf("ReadAll failed: %v", err)
			}

			err = r.Close()
			if err != nil {
				t.Fatalf("Reader Close failed: %v", err)
			}

			if string(output) != tc.input {
				t.Errorf("Round trip failed: got %q, want %q", output, tc.input)
			}
		})
	}
}

func TestWriterReset(t *testing.T) {
	var buf1, buf2 bytes.Buffer
	input := "test data for reset"

	w := gzip.NewWriter(&buf1)
	w.Write([]byte(input))
	w.Close()

	w.Reset(&buf2)
	w.Write([]byte(input))
	w.Close()

	if !bytes.Equal(buf1.Bytes(), buf2.Bytes()) {
		t.Error("Reset produced different output")
	}
}

func TestReaderReset(t *testing.T) {
	input := "test data"
	var buf bytes.Buffer

	w := gzip.NewWriter(&buf)
	w.Write([]byte(input))
	w.Close()

	compressed := buf.Bytes()

	r, err := gzip.NewReader(bytes.NewReader(compressed))
	if err != nil {
		t.Fatalf("NewReader failed: %v", err)
	}

	output1, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("First read failed: %v", err)
	}

	err = r.Reset(bytes.NewReader(compressed))
	if err != nil {
		t.Fatalf("Reset failed: %v", err)
	}

	output2, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("Second read failed: %v", err)
	}

	if !bytes.Equal(output1, output2) {
		t.Error("Reset produced different output")
	}
}

func TestHeader(t *testing.T) {
	var buf bytes.Buffer

	w := gzip.NewWriter(&buf)
	w.Header.Name = "test.txt"
	w.Header.Comment = "test comment"
	w.Header.Extra = []byte("extra data")

	_, err := w.Write([]byte("test data"))
	if err != nil {
		t.Fatalf("Write failed: %v", err)
	}
	w.Close()

	r, err := gzip.NewReader(&buf)
	if err != nil {
		t.Fatalf("NewReader failed: %v", err)
	}

	if r.Header.Name != "test.txt" {
		t.Errorf("Name: got %q, want %q", r.Header.Name, "test.txt")
	}
	if r.Header.Comment != "test comment" {
		t.Errorf("Comment: got %q, want %q", r.Header.Comment, "test comment")
	}
	if !bytes.Equal(r.Header.Extra, []byte("extra data")) {
		t.Errorf("Extra: got %v, want %v", r.Header.Extra, []byte("extra data"))
	}

	r.Close()
}

func TestMultistream(t *testing.T) {
	var buf bytes.Buffer

	w1 := gzip.NewWriter(&buf)
	w1.Write([]byte("first stream"))
	w1.Close()

	w2 := gzip.NewWriter(&buf)
	w2.Write([]byte("second stream"))
	w2.Close()

	r, err := gzip.NewReader(&buf)
	if err != nil {
		t.Fatalf("NewReader failed: %v", err)
	}
	r.Multistream(true)

	output, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}

	expected := "first streamsecond stream"
	if string(output) != expected {
		t.Errorf("Multistream read: got %q, want %q", output, expected)
	}

	r.Close()
}

func TestInvalidData(t *testing.T) {
	testCases := []struct {
		name string
		data []byte
	}{
		{"empty", []byte{}},
		{"too short", []byte{0x1f}},
		{"wrong magic", []byte{0x00, 0x8b}},
		{"invalid", []byte("not gzip data")},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			_, err := gzip.NewReader(bytes.NewReader(tc.data))
			if err == nil {
				t.Error("Expected error for invalid data, got nil")
			}
		})
	}
}

func TestWriteFlush(t *testing.T) {
	var buf bytes.Buffer
	w := gzip.NewWriter(&buf)

	w.Write([]byte("first"))
	err := w.Flush()
	if err != nil {
		t.Fatalf("Flush failed: %v", err)
	}

	w.Write([]byte("second"))
	w.Close()

	r, err := gzip.NewReader(&buf)
	if err != nil {
		t.Fatalf("NewReader failed: %v", err)
	}

	output, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}

	if string(output) != "firstsecond" {
		t.Errorf("Flush test: got %q, want %q", output, "firstsecond")
	}

	r.Close()
}

func TestErrChecksum(t *testing.T) {
	var buf bytes.Buffer
	w := gzip.NewWriter(&buf)
	w.Write([]byte("test data"))
	w.Close()

	compressed := buf.Bytes()
	if len(compressed) > 4 {
		compressed[len(compressed)-1] ^= 0xff
	}

	r, err := gzip.NewReader(bytes.NewReader(compressed))
	if err != nil {
		t.Fatalf("NewReader failed: %v", err)
	}

	_, err = io.ReadAll(r)
	if err != gzip.ErrChecksum {
		t.Errorf("Expected ErrChecksum, got %v", err)
	}

	r.Close()
}

func TestErrHeader(t *testing.T) {
	invalidHeaders := [][]byte{
		{0x1f, 0x8b, 0x00},
		{0x1f, 0x8b, 0xff, 0x00},
	}

	for i, data := range invalidHeaders {
		_, err := gzip.NewReader(bytes.NewReader(data))
		if err == nil {
			t.Errorf("Test %d: Expected header error, got nil", i)
		}
		if err != gzip.ErrHeader && err != io.EOF && err != io.ErrUnexpectedEOF {
			t.Logf("Test %d: Got error %v (type %T)", i, err, err)
		}
	}
}

func TestReaderRead(t *testing.T) {
	input := "test data for reader read method"
	var buf bytes.Buffer

	w := gzip.NewWriter(&buf)
	w.Write([]byte(input))
	w.Close()

	r, err := gzip.NewReader(&buf)
	if err != nil {
		t.Fatalf("NewReader failed: %v", err)
	}

	output := make([]byte, len(input))
	n, err := r.Read(output)
	if err != nil && err != io.EOF {
		t.Fatalf("Read failed: %v", err)
	}

	if n != len(input) {
		t.Errorf("Read returned %d bytes, want %d", n, len(input))
	}

	if string(output) != input {
		t.Errorf("Read: got %q, want %q", output, input)
	}

	r.Close()
}

func TestHeaderStruct(t *testing.T) {
	h := gzip.Header{
		Comment: "test",
		Extra:   []byte("extra"),
		ModTime: time.Now(),
		Name:    "file.txt",
		OS:      255,
	}

	var buf bytes.Buffer
	w := gzip.NewWriter(&buf)
	w.Header = h
	w.Write([]byte("data"))
	w.Close()

	r, err := gzip.NewReader(&buf)
	if err != nil {
		t.Fatalf("NewReader failed: %v", err)
	}

	if r.Header.Name != h.Name {
		t.Errorf("Name mismatch: got %q, want %q", r.Header.Name, h.Name)
	}

	r.Close()
}

func TestCompressionLevels(t *testing.T) {
	levels := []int{
		gzip.NoCompression,
		gzip.BestSpeed,
		gzip.BestCompression,
		gzip.DefaultCompression,
		gzip.HuffmanOnly,
	}

	input := strings.Repeat("test data ", 100)

	for _, level := range levels {
		t.Run("", func(t *testing.T) {
			var buf bytes.Buffer
			w, err := gzip.NewWriterLevel(&buf, level)
			if err != nil {
				t.Fatalf("NewWriterLevel(%d) failed: %v", level, err)
			}

			_, err = w.Write([]byte(input))
			if err != nil {
				t.Fatalf("Write failed: %v", err)
			}

			err = w.Close()
			if err != nil {
				t.Fatalf("Close failed: %v", err)
			}

			r, err := gzip.NewReader(&buf)
			if err != nil {
				t.Fatalf("NewReader failed: %v", err)
			}

			output, err := io.ReadAll(r)
			if err != nil {
				t.Fatalf("ReadAll failed: %v", err)
			}

			if string(output) != input {
				t.Error("Decompression failed")
			}

			r.Close()
		})
	}
}

func TestNewWriterLevel(t *testing.T) {
	var buf bytes.Buffer

	_, err := gzip.NewWriterLevel(&buf, gzip.BestCompression)
	if err != nil {
		t.Errorf("Valid level BestCompression rejected: %v", err)
	}

	_, err = gzip.NewWriterLevel(&buf, -3)
	if err == nil {
		t.Error("Invalid level -3 accepted")
	}

	_, err = gzip.NewWriterLevel(&buf, 10)
	if err == nil {
		t.Error("Invalid level 10 accepted")
	}
}
