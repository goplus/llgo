//go:build !llgo

package env

import (
	"errors"
	"io"
	"os"
	"path/filepath"
	"runtime/debug"
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

func TestHashMetadataTimestampWriteError(t *testing.T) {
	orig := writeUint64LE
	t.Cleanup(func() { writeUint64LE = orig })

	wantErr := errors.New("write timestamp")
	writeUint64LE = func(ioWriter io.Writer, v uint64) error {
		return wantErr
	}

	if _, err := hashMetadata(1, 1); !errors.Is(err, wantErr) {
		t.Fatalf("hashMetadata error = %v, want %v", err, wantErr)
	}
}

func TestHashMetadataSizeWriteError(t *testing.T) {
	orig := writeUint64LE
	t.Cleanup(func() { writeUint64LE = orig })

	wantErr := errors.New("write size")
	call := 0
	writeUint64LE = func(ioWriter io.Writer, v uint64) error {
		call++
		if call == 2 {
			return wantErr
		}
		return nil
	}

	if _, err := hashMetadata(1, 1); !errors.Is(err, wantErr) {
		t.Fatalf("hashMetadata error = %v, want %v", err, wantErr)
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

func TestVersionPrefersBuildVersion(t *testing.T) {
	origBuildVersion := buildVersion
	origReadBuildInfo := readBuildInfo
	defer func() { buildVersion = origBuildVersion }()
	defer func() { readBuildInfo = origReadBuildInfo }()

	buildVersion = "v1.2.3"
	readBuildInfo = func() (*debug.BuildInfo, bool) {
		t.Fatal("readBuildInfo should not be called when buildVersion is set")
		return nil, false
	}
	if got := Version(); got != "v1.2.3" {
		t.Fatalf("Version() = %q, want %q", got, "v1.2.3")
	}
}

func TestVersionUsesModuleVersion(t *testing.T) {
	origBuildVersion := buildVersion
	origReadBuildInfo := readBuildInfo
	defer func() { buildVersion = origBuildVersion }()
	defer func() { readBuildInfo = origReadBuildInfo }()

	buildVersion = ""
	readBuildInfo = func() (*debug.BuildInfo, bool) {
		return &debug.BuildInfo{Main: debug.Module{Version: "v0.4.0"}}, true
	}
	if got := Version(); got != "v0.4.0" {
		t.Fatalf("Version() = %q, want %q", got, "v0.4.0")
	}
}

func TestVersionDirtyFallsBack(t *testing.T) {
	origBuildVersion := buildVersion
	origReadBuildInfo := readBuildInfo
	defer func() { buildVersion = origBuildVersion }()
	defer func() { readBuildInfo = origReadBuildInfo }()

	buildVersion = ""
	readBuildInfo = func() (*debug.BuildInfo, bool) {
		return &debug.BuildInfo{Main: debug.Module{Version: "v0.5.0+dirty"}}, true
	}
	if got := Version(); got != devel {
		t.Fatalf("Version() = %q, want %q", got, devel)
	}
}

func TestCompilerHashAccessor(t *testing.T) {
	orig := compilerHash
	defer func() { compilerHash = orig }()

	compilerHash = "test-hash"
	if got := CompilerHash(); got != "test-hash" {
		t.Fatalf("CompilerHash() = %q, want %q", got, "test-hash")
	}
}

func TestEnsureCompilerHashReleaseBuild(t *testing.T) {
	origBuildVersion := buildVersion
	origCompilerHash := compilerHash
	defer func() {
		buildVersion = origBuildVersion
		compilerHash = origCompilerHash
	}()

	buildVersion = "v1.0.0"
	compilerHash = ""
	if err := ensureCompilerHash(); err != nil {
		t.Fatalf("ensureCompilerHash returned error: %v", err)
	}
	if compilerHash != "" {
		t.Fatalf("compilerHash changed for release build, got %q", compilerHash)
	}
}

func TestEnsureCompilerHashExecutableError(t *testing.T) {
	origExec := executablePath
	origBuildVersion := buildVersion
	origCompilerHash := compilerHash
	defer func() {
		executablePath = origExec
		buildVersion = origBuildVersion
		compilerHash = origCompilerHash
	}()

	buildVersion = ""
	compilerHash = ""
	wantErr := errors.New("boom")
	executablePath = func() (string, error) {
		return "", wantErr
	}

	if err := ensureCompilerHash(); !errors.Is(err, wantErr) {
		t.Fatalf("ensureCompilerHash err = %v, want %v", err, wantErr)
	}
}

func TestEnsureCompilerHashHashError(t *testing.T) {
	origBuildVersion := buildVersion
	origCompilerHash := compilerHash
	origCompute := compilerHashFromPathFunc
	defer func() {
		buildVersion = origBuildVersion
		compilerHash = origCompilerHash
		compilerHashFromPathFunc = origCompute
	}()

	buildVersion = ""
	compilerHash = ""
	wantErr := errors.New("hash fail")
	compilerHashFromPathFunc = func(string) (string, error) {
		return "", wantErr
	}

	if err := ensureCompilerHash(); !errors.Is(err, wantErr) {
		t.Fatalf("ensureCompilerHash err = %v, want %v", err, wantErr)
	}
}

func TestEnsureCompilerHashSetsValue(t *testing.T) {
	origBuildVersion := buildVersion
	origCompilerHash := compilerHash
	origCompute := compilerHashFromPathFunc
	origExec := executablePath
	defer func() {
		buildVersion = origBuildVersion
		compilerHash = origCompilerHash
		compilerHashFromPathFunc = origCompute
		executablePath = origExec
	}()

	buildVersion = ""
	compilerHash = ""
	executablePath = func() (string, error) {
		return "/fake/bin", nil
	}
	compilerHashFromPathFunc = func(string) (string, error) {
		return "computed", nil
	}

	if err := ensureCompilerHash(); err != nil {
		t.Fatalf("ensureCompilerHash returned error: %v", err)
	}
	if got := CompilerHash(); got != "computed" {
		t.Fatalf("CompilerHash() = %q, want %q", got, "computed")
	}
}
