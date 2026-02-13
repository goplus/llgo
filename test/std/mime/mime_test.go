package mime_test

import (
	"mime"
	"strings"
	"testing"
)

func TestTypeByExtension(t *testing.T) {
	tests := []struct {
		ext  string
		want string
	}{
		{".html", "text/html"},
		{".txt", "text/plain"},
		{".jpg", "image/jpeg"},
		{".png", "image/png"},
		{".pdf", "application/pdf"},
		{".json", "application/json"},
	}

	for _, tt := range tests {
		got := mime.TypeByExtension(tt.ext)
		if !strings.HasPrefix(got, tt.want) {
			t.Errorf("TypeByExtension(%q) = %q, want prefix %q", tt.ext, got, tt.want)
		}
	}
}

func TestTypeByExtensionUnknown(t *testing.T) {
	got := mime.TypeByExtension(".unknownextension123")
	if got != "" {
		t.Errorf("TypeByExtension(.unknownextension123) = %q, want empty", got)
	}
}

func TestAddExtensionType(t *testing.T) {
	err := mime.AddExtensionType(".test", "application/test")
	if err != nil {
		t.Fatalf("AddExtensionType() error = %v", err)
	}

	got := mime.TypeByExtension(".test")
	if !strings.HasPrefix(got, "application/test") {
		t.Errorf("After AddExtensionType, TypeByExtension(.test) = %q, want prefix %q", got, "application/test")
	}
}

func TestAddExtensionTypeError(t *testing.T) {
	err := mime.AddExtensionType("noperiod", "application/test")
	if err == nil {
		t.Error("AddExtensionType with extension missing period should error")
	}
}

func TestFormatMediaType(t *testing.T) {
	tests := []struct {
		typ    string
		params map[string]string
		want   string
	}{
		{"text/plain", nil, "text/plain"},
		{"text/plain", map[string]string{"charset": "utf-8"}, "text/plain; charset=utf-8"},
		{"multipart/form-data", map[string]string{"boundary": "----WebKitFormBoundary"}, "multipart/form-data; boundary=----WebKitFormBoundary"},
	}

	for _, tt := range tests {
		got := mime.FormatMediaType(tt.typ, tt.params)
		if got != tt.want {
			t.Errorf("FormatMediaType(%q, %v) = %q, want %q", tt.typ, tt.params, got, tt.want)
		}
	}
}

func TestParseMediaType(t *testing.T) {
	tests := []struct {
		input      string
		wantType   string
		wantParams map[string]string
		wantErr    bool
	}{
		{
			"text/plain",
			"text/plain",
			map[string]string{},
			false,
		},
		{
			"text/plain; charset=utf-8",
			"text/plain",
			map[string]string{"charset": "utf-8"},
			false,
		},
		{
			"text/html; charset=UTF-8",
			"text/html",
			map[string]string{"charset": "UTF-8"},
			false,
		},
		{
			"multipart/form-data; boundary=----WebKitFormBoundary",
			"multipart/form-data",
			map[string]string{"boundary": "----WebKitFormBoundary"},
			false,
		},
	}

	for _, tt := range tests {
		gotType, gotParams, err := mime.ParseMediaType(tt.input)
		if (err != nil) != tt.wantErr {
			t.Errorf("ParseMediaType(%q) error = %v, wantErr %v", tt.input, err, tt.wantErr)
			continue
		}
		if gotType != tt.wantType {
			t.Errorf("ParseMediaType(%q) type = %q, want %q", tt.input, gotType, tt.wantType)
		}
		if len(gotParams) != len(tt.wantParams) {
			t.Errorf("ParseMediaType(%q) params = %v, want %v", tt.input, gotParams, tt.wantParams)
			continue
		}
		for k, v := range tt.wantParams {
			if gotParams[k] != v {
				t.Errorf("ParseMediaType(%q) params[%q] = %q, want %q", tt.input, k, gotParams[k], v)
			}
		}
	}
}

func TestExtensionsByType(t *testing.T) {
	exts, err := mime.ExtensionsByType("text/html")
	if err != nil {
		t.Fatalf("ExtensionsByType(text/html) error = %v", err)
	}
	if len(exts) == 0 {
		t.Error("ExtensionsByType(text/html) returned no extensions")
	}
	found := false
	for _, ext := range exts {
		if ext == ".html" || ext == ".htm" {
			found = true
			break
		}
	}
	if !found {
		t.Errorf("ExtensionsByType(text/html) = %v, want to include .html or .htm", exts)
	}
}

func TestWordEncoder(t *testing.T) {
	tests := []struct {
		encoder mime.WordEncoder
		input   string
	}{
		{mime.BEncoding, "hello"},
		{mime.QEncoding, "hello"},
		{mime.BEncoding, "测试"},
	}

	for _, tt := range tests {
		encoded := tt.encoder.Encode("utf-8", tt.input)
		if encoded == "" {
			t.Errorf("WordEncoder.Encode(%q) returned empty string", tt.input)
		}
	}

	nonASCII := mime.BEncoding.Encode("utf-8", "测试")
	if !strings.Contains(nonASCII, "=?utf-8?") {
		t.Errorf("WordEncoder.Encode with non-ASCII should encode, got %q", nonASCII)
	}
}

func TestWordDecoder(t *testing.T) {
	var dec mime.WordDecoder

	tests := []struct {
		input string
		want  string
	}{
		{"=?utf-8?q?hello?=", "hello"},
		{"=?utf-8?b?aGVsbG8=?=", "hello"},
	}

	for _, tt := range tests {
		got, err := dec.Decode(tt.input)
		if err != nil {
			t.Errorf("WordDecoder.Decode(%q) error = %v", tt.input, err)
			continue
		}
		if got != tt.want {
			t.Errorf("WordDecoder.Decode(%q) = %q, want %q", tt.input, got, tt.want)
		}
	}
}

func TestWordDecoderDecodeHeader(t *testing.T) {
	var dec mime.WordDecoder

	header := "=?utf-8?q?Hello?= World"
	got, err := dec.DecodeHeader(header)
	if err != nil {
		t.Fatalf("WordDecoder.DecodeHeader(%q) error = %v", header, err)
	}
	if got != "Hello World" {
		t.Errorf("WordDecoder.DecodeHeader(%q) = %q, want %q", header, got, "Hello World")
	}
}

func TestErrInvalidMediaParameter(t *testing.T) {
	if mime.ErrInvalidMediaParameter == nil {
		t.Error("ErrInvalidMediaParameter should not be nil")
	}
	if mime.ErrInvalidMediaParameter.Error() == "" {
		t.Error("ErrInvalidMediaParameter.Error() should not be empty")
	}
}

func TestBEncoding(t *testing.T) {
	if mime.BEncoding != 'b' {
		t.Errorf("BEncoding = %q, want 'b'", mime.BEncoding)
	}
}

func TestQEncoding(t *testing.T) {
	if mime.QEncoding != 'q' {
		t.Errorf("QEncoding = %q, want 'q'", mime.QEncoding)
	}
}
