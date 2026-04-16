//go:build llgo
// +build llgo

package test

import (
	"os"
	"os/exec"
	"strings"
	"testing"
)

func TestBuiltinPrintHelper(t *testing.T) {
	if os.Getenv("LLGO_PRINT_HELPER") == "" {
		t.Skip("helper process")
	}
	print(1e7, "\n")
	print(complex(1e7, -1e7), "\n")
	print(complex(1.5, -0.0), "\n")
	os.Exit(0)
}

func runBuiltinPrintProbe(t *testing.T) string {
	t.Helper()
	cmd := exec.Command(os.Args[0], "-test.run=^TestBuiltinPrintHelper$")
	cmd.Env = append(os.Environ(), "LLGO_PRINT_HELPER=1")
	out, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("builtin print probe failed: %v\n%s", err, string(out))
	}
	return strings.ReplaceAll(string(out), "\r\n", "\n")
}
