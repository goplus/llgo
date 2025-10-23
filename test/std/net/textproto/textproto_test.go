package textproto_test

import (
	"bufio"
	"bytes"
	"io"
	"net/textproto"
	"reflect"
	"strings"
	"testing"
)

func TestCanonicalMIMEHeaderKey(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"content-type", "Content-Type"},
		{"CONTENT-TYPE", "Content-Type"},
		{"accept-encoding", "Accept-Encoding"},
		{"foo-bar-baz", "Foo-Bar-Baz"},
	}
	for _, tt := range tests {
		got := textproto.CanonicalMIMEHeaderKey(tt.input)
		if got != tt.want {
			t.Errorf("CanonicalMIMEHeaderKey(%q) = %q, want %q", tt.input, got, tt.want)
		}
	}
}

func TestTrimString(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"  hello  ", "hello"},
		{"hello", "hello"},
		{"\t\n\rhello\t\n\r", "hello"},
		{"", ""},
	}
	for _, tt := range tests {
		got := textproto.TrimString(tt.input)
		if got != tt.want {
			t.Errorf("TrimString(%q) = %q, want %q", tt.input, got, tt.want)
		}
	}
}

func TestTrimBytes(t *testing.T) {
	tests := []struct {
		input []byte
		want  []byte
	}{
		{[]byte("  hello  "), []byte("hello")},
		{[]byte("hello"), []byte("hello")},
		{[]byte("\t\n\rhello\t\n\r"), []byte("hello")},
		{[]byte(""), []byte("")},
	}
	for _, tt := range tests {
		got := textproto.TrimBytes(tt.input)
		if !bytes.Equal(got, tt.want) {
			t.Errorf("TrimBytes(%q) = %q, want %q", tt.input, got, tt.want)
		}
	}
}

func TestMIMEHeaderAdd(t *testing.T) {
	h := make(textproto.MIMEHeader)
	h.Add("Content-Type", "text/html")
	h.Add("Content-Type", "text/plain")
	vals := h["Content-Type"]
	if len(vals) != 2 {
		t.Errorf("After Add, got %d values, want 2", len(vals))
	}
}

func TestMIMEHeaderSet(t *testing.T) {
	h := make(textproto.MIMEHeader)
	h.Set("Content-Type", "text/html")
	h.Set("Content-Type", "text/plain")
	vals := h["Content-Type"]
	if len(vals) != 1 || vals[0] != "text/plain" {
		t.Errorf("After Set, got %v, want [text/plain]", vals)
	}
}

func TestMIMEHeaderGet(t *testing.T) {
	h := make(textproto.MIMEHeader)
	h.Set("Content-Type", "text/html")
	got := h.Get("Content-Type")
	if got != "text/html" {
		t.Errorf("Get() = %q, want %q", got, "text/html")
	}
	got = h.Get("Missing")
	if got != "" {
		t.Errorf("Get(missing) = %q, want %q", got, "")
	}
}

func TestMIMEHeaderDel(t *testing.T) {
	h := make(textproto.MIMEHeader)
	h.Set("Content-Type", "text/html")
	h.Del("Content-Type")
	if h.Get("Content-Type") != "" {
		t.Error("After Del, key still exists")
	}
}

func TestMIMEHeaderValues(t *testing.T) {
	h := make(textproto.MIMEHeader)
	h.Add("Accept", "text/html")
	h.Add("Accept", "text/plain")
	vals := h.Values("Accept")
	if len(vals) != 2 || vals[0] != "text/html" || vals[1] != "text/plain" {
		t.Errorf("Values() = %v, want [text/html text/plain]", vals)
	}
}

func TestNewReader(t *testing.T) {
	br := bufio.NewReader(strings.NewReader("test"))
	r := textproto.NewReader(br)
	if r == nil {
		t.Error("NewReader returned nil")
	}
}

func TestReaderReadLine(t *testing.T) {
	br := bufio.NewReader(strings.NewReader("line1\nline2\n"))
	r := textproto.NewReader(br)
	line, err := r.ReadLine()
	if err != nil {
		t.Fatalf("ReadLine() error = %v", err)
	}
	if line != "line1" {
		t.Errorf("ReadLine() = %q, want %q", line, "line1")
	}
}

