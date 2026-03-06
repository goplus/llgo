package fmt_test

import (
	"bytes"
	"errors"
	"fmt"
	"io"
	"strings"
	"testing"
)

// Test Print, Println, Printf
func TestPrintFunctions(t *testing.T) {
	// Redirect stdout is complex, so we'll just call them
	// and verify they don't panic
	fmt.Print("test")
	fmt.Println("test")
	fmt.Printf("%s", "test")
}

// Test Sprint, Sprintln, Sprintf
func TestSprintFunctions(t *testing.T) {
	// Test Sprint
	s := fmt.Sprint("hello", " ", "world")
	if s != "hello world" {
		t.Errorf("Sprint got %q", s)
	}

	// Test Sprintln
	s = fmt.Sprintln("hello", "world")
	if s != "hello world\n" {
		t.Errorf("Sprintln got %q", s)
	}

	// Test Sprintf
	s = fmt.Sprintf("%s %d", "number", 42)
	if s != "number 42" {
		t.Errorf("Sprintf got %q", s)
	}
}

// Test Fprint, Fprintln, Fprintf
func TestFprintFunctions(t *testing.T) {
	var buf bytes.Buffer

	// Test Fprint
	n, err := fmt.Fprint(&buf, "hello", " ", "world")
	if err != nil {
		t.Fatalf("Fprint error: %v", err)
	}
	if n != 11 {
		t.Errorf("Fprint wrote %d bytes, want 11", n)
	}
	if buf.String() != "hello world" {
		t.Errorf("Fprint got %q", buf.String())
	}

	// Test Fprintln
	buf.Reset()
	n, err = fmt.Fprintln(&buf, "hello", "world")
	if err != nil {
		t.Fatalf("Fprintln error: %v", err)
	}
	if buf.String() != "hello world\n" {
		t.Errorf("Fprintln got %q", buf.String())
	}

	// Test Fprintf
	buf.Reset()
	n, err = fmt.Fprintf(&buf, "%s %d", "number", 42)
	if err != nil {
		t.Fatalf("Fprintf error: %v", err)
	}
	if buf.String() != "number 42" {
		t.Errorf("Fprintf got %q", buf.String())
	}
}

// Test Append, Appendln, Appendf
func TestAppendFunctions(t *testing.T) {
	// Test Append
	b := []byte("prefix:")
	b = fmt.Append(b, "hello", " ", "world")
	if string(b) != "prefix:hello world" {
		t.Errorf("Append got %q", b)
	}

	// Test Appendln
	b = []byte("prefix:")
	b = fmt.Appendln(b, "hello", "world")
	if string(b) != "prefix:hello world\n" {
		t.Errorf("Appendln got %q", b)
	}

	// Test Appendf
	b = []byte("prefix:")
	b = fmt.Appendf(b, "%s %d", "number", 42)
	if string(b) != "prefix:number 42" {
		t.Errorf("Appendf got %q", b)
	}
}

// Test Errorf
func TestErrorf(t *testing.T) {
	err := fmt.Errorf("error: %s", "test")
	if err == nil {
		t.Fatal("Errorf returned nil")
	}
	if err.Error() != "error: test" {
		t.Errorf("Errorf got %q", err.Error())
	}

	// Test error wrapping with %w
	baseErr := errors.New("base error")
	wrappedErr := fmt.Errorf("wrapped: %w", baseErr)
	if !errors.Is(wrappedErr, baseErr) {
		t.Error("Errorf %w should wrap error")
	}
}

// Test Scan, Scanln, Scanf
func TestScanFunctions(t *testing.T) {
	// Test Scan - we'll skip interactive stdin tests
	// Just verify the functions exist and have correct type
	var _ func(...any) (int, error) = fmt.Scan
	var _ func(string, ...any) (int, error) = fmt.Scanf
	var _ func(...any) (int, error) = fmt.Scanln
}

// Test Sscan, Sscanln, Sscanf
func TestSscanFunctions(t *testing.T) {
	// Test Sscan
	var a, b string
	n, err := fmt.Sscan("hello world", &a, &b)
	if err != nil {
		t.Fatalf("Sscan error: %v", err)
	}
	if n != 2 {
		t.Errorf("Sscan scanned %d items, want 2", n)
	}
	if a != "hello" || b != "world" {
		t.Errorf("Sscan got %q, %q", a, b)
	}

	// Test Sscanln
	a, b = "", ""
	n, err = fmt.Sscanln("hello world", &a, &b)
	if err != nil {
		t.Fatalf("Sscanln error: %v", err)
	}
	if a != "hello" || b != "world" {
		t.Errorf("Sscanln got %q, %q", a, b)
	}

	// Test Sscanf
	var num int
	n, err = fmt.Sscanf("number 42", "number %d", &num)
	if err != nil {
		t.Fatalf("Sscanf error: %v", err)
	}
	if n != 1 {
		t.Errorf("Sscanf scanned %d items, want 1", n)
	}
	if num != 42 {
		t.Errorf("Sscanf got %d", num)
	}
}

