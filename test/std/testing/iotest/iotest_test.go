package iotest_test

import (
	"bytes"
	"errors"
	"io"
	"strings"
	"testing"
	"testing/iotest"
)

func TestErrReader(t *testing.T) {
	testErr := errors.New("test error")
	r := iotest.ErrReader(testErr)

	buf := make([]byte, 10)
	n, err := r.Read(buf)
	if n != 0 {
		t.Fatalf("ErrReader returned n=%d, want 0", n)
	}
	if err != testErr {
		t.Fatalf("ErrReader returned err=%v, want %v", err, testErr)
	}
}

func TestHalfReader(t *testing.T) {
	data := "0123456789"
	r := iotest.HalfReader(strings.NewReader(data))

	buf := make([]byte, 8)
	n, err := r.Read(buf)
	if err != nil && err != io.EOF {
		t.Fatalf("HalfReader returned err=%v", err)
	}
	if n != 4 { // Should read half of 8
		t.Fatalf("HalfReader read %d bytes, want 4", n)
	}
	if string(buf[:n]) != "0123" {
		t.Fatalf("HalfReader read %q, want %q", buf[:n], "0123")
	}
}

func TestOneByteReader(t *testing.T) {
	data := "hello"
	r := iotest.OneByteReader(strings.NewReader(data))

	buf := make([]byte, 10)
	n, err := r.Read(buf)
	if err != nil && err != io.EOF {
		t.Fatalf("OneByteReader returned err=%v", err)
	}
	if n != 1 {
		t.Fatalf("OneByteReader read %d bytes, want 1", n)
	}
	if buf[0] != 'h' {
		t.Fatalf("OneByteReader read %q, want 'h'", buf[0])
	}
}

func TestDataErrReader(t *testing.T) {
	data := "test"
	r := iotest.DataErrReader(strings.NewReader(data))

	buf := make([]byte, 10)
	n, err := r.Read(buf)
	// DataErrReader returns EOF with the last data
	if n != 4 {
		t.Fatalf("DataErrReader read %d bytes, want 4", n)
	}
	if string(buf[:n]) != "test" {
		t.Fatalf("DataErrReader read %q", buf[:n])
	}
	if err != io.EOF {
		t.Fatalf("DataErrReader err=%v, want EOF", err)
	}
}

func TestTimeoutReader(t *testing.T) {
	r := iotest.TimeoutReader(strings.NewReader("data"))

	buf := make([]byte, 10)

	// First read should succeed
	n, err := r.Read(buf)
	if err != nil && err != io.EOF {
		t.Fatalf("First read returned err=%v", err)
	}
	if n == 0 {
		t.Fatal("First read returned 0 bytes")
	}

	// Second read should return timeout
	n, err = r.Read(buf)
	if !errors.Is(err, iotest.ErrTimeout) {
		t.Fatalf("Second read returned err=%v, want ErrTimeout", err)
	}
	if n != 0 {
		t.Fatalf("Second read returned n=%d, want 0", n)
	}

	// Third read should succeed again
	_, err = r.Read(buf)
	if err != nil && err != io.EOF && !errors.Is(err, iotest.ErrTimeout) {
		t.Fatalf("Third read returned err=%v", err)
	}
}

func TestTruncateWriter(t *testing.T) {
	var buf bytes.Buffer
	w := iotest.TruncateWriter(&buf, 5)

	// Write 10 bytes, but only 5 should be written
	n, err := w.Write([]byte("0123456789"))
	if err != nil {
		t.Fatalf("TruncateWriter returned err=%v", err)
	}
	if n != 10 { // TruncateWriter reports full write
		t.Fatalf("TruncateWriter reported n=%d", n)
	}
	if buf.String() != "01234" {
		t.Fatalf("TruncateWriter wrote %q, want %q", buf.String(), "01234")
	}

	// Additional writes should be silently ignored
	n, err = w.Write([]byte("abc"))
	if err != nil {
		t.Fatalf("Second write returned err=%v", err)
	}
	if buf.String() != "01234" {
		t.Fatalf("Buffer changed to %q", buf.String())
	}
}

func TestTestReader(t *testing.T) {
	data := []byte("hello world")
	r := bytes.NewReader(data)

	err := iotest.TestReader(r, data)
	if err != nil {
		t.Fatalf("TestReader failed: %v", err)
	}
}

func TestTestReaderWithMismatch(t *testing.T) {
	data := []byte("hello")
	r := strings.NewReader("world")

	err := iotest.TestReader(r, data)
	if err == nil {
		t.Fatal("TestReader should fail with mismatched content")
	}
}

func TestNewReadLogger(t *testing.T) {
	data := "test data"
	r := iotest.NewReadLogger("PREFIX: ", strings.NewReader(data))

	buf := make([]byte, 20)
	n, err := r.Read(buf)
	if err != nil && err != io.EOF {
		t.Fatalf("NewReadLogger returned err=%v", err)
	}
	if string(buf[:n]) != data {
		t.Fatalf("NewReadLogger read %q, want %q", buf[:n], data)
	}
	// The logger should have printed to stderr, but we can't easily verify that
}

