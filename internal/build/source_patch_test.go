package build

import (
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/env"
	llruntime "github.com/goplus/llgo/runtime"
)

func TestBuildSourcePatchOverlayForIter(t *testing.T) {
	overlay, err := buildSourcePatchOverlayForGOROOT(nil, env.LLGoRuntimeDir(), runtime.GOROOT())
	if err != nil {
		t.Fatal(err)
	}

	iterDir := filepath.Join(runtime.GOROOT(), "src", "iter")
	patchFile := filepath.Join(iterDir, "z_llgo_patch_iter.go")
	patchSrc, ok := overlay[patchFile]
	if !ok {
		t.Fatalf("missing source patch file %s", patchFile)
	}
	if !strings.Contains(string(patchSrc), "func Pull[V any]") {
		t.Fatalf("source patch file %s does not contain iter replacement", patchFile)
	}

	stdFile := filepath.Join(iterDir, "iter.go")
	stdSrc, ok := overlay[stdFile]
	if !ok {
		t.Fatalf("missing stub overlay for %s", stdFile)
	}
	got := string(stdSrc)
	if !strings.Contains(got, "package iter") {
		t.Fatalf("stub overlay for %s lost package clause", stdFile)
	}
	if strings.Contains(got, "func Pull") {
		t.Fatalf("stub overlay for %s still contains original declarations", stdFile)
	}
}

func TestIterUsesSourcePatchInsteadOfAltPkg(t *testing.T) {
	if !llruntime.HasSourcePatchPkg("iter") {
		t.Fatal("iter should be registered as a source patch package")
	}
	if llruntime.HasAltPkg("iter") {
		t.Fatal("iter should not remain an alt package")
	}
}

func TestApplySourcePatchForPkg_Directives(t *testing.T) {
	t.Run("skip-and-override", func(t *testing.T) {
		goroot := t.TempDir()
		runtimeDir := t.TempDir()
		pkgPath := "demo"
		srcDir := filepath.Join(goroot, "src", pkgPath)
		patchDir := filepath.Join(runtimeDir, "internal", "lib", pkgPath)
		mustWriteFile(t, filepath.Join(srcDir, "demo.go"), `package demo

import "fmt"

const Keep = "keep"

var Drop = fmt.Sprint("drop")

type T struct{}

func Old() string { return fmt.Sprint("old") }
func KeepFn() string { return Keep }
func (T) M() string { return fmt.Sprint("old method") }
`)
		mustWriteFile(t, filepath.Join(patchDir, "patch.go"), `package demo

//llgo:skip Drop

import "strings"

var Added = strings.ToUpper("added")

func Old() string { return "new" }
func (T) M() string { return "new method" }
`)

		changed, overlay, err := applySourcePatchForPkg(nil, nil, runtimeDir, goroot, pkgPath)
		if err != nil {
			t.Fatal(err)
		}
		if !changed {
			t.Fatal("expected source patch overlay to change package")
		}

		stdFile := filepath.Join(srcDir, "demo.go")
		got := string(overlay[stdFile])
		if strings.Contains(got, "fmt") {
			t.Fatalf("expected unused fmt import to be removed, got:\n%s", got)
		}
		if strings.Contains(got, "var Drop") {
			t.Fatalf("expected explicit skip to remove Drop, got:\n%s", got)
		}
		if strings.Contains(got, "func Old") {
			t.Fatalf("expected patch declaration to override Old, got:\n%s", got)
		}
		if strings.Contains(got, "func (T) M") {
			t.Fatalf("expected patch declaration to override T.M, got:\n%s", got)
		}
		for _, want := range []string{"const Keep", "type T struct{}", "func KeepFn"} {
			if !strings.Contains(got, want) {
				t.Fatalf("expected original declaration %q to remain, got:\n%s", want, got)
			}
		}

		patchFile := filepath.Join(srcDir, "z_llgo_patch_patch.go")
		patchSrc := string(overlay[patchFile])
		for _, want := range []string{"var Added", "func Old", "func (T) M"} {
			if !strings.Contains(patchSrc, want) {
				t.Fatalf("expected injected patch declaration %q, got:\n%s", want, patchSrc)
			}
		}
	})

	t.Run("skipall", func(t *testing.T) {
		goroot := t.TempDir()
		runtimeDir := t.TempDir()
		pkgPath := "demo"
		srcDir := filepath.Join(goroot, "src", pkgPath)
		patchDir := filepath.Join(runtimeDir, "internal", "lib", pkgPath)
		mustWriteFile(t, filepath.Join(srcDir, "demo.go"), `package demo

func Old() string { return "old" }
`)
		mustWriteFile(t, filepath.Join(patchDir, "patch.go"), `// llgo:skipall
package demo

const Only = "patched"
`)

		changed, overlay, err := applySourcePatchForPkg(nil, nil, runtimeDir, goroot, pkgPath)
		if err != nil {
			t.Fatal(err)
		}
		if !changed {
			t.Fatal("expected source patch overlay to change package")
		}

		stdFile := filepath.Join(srcDir, "demo.go")
		got := string(overlay[stdFile])
		if strings.Contains(got, "func Old") {
			t.Fatalf("expected skipall to stub original file, got:\n%s", got)
		}
		if !strings.Contains(got, "package demo") {
			t.Fatalf("expected package clause to remain, got:\n%s", got)
		}

		patchFile := filepath.Join(srcDir, "z_llgo_patch_patch.go")
		if patchSrc := string(overlay[patchFile]); !strings.Contains(patchSrc, `const Only = "patched"`) {
			t.Fatalf("expected skipall patch file to be injected, got:\n%s", patchSrc)
		}
	})
}

func mustWriteFile(t *testing.T, filename, content string) {
	t.Helper()
	if err := os.MkdirAll(filepath.Dir(filename), 0755); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filename, []byte(content), 0644); err != nil {
		t.Fatal(err)
	}
}