func TestReaderReadLineBytes(t *testing.T) {
	br := bufio.NewReader(strings.NewReader("line1\nline2\n"))
	r := textproto.NewReader(br)
	line, err := r.ReadLineBytes()
	if err != nil {
		t.Fatalf("ReadLineBytes() error = %v", err)
	}
	if !bytes.Equal(line, []byte("line1")) {
		t.Errorf("ReadLineBytes() = %q, want %q", line, "line1")
	}
}

func TestReaderReadContinuedLine(t *testing.T) {
	br := bufio.NewReader(strings.NewReader("line1\r\n line2\r\nline3\r\n"))
	r := textproto.NewReader(br)
	line, err := r.ReadContinuedLine()
	if err != nil {
		t.Fatalf("ReadContinuedLine() error = %v", err)
	}
	if line != "line1 line2" {
		t.Errorf("ReadContinuedLine() = %q, want %q", line, "line1 line2")
	}
}

func TestReaderReadContinuedLineBytes(t *testing.T) {
	br := bufio.NewReader(strings.NewReader("line1\r\n line2\r\nline3\r\n"))
	r := textproto.NewReader(br)
	line, err := r.ReadContinuedLineBytes()
	if err != nil {
		t.Fatalf("ReadContinuedLineBytes() error = %v", err)
	}
	if !bytes.Equal(line, []byte("line1 line2")) {
		t.Errorf("ReadContinuedLineBytes() = %q, want %q", line, "line1 line2")
	}
}

func TestReaderReadMIMEHeader(t *testing.T) {
	input := "Content-Type: text/html\r\nContent-Length: 123\r\n\r\n"
	br := bufio.NewReader(strings.NewReader(input))
	r := textproto.NewReader(br)
	h, err := r.ReadMIMEHeader()
	if err != nil {
		t.Fatalf("ReadMIMEHeader() error = %v", err)
	}
	if h.Get("Content-Type") != "text/html" {
		t.Errorf("Get(Content-Type) = %q, want %q", h.Get("Content-Type"), "text/html")
	}
	if h.Get("Content-Length") != "123" {
		t.Errorf("Get(Content-Length) = %q, want %q", h.Get("Content-Length"), "123")
	}
}

func TestReaderReadCodeLine(t *testing.T) {
	br := bufio.NewReader(strings.NewReader("200 OK\r\n"))
	r := textproto.NewReader(br)
	code, msg, err := r.ReadCodeLine(200)
	if err != nil {
		t.Fatalf("ReadCodeLine() error = %v", err)
	}
	if code != 200 {
		t.Errorf("ReadCodeLine() code = %d, want 200", code)
	}
	if msg != "OK" {
		t.Errorf("ReadCodeLine() message = %q, want %q", msg, "OK")
	}
}

func TestReaderReadResponse(t *testing.T) {
	br := bufio.NewReader(strings.NewReader("200 OK\r\n"))
	r := textproto.NewReader(br)
	code, msg, err := r.ReadResponse(200)
	if err != nil {
		t.Fatalf("ReadResponse() error = %v", err)
	}
	if code != 200 {
		t.Errorf("ReadResponse() code = %d, want 200", code)
	}
	if msg != "OK" {
		t.Errorf("ReadResponse() message = %q, want %q", msg, "OK")
	}
}

func TestReaderDotReader(t *testing.T) {
	input := "line1\r\nline2\r\n.\r\n"
	br := bufio.NewReader(strings.NewReader(input))
	r := textproto.NewReader(br)
	dr := r.DotReader()
	data, err := io.ReadAll(dr)
	if err != nil {
		t.Fatalf("DotReader ReadAll error = %v", err)
	}
	want := "line1\nline2\n"
	if string(data) != want {
		t.Errorf("DotReader data = %q, want %q", string(data), want)
	}
}

func TestReaderReadDotBytes(t *testing.T) {
	input := "line1\r\nline2\r\n.\r\n"
	br := bufio.NewReader(strings.NewReader(input))
	r := textproto.NewReader(br)
	data, err := r.ReadDotBytes()
	if err != nil {
		t.Fatalf("ReadDotBytes() error = %v", err)
	}
	want := []byte("line1\nline2\n")
	if !bytes.Equal(data, want) {
		t.Errorf("ReadDotBytes() = %q, want %q", data, want)
	}
}

