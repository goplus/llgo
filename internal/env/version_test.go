//go:build !llgo

package env

import (
	"os"
	"path/filepath"
	"testing"
	"time"
)

func TestHashMetadataDeterminism(t *testing.T) {
	const (
		modTime = int64(1700000000000000000)
		size    = int64(4096)
	)

	first, err := hashMetadata(modTime, size)
	if err != nil {
		t.Fatalf("hashMetadata returned error: %v", err)
	}
	second, err := hashMetadata(modTime, size)
	if err != nil {
		t.Fatalf("hashMetadata repeated call error: %v", err)
	}
	if first != second {
		t.Fatalf("hashMetadata is not deterministic: %q vs %q", first, second)
	}

	zeroSize, err := hashMetadata(modTime, 0)
	if err != nil {
		t.Fatalf("hashMetadata zero size error: %v", err)
	}
	if zeroSize == "" {
		t.Fatal("hashMetadata zero size returned empty hash")
	}

	modTimeChanged, err := hashMetadata(modTime+1, size)
	if err != nil {
		t.Fatalf("hashMetadata modTimeChanged error: %v", err)
	}
	if modTimeChanged == first {
		t.Fatalf("hashMetadata should change when mod time changes")
	}

	sizeChanged, err := hashMetadata(modTime, size+1)
	if err != nil {
		t.Fatalf("hashMetadata sizeChanged error: %v", err)
	}
	if sizeChanged == first {
		t.Fatalf("hashMetadata should change when size changes")
	}
}

func TestHashMetadataNegativeSize(t *testing.T) {
	if _, err := hashMetadata(0, -1); err == nil {
		t.Fatal("hashMetadata should error for negative size")
	}
}

func TestCompilerHashFromPath(t *testing.T) {
	dir := t.TempDir()
	path := filepath.Join(dir, "llgo-bin")
	data := []byte("fake binary data")
	if err := os.WriteFile(path, data, 0o755); err != nil {
		t.Fatalf("WriteFile: %v", err)
	}

	modTime := time.Unix(1735584000, 123_000_000)
	if err := os.Chtimes(path, modTime, modTime); err != nil {
		t.Fatalf("Chtimes: %v", err)
	}

	got, err := compilerHashFromPath(path)
	if err != nil {
		t.Fatalf("compilerHashFromPath: %v", err)
	}
	info, err := os.Stat(path)
	if err != nil {
		t.Fatalf("Stat: %v", err)
	}
	want, err := hashMetadata(info.ModTime().UTC().UnixNano(), info.Size())
	if err != nil {
		t.Fatalf("hashMetadata: %v", err)
	}
	if got != want {
		t.Fatalf("compilerHashFromPath = %q, want %q", got, want)
	}

	missingPath := filepath.Join(dir, "missing")
	if _, err := compilerHashFromPath(missingPath); err == nil {
		t.Fatal("compilerHashFromPath should error for missing file")
	}
}
