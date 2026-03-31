package build

import (
	"os"
	"path/filepath"
	"runtime"
	"testing"

	"github.com/goplus/llgo/internal/env"
	ipackages "github.com/goplus/llgo/internal/packages"
)

func TestBuildStdlibAltSourceOverlayReplacesInternalSync(t *testing.T) {
	goroot := runtime.GOROOT()
	stdDir := filepath.Join(goroot, "src", "internal", "sync")
	stdFiles := []string{
		filepath.Join(stdDir, "hashtriemap.go"),
		filepath.Join(stdDir, "mutex.go"),
		filepath.Join(stdDir, "runtime.go"),
	}
	initial := []*ipackages.Package{{
		PkgPath:         "internal/sync",
		Dir:             stdDir,
		CompiledGoFiles: stdFiles,
		GoFiles:         stdFiles,
	}}
	conf := &Config{Goos: runtime.GOOS, Goarch: runtime.GOARCH}
	overlay, replaced, err := buildStdlibAltSourceOverlay(nil, env.LLGoRuntimeDir(), initial, conf)
	if err != nil {
		t.Fatal(err)
	}
	if !replaced["internal/sync"] {
		t.Fatal("expected internal/sync to be source-overlaid")
	}
	for _, name := range []string{"hashtriemap.go", "mutex.go", "runtime.go"} {
		target := filepath.Join(stdDir, name)
		got := string(overlay[target])
		if got == "" {
			t.Fatalf("missing stdlib overlay for %s", target)
		}
		src, err := os.ReadFile(filepath.Join(env.LLGoRuntimeDir(), "internal", "lib", "internal", "sync", name))
		if err != nil {
			t.Fatal(err)
		}
		if got != string(src) {
			t.Fatalf("overlay for %s did not match alt source", target)
		}
	}
}
