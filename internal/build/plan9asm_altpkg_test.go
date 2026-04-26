//go:build !llgo
// +build !llgo

package build

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/goplus/llgo/internal/cabi"
)

func TestDirHasAsmFile(t *testing.T) {
	dir := t.TempDir()
	if dirHasAsmFile(dir) {
		t.Fatal("empty directory should not have asm files")
	}
	if err := os.WriteFile(filepath.Join(dir, "note.txt"), []byte("x"), 0o644); err != nil {
		t.Fatal(err)
	}
	if dirHasAsmFile(dir) {
		t.Fatal("directory with no .s/.S files should not have asm files")
	}
	if err := os.WriteFile(filepath.Join(dir, "lower.s"), []byte("TEXT ·x(SB),$0-0\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	if !dirHasAsmFile(dir) {
		t.Fatal("directory with .s file should have asm files")
	}

	upperDir := t.TempDir()
	if err := os.WriteFile(filepath.Join(upperDir, "upper.S"), []byte("TEXT ·x(SB),$0-0\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	if !dirHasAsmFile(upperDir) {
		t.Fatal("directory with .S file should have asm files")
	}
	if !dirHasAsmFile(filepath.Join(t.TempDir(), "missing")) {
		t.Fatal("unreadable/missing directory should fall back to go list")
	}
}

func TestHasAltPkgForTarget_AllowsAdditivePatchWithPlan9Asm(t *testing.T) {
	conf := &Config{Goarch: "arm64", AbiMode: cabi.ModeAllFunc}
	if !plan9asmEnabledByDefault(conf, "internal/runtime/sys") {
		t.Fatal("plan9asm should be enabled by default for internal/runtime/sys on arm64")
	}
	if !hasAltPkgForTarget(conf, "internal/runtime/sys") {
		t.Fatal("internal/runtime/sys should keep its additive alt package even when plan9asm is enabled")
	}
}
