package embed_test

import (
	"embed"
	"io/fs"
	"slices"
	"testing"
	"testing/fstest"
)

//go:embed testdata/hello.txt
var content string

//go:embed testdata/hello.txt
var contentBytes []byte

//go:embed testdata
var contentFS embed.FS

//go:embed testdata/*
var contentStarFS embed.FS

//go:embed all:testdata
var contentAllFS embed.FS

//go:embed "testdata/space name.txt"
var contentQuoted string

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

func TestEmbedQuotedPattern(t *testing.T) {
	if contentQuoted != "Space Name" {
		t.Errorf("embedded quoted string = %q, want %q", contentQuoted, "Space Name")
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

	foundHello := false
	for _, e := range entries {
		if e.Name() == "hello.txt" && !e.IsDir() {
			foundHello = true
			break
		}
	}
	if !foundHello {
		t.Fatalf("ReadDir(testdata) should contain hello.txt, got %v", names(entries))
	}
}

func TestFSComplexTree(t *testing.T) {
	if err := fstest.TestFS(contentFS,
		"testdata/hello.txt",
		"testdata/-not-hidden/fortune.txt",
		"testdata/i/i18n.txt",
		"testdata/i/j/k/k8s.txt",
		"testdata/space name.txt",
	); err != nil {
		t.Fatalf("fstest.TestFS: %v", err)
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

func names(entries []fs.DirEntry) []string {
	out := make([]string, 0, len(entries))
	for _, e := range entries {
		name := e.Name()
		if e.IsDir() {
			name += "/"
		}
		out = append(out, name)
	}
	return out
}

func TestHiddenFilteringWithDirectoryPattern(t *testing.T) {
	entries, err := contentFS.ReadDir("testdata")
	if err != nil {
		t.Fatalf("ReadDir(testdata): %v", err)
	}
	got := names(entries)
	want := []string{"-not-hidden/", "hello.txt", "i/", "space name.txt"}
	if !slices.Equal(got, want) {
		t.Fatalf("ReadDir(testdata) = %v, want %v", got, want)
	}
}

func TestHiddenFilteringWithStarPattern(t *testing.T) {
	entries, err := contentStarFS.ReadDir("testdata")
	if err != nil {
		t.Fatalf("ReadDir(testdata): %v", err)
	}
	got := names(entries)
	want := []string{"-not-hidden/", ".hidden/", "_hidden/", "hello.txt", "i/", "space name.txt"}
	if !slices.Equal(got, want) {
		t.Fatalf("ReadDir(testdata) = %v, want %v", got, want)
	}

	hiddenEntries, err := contentStarFS.ReadDir("testdata/.hidden")
	if err != nil {
		t.Fatalf("ReadDir(testdata/.hidden): %v", err)
	}
	hiddenGot := names(hiddenEntries)
	hiddenWant := []string{"fortune.txt", "more/"}
	if !slices.Equal(hiddenGot, hiddenWant) {
		t.Fatalf("ReadDir(testdata/.hidden) = %v, want %v", hiddenGot, hiddenWant)
	}
}

func TestAllPrefixIncludesNestedHidden(t *testing.T) {
	entries, err := contentAllFS.ReadDir("testdata/.hidden")
	if err != nil {
		t.Fatalf("ReadDir(testdata/.hidden): %v", err)
	}
	got := names(entries)
	want := []string{".more/", "_more/", "fortune.txt", "more/"}
	if !slices.Equal(got, want) {
		t.Fatalf("ReadDir(testdata/.hidden) = %v, want %v", got, want)
	}

	b, err := contentAllFS.ReadFile("testdata/.hidden/.more/tip.txt")
	if err != nil {
		t.Fatalf("ReadFile(testdata/.hidden/.more/tip.txt): %v", err)
	}
	if string(b) != "tip-hidden-dot" {
		t.Fatalf("embedded all: hidden file = %q, want %q", b, "tip-hidden-dot")
	}
}