// Test Fscan, Fscanln, Fscanf
func TestFscanFunctions(t *testing.T) {
	// Test Fscan
	r := strings.NewReader("hello world")
	var a, b string
	n, err := fmt.Fscan(r, &a, &b)
	if err != nil {
		t.Fatalf("Fscan error: %v", err)
	}
	if n != 2 {
		t.Errorf("Fscan scanned %d items, want 2", n)
	}
	if a != "hello" || b != "world" {
		t.Errorf("Fscan got %q, %q", a, b)
	}

	// Test Fscanln
	r = strings.NewReader("hello world\n")
	a, b = "", ""
	n, err = fmt.Fscanln(r, &a, &b)
	if err != nil {
		t.Fatalf("Fscanln error: %v", err)
	}
	if a != "hello" || b != "world" {
		t.Errorf("Fscanln got %q, %q", a, b)
	}

	// Test Fscanf
	r = strings.NewReader("number 42")
	var num int
	n, err = fmt.Fscanf(r, "number %d", &num)
	if err != nil {
		t.Fatalf("Fscanf error: %v", err)
	}
	if n != 1 {
		t.Errorf("Fscanf scanned %d items, want 1", n)
	}
	if num != 42 {
		t.Errorf("Fscanf got %d", num)
	}
}

// Test FormatString
func TestFormatString(t *testing.T) {
	// Create a mock State
	state := &mockState{
		width:     10,
		precision: 2,
		flags:     "-",
	}

	// Test FormatString with various verbs
	s := fmt.FormatString(state, 'v')
	if !strings.Contains(s, "%") {
		t.Errorf("FormatString returned %q", s)
	}

	s = fmt.FormatString(state, 's')
	if !strings.Contains(s, "%") {
		t.Errorf("FormatString returned %q", s)
	}
}

// mockState implements fmt.State for testing
type mockState struct {
	width     int
	precision int
	flags     string
}

func (m *mockState) Write(b []byte) (n int, err error) {
	return len(b), nil
}

func (m *mockState) Width() (wid int, ok bool) {
	return m.width, true
}

func (m *mockState) Precision() (prec int, ok bool) {
	return m.precision, true
}

func (m *mockState) Flag(c int) bool {
	return strings.ContainsRune(m.flags, rune(c))
}

// myStringer type for testing Stringer interface
type myStringer struct {
	value string
}

func (m *myStringer) String() string {
	return m.value
}

// Test Stringer interface
func TestStringerInterface(t *testing.T) {
	var _ fmt.Stringer = (*myStringer)(nil)

	ms := &myStringer{value: "test"}
	s := fmt.Sprint(ms)
	if s != "test" {
		t.Errorf("Stringer got %q", s)
	}
}

// myGoStringer type for testing GoStringer interface
type myGoStringer struct {
	value string
}

func (m *myGoStringer) GoString() string {
	return m.value
}

// Test GoStringer interface
func TestGoStringerInterface(t *testing.T) {
	var _ fmt.GoStringer = (*myGoStringer)(nil)

	mgs := &myGoStringer{value: "test"}
	s := fmt.Sprintf("%#v", mgs)
	if !strings.Contains(s, "test") {
		t.Errorf("GoStringer got %q", s)
	}
}

// myFormatter type for testing Formatter interface
type myFormatter struct {
	value string
}

func (m *myFormatter) Format(f fmt.State, verb rune) {
	switch verb {
	case 'v':
		io.WriteString(f, "CUSTOM:"+m.value)
	default:
		io.WriteString(f, m.value)
	}
}

// Test Formatter interface
func TestFormatterInterface(t *testing.T) {
	var _ fmt.Formatter = (*myFormatter)(nil)

	mf := &myFormatter{value: "custom"}
	s := fmt.Sprintf("%v", mf)
	if !strings.Contains(s, "CUSTOM") {
		t.Errorf("Formatter got %q", s)
	}
}

// myScanner type for testing Scanner interface
type myScanner struct {
	value string
}

