//go:build !llgo

package ioutil_test

import (
	"io"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
	"testing"
)

func TestDiscard(t *testing.T) {
	wrote, err := ioutil.Discard.Write([]byte("hello"))
	if err != nil {
		t.Fatalf("Discard.Write returned error: %v", err)
	}
	if wrote != len("hello") {
		t.Fatalf("Discard.Write wrote %d bytes, want %d", wrote, len("hello"))
	}
}

func TestNopCloser(t *testing.T) {
	rc := ioutil.NopCloser(strings.NewReader("data"))
	defer func() {
		if err := rc.Close(); err != nil {
			t.Fatalf("Close returned error: %v", err)
		}
	}()

	content, err := io.ReadAll(rc)
	if err != nil {
		t.Fatalf("ReadAll error: %v", err)
	}
	if string(content) != "data" {
		t.Fatalf("ReadAll content = %q, want %q", content, "data")
	}
}

func TestReadAll(t *testing.T) {
	reader := strings.NewReader("prefix:" + strings.Repeat("x", 32))
	data, err := ioutil.ReadAll(reader)
	if err != nil {
		t.Fatalf("ReadAll error: %v", err)
	}
	if string(data) != "prefix:"+strings.Repeat("x", 32) {
		t.Fatalf("ReadAll data mismatch: %q", data)
	}
}

func TestReadFileAndWriteFile(t *testing.T) {
	dir := t.TempDir()
	path := filepath.Join(dir, "sample.txt")
	payload := []byte("sample data")

	if err := ioutil.WriteFile(path, payload, 0o600); err != nil {
		t.Fatalf("WriteFile error: %v", err)
	}
	data, err := ioutil.ReadFile(path)
	if err != nil {
		t.Fatalf("ReadFile error: %v", err)
	}
	if string(data) != string(payload) {
		t.Fatalf("ReadFile data = %q, want %q", data, payload)
	}
}

func TestTempDir(t *testing.T) {
	base := t.TempDir()
	temp, err := ioutil.TempDir(base, "ioutil-dir-")
	if err != nil {
		t.Fatalf("TempDir error: %v", err)
	}
	t.Cleanup(func() { _ = os.RemoveAll(temp) })

	info, err := os.Stat(temp)
	if err != nil {
		t.Fatalf("Stat temp dir error: %v", err)
	}
	if !info.IsDir() {
		t.Fatalf("TempDir path %s not a directory", temp)
	}
	if !strings.HasPrefix(filepath.Base(temp), "ioutil-dir-") {
		t.Fatalf("TempDir base %q missing prefix", filepath.Base(temp))
	}
}

func TestTempFile(t *testing.T) {
	base := t.TempDir()
	f, err := ioutil.TempFile(base, "ioutil-file-")
	if err != nil {
		t.Fatalf("TempFile error: %v", err)
	}
	t.Cleanup(func() {
		name := f.Name()
		f.Close()
		_ = os.Remove(name)
	})

	if !strings.HasPrefix(filepath.Base(f.Name()), "ioutil-file-") {
		t.Fatalf("TempFile base %q missing prefix", filepath.Base(f.Name()))
	}

	if _, err := f.Write([]byte("temp")); err != nil {
		t.Fatalf("TempFile write error: %v", err)
	}
	if _, err := f.Seek(0, io.SeekStart); err != nil {
		t.Fatalf("TempFile seek error: %v", err)
	}
	content, err := io.ReadAll(f)
	if err != nil {
		t.Fatalf("TempFile read error: %v", err)
	}
	if string(content) != "temp" {
		t.Fatalf("TempFile content = %q, want %q", content, "temp")
	}
}
