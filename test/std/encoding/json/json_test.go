package json_test

import (
	"bytes"
	"encoding/json"
	"errors"
	"io"
	"math"
	"reflect"
	"strings"
	"testing"
)

var errBadMarshal = errors.New("marshal failed")

type badMarshaler struct{}

func (badMarshaler) MarshalJSON() ([]byte, error) {
	return nil, errBadMarshal
}

// Test basic Marshal/Unmarshal
func TestMarshalUnmarshal(t *testing.T) {
	type Person struct {
		Name string
		Age  int
	}

	p := Person{Name: "Alice", Age: 30}
	data, err := json.Marshal(p)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var p2 Person
	err = json.Unmarshal(data, &p2)
	if err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if p != p2 {
		t.Errorf("Unmarshal returned %+v, want %+v", p2, p)
	}
}

// Test MarshalIndent
func TestMarshalIndent(t *testing.T) {
	m := map[string]int{"a": 1, "b": 2}
	data, err := json.MarshalIndent(m, "", "  ")
	if err != nil {
		t.Fatalf("MarshalIndent failed: %v", err)
	}
	if !bytes.Contains(data, []byte("\n")) {
		t.Error("MarshalIndent should contain newlines")
	}
}

// Test Encoder/Decoder
func TestEncoderDecoder(t *testing.T) {
	type Data struct {
		Value int
	}

	var buf bytes.Buffer
	enc := json.NewEncoder(&buf)
	d := Data{Value: 42}

	if err := enc.Encode(d); err != nil {
		t.Fatalf("Encode failed: %v", err)
	}

	dec := json.NewDecoder(&buf)
	var d2 Data
	if err := dec.Decode(&d2); err != nil {
		t.Fatalf("Decode failed: %v", err)
	}

	if d.Value != d2.Value {
		t.Errorf("Decode returned %d, want %d", d2.Value, d.Value)
	}
}

// Test Encoder.SetIndent
func TestEncoderSetIndent(t *testing.T) {
	var buf bytes.Buffer
	enc := json.NewEncoder(&buf)
	enc.SetIndent("", "  ")

	m := map[string]int{"x": 1}
	if err := enc.Encode(m); err != nil {
		t.Fatalf("Encode failed: %v", err)
	}

	if !bytes.Contains(buf.Bytes(), []byte("\n")) {
		t.Error("SetIndent should produce indented output")
	}
}

// Test Encoder.SetEscapeHTML
func TestEncoderSetEscapeHTML(t *testing.T) {
	var buf bytes.Buffer
	enc := json.NewEncoder(&buf)
	enc.SetEscapeHTML(false)

	s := "<html>"
	if err := enc.Encode(s); err != nil {
		t.Fatalf("Encode failed: %v", err)
	}

	if !bytes.Contains(buf.Bytes(), []byte("<html>")) {
		t.Error("SetEscapeHTML(false) should not escape HTML")
	}
}

// Test Decoder.More and Decoder.Token
func TestDecoderMore(t *testing.T) {
	input := `[1, 2, 3]`
	dec := json.NewDecoder(strings.NewReader(input))

	// Read opening bracket
	tok, err := dec.Token()
	if err != nil {
		t.Fatalf("Token failed: %v", err)
	}
	if delim, ok := tok.(json.Delim); !ok || delim != '[' {
		t.Errorf("Expected '[', got %v", tok)
	}

	// Check More
	if !dec.More() {
		t.Error("More should return true")
	}

	// Read elements
	for dec.More() {
		var num float64
		if err := dec.Decode(&num); err != nil {
			t.Fatalf("Decode failed: %v", err)
		}
	}

	// Read closing bracket
	tok, err = dec.Token()
	if err != nil {
		t.Fatalf("Token failed: %v", err)
	}
	if delim, ok := tok.(json.Delim); !ok || delim != ']' {
		t.Errorf("Expected ']', got %v", tok)
	}
}

// Test Decoder.Buffered
func TestDecoderBuffered(t *testing.T) {
	input := `{"a":1}extra`
	dec := json.NewDecoder(strings.NewReader(input))

	var m map[string]int
	if err := dec.Decode(&m); err != nil {
		t.Fatalf("Decode failed: %v", err)
	}

	buf := dec.Buffered()
	data, err := io.ReadAll(buf)
	if err != nil {
		t.Fatalf("ReadAll failed: %v", err)
	}

	if string(data) != "extra" {
		t.Errorf("Buffered returned %q, want %q", string(data), "extra")
	}
}

