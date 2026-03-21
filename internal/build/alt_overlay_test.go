package build

import (
	"go/token"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/env"
	ipackages "github.com/goplus/llgo/internal/packages"
)

func TestRewriteAltImports(t *testing.T) {
	src := []byte(`package p

import (
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
		{pkgPath: "internal/sync", files: []string{"mutex.go"}},
		{pkgPath: "internal/reflectlite", files: []string{"value.go"}},
		{pkgPath: "internal/chacha8rand", files: []string{"chacha8_generic.go"}},
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

func TestBuildAltOverlayLoadsReflectAltPackage(t *testing.T) {
	testBuildAltOverlayLoadsAltPackage(t, "reflect")
}

func TestBuildAltOverlayLoadsInternalSyncAltPackage(t *testing.T) {
	testBuildAltOverlayLoadsAltPackage(t, "internal/sync")
}

func TestBuildAltOverlayLoadsInternalBytealgAltPackage(t *testing.T) {
	testBuildAltOverlayLoadsAltPackage(t, "internal/bytealg")
}

func TestBuildAltOverlayLoadsInternalAbiAltPackage(t *testing.T) {
	testBuildAltOverlayLoadsAltPackage(t, "internal/abi")
}

func TestBuildAltOverlayLoadsInternalChacha8randAltPackage(t *testing.T) {
	testBuildAltOverlayLoadsAltPackage(t, "internal/chacha8rand")
}

func TestBuildAltOverlayLoadsRuntimeAltPackage(t *testing.T) {
	testBuildAltOverlayLoadsAltPackage(t, "runtime")
}

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

func testBuildAltOverlayLoadsAltPackage(t *testing.T, pkgPath string) {
	mode := ipackages.NeedName |
		ipackages.NeedFiles |
		ipackages.NeedCompiledGoFiles |
		ipackages.NeedImports |
		ipackages.NeedTypes |
		ipackages.NeedTypesSizes |
		ipackages.NeedSyntax |
		ipackages.NeedTypesInfo
	cfg := &ipackages.Config{
		Dir:   env.LLGoRuntimeDir(),
		Fset:  token.NewFileSet(),
		Mode:  mode,
		Tests: false,
	}
	overlay, err := buildAltOverlay(nil, cfg.Dir, []string{pkgPath})
	if err != nil {
		t.Fatal(err)
	}
	cfg.Overlay = overlay
	pkgs, err := ipackages.LoadEx(ipackages.NewDeduper(), nil, cfg, altPkgPathPrefix+pkgPath)
	if err != nil {
		t.Fatal(err)
	}
	if len(pkgs) != 1 {
		t.Fatalf("%s: loaded %d packages, want 1", pkgPath, len(pkgs))
	}
	if len(pkgs[0].Errors) != 0 {
		t.Fatalf("%s alt package has errors: %v", pkgPath, pkgs[0].Errors)
	}
}
