package build

import (
	"go/ast"
	"go/parser"
	"go/token"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/internal/env"
	llruntime "github.com/goplus/llgo/runtime"
)

func TestBuildSourcePatchOverlayForIter(t *testing.T) {
	overlay, err := buildSourcePatchOverlayForGOROOT(nil, env.LLGoRuntimeDir(), runtime.GOROOT(), sourcePatchBuildContext{})
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
	if !strings.HasPrefix(string(patchSrc), sourcePatchLineDirective(filepath.Join(env.LLGoRuntimeDir(), "internal", "lib", "iter", "iter.go"))) {
		t.Fatalf("source patch file %s is missing line directive, got:\n%s", patchFile, patchSrc)
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

func TestSyncAtomicRemainsAltPkg(t *testing.T) {
	if llruntime.HasSourcePatchPkg("sync/atomic") {
		t.Fatal("sync/atomic should not be registered as a source patch package")
	}
	if !llruntime.HasAltPkg("sync/atomic") {
		t.Fatal("sync/atomic should remain an alt package")
	}
}

func TestInternalRuntimeMapsRemainsAltPkg(t *testing.T) {
	if llruntime.HasSourcePatchPkg("internal/runtime/maps") {
		t.Fatal("internal/runtime/maps should not be registered as a source patch package")
	}
	if !llruntime.HasAltPkg("internal/runtime/maps") {
		t.Fatal("internal/runtime/maps should remain an alt package")
	}
}

func TestInternalRuntimeSysRemainsAltPkg(t *testing.T) {
	if llruntime.HasSourcePatchPkg("internal/runtime/sys") {
		t.Fatal("internal/runtime/sys should not be registered as a source patch package")
	}
	if !llruntime.HasAltPkg("internal/runtime/sys") {
		t.Fatal("internal/runtime/sys should remain an alt package")
	}
	if !llruntime.HasAdditiveAltPkg("internal/runtime/sys") {
		t.Fatal("internal/runtime/sys should remain an additive alt package")
	}
}

func TestApplySourcePatchForPkg_Directives(t *testing.T) {
	t.Run("skip-and-override", func(t *testing.T) {
		goroot := t.TempDir()
		runtimeDir := t.TempDir()
		pkgPath := "demo"
		srcDir := filepath.Join(goroot, "src", pkgPath)
		patchDir := filepath.Join(runtimeDir, "internal", "lib", pkgPath)
		stdFile := filepath.Join(srcDir, "demo.go")
		patchFile := filepath.Join(patchDir, "patch.go")
		mustWriteFile(t, stdFile, `package demo

import "fmt"

const Keep = "keep"

var Drop = fmt.Sprint("drop")

type T struct{}

func Old() string { return fmt.Sprint("old") }
func KeepFn() string { return Keep }
func (T) M() string { return fmt.Sprint("old method") }
`)
		mustWriteFile(t, patchFile, `package demo

//llgo:skip Drop

import "strings"

var Added = strings.ToUpper("added")

func Old() string { return "new" }
func (T) M() string { return "new method" }
`)

		changed, overlay, err := applySourcePatchForPkg(nil, nil, runtimeDir, goroot, pkgPath, sourcePatchBuildContext{})
		if err != nil {
			t.Fatal(err)
		}
		if !changed {
			t.Fatal("expected source patch overlay to change package")
		}

		assertExactString(t, "filtered stdlib source", string(overlay[stdFile]), ""+
			"package demo\n"+
			"\n"+
			blankNonNewline(`import "fmt"`)+"\n"+
			"\n"+
			`const Keep = "keep"`+"\n"+
			"\n"+
			blankNonNewline(`var Drop = fmt.Sprint("drop")`)+"\n"+
			"\n"+
			`type T struct{}`+"\n"+
			"\n"+
			blankNonNewline(`func Old() string { return fmt.Sprint("old") }`)+"\n"+
			`func KeepFn() string { return Keep }`+"\n"+
			blankNonNewline(`func (T) M() string { return fmt.Sprint("old method") }`)+"\n")

		injectedPatch := filepath.Join(srcDir, "z_llgo_patch_patch.go")
		assertExactString(t, "injected patch source", string(overlay[injectedPatch]),
			sourcePatchLineDirective(patchFile)+`package demo

//llgo_skip Drop

import "strings"

var Added = strings.ToUpper("added")

func Old() string { return "new" }
func (T) M() string { return "new method" }
`)

		assertPatchedPosition(t, string(overlay[injectedPatch]), injectedPatch, patchFile, "package", 1)
		assertPatchedPosition(t, string(overlay[injectedPatch]), injectedPatch, patchFile, "var:Added", 7)
		assertPatchedPosition(t, string(overlay[injectedPatch]), injectedPatch, patchFile, "func:Old", 9)
		assertPatchedPosition(t, string(overlay[injectedPatch]), injectedPatch, patchFile, "method:T.M", 10)
	})

	t.Run("default-override", func(t *testing.T) {
		goroot := t.TempDir()
		runtimeDir := t.TempDir()
		pkgPath := "demo"
		srcDir := filepath.Join(goroot, "src", pkgPath)
		patchDir := filepath.Join(runtimeDir, "internal", "lib", pkgPath)
		stdFile := filepath.Join(srcDir, "demo.go")
		patchFile := filepath.Join(patchDir, "patch.go")
		mustWriteFile(t, stdFile, `package demo

func Old() string { return "old" }
func Keep() string { return "keep" }
`)
		mustWriteFile(t, patchFile, `package demo

func Old() string { return "new" }
func Added() string { return "added" }
`)

		changed, overlay, err := applySourcePatchForPkg(nil, nil, runtimeDir, goroot, pkgPath, sourcePatchBuildContext{})
		if err != nil {
			t.Fatal(err)
		}
		if !changed {
			t.Fatal("expected source patch overlay to change package")
		}

		assertExactString(t, "filtered stdlib source", string(overlay[stdFile]), ""+
			"package demo\n"+
			"\n"+
			blankNonNewline(`func Old() string { return "old" }`)+"\n"+
			`func Keep() string { return "keep" }`+"\n")

		injectedPatch := filepath.Join(srcDir, "z_llgo_patch_patch.go")
		assertExactString(t, "injected patch source", string(overlay[injectedPatch]),
			sourcePatchLineDirective(patchFile)+`package demo

func Old() string { return "new" }
func Added() string { return "added" }
`)

		assertPatchedPosition(t, string(overlay[injectedPatch]), injectedPatch, patchFile, "package", 1)
		assertPatchedPosition(t, string(overlay[injectedPatch]), injectedPatch, patchFile, "func:Old", 3)
		assertPatchedPosition(t, string(overlay[injectedPatch]), injectedPatch, patchFile, "func:Added", 4)
	})

	t.Run("skipall", func(t *testing.T) {
		goroot := t.TempDir()
		runtimeDir := t.TempDir()
		pkgPath := "demo"
		srcDir := filepath.Join(goroot, "src", pkgPath)
		patchDir := filepath.Join(runtimeDir, "internal", "lib", pkgPath)
		stdFile := filepath.Join(srcDir, "demo.go")
		patchFile := filepath.Join(patchDir, "patch.go")
		mustWriteFile(t, stdFile, `package demo

func Old() string { return "old" }
`)
		mustWriteFile(t, patchFile, `// llgo:skipall
package demo

const Only = "patched"
`)

		changed, overlay, err := applySourcePatchForPkg(nil, nil, runtimeDir, goroot, pkgPath, sourcePatchBuildContext{})
		if err != nil {
			t.Fatal(err)
		}
		if !changed {
			t.Fatal("expected source patch overlay to change package")
		}

		assertExactString(t, "stubbed stdlib source", string(overlay[stdFile]), "package demo\n")

		injectedPatch := filepath.Join(srcDir, "z_llgo_patch_patch.go")
		assertExactString(t, "injected patch source", string(overlay[injectedPatch]),
			sourcePatchLineDirective(patchFile)+`// llgo_skipall
package demo

const Only = "patched"
`)

		assertPatchedPosition(t, string(overlay[injectedPatch]), injectedPatch, patchFile, "package", 2)
		assertPatchedPosition(t, string(overlay[injectedPatch]), injectedPatch, patchFile, "const:Only", 4)
	})

}

func TestApplySourcePatchForPkg_MissingStdlibPkg(t *testing.T) {
	goroot := t.TempDir()
	runtimeDir := t.TempDir()
	pkgPath := "iter"
	patchDir := filepath.Join(runtimeDir, "internal", "lib", pkgPath)
	mustWriteFile(t, filepath.Join(patchDir, "iter.go"), `package iter

//llgo:skipall

func Pull[V any](seq func(func(V) bool)) {}
`)

	changed, overlay, err := applySourcePatchForPkg(nil, nil, runtimeDir, goroot, pkgPath, sourcePatchBuildContext{})
	if err != nil {
		t.Fatal(err)
	}
	if changed {
		t.Fatal("expected missing stdlib package to skip source patching")
	}
	if overlay != nil {
		t.Fatalf("expected no overlay for missing stdlib package, got %v entries", len(overlay))
	}
}

func TestApplySourcePatchForPkg_BuildTaggedPatch(t *testing.T) {
	goroot := t.TempDir()
	runtimeDir := t.TempDir()
	pkgPath := "demo"
	srcDir := filepath.Join(goroot, "src", pkgPath)
	patchDir := filepath.Join(runtimeDir, "internal", "lib", pkgPath)
	mustWriteFile(t, filepath.Join(srcDir, "demo.go"), `package demo

func Old() string { return "old" }
`)
	mustWriteFile(t, filepath.Join(patchDir, "patch.go"), `//go:build go1.26
//llgo:skipall
package demo

const Only = "patched"
`)

	changed, overlay, err := applySourcePatchForPkg(nil, nil, runtimeDir, goroot, pkgPath, sourcePatchBuildContext{
		goos:      runtime.GOOS,
		goarch:    runtime.GOARCH,
		goversion: "go1.24.11",
	})
	if err != nil {
		t.Fatal(err)
	}
	if changed {
		t.Fatalf("expected go1.26-tagged patch to be ignored on go1.24, got overlay: %#v", overlay)
	}

	changed, overlay, err = applySourcePatchForPkg(nil, nil, runtimeDir, goroot, pkgPath, sourcePatchBuildContext{
		goos:      runtime.GOOS,
		goarch:    runtime.GOARCH,
		goversion: "go1.26.0",
	})
	if err != nil {
		t.Fatal(err)
	}
	if !changed {
		t.Fatal("expected go1.26-tagged patch to apply on go1.26")
	}
}

func TestApplySourcePatchForPkg_UnreadableStdlibPkg(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("chmod-based permission test is Unix-only")
	}
	goroot := t.TempDir()
	runtimeDir := t.TempDir()
	pkgPath := "iter"
	srcDir := filepath.Join(goroot, "src", pkgPath)
	patchDir := filepath.Join(runtimeDir, "internal", "lib", pkgPath)
	if err := os.MkdirAll(srcDir, 0755); err != nil {
		t.Fatal(err)
	}
	if err := os.Chmod(srcDir, 0); err != nil {
		t.Fatal(err)
	}
	defer os.Chmod(srcDir, 0755)
	mustWriteFile(t, filepath.Join(patchDir, "iter.go"), `package iter

//llgo:skipall

func Pull[V any](seq func(func(V) bool)) {}
`)

	changed, overlay, err := applySourcePatchForPkg(nil, nil, runtimeDir, goroot, pkgPath, sourcePatchBuildContext{})
	if err != nil {
		t.Fatal(err)
	}
	if changed {
		t.Fatal("expected unreadable stdlib package to skip source patching")
	}
	if overlay != nil {
		t.Fatalf("expected no overlay for unreadable stdlib package, got %v entries", len(overlay))
	}
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

func blankNonNewline(s string) string {
	var b strings.Builder
	b.Grow(len(s))
	for _, r := range s {
		switch r {
		case '\n', '\r':
			b.WriteRune(r)
		default:
			b.WriteByte(' ')
		}
	}
	return b.String()
}

func sourcePatchLineDirective(filename string) string {
	return "//line " + filepath.ToSlash(filename) + ":1\n"
}

func assertExactString(t *testing.T, label, got, want string) {
	t.Helper()
	if got != want {
		t.Fatalf("%s mismatch\nwant:\n%q\n\ngot:\n%q", label, want, got)
	}
}

func assertPatchedPosition(t *testing.T, src, generatedFilename, wantFilename, target string, wantLine int) {
	t.Helper()
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, generatedFilename, src, parser.ParseComments)
	if err != nil {
		t.Fatal(err)
	}
	pos, ok := findPatchedPosition(file, target)
	if !ok {
		t.Fatalf("target %q not found", target)
	}
	got := fset.Position(pos)
	if filepath.ToSlash(got.Filename) != filepath.ToSlash(wantFilename) || got.Line != wantLine {
		t.Fatalf("target %q position mismatch: want %s:%d, got %s:%d", target, filepath.ToSlash(wantFilename), wantLine, filepath.ToSlash(got.Filename), got.Line)
	}
}

func findPatchedPosition(file *ast.File, target string) (token.Pos, bool) {
	if target == "package" {
		return file.Package, true
	}
	for _, decl := range file.Decls {
		switch decl := decl.(type) {
		case *ast.FuncDecl:
			key := "func:" + decl.Name.Name
			if decl.Recv != nil && len(decl.Recv.List) != 0 {
				key = "method:" + recvPatchKey(decl.Recv.List[0].Type) + "." + decl.Name.Name
			}
			if key == target {
				return decl.Name.Pos(), true
			}
		case *ast.GenDecl:
			for _, spec := range decl.Specs {
				switch spec := spec.(type) {
				case *ast.TypeSpec:
					if "type:"+spec.Name.Name == target {
						return spec.Name.Pos(), true
					}
				case *ast.ValueSpec:
					kind := strings.ToLower(decl.Tok.String())
					for _, name := range spec.Names {
						if kind+":"+name.Name == target {
							return name.Pos(), true
						}
					}
				}
			}
		}
	}
	return token.NoPos, false
}