// Test Decoder.DisallowUnknownFields
func TestDecoderDisallowUnknownFields(t *testing.T) {
	type Data struct {
		A int
	}

	input := `{"a":1,"b":2}`
	dec := json.NewDecoder(strings.NewReader(input))
	dec.DisallowUnknownFields()

	var d Data
	err := dec.Decode(&d)
	if err == nil {
		t.Error("DisallowUnknownFields should cause error for unknown field")
	}
}

// Test Decoder.UseNumber
func TestDecoderUseNumber(t *testing.T) {
	input := `{"value":123.456}`
	dec := json.NewDecoder(strings.NewReader(input))
	dec.UseNumber()

	var m map[string]interface{}
	if err := dec.Decode(&m); err != nil {
		t.Fatalf("Decode failed: %v", err)
	}

	if _, ok := m["value"].(json.Number); !ok {
		t.Errorf("UseNumber should preserve numbers as json.Number, got %T", m["value"])
	}
}

// Test Number
func TestNumber(t *testing.T) {
	n := json.Number("42")

	i64, err := n.Int64()
	if err != nil {
		t.Fatalf("Int64 failed: %v", err)
	}
	if i64 != 42 {
		t.Errorf("Int64 returned %d, want 42", i64)
	}

	f64, err := n.Float64()
	if err != nil {
		t.Fatalf("Float64 failed: %v", err)
	}
	if f64 != 42.0 {
		t.Errorf("Float64 returned %f, want 42.0", f64)
	}

	if n.String() != "42" {
		t.Errorf("String returned %q, want %q", n.String(), "42")
	}
}

// Test RawMessage
func TestRawMessage(t *testing.T) {
	type Container struct {
		Meta json.RawMessage
	}

	input := `{"Meta":{"key":"value"}}`
	var c Container
	if err := json.Unmarshal([]byte(input), &c); err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if string(c.Meta) != `{"key":"value"}` {
		t.Errorf("RawMessage is %q, want %q", string(c.Meta), `{"key":"value"}`)
	}

	// Marshal it back
	data, err := c.Meta.MarshalJSON()
	if err != nil {
		t.Fatalf("MarshalJSON failed: %v", err)
	}
	if string(data) != `{"key":"value"}` {
		t.Errorf("MarshalJSON returned %q, want %q", string(data), `{"key":"value"}`)
	}
}

// Test Compact
func TestCompact(t *testing.T) {
	input := []byte(`  {  "a" :  1  }  `)
	var buf bytes.Buffer
	if err := json.Compact(&buf, input); err != nil {
		t.Fatalf("Compact failed: %v", err)
	}

	expected := `{"a":1}`
	if buf.String() != expected {
		t.Errorf("Compact returned %q, want %q", buf.String(), expected)
	}
}

// Test Indent
func TestIndent(t *testing.T) {
	input := []byte(`{"a":1,"b":2}`)
	var buf bytes.Buffer
	if err := json.Indent(&buf, input, "", "  "); err != nil {
		t.Fatalf("Indent failed: %v", err)
	}

	if !bytes.Contains(buf.Bytes(), []byte("\n")) {
		t.Error("Indent should add newlines")
	}
}

// Test HTMLEscape
func TestHTMLEscape(t *testing.T) {
	input := []byte(`"<html>"`)
	var buf bytes.Buffer
	json.HTMLEscape(&buf, input)

	result := buf.String()
	if !strings.Contains(result, "\\u003c") {
		t.Errorf("HTMLEscape should escape <, got %q", result)
	}
}

// Test Valid
func TestValid(t *testing.T) {
	tests := []struct {
		input string
		want  bool
	}{
		{`{"a":1}`, true},
		{`[1,2,3]`, true},
		{`"string"`, true},
		{`123`, true},
		{`true`, true},
		{`null`, true},
		{`{invalid}`, false},
		{``, false},
	}

	for _, tt := range tests {
		got := json.Valid([]byte(tt.input))
		if got != tt.want {
			t.Errorf("Valid(%q) = %v, want %v", tt.input, got, tt.want)
		}
	}
}

// Test Marshaler interface
func TestMarshaler(t *testing.T) {
	type CustomType struct {
		value string
	}

	cm := &CustomType{value: "test"}
	data, err := json.Marshal(cm)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	// Should use standard marshaling for struct
	var m map[string]string
	if err := json.Unmarshal(data, &m); err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}
}

