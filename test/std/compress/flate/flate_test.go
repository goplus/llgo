package flate_test

import (
	"bytes"
	"compress/flate"
	"io"
	"strings"
	"testing"
)

func TestNewWriter(t *testing.T) {
	var buf bytes.Buffer
	w, err := flate.NewWriter(&buf, flate.DefaultCompression)
	if err != nil {
		t.Fatalf("NewWriter failed: %v", err)
	}
	if w == nil {
		t.Fatal("NewWriter returned nil writer")
	}
	w.Close()
}

func TestNewWriterDict(t *testing.T) {
	var buf bytes.Buffer
	dict := []byte("test dictionary")
	w, err := flate.NewWriterDict(&buf, flate.DefaultCompression, dict)
	if err != nil {
		t.Fatalf("NewWriterDict failed: %v", err)
	}
	if w == nil {
		t.Fatal("NewWriterDict returned nil writer")
	}
	w.Close()
}

func TestCompressionLevels(t *testing.T) {
	levels := []int{
		flate.NoCompression,
		flate.BestSpeed,
		flate.BestCompression,
		flate.DefaultCompression,
		flate.HuffmanOnly,
	}

	for _, level := range levels {
		var buf bytes.Buffer
		w, err := flate.NewWriter(&buf, level)
		if err != nil {
			t.Errorf("NewWriter with level %d failed: %v", level, err)
			continue
		}
		w.Close()
	}
}

func TestWriterWrite(t *testing.T) {
	var buf bytes.Buffer
	w, _ := flate.NewWriter(&buf, flate.DefaultCompression)

	data := []byte("Hello, World!")
	n, err := w.Write(data)
	if err != nil {
		t.Fatalf("Write failed: %v", err)
	}
	if n != len(data) {
		t.Errorf("Write wrote %d bytes, want %d", n, len(data))
	}
	w.Close()
}

func TestWriterFlush(t *testing.T) {
	var buf bytes.Buffer
	w, _ := flate.NewWriter(&buf, flate.DefaultCompression)

	w.Write([]byte("test"))
	if err := w.Flush(); err != nil {
		t.Errorf("Flush failed: %v", err)
	}
	w.Close()
}

func TestWriterClose(t *testing.T) {
	var buf bytes.Buffer
	w, _ := flate.NewWriter(&buf, flate.DefaultCompression)

	w.Write([]byte("test"))
	if err := w.Close(); err != nil {
		t.Errorf("Close failed: %v", err)
	}
}

func TestWriterReset(t *testing.T) {
	var buf1, buf2 bytes.Buffer
	w, _ := flate.NewWriter(&buf1, flate.DefaultCompression)

	w.Write([]byte("first"))
	w.Close()

	w.Reset(&buf2)
	w.Write([]byte("second"))
	w.Close()

	if buf2.Len() == 0 {
		t.Error("Reset did not work, second buffer is empty")
	}
}

func TestNewReader(t *testing.T) {
	data := []byte("Hello, World!")
	var buf bytes.Buffer
	w, _ := flate.NewWriter(&buf, flate.DefaultCompression)
	w.Write(data)
	w.Close()

	r := flate.NewReader(&buf)
	if r == nil {
		t.Fatal("NewReader returned nil")
	}
	defer r.Close()

	result, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}
	if !bytes.Equal(result, data) {
		t.Errorf("Decompressed data = %q, want %q", result, data)
	}
}

func TestNewReaderDict(t *testing.T) {
	dict := []byte("test dictionary")
	data := []byte("test data using dictionary")

	var buf bytes.Buffer
	w, _ := flate.NewWriterDict(&buf, flate.DefaultCompression, dict)
	w.Write(data)
	w.Close()

	r := flate.NewReaderDict(&buf, dict)
	if r == nil {
		t.Fatal("NewReaderDict returned nil")
	}

	result, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}
	if !bytes.Equal(result, data) {
		t.Errorf("Decompressed data = %q, want %q", result, data)
	}
	r.Close()
}

func TestCompressDecompress(t *testing.T) {
	testCases := []struct {
		name string
		data string
	}{
		{"empty", ""},
		{"short", "Hello"},
		{"medium", strings.Repeat("test ", 100)},
		{"long", strings.Repeat("The quick brown fox jumps over the lazy dog. ", 1000)},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			var buf bytes.Buffer
			w, _ := flate.NewWriter(&buf, flate.DefaultCompression)
			w.Write([]byte(tc.data))
			w.Close()

			r := flate.NewReader(&buf)
			result, err := io.ReadAll(r)
			r.Close()

			if err != nil {
				t.Fatalf("Decompression failed: %v", err)
			}
			if string(result) != tc.data {
				t.Errorf("Decompressed data doesn't match original")
			}
		})
	}
}

func TestCorruptInputError(t *testing.T) {
	var err error = flate.CorruptInputError(42)
	if err == nil {
		t.Fatal("CorruptInputError should be an error")
	}

	errStr := err.Error()
	if errStr == "" {
		t.Error("CorruptInputError.Error() returned empty string")
	}
}

func TestInternalError(t *testing.T) {
	var err error = flate.InternalError("test error")
	if err == nil {
		t.Fatal("InternalError should be an error")
	}

	errStr := err.Error()
	if !strings.Contains(errStr, "test error") {
		t.Errorf("InternalError.Error() = %q, want to contain 'test error'", errStr)
	}
}

func TestReadError(t *testing.T) {
	re := &flate.ReadError{
		Offset: 100,
		Err:    io.EOF,
	}

	errStr := re.Error()
	if errStr == "" {
		t.Error("ReadError.Error() returned empty string")
	}
}

func TestWriteError(t *testing.T) {
	we := &flate.WriteError{
		Offset: 200,
		Err:    io.ErrShortWrite,
	}

	errStr := we.Error()
	if errStr == "" {
		t.Error("WriteError.Error() returned empty string")
	}
}

func TestReaderInterface(t *testing.T) {
	var _ flate.Reader
}

func TestResetterInterface(t *testing.T) {
	var _ flate.Resetter
}

func TestCorruptInputErrorError(t *testing.T) {
	err := flate.CorruptInputError(42)
	errStr := err.Error()
	if !strings.Contains(errStr, "42") {
		t.Errorf("CorruptInputError.Error() = %q, want to contain '42'", errStr)
	}
}

func TestInternalErrorError(t *testing.T) {
	err := flate.InternalError("test internal error")
	errStr := err.Error()
	if !strings.Contains(errStr, "internal error") {
		t.Errorf("InternalError.Error() = %q, want to contain 'internal error'", errStr)
	}
}