func TestNewWriteLogger(t *testing.T) {
	var buf bytes.Buffer
	w := iotest.NewWriteLogger("PREFIX: ", &buf)

	data := []byte("test data")
	n, err := w.Write(data)
	if err != nil {
		t.Fatalf("NewWriteLogger returned err=%v", err)
	}
	if n != len(data) {
		t.Fatalf("NewWriteLogger wrote %d bytes, want %d", n, len(data))
	}
	if buf.String() != string(data) {
		t.Fatalf("NewWriteLogger wrote %q", buf.String())
	}
	// The logger should have printed to stderr, but we can't easily verify that
}

func TestErrTimeout(t *testing.T) {
	if iotest.ErrTimeout == nil {
		t.Fatal("ErrTimeout should not be nil")
	}
	if !strings.Contains(iotest.ErrTimeout.Error(), "timeout") {
		t.Fatalf("ErrTimeout message: %q", iotest.ErrTimeout.Error())
	}
}

func TestHalfReaderMultipleReads(t *testing.T) {
	data := "0123456789abcdef"
	r := iotest.HalfReader(strings.NewReader(data))

	var result bytes.Buffer
	buf := make([]byte, 8)

	for {
		n, err := r.Read(buf)
		if n > 0 {
			result.Write(buf[:n])
		}
		if err == io.EOF {
			break
		}
		if err != nil {
			t.Fatalf("Read error: %v", err)
		}
	}

	if result.String() != data {
		t.Fatalf("HalfReader total read %q, want %q", result.String(), data)
	}
}

func TestOneByteReaderMultipleReads(t *testing.T) {
	data := "hello"
	r := iotest.OneByteReader(strings.NewReader(data))

	var result bytes.Buffer
	buf := make([]byte, 10)

	for {
		n, err := r.Read(buf)
		if n > 0 {
			result.Write(buf[:n])
		}
		if err == io.EOF {
			break
		}
		if err != nil {
			t.Fatalf("Read error: %v", err)
		}
	}

	if result.String() != data {
		t.Fatalf("OneByteReader total read %q, want %q", result.String(), data)
	}
}

func TestTruncateWriterZeroLimit(t *testing.T) {
	var buf bytes.Buffer
	w := iotest.TruncateWriter(&buf, 0)

	n, err := w.Write([]byte("hello"))
	if err != nil {
		t.Fatalf("Write returned err=%v", err)
	}
	if n != 5 {
		t.Fatalf("Write reported n=%d", n)
	}
	if buf.Len() != 0 {
		t.Fatalf("Buffer has %d bytes, want 0", buf.Len())
	}
}

func TestTestReaderEmpty(t *testing.T) {
	r := strings.NewReader("")
	err := iotest.TestReader(r, []byte{})
	if err != nil {
		t.Fatalf("TestReader on empty reader failed: %v", err)
	}
}

func TestTestReaderWithSeeker(t *testing.T) {
	data := []byte("seekable data")
	r := bytes.NewReader(data)

	err := iotest.TestReader(r, data)
	if err != nil {
		t.Fatalf("TestReader with seeker failed: %v", err)
	}
}

func TestDataErrReaderWithEmptyReader(t *testing.T) {
	r := iotest.DataErrReader(strings.NewReader(""))

	buf := make([]byte, 10)
	n, err := r.Read(buf)
	if n != 0 {
		t.Fatalf("DataErrReader on empty read %d bytes", n)
	}
	if err != io.EOF {
		t.Fatalf("DataErrReader on empty returned err=%v, want EOF", err)
	}
}

func TestErrReaderMultipleCalls(t *testing.T) {
	testErr := errors.New("persistent error")
	r := iotest.ErrReader(testErr)

	buf := make([]byte, 10)

	// Multiple reads should all return the same error
	for i := 0; i < 3; i++ {
		n, err := r.Read(buf)
		if n != 0 {
			t.Fatalf("Read %d: returned n=%d", i, n)
		}
		if err != testErr {
			t.Fatalf("Read %d: returned err=%v", i, err)
		}
	}
}

func TestTruncateWriterExactLimit(t *testing.T) {
	var buf bytes.Buffer
	w := iotest.TruncateWriter(&buf, 5)

	// Write exactly the limit
	n, err := w.Write([]byte("12345"))
	if err != nil {
		t.Fatalf("Write returned err=%v", err)
	}
	if n != 5 {
		t.Fatalf("Write reported n=%d", n)
	}
	if buf.String() != "12345" {
		t.Fatalf("Buffer has %q", buf.String())
	}

	// Next write should be truncated completely
	n, err = w.Write([]byte("abc"))
	if err != nil {
		t.Fatalf("Second write returned err=%v", err)
	}
	if buf.String() != "12345" {
		t.Fatalf("Buffer changed to %q", buf.String())
	}
}
