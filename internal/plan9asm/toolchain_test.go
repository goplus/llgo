//go:build !llgo
// +build !llgo

package plan9asm

import (
	"os/exec"
	"testing"
)

func findLlcAndClang(t *testing.T) (llc, clang string, ok bool) {
	t.Helper()
	llc, _ = exec.LookPath("llc")
	if llc == "" {
		llc, _ = exec.LookPath("llc-21")
	}
	if llc == "" {
		llc, _ = exec.LookPath("llc-20")
	}
	if llc == "" {
		llc, _ = exec.LookPath("llc-19")
	}
	clang, _ = exec.LookPath("clang")

	return llc, clang, llc != "" && clang != ""
}
