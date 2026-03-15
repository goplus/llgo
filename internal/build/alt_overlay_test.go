package build

import (
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/env"
)

func TestRewriteAltImports(t *testing.T) {
	src := []byte(`package p

import (
	"internal/abi"
	"internal/goarch"
	"internal/race"
	"sync/atomic"
)
`)
	got, changed, err := rewriteAltImports(src)
	if err != nil {
		t.Fatal(err)
	}
	if !changed {
		t.Fatal("expected rewrite")
	}
	s := string(got)
	for _, want := range []string{
		`"` + altPkgPathPrefix + `internal/abi"`,
		`"` + altPkgPathPrefix + `internal/goarch"`,
		`"` + altPkgPathPrefix + `internal/race"`,
		`"sync/atomic"`,
	} {
		if !strings.Contains(s, want) {
			t.Fatalf("missing %s in %s", want, s)
		}
	}
}

func TestBuildAltOverlayRewritesInternalSyncFiles(t *testing.T) {
	overlay, err := buildAltOverlay(nil, env.LLGoRuntimeDir(), []string{"internal/sync"})
	if err != nil {
		t.Fatal(err)
	}
	for _, name := range []string{"mutex.go", "hashtriemap.go"} {
		file := filepath.Join(env.LLGoRuntimeDir(), "internal", "lib", "internal", "sync", name)
		got := string(overlay[file])
		if got == "" {
			t.Fatalf("missing overlay for %s", name)
		}
		if !strings.Contains(got, altPkgPathPrefix+"internal/") {
			t.Fatalf("overlay for %s was not rewritten: %s", name, got)
		}
	}
}