func TestReaderReadDotLines(t *testing.T) {
	input := "line1\r\nline2\r\n.\r\n"
	br := bufio.NewReader(strings.NewReader(input))
	r := textproto.NewReader(br)
	lines, err := r.ReadDotLines()
	if err != nil {
		t.Fatalf("ReadDotLines() error = %v", err)
	}
	want := []string{"line1", "line2"}
	if !reflect.DeepEqual(lines, want) {
		t.Errorf("ReadDotLines() = %v, want %v", lines, want)
	}
}

func TestNewWriter(t *testing.T) {
	var buf bytes.Buffer
	bw := bufio.NewWriter(&buf)
	w := textproto.NewWriter(bw)
	if w == nil {
		t.Error("NewWriter returned nil")
	}
}

func TestWriterPrintfLine(t *testing.T) {
	var buf bytes.Buffer
	bw := bufio.NewWriter(&buf)
	w := textproto.NewWriter(bw)
	err := w.PrintfLine("Hello %s", "World")
	if err != nil {
		t.Fatalf("PrintfLine() error = %v", err)
	}
	bw.Flush()
	got := buf.String()
	want := "Hello World\r\n"
	if got != want {
		t.Errorf("PrintfLine() wrote %q, want %q", got, want)
	}
}

func TestWriterDotWriter(t *testing.T) {
	var buf bytes.Buffer
	bw := bufio.NewWriter(&buf)
	w := textproto.NewWriter(bw)
	dw := w.DotWriter()
	_, err := dw.Write([]byte("line1\r\nline2\r\n"))
	if err != nil {
		t.Fatalf("DotWriter Write error = %v", err)
	}
	err = dw.Close()
	if err != nil {
		t.Fatalf("DotWriter Close error = %v", err)
	}
	bw.Flush()
	got := buf.String()
	want := "line1\r\nline2\r\n.\r\n"
	if got != want {
		t.Errorf("DotWriter wrote %q, want %q", got, want)
	}
}

func TestProtocolError(t *testing.T) {
	var e textproto.ProtocolError = "test error"
	got := e.Error()
	if got != "test error" {
		t.Errorf("ProtocolError.Error() = %q, want %q", got, "test error")
	}
}

func TestErrorType(t *testing.T) {
	e := &textproto.Error{
		Code: 500,
		Msg:  "Internal Server Error",
	}
	got := e.Error()
	if got == "" {
		t.Error("Error.Error() returned empty string")
	}
}

func TestPipelineNext(t *testing.T) {
	var p textproto.Pipeline
	id1 := p.Next()
	id2 := p.Next()
	if id2 <= id1 {
		t.Errorf("Pipeline.Next() not incrementing: %d, %d", id1, id2)
	}
}

func TestPipelineStartEndRequest(t *testing.T) {
	var p textproto.Pipeline
	id := p.Next()
	p.StartRequest(id)
	p.EndRequest(id)
}

func TestPipelineStartEndResponse(t *testing.T) {
	var p textproto.Pipeline
	id := p.Next()
	p.StartRequest(id)
	p.EndRequest(id)
	p.StartResponse(id)
	p.EndResponse(id)
}

func TestNewConn(t *testing.T) {
	var buf bytes.Buffer
	rwc := &readWriteCloser{&buf}
	conn := textproto.NewConn(rwc)
	if conn == nil {
		t.Error("NewConn returned nil")
	}
}

func TestConnClose(t *testing.T) {
	var buf bytes.Buffer
	rwc := &readWriteCloser{&buf}
	conn := textproto.NewConn(rwc)
	err := conn.Close()
	if err != nil {
		t.Errorf("Close() error = %v", err)
	}
}

func TestConnCmd(t *testing.T) {
	var buf bytes.Buffer
	rwc := &readWriteCloser{&buf}
	conn := textproto.NewConn(rwc)
	_, err := conn.Cmd("HELLO %s", "World")
	if err != nil {
		t.Fatalf("Cmd() error = %v", err)
	}
}

type readWriteCloser struct {
	*bytes.Buffer
}

func (rwc *readWriteCloser) Close() error {
	return nil
}
