//go:build llgo && !wasm

package cgo

import (
	"os"
	"os/exec"
	"testing"
)

func buildCExportFixture(t *testing.T, dir, output string) {
	t.Helper()
	compiler := os.Getenv("LLGO_TEST_LLGO")
	if compiler == "" {
		compiler = "llgo"
	}
	cmd := exec.Command(compiler, "build", "-o", output, ".")
	cmd.Dir = dir
	if out, err := cmd.CombinedOutput(); err != nil {
		t.Fatalf("build C-export fixture: %v\n%s", err, out)
	}
}
