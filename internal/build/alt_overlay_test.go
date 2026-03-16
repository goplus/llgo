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

func TestBuildAltOverlayRewritesMirrorFiles(t *testing.T) {
	tests := []struct {
		pkgPath string
		files   []string
	}{
		{pkgPath: "internal/sync", files: []string{"mutex.go", "hashtriemap.go"}},
		{pkgPath: "internal/reflectlite", files: []string{"type.go", "value.go"}},
		{pkgPath: "internal/runtime/maps", files: []string{"maps.go"}},
		{pkgPath: "reflect", files: []string{"value.go", "type.go", "swapper.go"}},
		{pkgPath: "runtime", files: []string{"reflect_linkname_llgo.go"}},
	}
	for _, tt := range tests {
		overlay, err := buildAltOverlay(nil, env.LLGoRuntimeDir(), []string{tt.pkgPath})
		if err != nil {
			t.Fatalf("%s: %v", tt.pkgPath, err)
		}
		for _, name := range tt.files {
			file := filepath.Join(env.LLGoRuntimeDir(), "internal", "lib", filepath.FromSlash(tt.pkgPath), name)
			got := string(overlay[file])
			if got == "" {
				t.Fatalf("%s: missing overlay for %s", tt.pkgPath, name)
			}
			if !strings.Contains(got, altPkgPathPrefix+"internal/") {
				t.Fatalf("%s: overlay for %s was not rewritten: %s", tt.pkgPath, name, got)
			}
		}
	}
}