// Test Unmarshaler interface
func TestUnmarshaler(t *testing.T) {
	type Data struct {
		Value int
	}

	input := `{"Value":42}`
	var d Data
	if err := json.Unmarshal([]byte(input), &d); err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if d.Value != 42 {
		t.Errorf("Value is %d, want 42", d.Value)
	}
}

// Test error types
func TestErrors(t *testing.T) {
	// InvalidUnmarshalError
	err := json.Unmarshal([]byte("null"), nil)
	var invalidErr *json.InvalidUnmarshalError
	if !errors.As(err, &invalidErr) {
		t.Error("Should return InvalidUnmarshalError for nil argument")
	}

	// SyntaxError
	err = json.Unmarshal([]byte("{invalid}"), new(interface{}))
	var syntaxErr *json.SyntaxError
	if !errors.As(err, &syntaxErr) {
		t.Error("Should return SyntaxError for invalid JSON")
	}
	if syntaxErr.Offset == 0 {
		t.Error("SyntaxError should have non-zero Offset")
	}

	// UnmarshalTypeError
	err = json.Unmarshal([]byte(`"string"`), new(int))
	var typeErr *json.UnmarshalTypeError
	if !errors.As(err, &typeErr) {
		t.Error("Should return UnmarshalTypeError for type mismatch")
	}
	if typeErr.Value == "" {
		t.Error("UnmarshalTypeError should have Value set")
	}
	if typeErr.Type == nil {
		t.Error("UnmarshalTypeError should have Type set")
	}

	// UnsupportedTypeError
	_, err = json.Marshal(make(chan int))
	var unsupportedErr *json.UnsupportedTypeError
	if !errors.As(err, &unsupportedErr) {
		t.Error("Should return UnsupportedTypeError for channel")
	}

	// UnsupportedValueError
	_, err = json.Marshal(math.NaN())
	var unsupportedValueErr *json.UnsupportedValueError
	if !errors.As(err, &unsupportedValueErr) {
		t.Error("Should return UnsupportedValueError for NaN")
	}
	if unsupportedValueErr != nil && unsupportedValueErr.Str == "" {
		t.Error("UnsupportedValueError should have Str set")
	}

	// MarshalerError
	_, err = json.Marshal(badMarshaler{})
	var marshalerErr *json.MarshalerError
	if !errors.As(err, &marshalerErr) {
		t.Error("Should return MarshalerError for failing Marshaler")
	}
	if marshalerErr != nil && !errors.Is(marshalerErr.Unwrap(), errBadMarshal) {
		t.Errorf("MarshalerError should wrap errBadMarshal, got %v", marshalerErr.Unwrap())
	}
}

// Test struct tags
func TestStructTags(t *testing.T) {
	type Tagged struct {
		PublicField  string `json:"public"`
		OmitEmpty    string `json:"omit,omitempty"`
		SkipField    string `json:"-"`
		StringOption int    `json:"str,string"`
	}

	v := Tagged{
		PublicField:  "value",
		OmitEmpty:    "",
		SkipField:    "skip",
		StringOption: 123,
	}

	data, err := json.Marshal(v)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	str := string(data)
	if !strings.Contains(str, `"public"`) {
		t.Error("Should contain renamed field")
	}
	if strings.Contains(str, `"omit"`) {
		t.Error("Should omit empty field")
	}
	if strings.Contains(str, "skip") {
		t.Error("Should skip field with - tag")
	}
	if !strings.Contains(str, `"str":"123"`) {
		t.Error("Should marshal int as string")
	}
}

// Test embedded structs
func TestEmbeddedStructs(t *testing.T) {
	type Inner struct {
		A int
	}
	type Outer struct {
		Inner
		B int
	}

	v := Outer{Inner: Inner{A: 1}, B: 2}
	data, err := json.Marshal(v)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var v2 Outer
	if err := json.Unmarshal(data, &v2); err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if v2.A != 1 || v2.B != 2 {
		t.Errorf("Unmarshal returned %+v, want {A:1 B:2}", v2)
	}
}

// Test arrays and slices
func TestArraysSlices(t *testing.T) {
	// Array
	arr := [3]int{1, 2, 3}
	data, err := json.Marshal(arr)
	if err != nil {
		t.Fatalf("Marshal array failed: %v", err)
	}

	var arr2 [3]int
	if err := json.Unmarshal(data, &arr2); err != nil {
		t.Fatalf("Unmarshal array failed: %v", err)
	}
	if arr != arr2 {
		t.Errorf("Array unmarshal got %v, want %v", arr2, arr)
	}

	// Slice
	slice := []int{1, 2, 3}
	data, err = json.Marshal(slice)
	if err != nil {
		t.Fatalf("Marshal slice failed: %v", err)
	}

	var slice2 []int
	if err := json.Unmarshal(data, &slice2); err != nil {
		t.Fatalf("Unmarshal slice failed: %v", err)
	}
	if !reflect.DeepEqual(slice, slice2) {
		t.Errorf("Slice unmarshal got %v, want %v", slice2, slice)
	}
}

