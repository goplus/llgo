//go:build !llgo
// +build !llgo

package cl_test

import (
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"testing"

	llvmenv "github.com/goplus/llgo/xtool/env/llvm"
)

func llcBinaryPath(t *testing.T) string {
	t.Helper()
	env := llvmenv.New("")
	if dir := env.BinDir(); dir != "" {
		bin := filepath.Join(dir, "llc")
		if _, err := os.Stat(bin); err == nil {
			return bin
		}
	}
	bin, err := exec.LookPath("llc")
	if err != nil {
		t.Skip("llc not found")
	}
	return bin
}

func requireLLCVerifies(t *testing.T, ir string) {
	t.Helper()
	llc := llcBinaryPath(t)
	tmp := filepath.Join(t.TempDir(), "test.ll")
	if err := os.WriteFile(tmp, []byte(ir), 0o644); err != nil {
		t.Fatalf("write ir: %v", err)
	}
	cmd := exec.Command(llc, "-mtriple=x86_64-pc-linux-gnu", "-filetype=null", tmp)
	out, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("llc verification failed: %v\n%s", err, out)
	}
}

func TestCompileLoopPhiUsesActualPredTail(t *testing.T) {
	src := `package foo

type Reader interface {
	Read([]byte) (int, error)
}

func use(r Reader) (n int, err error) {
	n = 0
	_, _ = r.Read(nil)
	for {
		n++
		if n > 1 {
			return n, err
		}
	}
}
`

	ir := compileSource(t, src, "phi.go")
	if !strings.Contains(ir, "@foo.use") {
		t.Fatalf("missing use IR:\n%s", ir)
	}
	requireLLCVerifies(t, ir)
}
