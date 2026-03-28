//go:build go1.26
// +build go1.26

package build

import (
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/env"
	llruntime "github.com/goplus/llgo/runtime"
)

func TestBuildSourcePatchOverlayForInternalSync(t *testing.T) {
	overlay, err := buildSourcePatchOverlayForGOROOT(nil, env.LLGoRuntimeDir(), runtime.GOROOT(), sourcePatchBuildContext{
		goos:      runtime.GOOS,
		goarch:    runtime.GOARCH,
		goversion: "go1.26.0",
	})
	if err != nil {
		t.Fatal(err)
	}

	syncDir := filepath.Join(runtime.GOROOT(), "src", "internal", "sync")
	patchFile := filepath.Join(syncDir, "z_llgo_patch_hashtriemap.go")
	patchSrc, ok := overlay[patchFile]
	if !ok {
		t.Fatalf("missing source patch file %s", patchFile)
	}
	if !strings.Contains(string(patchSrc), "type HashTrieMap") {
		t.Fatalf("source patch file %s does not contain HashTrieMap replacement", patchFile)
	}

	stdFile := filepath.Join(syncDir, "hashtriemap.go")
	stdSrc, ok := overlay[stdFile]
	if !ok {
		t.Fatalf("missing stub overlay for %s", stdFile)
	}
	got := string(stdSrc)
	if !strings.Contains(got, "package sync") {
		t.Fatalf("stub overlay for %s lost package clause", stdFile)
	}
	if strings.Contains(got, "type HashTrieMap") {
		t.Fatalf("stub overlay for %s still contains original declarations", stdFile)
	}
}

func TestInternalSyncUsesSourcePatchInsteadOfAltPkg(t *testing.T) {
	if !llruntime.HasSourcePatchPkg("internal/sync") {
		t.Fatal("internal/sync should be registered as a source patch package")
	}
	if llruntime.HasAltPkg("internal/sync") {
		t.Fatal("internal/sync should not remain an alt package")
	}
}