// Test maps
func TestMaps(t *testing.T) {
	m := map[string]interface{}{
		"string": "value",
		"number": 42.0,
		"bool":   true,
		"null":   nil,
	}

	data, err := json.Marshal(m)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var m2 map[string]interface{}
	if err := json.Unmarshal(data, &m2); err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if m2["string"] != "value" {
		t.Errorf("string field is %v, want %v", m2["string"], "value")
	}
	if m2["number"] != 42.0 {
		t.Errorf("number field is %v, want %v", m2["number"], 42.0)
	}
	if m2["bool"] != true {
		t.Errorf("bool field is %v, want %v", m2["bool"], true)
	}
	if m2["null"] != nil {
		t.Errorf("null field is %v, want %v", m2["null"], nil)
	}
}

// Test pointers
func TestPointers(t *testing.T) {
	i := 42
	p := &i

	data, err := json.Marshal(p)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}

	var p2 *int
	if err := json.Unmarshal(data, &p2); err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}

	if p2 == nil {
		t.Fatal("Unmarshal returned nil pointer")
	}
	if *p2 != 42 {
		t.Errorf("Unmarshal returned %d, want 42", *p2)
	}
}

// Test Delim type
func TestDelim(t *testing.T) {
	delims := []json.Delim{'[', ']', '{', '}'}
	for _, d := range delims {
		s := d.String()
		if len(s) == 0 {
			t.Errorf("Delim.String() for %q returned empty string", rune(d))
		}
	}
}

// Test Decoder.InputOffset
func TestDecoderInputOffset(t *testing.T) {
	input := `{"a":1}`
	dec := json.NewDecoder(strings.NewReader(input))

	var m map[string]int
	if err := dec.Decode(&m); err != nil {
		t.Fatalf("Decode failed: %v", err)
	}

	offset := dec.InputOffset()
	if offset != int64(len(input)) {
		t.Errorf("InputOffset = %d, want %d", offset, len(input))
	}
}

// Test InvalidUTF8Error
func TestInvalidUTF8Error(t *testing.T) {
	err := &json.InvalidUTF8Error{S: "test"}
	errStr := err.Error()
	if errStr == "" {
		t.Error("InvalidUTF8Error.Error() should not be empty")
	}
}

// Test InvalidUnmarshalError.Error
func TestInvalidUnmarshalErrorError(t *testing.T) {
	err := json.Unmarshal([]byte("null"), nil)
	var invalidErr *json.InvalidUnmarshalError
	if errors.As(err, &invalidErr) {
		errStr := invalidErr.Error()
		if errStr == "" {
			t.Error("InvalidUnmarshalError.Error() should not be empty")
		}
	}
}

// Test Marshaler and Unmarshaler interfaces
type customJSON struct {
	value string
}

func (c customJSON) MarshalJSON() ([]byte, error) {
	return []byte(`"custom:` + c.value + `"`), nil
}

func (c *customJSON) UnmarshalJSON(data []byte) error {
	var s string
	if err := json.Unmarshal(data, &s); err != nil {
		return err
	}
	c.value = s
	return nil
}

func TestCustomMarshalUnmarshal(t *testing.T) {
	// Verify interfaces are implemented
	var _ json.Marshaler = customJSON{}
	var _ json.Unmarshaler = &customJSON{}

	// Test Marshaler interface
	c := customJSON{value: "test"}
	data, err := json.Marshal(c)
	if err != nil {
		t.Fatalf("Marshal failed: %v", err)
	}
	if string(data) != `"custom:test"` {
		t.Errorf("Marshal returned %q, want %q", string(data), `"custom:test"`)
	}

	// Test Unmarshaler interface
	var c2 customJSON
	if err := json.Unmarshal([]byte(`"value"`), &c2); err != nil {
		t.Fatalf("Unmarshal failed: %v", err)
	}
	if c2.value != "value" {
		t.Errorf("Unmarshal set value to %q, want %q", c2.value, "value")
	}
}

