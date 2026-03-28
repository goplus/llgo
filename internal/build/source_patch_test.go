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

func TestBuildSourcePatchOverlayForSyncAtomic(t *testing.T) {
	overlay, err := buildSourcePatchOverlayForGOROOT(nil, env.LLGoRuntimeDir(), runtime.GOROOT())
	if err != nil {
		t.Fatal(err)
	}

	atomicDir := filepath.Join(runtime.GOROOT(), "src", "sync", "atomic")
	stdFile := filepath.Join(atomicDir, "value.go")
	stdSrc, ok := overlay[stdFile]
	if !ok {
		t.Fatalf("missing filtered stdlib file %s", stdFile)
	}
	got := string(stdSrc)
	for _, forbidden := range []string{"func (v *Value) Store", "func (v *Value) Swap", "func (v *Value) CompareAndSwap", "func runtime_procPin()", "func runtime_procUnpin()"} {
		if strings.Contains(got, forbidden) {
			t.Fatalf("expected source patch filtering to remove %q from %s, got:\n%s", forbidden, stdFile, got)
		}
	}

	patchFile := filepath.Join(atomicDir, "z_llgo_patch_value.go")
	patchSrc, ok := overlay[patchFile]
	if !ok {
		t.Fatalf("missing source patch file %s", patchFile)
	}
	for _, want := range []string{"func (v *Value) Store", "func (v *Value) Swap", "func (v *Value) CompareAndSwap"} {
		if !strings.Contains(string(patchSrc), want) {
			t.Fatalf("expected source patch file %s to contain %q", patchFile, want)
		}
	}
}

func TestSyncAtomicUsesSourcePatchInsteadOfAltPkg(t *testing.T) {
	if !llruntime.HasSourcePatchPkg("sync/atomic") {
		t.Fatal("sync/atomic should be registered as a source patch package")
	}
	if llruntime.HasAltPkg("sync/atomic") {
		t.Fatal("sync/atomic should not remain an alt package")
	}
}

func TestBuildSourcePatchOverlayForInternalRuntimeMaps(t *testing.T) {
	overlay, err := buildSourcePatchOverlayForGOROOT(nil, env.LLGoRuntimeDir(), runtime.GOROOT())
	if err != nil {
		t.Fatal(err)
	}

	pkgDir := filepath.Join(runtime.GOROOT(), "src", "internal", "runtime", "maps")
	stdFile := filepath.Join(pkgDir, "runtime.go")
	stdSrc, ok := overlay[stdFile]
	if !ok {
		t.Fatalf("missing filtered stdlib file %s", stdFile)
	}
	got := string(stdSrc)
	for _, forbidden := range []string{"func fatal(", "func rand()", "func typedmemmove(", "func typedmemclr(", "func newarray(", "func newobject("} {
		if strings.Contains(got, forbidden) {
			t.Fatalf("expected source patch filtering to remove %q from %s, got:\n%s", forbidden, stdFile, got)
		}
	}

	patchFile := filepath.Join(pkgDir, "z_llgo_patch_maps.go")
	patchSrc, ok := overlay[patchFile]
	if !ok {
		t.Fatalf("missing source patch file %s", patchFile)
	}
	for _, want := range []string{"func fatal(", "func rand()", "func mapKeyError(", "func typeString("} {
		if !strings.Contains(string(patchSrc), want) {
			t.Fatalf("expected source patch file %s to contain %q", patchFile, want)
		}
	}
}

func TestBuildSourcePatchOverlayForInternalRuntimeSys(t *testing.T) {
	overlay, err := buildSourcePatchOverlayForGOROOT(nil, env.LLGoRuntimeDir(), runtime.GOROOT())
	if err != nil {
		t.Fatal(err)
	}

	pkgDir := filepath.Join(runtime.GOROOT(), "src", "internal", "runtime", "sys")
	stdFile := filepath.Join(pkgDir, "intrinsics.go")
	stdSrc, ok := overlay[stdFile]
	if !ok {
		t.Fatalf("missing filtered stdlib file %s", stdFile)
	}
	got := string(stdSrc)
	for _, forbidden := range []string{"func GetCallerPC()", "func GetCallerSP()"} {
		if strings.Contains(got, forbidden) {
			t.Fatalf("expected source patch filtering to remove %q from %s, got:\n%s", forbidden, stdFile, got)
		}
	}

	patchFile := filepath.Join(pkgDir, "z_llgo_patch_intrinsics.go")
	patchSrc, ok := overlay[patchFile]
	if !ok {
		t.Fatalf("missing source patch file %s", patchFile)
	}
	for _, want := range []string{"func GetCallerPC() uintptr", "func GetCallerSP() uintptr"} {
		if !strings.Contains(string(patchSrc), want) {
			t.Fatalf("expected source patch file %s to contain %q", patchFile, want)
		}
	}
}

func TestInternalRuntimeMapsUsesSourcePatchInsteadOfAltPkg(t *testing.T) {
	if !llruntime.HasSourcePatchPkg("internal/runtime/maps") {
		t.Fatal("internal/runtime/maps should be registered as a source patch package")
	}
	if llruntime.HasAltPkg("internal/runtime/maps") {
		t.Fatal("internal/runtime/maps should not remain an alt package")
	}
}

func TestInternalRuntimeSysUsesSourcePatchInsteadOfAltPkg(t *testing.T) {
	if !llruntime.HasSourcePatchPkg("internal/runtime/sys") {
		t.Fatal("internal/runtime/sys should be registered as a source patch package")
	}
	if llruntime.HasAltPkg("internal/runtime/sys") {
		t.Fatal("internal/runtime/sys should not remain an alt package")
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
		if strings.Contains(patchSrc, "llgo:skip") {
			t.Fatalf("expected source patch directives to be stripped, got:\n%s", patchSrc)
		}
		for _, want := range []string{"var Added", "func Old", "func (T) M"} {
			if !strings.Contains(patchSrc, want) {
				t.Fatalf("expected injected patch declaration %q, got:\n%s", want, patchSrc)
			}
		}
	})

	t.Run("default-override", func(t *testing.T) {
		goroot := t.TempDir()
		runtimeDir := t.TempDir()
		pkgPath := "demo"
		srcDir := filepath.Join(goroot, "src", pkgPath)
		patchDir := filepath.Join(runtimeDir, "internal", "lib", pkgPath)
		mustWriteFile(t, filepath.Join(srcDir, "demo.go"), `package demo

func Old() string { return "old" }
func Keep() string { return "keep" }
`)
		mustWriteFile(t, filepath.Join(patchDir, "patch.go"), `package demo

func Old() string { return "new" }
func Added() string { return "added" }
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
			t.Fatalf("expected patch declaration to override Old, got:\n%s", got)
		}
		if !strings.Contains(got, "func Keep") {
			t.Fatalf("expected Keep to remain, got:\n%s", got)
		}

		patchFile := filepath.Join(srcDir, "z_llgo_patch_patch.go")
		patchSrc := string(overlay[patchFile])
		if strings.Contains(patchSrc, "llgo:skipall") {
			t.Fatalf("expected source patch directives to be stripped, got:\n%s", patchSrc)
		}
		for _, want := range []string{"func Old", "func Added"} {
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
		if patchSrc := string(overlay[patchFile]); strings.Contains(patchSrc, "llgo:skipall") {
			t.Fatalf("expected source patch directives to be stripped, got:\n%s", patchSrc)
		} else if !strings.Contains(patchSrc, `const Only = "patched"`) {
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
