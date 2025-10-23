//go:build !llgo

package multipart_test

import (
	"bytes"
	"io"
	"mime/multipart"
	"strings"
	"testing"
)

func TestNewWriter(t *testing.T) {
	var buf bytes.Buffer
	w := multipart.NewWriter(&buf)
	if w == nil {
		t.Fatal("NewWriter returned nil")
	}

	boundary := w.Boundary()
	if boundary == "" {
		t.Error("Boundary is empty")
	}
}

func TestWriterSetBoundary(t *testing.T) {
	var buf bytes.Buffer
	w := multipart.NewWriter(&buf)

	err := w.SetBoundary("test-boundary-123")
	if err != nil {
		t.Fatalf("SetBoundary error: %v", err)
	}

	if w.Boundary() != "test-boundary-123" {
		t.Errorf("Boundary = %q, want %q", w.Boundary(), "test-boundary-123")
	}
}

func TestWriterCreatePart(t *testing.T) {
	var buf bytes.Buffer
	w := multipart.NewWriter(&buf)

	header := make(map[string][]string)
	header["Content-Type"] = []string{"text/plain"}

	part, err := w.CreatePart(header)
	if err != nil {
		t.Fatalf("CreatePart error: %v", err)
	}

	_, err = part.Write([]byte("test data"))
	if err != nil {
		t.Fatalf("Write to part error: %v", err)
	}

	err = w.Close()
	if err != nil {
		t.Fatalf("Close error: %v", err)
	}

	if !strings.Contains(buf.String(), "test data") {
		t.Error("Output doesn't contain test data")
	}
}

func TestWriterCreateFormField(t *testing.T) {
	var buf bytes.Buffer
	w := multipart.NewWriter(&buf)

	part, err := w.CreateFormField("fieldname")
	if err != nil {
		t.Fatalf("CreateFormField error: %v", err)
	}

	_, err = part.Write([]byte("field value"))
	if err != nil {
		t.Fatalf("Write error: %v", err)
	}

	err = w.Close()
	if err != nil {
		t.Fatalf("Close error: %v", err)
	}

	if !strings.Contains(buf.String(), "fieldname") {
		t.Error("Output doesn't contain field name")
	}
	if !strings.Contains(buf.String(), "field value") {
		t.Error("Output doesn't contain field value")
	}
}

func TestWriterCreateFormFile(t *testing.T) {
	var buf bytes.Buffer
	w := multipart.NewWriter(&buf)

	part, err := w.CreateFormFile("file", "test.txt")
	if err != nil {
		t.Fatalf("CreateFormFile error: %v", err)
	}

	_, err = part.Write([]byte("file content"))
	if err != nil {
		t.Fatalf("Write error: %v", err)
	}

	err = w.Close()
	if err != nil {
		t.Fatalf("Close error: %v", err)
	}

	output := buf.String()
	if !strings.Contains(output, "file") {
		t.Error("Output doesn't contain field name")
	}
	if !strings.Contains(output, "test.txt") {
		t.Error("Output doesn't contain filename")
	}
	if !strings.Contains(output, "file content") {
		t.Error("Output doesn't contain file content")
	}
}

func TestNewReader(t *testing.T) {
	body := "--boundary\r\n" +
		"Content-Type: text/plain\r\n\r\n" +
		"data\r\n" +
		"--boundary--\r\n"

	r := multipart.NewReader(strings.NewReader(body), "boundary")
	if r == nil {
		t.Fatal("NewReader returned nil")
	}
}

func TestReaderNextPart(t *testing.T) {
	body := "--boundary\r\n" +
		"Content-Type: text/plain\r\n\r\n" +
		"test data\r\n" +
		"--boundary--\r\n"

	r := multipart.NewReader(strings.NewReader(body), "boundary")

	part, err := r.NextPart()
	if err != nil {
		t.Fatalf("NextPart error: %v", err)
	}

	data, err := io.ReadAll(part)
	if err != nil {
		t.Fatalf("ReadAll error: %v", err)
	}

	if string(data) != "test data" {
		t.Errorf("Part data = %q, want %q", data, "test data")
	}

	_, err = r.NextPart()
	if err != io.EOF {
		t.Errorf("Expected EOF, got %v", err)
	}
}

func TestReaderNextRawPart(t *testing.T) {
	body := "--boundary\r\n" +
		"Content-Type: text/plain\r\n\r\n" +
		"raw data\r\n" +
		"--boundary--\r\n"

	r := multipart.NewReader(strings.NewReader(body), "boundary")

	part, err := r.NextRawPart()
	if err != nil {
		t.Fatalf("NextRawPart error: %v", err)
	}

	data, err := io.ReadAll(part)
	if err != nil {
		t.Fatalf("ReadAll error: %v", err)
	}

	if !strings.Contains(string(data), "raw data") {
		t.Errorf("Part data doesn't contain expected content")
	}
}

func TestReaderReadForm(t *testing.T) {
	var buf bytes.Buffer
	w := multipart.NewWriter(&buf)

	field, _ := w.CreateFormField("name")
	field.Write([]byte("value"))

	w.Close()

	r := multipart.NewReader(&buf, w.Boundary())
	form, err := r.ReadForm(1024)
	if err != nil {
		t.Fatalf("ReadForm error: %v", err)
	}
	defer form.RemoveAll()

	if len(form.Value) != 1 {
		t.Errorf("Form.Value length = %d, want 1", len(form.Value))
	}

	if form.Value["name"][0] != "value" {
		t.Errorf("Form.Value[name][0] = %q, want %q", form.Value["name"][0], "value")
	}
}