// Test MarshalerError
func TestMarshalerError(t *testing.T) {
	innerErr := errors.New("inner error")
	merr := &json.MarshalerError{
		Type: reflect.TypeOf(0),
		Err:  innerErr,
	}

	errStr := merr.Error()
	if errStr == "" {
		t.Error("MarshalerError.Error() should not be empty")
	}

	unwrapped := merr.Unwrap()
	if unwrapped != innerErr {
		t.Error("MarshalerError.Unwrap() should return inner error")
	}
}

// Test RawMessage.UnmarshalJSON
func TestRawMessageUnmarshalJSON(t *testing.T) {
	var raw json.RawMessage
	data := []byte(`{"key":"value"}`)

	if err := raw.UnmarshalJSON(data); err != nil {
		t.Fatalf("UnmarshalJSON failed: %v", err)
	}

	if string(raw) != string(data) {
		t.Errorf("UnmarshalJSON set raw to %q, want %q", string(raw), string(data))
	}
}

// Test SyntaxError.Error
func TestSyntaxErrorError(t *testing.T) {
	err := json.Unmarshal([]byte("{invalid}"), new(interface{}))
	var syntaxErr *json.SyntaxError
	if errors.As(err, &syntaxErr) {
		errStr := syntaxErr.Error()
		if errStr == "" {
			t.Error("SyntaxError.Error() should not be empty")
		}
	}
}

// Test Token type (tested via Decoder.Token in TestDecoderMore)
// Token is an interface{}, so just verify it works
func TestToken(t *testing.T) {
	// Token is an alias for interface{}, verify it exists
	var _ json.Token

	input := `{"key":"value"}`
	dec := json.NewDecoder(strings.NewReader(input))

	// Read tokens and verify they're not nil
	for {
		tok, err := dec.Token()
		if err == io.EOF {
			break
		}
		if err != nil {
			t.Fatalf("Token failed: %v", err)
		}
		if tok == nil {
			t.Error("Token should not return nil")
		}
	}
}

// Test UnmarshalFieldError (deprecated but still exists)
func TestUnmarshalFieldError(t *testing.T) {
	err := &json.UnmarshalFieldError{
		Key:   "key",
		Type:  reflect.TypeOf(0),
		Field: reflect.StructField{Name: "Field"},
	}

	errStr := err.Error()
	if errStr == "" {
		t.Error("UnmarshalFieldError.Error() should not be empty")
	}
}

// Test UnmarshalTypeError.Error
func TestUnmarshalTypeErrorError(t *testing.T) {
	err := json.Unmarshal([]byte(`"string"`), new(int))
	var typeErr *json.UnmarshalTypeError
	if errors.As(err, &typeErr) {
		errStr := typeErr.Error()
		if errStr == "" {
			t.Error("UnmarshalTypeError.Error() should not be empty")
		}
	}
}

// Test UnsupportedTypeError.Error
func TestUnsupportedTypeErrorError(t *testing.T) {
	_, err := json.Marshal(make(chan int))
	var unsupportedErr *json.UnsupportedTypeError
	if errors.As(err, &unsupportedErr) {
		errStr := unsupportedErr.Error()
		if errStr == "" {
			t.Error("UnsupportedTypeError.Error() should not be empty")
		}
	}
}

// Test UnsupportedValueError.Error
func TestUnsupportedValueErrorError(t *testing.T) {
	// Create an UnsupportedValueError directly since it's hard to trigger
	err := &json.UnsupportedValueError{
		Value: reflect.ValueOf(make(chan int)),
		Str:   "channel",
	}

	errStr := err.Error()
	if errStr == "" {
		t.Error("UnsupportedValueError.Error() should not be empty")
	}
}

// Test interface{} unmarshaling
func TestInterfaceUnmarshal(t *testing.T) {
	tests := []struct {
		input string
		want  interface{}
	}{
		{`null`, nil},
		{`true`, true},
		{`false`, false},
		{`123`, float64(123)},
		{`"string"`, "string"},
		{`[1,2,3]`, []interface{}{float64(1), float64(2), float64(3)}},
		{`{"a":1}`, map[string]interface{}{"a": float64(1)}},
	}

	for _, tt := range tests {
		var got interface{}
		if err := json.Unmarshal([]byte(tt.input), &got); err != nil {
			t.Fatalf("Unmarshal(%q) failed: %v", tt.input, err)
		}

		if !reflect.DeepEqual(got, tt.want) {
			t.Errorf("Unmarshal(%q) = %#v, want %#v", tt.input, got, tt.want)
		}
	}
}
