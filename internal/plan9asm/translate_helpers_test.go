//go:build !llgo
// +build !llgo

package plan9asm

import (
	"go/ast"
	"go/importer"
	"go/parser"
	"go/token"
	"go/types"
	"os"
	"path/filepath"
	"testing"

	llpackages "github.com/goplus/llgo/internal/packages"
	extplan9asm "github.com/goplus/plan9asm"
)

func mustTestPackage(t *testing.T, pkgPath, src string) *llpackages.Package {
	t.Helper()
	fset := token.NewFileSet()
	f, err := parser.ParseFile(fset, "in.go", src, parser.ParseComments)
	if err != nil {
		t.Fatalf("parse file: %v", err)
	}
	info := &types.Info{
		Defs: map[*ast.Ident]types.Object{},
		Uses: map[*ast.Ident]types.Object{},
	}
	conf := types.Config{Importer: importer.Default()}
	tpkg, err := conf.Check(pkgPath, fset, []*ast.File{f}, info)
	if err != nil {
		t.Fatalf("type-check package: %v", err)
	}
	return &llpackages.Package{
		ID:        pkgPath,
		Name:      f.Name.Name,
		PkgPath:   pkgPath,
		Fset:      fset,
		Syntax:    []*ast.File{f},
		Types:     tpkg,
		TypesInfo: info,
		Imports:   map[string]*llpackages.Package{},
	}
}

func TestTranslateWrappersAndErrors(t *testing.T) {
	pkg := mustTestPackage(t, "example.com/foo", `package foo
func Foo()
`)
	asmPath := filepath.Join(t.TempDir(), "foo_amd64.s")
	asm := []byte("TEXT ·Foo(SB),NOSPLIT,$0-0\n\tRET\n")

	if _, err := TranslateFileForPkgWithOptions(nil, asmPath, "linux", "amd64", nil, TranslateOptions{}); err == nil {
		t.Fatal("TranslateFileForPkgWithOptions(nil) should fail")
	}
	if _, err := TranslateSourceModuleForPkgWithOptions(&llpackages.Package{}, asmPath, asm, "linux", "amd64", TranslateOptions{}); err == nil {
		t.Fatal("TranslateSourceModuleForPkgWithOptions(empty pkg) should fail")
	}
	if _, err := TranslateSourceModuleForPkgWithOptions(&llpackages.Package{PkgPath: "example.com/bad"}, asmPath, asm, "linux", "amd64", TranslateOptions{}); err == nil {
		t.Fatal("TranslateSourceModuleForPkgWithOptions(missing types) should fail")
	}

	overlay := map[string][]byte{asmPath: asm}
	fileTr, err := TranslateFileForPkgWithOptions(pkg, asmPath, "linux", "amd64", overlay, TranslateOptions{AnnotateSource: true})
	if err != nil {
		t.Fatalf("TranslateFileForPkgWithOptions: %v", err)
	}
	if fileTr.LLVMIR == "" {
		t.Fatal("TranslateFileForPkgWithOptions returned empty LLVM IR")
	}
	if got := len(fileTr.Functions); got != 1 {
		t.Fatalf("function count = %d, want 1", got)
	}
	if got := fileTr.Functions[0].ResolvedSymbol; got != "example.com/foo.Foo" {
		t.Fatalf("resolved symbol = %q, want %q", got, "example.com/foo.Foo")
	}
	if _, ok := fileTr.Signatures["example.com/foo.Foo"]; !ok {
		t.Fatal("missing signature for example.com/foo.Foo")
	}

	fileTr2, err := TranslateSourceForPkg(pkg, asmPath, asm, "linux", "amd64")
	if err != nil {
		t.Fatalf("TranslateSourceForPkg: %v", err)
	}
	if len(fileTr2.Functions) != 1 {
		t.Fatalf("TranslateSourceForPkg function count = %d, want 1", len(fileTr2.Functions))
	}

	modTr, err := TranslateSourceModuleForPkg(pkg, asmPath, asm, "linux", "amd64")
	if err != nil {
		t.Fatalf("TranslateSourceModuleForPkg: %v", err)
	}
	defer modTr.Module.Dispose()
	if got := len(modTr.Functions); got != 1 {
		t.Fatalf("TranslateSourceModuleForPkg function count = %d, want 1", got)
	}
}

