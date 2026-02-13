package embed_test

import (
	"embed"
	"io/fs"
	"testing"
)

//go:embed testdata/hello.txt
var content string

//go:embed testdata/hello.txt
var contentBytes []byte

//go:embed testdata
var contentFS embed.FS

func TestEmbedString(t *testing.T) {
	if content != "Hello, World!" {
		t.Errorf("embedded string = %q, want %q", content, "Hello, World!")
	}
}

func TestEmbedBytes(t *testing.T) {
	expected := []byte("Hello, World!")
	if string(contentBytes) != string(expected) {
		t.Errorf("embedded bytes = %q, want %q", contentBytes, expected)
	}
}

func TestFSOpen(t *testing.T) {
	f, err := contentFS.Open("testdata/hello.txt")
	if err != nil {
		t.Fatalf("Open failed: %v", err)
	}
	defer f.Close()

	info, err := f.Stat()
	if err != nil {
		t.Fatalf("Stat failed: %v", err)
	}

	if info.IsDir() {
		t.Error("expected file, got directory")
	}

	if info.Name() != "hello.txt" {
		t.Errorf("Name() = %q, want %q", info.Name(), "hello.txt")
	}
}

func TestFSReadFile(t *testing.T) {
	data, err := contentFS.ReadFile("testdata/hello.txt")
	if err != nil {
		t.Fatalf("ReadFile failed: %v", err)
	}

	expected := "Hello, World!"
	if string(data) != expected {
		t.Errorf("ReadFile = %q, want %q", data, expected)
	}
}

func TestFSReadDir(t *testing.T) {
	entries, err := contentFS.ReadDir("testdata")
	if err != nil {
		t.Fatalf("ReadDir failed: %v", err)
	}

	if len(entries) != 1 {
		t.Fatalf("ReadDir returned %d entries, want 1", len(entries))
	}

	if entries[0].Name() != "hello.txt" {
		t.Errorf("entry name = %q, want %q", entries[0].Name(), "hello.txt")
	}

	if entries[0].IsDir() {
		t.Error("expected file, got directory")
	}
}

func TestFSReadDirRoot(t *testing.T) {
	entries, err := contentFS.ReadDir(".")
	if err != nil {
		t.Fatalf("ReadDir(\".\") failed: %v", err)
	}

	if len(entries) == 0 {
		t.Error("ReadDir(\".\") returned no entries")
	}

	found := false
	for _, e := range entries {
		if e.Name() == "testdata" && e.IsDir() {
			found = true
			break
		}
	}

	if !found {
		t.Error("testdata directory not found in root listing")
	}
}

func TestFSOpenNonExistent(t *testing.T) {
	_, err := contentFS.Open("nonexistent.txt")
	if err == nil {
		t.Error("expected error for nonexistent file, got nil")
	}
}

func TestFSReadFileNonExistent(t *testing.T) {
	_, err := contentFS.ReadFile("nonexistent.txt")
	if err == nil {
		t.Error("expected error for nonexistent file, got nil")
	}
}

func TestFSImplementsFSInterface(t *testing.T) {
	var _ fs.FS = contentFS
	var _ fs.ReadFileFS = contentFS
	var _ fs.ReadDirFS = contentFS
}
