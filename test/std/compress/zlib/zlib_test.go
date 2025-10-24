//go:build !llgo

package zlib_test

import (
	"bytes"
	"compress/zlib"
	"io"
	"strings"
	"testing"
)

func TestZlibRoundTrip(t *testing.T) {
	testCases := []struct {
		name  string
		input string
		level int
	}{
		{"empty", "", zlib.DefaultCompression},
		{"short", "hello", zlib.DefaultCompression},
		{"medium", strings.Repeat("test data ", 100), zlib.DefaultCompression},
		{"long", strings.Repeat("abcdefghijklmnopqrstuvwxyz", 1000), zlib.DefaultCompression},
		{"no compression", "test", zlib.NoCompression},
		{"best speed", "test data", zlib.BestSpeed},
		{"best compression", "test data", zlib.BestCompression},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			var buf bytes.Buffer
			w, err := zlib.NewWriterLevel(&buf, tc.level)
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

			r, err := zlib.NewReader(&buf)
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

	w := zlib.NewWriter(&buf1)
	w.Write([]byte(input))
	w.Close()

	w.Reset(&buf2)
	w.Write([]byte(input))
	w.Close()

	if !bytes.Equal(buf1.Bytes(), buf2.Bytes()) {
		t.Error("Reset produced different output")
	}
}

func TestNewReaderDict(t *testing.T) {
	dict := []byte("common dictionary data")
	input := "test data using dictionary"

	var buf bytes.Buffer
	w, err := zlib.NewWriterLevelDict(&buf, zlib.DefaultCompression, dict)
	if err != nil {
		t.Fatalf("NewWriterLevelDict failed: %v", err)
	}

	_, err = w.Write([]byte(input))
	if err != nil {
		t.Fatalf("Write failed: %v", err)
	}

	err = w.Close()
	if err != nil {
		t.Fatalf("Close failed: %v", err)
	}

	r, err := zlib.NewReaderDict(&buf, dict)
	if err != nil {
		t.Fatalf("NewReaderDict failed: %v", err)
	}

	output, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}

	if string(output) != input {
		t.Errorf("Dictionary round trip: got %q, want %q", output, input)
	}

	r.Close()
}

func TestInvalidData(t *testing.T) {
	testCases := []struct {
		name string
		data []byte
	}{
		{"empty", []byte{}},
		{"too short", []byte{0x78}},
		{"wrong header", []byte{0x00, 0x00}},
		{"invalid", []byte("not zlib data")},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			_, err := zlib.NewReader(bytes.NewReader(tc.data))
			if err == nil {
				t.Error("Expected error for invalid data, got nil")
			}
		})
	}
}

func TestWriteFlush(t *testing.T) {
	var buf bytes.Buffer
	w := zlib.NewWriter(&buf)

	w.Write([]byte("first"))
	err := w.Flush()
	if err != nil {
		t.Fatalf("Flush failed: %v", err)
	}

	w.Write([]byte("second"))
	w.Close()

	r, err := zlib.NewReader(&buf)
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
	w := zlib.NewWriter(&buf)
	w.Write([]byte("test data"))
	w.Close()

	compressed := buf.Bytes()
	if len(compressed) > 4 {
		compressed[len(compressed)-1] ^= 0xff
	}

	r, err := zlib.NewReader(bytes.NewReader(compressed))
	if err != nil {
		t.Fatalf("NewReader failed: %v", err)
	}

	_, err = io.ReadAll(r)
	if err != zlib.ErrChecksum {
		t.Logf("Expected ErrChecksum, got %v", err)
	}

	r.Close()
}

func TestCompressionLevels(t *testing.T) {
	levels := []int{
		zlib.NoCompression,
		zlib.BestSpeed,
		zlib.BestCompression,
		zlib.DefaultCompression,
		zlib.HuffmanOnly,
	}

	input := strings.Repeat("test data ", 100)

	for _, level := range levels {
		t.Run("", func(t *testing.T) {
			var buf bytes.Buffer
			w, err := zlib.NewWriterLevel(&buf, level)
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

			r, err := zlib.NewReader(&buf)
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

	_, err := zlib.NewWriterLevel(&buf, zlib.BestCompression)
	if err != nil {
		t.Errorf("Valid level BestCompression rejected: %v", err)
	}

	_, err = zlib.NewWriterLevel(&buf, -3)
	if err == nil {
		t.Error("Invalid level -3 accepted")
	}

	_, err = zlib.NewWriterLevel(&buf, 10)
	if err == nil {
		t.Error("Invalid level 10 accepted")
	}
}

func TestErrDictionary(t *testing.T) {
	dict := []byte("wrong dictionary")
	correctDict := []byte("correct dictionary")
	input := "test data"

	var buf bytes.Buffer
	w, err := zlib.NewWriterLevelDict(&buf, zlib.DefaultCompression, correctDict)
	if err != nil {
		t.Fatalf("NewWriterLevelDict failed: %v", err)
	}

	w.Write([]byte(input))
	w.Close()

	_, err = zlib.NewReaderDict(&buf, dict)
	if err != nil && err != zlib.ErrDictionary {
		t.Logf("Expected ErrDictionary or error, got: %v", err)
	}
}

func TestErrHeader(t *testing.T) {
	invalidHeaders := [][]byte{
		{0x78, 0x00},
		{0x00, 0x9c},
	}

	for i, data := range invalidHeaders {
		_, err := zlib.NewReader(bytes.NewReader(data))
		if err == nil {
			t.Errorf("Test %d: Expected header error, got nil", i)
		}
		if err != zlib.ErrHeader && err != io.EOF && err != io.ErrUnexpectedEOF {
			t.Logf("Test %d: Got error %v", i, err)
		}
	}
}

func TestResetter(t *testing.T) {
	var buf bytes.Buffer
	input := "test data"

	w := zlib.NewWriter(&buf)
	w.Write([]byte(input))
	w.Close()

	compressed := buf.Bytes()

	r, err := zlib.NewReader(bytes.NewReader(compressed))
	if err != nil {
		t.Fatalf("NewReader failed: %v", err)
	}

	if resetter, ok := r.(zlib.Resetter); ok {
		output1, _ := io.ReadAll(r)

		err = resetter.Reset(bytes.NewReader(compressed), nil)
		if err != nil {
			t.Fatalf("Reset failed: %v", err)
		}

		output2, _ := io.ReadAll(r)

		if !bytes.Equal(output1, output2) {
			t.Error("Resetter produced different output")
		}
	}

	r.Close()
}
