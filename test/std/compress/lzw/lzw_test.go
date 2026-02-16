package lzw_test

import (
	"bytes"
	"compress/lzw"
	"io"
	"testing"
)

func roundTrip(t *testing.T, order lzw.Order, input []byte) {
	t.Helper()

	var dst bytes.Buffer
	wc := lzw.NewWriter(&dst, order, 8)
	w, ok := wc.(*lzw.Writer)
	if !ok {
		t.Fatalf("NewWriter type = %T, want *lzw.Writer", wc)
	}
	n, err := w.Write(input)
	if err != nil {
		t.Fatalf("Write failed: %v", err)
	}
	if n != len(input) {
		t.Fatalf("Write n = %d, want %d", n, len(input))
	}
	if err := w.Close(); err != nil {
		t.Fatalf("Close writer failed: %v", err)
	}

	rc := lzw.NewReader(bytes.NewReader(dst.Bytes()), order, 8)
	r, ok := rc.(*lzw.Reader)
	if !ok {
		t.Fatalf("NewReader type = %T, want *lzw.Reader", rc)
	}
	out, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}
	if !bytes.Equal(out, input) {
		t.Fatalf("round-trip mismatch: got %q, want %q", out, input)
	}
	if err := r.Close(); err != nil {
		t.Fatalf("Close reader failed: %v", err)
	}
}

func TestRoundTrip(t *testing.T) {
	input := []byte("hello hello hello lzw")
	roundTrip(t, lzw.LSB, input)
	roundTrip(t, lzw.MSB, input)
}

func TestReaderWriterReset(t *testing.T) {
	var order lzw.Order = lzw.LSB

	var compressed bytes.Buffer
	var w lzw.Writer
	w.Reset(&compressed, order, 8)
	if _, err := w.Write([]byte("first")); err != nil {
		t.Fatalf("write first failed: %v", err)
	}
	if err := w.Close(); err != nil {
		t.Fatalf("close first writer failed: %v", err)
	}

	var out bytes.Buffer
	var r lzw.Reader
	r.Reset(bytes.NewReader(compressed.Bytes()), order, 8)
	if _, err := io.Copy(&out, &r); err != nil {
		t.Fatalf("copy first failed: %v", err)
	}
	if got, want := out.String(), "first"; got != want {
		t.Fatalf("first decode = %q, want %q", got, want)
	}
	if err := r.Close(); err != nil {
		t.Fatalf("close first reader failed: %v", err)
	}

	compressed.Reset()
	w.Reset(&compressed, lzw.MSB, 8)
	if _, err := w.Write([]byte("second")); err != nil {
		t.Fatalf("write second failed: %v", err)
	}
	if err := w.Close(); err != nil {
		t.Fatalf("close second writer failed: %v", err)
	}

	out.Reset()
	r.Reset(bytes.NewReader(compressed.Bytes()), lzw.MSB, 8)
	buf := make([]byte, 3)
	for {
		n, err := r.Read(buf)
		if n > 0 {
			out.Write(buf[:n])
		}
		if err == io.EOF {
			break
		}
		if err != nil {
			t.Fatalf("read second failed: %v", err)
		}
	}
	if got, want := out.String(), "second"; got != want {
		t.Fatalf("second decode = %q, want %q", got, want)
	}
	if err := r.Close(); err != nil {
		t.Fatalf("close second reader failed: %v", err)
	}
}
