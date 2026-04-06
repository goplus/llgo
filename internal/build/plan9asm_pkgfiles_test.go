package build

import (
	"os"
	"path/filepath"
	"runtime"
	"testing"

	"golang.org/x/tools/go/packages"
)

func TestPkgSFilesQueryForTempDirPackage(t *testing.T) {
	tmp := t.TempDir()
	pkg := &packages.Package{
		PkgPath: "_/" + filepath.ToSlash(tmp),
		Dir:     tmp,
	}
	if got := pkgSFilesQuery(pkg); got != "." {
		t.Fatalf("pkgSFilesQuery()=%q, want .", got)
	}
}

func TestPkgSFilesListsAsmForTempDirPackage(t *testing.T) {
	tmp := t.TempDir()
	if err := os.WriteFile(filepath.Join(tmp, "main.go"), []byte("package main\nfunc main(){}\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(filepath.Join(tmp, "a.s"), []byte("TEXT ·noop(SB), 4, $0-0\n\tRET\n"), 0o644); err != nil {
		t.Fatal(err)
	}

	t.Setenv("GO111MODULE", "off")
	pkg := &packages.Package{
		ID:      "temp-main",
		PkgPath: "_/" + filepath.ToSlash(tmp),
		Dir:     tmp,
	}
	ctx := &context{
		buildConf: &Config{Goos: runtime.GOOS, Goarch: runtime.GOARCH},
	}

	files, err := pkgSFiles(ctx, pkg)
	if err != nil {
		t.Fatal(err)
	}
	want, err := filepath.EvalSymlinks(filepath.Join(tmp, "a.s"))
	if err != nil {
		t.Fatal(err)
	}
	if len(files) != 1 || files[0] != want {
		t.Fatalf("pkgSFiles()=%v, want [%q]", files, want)
	}
}