func TestTranslateHelperFunctions(t *testing.T) {
	if got := StripABISuffix("runtime·cmpstring<ABIInternal>"); got != "runtime·cmpstring" {
		t.Fatalf("StripABISuffix runtime = %q", got)
	}
	if got := StripABISuffix("cmpbody<>"); got != "cmpbody" {
		t.Fatalf("StripABISuffix local helper = %q", got)
	}

	resolvePkg := ResolveSymFunc("example.com/foo")
	if got := resolvePkg("·Foo<ABIInternal>"); got != "example.com/foo.Foo" {
		t.Fatalf("ResolveSymFunc local = %q", got)
	}
	if got := resolvePkg("runtime·bar"); got != "runtime.bar" {
		t.Fatalf("ResolveSymFunc remote = %q", got)
	}
	if got := resolvePkg("plain"); got != "example.com/foo.plain" {
		t.Fatalf("ResolveSymFunc plain = %q", got)
	}

	resolveBytealg := ResolveSymFunc("internal/bytealg")
	if got := resolveBytealg("runtime·cmpstring<ABIInternal>"); got != "runtime.cmpstring" {
		t.Fatalf("ResolveSymFunc bytealg runtime = %q", got)
	}
	if got := resolveBytealg("cmpbody<>"); got != "internal/bytealg.cmpbody" {
		t.Fatalf("ResolveSymFunc bytealg helper = %q", got)
	}
	if got := resolveBytealg("·Count"); got != "internal/bytealg.Count" {
		t.Fatalf("ResolveSymFunc bytealg local = %q", got)
	}
	resolveDarwinSyscall := resolveSymFuncForTarget("syscall", "darwin", "arm64")
	if got := resolveDarwinSyscall("·RawSyscall"); got != "syscall.rawSyscall" {
		t.Fatalf("resolveSymFuncForTarget darwin RawSyscall = %q", got)
	}
	if got := resolveDarwinSyscall("·RawSyscall6"); got != "syscall.rawSyscall6" {
		t.Fatalf("resolveSymFuncForTarget darwin RawSyscall6 = %q", got)
	}

	if shouldKeepResolvedFunc("syscall", "linux", "amd64", "syscall.rawVforkSyscall") {
		t.Fatal("linux rawVforkSyscall should be filtered")
	}
	if shouldKeepResolvedFunc("syscall", "darwin", "arm64", "syscall.rawSyscall") {
		t.Fatal("darwin rawSyscall should be filtered")
	}
	if shouldKeepResolvedFunc("syscall", "darwin", "amd64", "syscall.rawSyscall6") {
		t.Fatal("darwin rawSyscall6 should be filtered")
	}
	if !shouldKeepResolvedFunc("syscall", "linux", "amd64", "syscall.Syscall") {
		t.Fatal("normal syscall symbol should be kept")
	}

	if got := FilterFuncs("syscall", "linux", "amd64", nil, resolvePkg); got != nil {
		t.Fatalf("FilterFuncs(nil) = %#v, want nil", got)
	}
	funcs := []extplan9asm.Func{{Sym: "·rawVforkSyscall"}, {Sym: "·Keep"}}
	filtered := FilterFuncs("syscall", "linux", "amd64", funcs, ResolveSymFunc("syscall"))
	if len(filtered) != 1 || filtered[0].Sym != "·Keep" {
		t.Fatalf("FilterFuncs linux = %#v, want only Keep", filtered)
	}
	darwinFuncs := []extplan9asm.Func{{Sym: "·RawSyscall"}, {Sym: "·RawSyscall6"}, {Sym: "·Syscall"}}
	darwinFiltered := FilterFuncs("syscall", "darwin", "arm64", darwinFuncs, resolveDarwinSyscall)
	if len(darwinFiltered) != 1 || darwinFiltered[0].Sym != "·Syscall" {
		t.Fatalf("FilterFuncs darwin = %#v, want only Syscall kept", darwinFiltered)
	}

	tmpDir := t.TempDir()
	commentFile := filepath.Join(tmpDir, "comment.s")
	textFile := filepath.Join(tmpDir, "text.s")
	if err := os.WriteFile(commentFile, []byte("// comment only\n"), 0o644); err != nil {
		t.Fatalf("write comment file: %v", err)
	}
	if err := os.WriteFile(textFile, []byte("TEXT ·Foo(SB),NOSPLIT,$0-0\nRET\n"), 0o644); err != nil {
		t.Fatalf("write text file: %v", err)
	}
	if b, err := ReadFileWithOverlay(map[string][]byte{textFile: []byte("overlay")}, textFile); err != nil || string(b) != "overlay" {
		t.Fatalf("ReadFileWithOverlay overlay = %q, %v", string(b), err)
	}
	if b, err := ReadFileWithOverlay(nil, commentFile); err != nil || string(b) != "// comment only\n" {
		t.Fatalf("ReadFileWithOverlay file = %q, %v", string(b), err)
	}
	if ok, err := HasAnyTextAsm(nil, []string{commentFile}); err != nil || ok {
		t.Fatalf("HasAnyTextAsm(no text) = %v, %v", ok, err)
	}
	if ok, err := HasAnyTextAsm(nil, []string{commentFile, textFile}); err != nil || !ok {
		t.Fatalf("HasAnyTextAsm(with text) = %v, %v", ok, err)
	}
	if _, err := HasAnyTextAsm(nil, []string{filepath.Join(tmpDir, "missing.s")}); err == nil {
		t.Fatal("HasAnyTextAsm(missing file) should fail")
	}
}

func TestExtraAsmSigsAndDeclMap(t *testing.T) {
	if got := extraAsmSigsAndDeclMap("other/pkg", "amd64"); len(got) != 0 {
		t.Fatalf("unexpected manual sigs for other/pkg: %#v", got)
	}

	arm64 := extraAsmSigsAndDeclMap("internal/bytealg", "arm64")
	for _, name := range []string{
		"internal/bytealg.cmpbody",
		"internal/bytealg.memeqbody",
		"internal/bytealg.countbytebody",
		"internal/bytealg.indexbody",
		"internal/bytealg.indexbytebody",
	} {
		if _, ok := arm64[name]; !ok {
			t.Fatalf("missing arm64 manual sig %s", name)
		}
	}

	amd64 := extraAsmSigsAndDeclMap("internal/bytealg", "amd64")
	for _, name := range []string{
		"internal/bytealg.cmpbody",
		"internal/bytealg.countbody",
		"internal/bytealg.indexbody",
		"internal/bytealg.indexbytebody",
		"internal/bytealg.memeqbody",
	} {
		if _, ok := amd64[name]; !ok {
			t.Fatalf("missing amd64 manual sig %s", name)
		}
	}
}
