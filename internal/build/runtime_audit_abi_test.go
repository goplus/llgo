package build

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/xgo-dev/llgo/internal/env"
)

func TestRuntimeMetadataRejectsNewDependency(t *testing.T) {
	src, err := os.ReadFile(filepath.Join(env.LLGoRuntimeDir(), "abi/type.go"))
	if err != nil {
		t.Fatal(err)
	}
	src = []byte(strings.Replace(string(src), "type Type struct {", "type Type struct {\n Future FutureMetadata", 1))
	path := filepath.Join(t.TempDir(), "type.go")
	if err := os.WriteFile(path, src, 0600); err != nil {
		t.Fatal(err)
	}
	if _, err := runtimeMetadataType(path, "Type"); err == nil || !strings.Contains(err.Error(), "undefined: FutureMetadata") {
		t.Fatalf("unreviewed descriptor dependency: %v", err)
	}
}

func TestRuntimeAuditMemory64Layout(t *testing.T) {
	report, err := AuditRuntimeSources(RuntimeAuditConfig{
		RuntimeDir: env.LLGoRuntimeDir(), GOOS: "js", GOARCH: "wasm",
		Tags: []string{"llgo.wasm.gc.linear", "llgo.wasm.emscripten", "llgo.wasm.emscripten.memory64"},
	})
	if err != nil {
		t.Fatal(err)
	}
	if len(report.Missing) != 0 || len(report.UnresolvedBoundaries) != 0 || len(report.DynamicCompilerUses) != 0 {
		t.Fatalf("memory64 runtime boundaries: missing=%v, external=%v, dynamic=%v", report.Missing, report.UnresolvedBoundaries, report.DynamicCompilerUses)
	}
	// gc's Wasm port uses 64-bit words; Memory64 selects that physical width
	// for LLGo too, while the descriptor and function-value layouts still differ.
	if got := report.ABI; got.LLGoTarget != "wasm64-unknown-emscripten" || got.LLGoType.Size != 72 || got.GoType.Size != 48 || got.LLGoFuncValueBytes != 16 {
		t.Fatalf("memory64 profile lost: %+v", got)
	}
}