func (m *myScanner) Scan(state fmt.ScanState, verb rune) error {
	token, err := state.Token(true, nil)
	if err != nil {
		return err
	}
	m.value = string(token)
	return nil
}

// Test Scanner interface
func TestScannerInterface(t *testing.T) {
	var _ fmt.Scanner = (*myScanner)(nil)

	ms := &myScanner{}
	n, err := fmt.Sscan("test", ms)
	if err != nil {
		t.Fatalf("Scanner error: %v", err)
	}
	if n != 1 {
		t.Errorf("Scanner scanned %d items, want 1", n)
	}
	if ms.value != "test" {
		t.Errorf("Scanner got %q", ms.value)
	}
}

// Test ScanState interface (tested through Scanner)
func TestScanStateInterface(t *testing.T) {
	// ScanState is tested through the Scanner interface test above
	// Here we verify the interface exists
	var _ fmt.ScanState
}

// Test State interface (tested through Formatter)
func TestStateInterface(t *testing.T) {
	// State is tested through the Formatter interface test above
	// Here we verify the interface exists
	var _ fmt.State
}

// Test various format verbs
func TestFormatVerbs(t *testing.T) {
	tests := []struct {
		format string
		args   []any
		want   string
	}{
		// Basic types
		{"%v", []any{42}, "42"},
		{"%d", []any{42}, "42"},
		{"%s", []any{"hello"}, "hello"},
		{"%t", []any{true}, "true"},
		{"%f", []any{3.14}, "3.140000"},

		// Width and precision
		{"%5d", []any{42}, "   42"},
		{"%-5d", []any{42}, "42   "},
		{"%.2f", []any{3.14159}, "3.14"},
		{"%5.2f", []any{3.14}, " 3.14"},

		// Multiple arguments
		{"%s %d", []any{"number", 42}, "number 42"},
		{"%v %v %v", []any{1, "two", 3.0}, "1 two 3"},

		// Special characters
		{"%%", []any{}, "%"},
		{"%q", []any{"hello"}, `"hello"`},

		// Pointer
		{"%p", []any{new(int)}, "0x"},

		// Type
		{"%T", []any{42}, "int"},
		{"%T", []any{"hello"}, "string"},
	}

	for _, tt := range tests {
		got := fmt.Sprintf(tt.format, tt.args...)
		if tt.want == "0x" {
			// For pointers, just check it starts with 0x
			if !strings.HasPrefix(got, "0x") {
				t.Errorf("Sprintf(%q, %v) = %q, want prefix %q", tt.format, tt.args, got, tt.want)
			}
		} else if got != tt.want {
			t.Errorf("Sprintf(%q, %v) = %q, want %q", tt.format, tt.args, got, tt.want)
		}
	}
}

// Test complex formatting
func TestComplexFormatting(t *testing.T) {
	// Struct formatting
	type Person struct {
		Name string
		Age  int
	}
	p := Person{Name: "Alice", Age: 30}
	s := fmt.Sprintf("%v", p)
	if !strings.Contains(s, "Alice") || !strings.Contains(s, "30") {
		t.Errorf("Struct format got %q", s)
	}

	// Slice formatting
	slice := []int{1, 2, 3}
	s = fmt.Sprintf("%v", slice)
	if s != "[1 2 3]" {
		t.Errorf("Slice format got %q", s)
	}

	// Map formatting
	m := map[string]int{"a": 1, "b": 2}
	s = fmt.Sprintf("%v", m)
	if !strings.Contains(s, "map[") {
		t.Errorf("Map format got %q", s)
	}
}

// Test error cases
func TestScanErrors(t *testing.T) {
	// Test scan with wrong type
	var num int
	_, err := fmt.Sscanf("abc", "%d", &num)
	if err == nil {
		t.Error("Sscanf should error when scanning non-number as int")
	}

	// Test scan with EOF
	_, err = fmt.Sscan("", &num)
	if err == nil {
		t.Error("Sscan should error on EOF")
	}
}

// Test edge cases
func TestEdgeCases(t *testing.T) {
	// Empty format
	s := fmt.Sprintf("")
	if s != "" {
		t.Errorf("Empty format got %q", s)
	}

	// No arguments
	s = fmt.Sprint()
	if s != "" {
		t.Errorf("Sprint() got %q", s)
	}

	// Nil values
	s = fmt.Sprint(nil)
	if s != "<nil>" {
		t.Errorf("Sprint(nil) got %q", s)
	}

	// Zero values
	s = fmt.Sprint(0, false, "")
	if s != "0 false" {
		t.Errorf("Zero values got %q", s)
	}
}
