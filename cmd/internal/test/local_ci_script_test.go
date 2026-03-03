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
	if strings.Contains(text, "go test -run 30m ./...") {
		t.Fatalf("%s still uses invalid go test -run 30m form", script)
	}
	if strings.Contains(text, "llgo test -run 30m ./...") {
		t.Fatalf("%s still uses invalid llgo test -run 30m form", script)
	}
	if !strings.Contains(text, "go test -timeout 30m ./...") {
		t.Fatalf("%s missing go test -timeout 30m", script)
	}
	if !strings.Contains(text, "llgo test -timeout 30m ./...") {
		t.Fatalf("%s missing llgo test -timeout 30m", script)
	}
}