func TestPartFormName(t *testing.T) {
	body := "--boundary\r\n" +
		"Content-Disposition: form-data; name=\"fieldname\"\r\n\r\n" +
		"data\r\n" +
		"--boundary--\r\n"

	r := multipart.NewReader(strings.NewReader(body), "boundary")
	part, err := r.NextPart()
	if err != nil {
		t.Fatalf("NextPart error: %v", err)
	}

	name := part.FormName()
	if name != "fieldname" {
		t.Errorf("FormName = %q, want %q", name, "fieldname")
	}
}

func TestPartFileName(t *testing.T) {
	body := "--boundary\r\n" +
		"Content-Disposition: form-data; name=\"file\"; filename=\"test.txt\"\r\n\r\n" +
		"data\r\n" +
		"--boundary--\r\n"

	r := multipart.NewReader(strings.NewReader(body), "boundary")
	part, err := r.NextPart()
	if err != nil {
		t.Fatalf("NextPart error: %v", err)
	}

	filename := part.FileName()
	if filename != "test.txt" {
		t.Errorf("FileName = %q, want %q", filename, "test.txt")
	}
}

func TestFileHeader(t *testing.T) {
	fh := &multipart.FileHeader{
		Filename: "test.txt",
		Size:     100,
	}

	if fh.Filename != "test.txt" {
		t.Errorf("Filename = %q, want %q", fh.Filename, "test.txt")
	}
	if fh.Size != 100 {
		t.Errorf("Size = %d, want 100", fh.Size)
	}
}

func TestForm(t *testing.T) {
	form := &multipart.Form{
		Value: make(map[string][]string),
		File:  make(map[string][]*multipart.FileHeader),
	}

	form.Value["field"] = []string{"value"}

	if len(form.Value) != 1 {
		t.Errorf("Form.Value length = %d, want 1", len(form.Value))
	}
}

func TestErrMessageTooLarge(t *testing.T) {
	if multipart.ErrMessageTooLarge == nil {
		t.Error("ErrMessageTooLarge should not be nil")
	}
}

func TestFileHeaderOpen(t *testing.T) {
	var buf bytes.Buffer
	w := multipart.NewWriter(&buf)

	part, err := w.CreateFormFile("file", "test.txt")
	if err != nil {
		t.Fatalf("CreateFormFile error: %v", err)
	}
	part.Write([]byte("file content"))
	w.Close()

	r := multipart.NewReader(&buf, w.Boundary())
	form, err := r.ReadForm(1024)
	if err != nil {
		t.Fatalf("ReadForm error: %v", err)
	}
	defer form.RemoveAll()

	if len(form.File["file"]) == 0 {
		t.Fatal("No file found")
	}

	fh := form.File["file"][0]
	f, err := fh.Open()
	if err != nil {
		t.Fatalf("FileHeader.Open error: %v", err)
	}
	defer f.Close()

	data, err := io.ReadAll(f)
	if err != nil {
		t.Fatalf("ReadAll error: %v", err)
	}
	if string(data) != "file content" {
		t.Errorf("File content = %q, want %q", data, "file content")
	}

	var _ multipart.File = f
}

func TestPartCloseAndRead(t *testing.T) {
	body := "--boundary\r\n" +
		"Content-Type: text/plain\r\n\r\n" +
		"test data\r\n" +
		"--boundary--\r\n"

	r := multipart.NewReader(strings.NewReader(body), "boundary")
	part, err := r.NextPart()
	if err != nil {
		t.Fatalf("NextPart error: %v", err)
	}

	buf := make([]byte, 4)
	n, err := part.Read(buf)
	if err != nil && err != io.EOF {
		t.Fatalf("Part.Read error: %v", err)
	}
	if n == 0 {
		t.Error("Part.Read returned 0 bytes")
	}

	err = part.Close()
	if err != nil {
		t.Fatalf("Part.Close error: %v", err)
	}
}

func TestWriterFormDataContentType(t *testing.T) {
	var buf bytes.Buffer
	w := multipart.NewWriter(&buf)

	contentType := w.FormDataContentType()
	if !strings.Contains(contentType, "multipart/form-data") {
		t.Errorf("FormDataContentType = %q, should contain 'multipart/form-data'", contentType)
	}
	if !strings.Contains(contentType, w.Boundary()) {
		t.Errorf("FormDataContentType = %q, should contain boundary %q", contentType, w.Boundary())
	}
}

func TestWriterWriteField(t *testing.T) {
	var buf bytes.Buffer
	w := multipart.NewWriter(&buf)

	err := w.WriteField("fieldname", "fieldvalue")
	if err != nil {
		t.Fatalf("WriteField error: %v", err)
	}

	w.Close()

	output := buf.String()
	if !strings.Contains(output, "fieldname") {
		t.Error("Output doesn't contain field name")
	}
	if !strings.Contains(output, "fieldvalue") {
		t.Error("Output doesn't contain field value")
	}
}
