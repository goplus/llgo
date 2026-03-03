//go:build !llgo
// +build !llgo

package test

import (
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
)

func findScriptCommandLine(text, prefix string) (string, bool) {
	for _, raw := range strings.Split(text, "\n") {
		line := strings.TrimSpace(raw)
		if strings.HasPrefix(line, prefix) {
			return line, true
		}
	}
	return "", false
}

func TestLocalCIScriptUsesTimeoutNotRun(t *testing.T) {
	_, thisFile, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("runtime.Caller(0) failed")
	}
	script := filepath.Clean(filepath.Join(filepath.Dir(thisFile), "..", "..", "..", "dev", "local_ci.sh"))
	data, err := os.ReadFile(script)
	if err != nil {
		t.Fatalf("read %s: %v", script, err)
	}
	text := string(data)
	goLine, ok := findScriptCommandLine(text, `(cd "$workdir" && go test `)
	if !ok {
		t.Fatalf("%s missing go test command line", script)
	}
	llgoLine, ok := findScriptCommandLine(text, `(cd "$workdir" && llgo test `)
	if !ok {
		t.Fatalf("%s missing llgo test command line", script)
	}

	t.Run("go test uses timeout", func(t *testing.T) {
		if strings.Contains(goLine, "-run ") {
			t.Errorf("go test command still uses -run: %q", goLine)
		}
		if !strings.Contains(goLine, "-timeout ") {
			t.Errorf("go test command missing -timeout: %q", goLine)
		}
	})

	t.Run("llgo test uses timeout", func(t *testing.T) {
		if strings.Contains(llgoLine, "-run ") {
			t.Errorf("llgo test command still uses -run: %q", llgoLine)
		}
		if !strings.Contains(llgoLine, "-timeout ") {
			t.Errorf("llgo test command missing -timeout: %q", llgoLine)
		}
	})
}
