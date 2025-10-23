package encoding_test

import (
	"encoding"
	"testing"
)

type testBinaryMarshaler struct {
	data []byte
}

func (t *testBinaryMarshaler) MarshalBinary() ([]byte, error) {
	return t.data, nil
}

func (t *testBinaryMarshaler) UnmarshalBinary(data []byte) error {
	t.data = data
	return nil
}

type testTextMarshaler struct {
	text string
}

func (t *testTextMarshaler) MarshalText() ([]byte, error) {
	return []byte(t.text), nil
}

func (t *testTextMarshaler) UnmarshalText(text []byte) error {
	t.text = string(text)
	return nil
}

type testBinaryAppender struct {
	data []byte
}

func (t *testBinaryAppender) AppendBinary(b []byte) ([]byte, error) {
	return append(b, t.data...), nil
}

type testTextAppender struct {
	text string
}

func (t *testTextAppender) AppendText(b []byte) ([]byte, error) {
	return append(b, t.text...), nil
}

func TestBinaryMarshaler(t *testing.T) {
	var _ encoding.BinaryMarshaler = &testBinaryMarshaler{}

	tm := &testBinaryMarshaler{data: []byte("test data")}
	data, err := tm.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary() error = %v", err)
	}
	if string(data) != "test data" {
		t.Errorf("MarshalBinary() = %q, want %q", string(data), "test data")
	}
}

func TestBinaryUnmarshaler(t *testing.T) {
	var _ encoding.BinaryUnmarshaler = &testBinaryMarshaler{}

	tm := &testBinaryMarshaler{}
	err := tm.UnmarshalBinary([]byte("unmarshaled"))
	if err != nil {
		t.Fatalf("UnmarshalBinary() error = %v", err)
	}
	if string(tm.data) != "unmarshaled" {
		t.Errorf("UnmarshalBinary() data = %q, want %q", string(tm.data), "unmarshaled")
	}
}

func TestTextMarshaler(t *testing.T) {
	var _ encoding.TextMarshaler = &testTextMarshaler{}

	tm := &testTextMarshaler{text: "test text"}
	text, err := tm.MarshalText()
	if err != nil {
		t.Fatalf("MarshalText() error = %v", err)
	}
	if string(text) != "test text" {
		t.Errorf("MarshalText() = %q, want %q", string(text), "test text")
	}
}

func TestTextUnmarshaler(t *testing.T) {
	var _ encoding.TextUnmarshaler = &testTextMarshaler{}

	tm := &testTextMarshaler{}
	err := tm.UnmarshalText([]byte("unmarshaled text"))
	if err != nil {
		t.Fatalf("UnmarshalText() error = %v", err)
	}
	if tm.text != "unmarshaled text" {
		t.Errorf("UnmarshalText() text = %q, want %q", tm.text, "unmarshaled text")
	}
}

func TestBinaryAppender(t *testing.T) {
	var _ encoding.BinaryAppender = &testBinaryAppender{}

	ta := &testBinaryAppender{data: []byte(" appended")}
	result, err := ta.AppendBinary([]byte("prefix"))
	if err != nil {
		t.Fatalf("AppendBinary() error = %v", err)
	}
	if string(result) != "prefix appended" {
		t.Errorf("AppendBinary() = %q, want %q", string(result), "prefix appended")
	}
}

func TestTextAppender(t *testing.T) {
	var _ encoding.TextAppender = &testTextAppender{}

	ta := &testTextAppender{text: " appended"}
	result, err := ta.AppendText([]byte("prefix"))
	if err != nil {
		t.Fatalf("AppendText() error = %v", err)
	}
	if string(result) != "prefix appended" {
		t.Errorf("AppendText() = %q, want %q", string(result), "prefix appended")
	}
}
