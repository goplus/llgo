//go:build !llgo
// +build !llgo

package plan9asm

import (
	"os"
	"path/filepath"
	"runtime"
	"testing"
)

func TestParseStdlibInternalBytealgArm64Compare(t *testing.T) {
	goroot := runtime.GOROOT()
	if goroot == "" {
		t.Skip("GOROOT not available")
	}
	path := filepath.Join(goroot, "src", "internal", "bytealg", "compare_arm64.s")
	src, err := os.ReadFile(path)
	if err != nil {
		t.Skipf("read %s: %v", path, err)
	}
	if _, err := Parse(ArchARM64, string(src)); err != nil {
		t.Fatalf("parse %s: %v", path, err)
	}
}

func TestParseStdlibInternalBytealg_Amd64AndArm64(t *testing.T) {
	goroot := runtime.GOROOT()
	if goroot == "" {
		t.Skip("GOROOT not available")
	}
	dir := filepath.Join(goroot, "src", "internal", "bytealg")
	glob := func(pat string) []string {
		m, _ := filepath.Glob(filepath.Join(dir, pat))
		return m
	}

	var files []struct {
		arch Arch
		path string
	}
	for _, p := range glob("*_arm64.s") {
		files = append(files, struct {
			arch Arch
			path string
		}{arch: ArchARM64, path: p})
	}
	for _, p := range glob("*_amd64.s") {
		files = append(files, struct {
			arch Arch
			path string
		}{arch: ArchAMD64, path: p})
	}
	if len(files) == 0 {
		t.Skipf("no bytealg asm files found under %s", dir)
	}

	for _, f := range files {
		t.Run(filepath.Base(f.path), func(t *testing.T) {
			src, err := os.ReadFile(f.path)
			if err != nil {
				t.Fatalf("read %s: %v", f.path, err)
			}
			if _, err := Parse(f.arch, string(src)); err != nil {
				t.Fatalf("parse %s: %v", f.path, err)
			}
		})
	}
}
