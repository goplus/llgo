package quotedprintable_test

import (
	"bytes"
	"io"
	"mime/quotedprintable"
	"strings"
	"testing"
)

func TestQuotedPrintableRoundTrip(t *testing.T) {
	testCases := []struct {
		name  string
		input string
	}{
		{"simple", "hello world"},
		{"with spaces", "hello  world"},
		{"with equals", "1=2"},
		{"long line", strings.Repeat("a", 100)},
		{"empty", ""},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			var buf bytes.Buffer

			w := quotedprintable.NewWriter(&buf)
			_, err := w.Write([]byte(tc.input))
			if err != nil {
				t.Fatalf("Write failed: %v", err)
			}

			err = w.Close()
			if err != nil {
				t.Fatalf("Close failed: %v", err)
			}

			r := quotedprintable.NewReader(&buf)
			output, err := io.ReadAll(r)
			if err != nil {
				t.Fatalf("ReadAll failed: %v", err)
			}

			if string(output) != tc.input {
				t.Errorf("Round trip failed: got %q, want %q", output, tc.input)
			}
		})
	}
}

func TestReaderRead(t *testing.T) {
	input := "hello=20world"
	r := quotedprintable.NewReader(strings.NewReader(input))

	buf := make([]byte, 20)
	n, err := r.Read(buf)
	if err != nil && err != io.EOF {
		t.Fatalf("Read failed: %v", err)
	}

	result := string(buf[:n])
	expected := "hello world"
	if result != expected {
		t.Errorf("Read: got %q, want %q", result, expected)
	}
}

func TestWriterWrite(t *testing.T) {
	var buf bytes.Buffer
	w := quotedprintable.NewWriter(&buf)

	input := "test data with special=chars"
	n, err := w.Write([]byte(input))
	if err != nil {
		t.Fatalf("Write failed: %v", err)
	}

	if n != len(input) {
		t.Errorf("Write returned %d, want %d", n, len(input))
	}

	w.Close()

	if buf.Len() == 0 {
		t.Error("Writer produced no output")
	}
}

func TestWriterBinary(t *testing.T) {
	var buf bytes.Buffer
	w := quotedprintable.NewWriter(&buf)
	w.Binary = true

	input := "binary\r\ndata"
	w.Write([]byte(input))
	w.Close()

	r := quotedprintable.NewReader(&buf)
	output, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}

	if string(output) != input {
		t.Errorf("Binary mode: got %q, want %q", output, input)
	}
}

func TestReaderInvalidEncoding(t *testing.T) {
	invalidInputs := []string{
		"hello=ZZ",
		"test=",
		"invalid=GG",
	}

	for i, input := range invalidInputs {
		t.Run("", func(t *testing.T) {
			r := quotedprintable.NewReader(strings.NewReader(input))
			output, err := io.ReadAll(r)
			if err != nil {
				t.Logf("Test %d: Got error as expected: %v", i, err)
			} else {
				t.Logf("Test %d: No error, output: %q", i, output)
			}
		})
	}
}

func TestEmptyInput(t *testing.T) {
	r := quotedprintable.NewReader(strings.NewReader(""))
	output, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}

	if len(output) != 0 {
		t.Errorf("Empty input: got %d bytes, want 0", len(output))
	}
}

func TestSoftLineBreak(t *testing.T) {
	input := "long line that needs to be wrapped=\r\ncontinued here"
	expected := "long line that needs to be wrappedcontinued here"

	r := quotedprintable.NewReader(strings.NewReader(input))
	output, err := io.ReadAll(r)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}

	if string(output) != expected {
		t.Errorf("Soft line break: got %q, want %q", output, expected)
	}
}
