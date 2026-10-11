package runtime_test

import (
	"runtime"
	"strings"
	"testing"
)

//go:noinline
func checkCallerDirective(t *testing.T, wantFile string) {
	t.Helper()
	_, file, line, ok := runtime.Caller(1)
	if !ok || !strings.HasSuffix(file, wantFile) || line != 1 {
		t.Fatalf("Caller(1) = %s:%d, %v; want %s:1", file, line, ok, wantFile)
	}
}

func TestCallerLineDirectivesWithSameLine(t *testing.T) {
//line caller-first.go:1
	checkCallerDirective(t, "caller-first.go")
//line caller-second.go:1
	checkCallerDirective(t, "caller-second.go")
}
