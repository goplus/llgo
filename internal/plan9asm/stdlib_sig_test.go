package plan9asm

import (
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	intllvm "github.com/goplus/llgo/internal/xtool/llvm"
)

func TestStdlibBoringSig_CompileManyTriples(t *testing.T) {
	llc, _, ok := findLlcAndClang(t)
	if !ok {
		t.Skip("llc not found")
	}

	goroot := runtime.GOROOT()
	srcOther, err := os.ReadFile(filepath.Join(goroot, "src", "crypto", "internal", "boring", "sig", "sig_other.s"))
	if err != nil {
		t.Fatal(err)
	}
	srcAMD64, err := os.ReadFile(filepath.Join(goroot, "src", "crypto", "internal", "boring", "sig", "sig_amd64.s"))
	if err != nil {
		t.Fatal(err)
	}

	pkgPath := "crypto/internal/boring/sig"
	resolve := func(sym string) string {
		// Plan9 syntax uses middle dot for package separator and '·' for local
		// symbols. We map local symbols to the full import-path symbol name.
		if strings.HasPrefix(sym, "·") {
			return pkgPath + "." + strings.TrimPrefix(sym, "·")
		}
		return strings.ReplaceAll(sym, "·", ".")
	}
	sigs := map[string]FuncSig{
		pkgPath + ".BoringCrypto":   {Name: pkgPath + ".BoringCrypto", Ret: Void},
		pkgPath + ".FIPSOnly":       {Name: pkgPath + ".FIPSOnly", Ret: Void},
		pkgPath + ".StandardCrypto": {Name: pkgPath + ".StandardCrypto", Ret: Void},
	}

	files := []struct {
		name string
		src  []byte
	}{
		{"sig_other.s", srcOther},
		{"sig_amd64.s", srcAMD64},
	}

	triples := []string{
		intllvm.GetTargetTriple(runtime.GOOS, runtime.GOARCH),
		"x86_64-unknown-linux-gnu",
		"aarch64-unknown-linux-gnu",
		"x86_64-apple-macosx",
		"arm64-apple-macosx",
	}

	compiled := 0
	for _, f := range files {
		asm, err := Parse(ArchAMD64, string(f.src))
		if err != nil {
			t.Fatalf("%s parse failed: %v", f.name, err)
		}

		for _, triple := range triples {
			t.Run(f.name+"/"+triple, func(t *testing.T) {
				ll, err := Translate(asm, Options{
					TargetTriple: triple,
					ResolveSym:   resolve,
					Sigs:         sigs,
				})
				if err != nil {
					t.Fatalf("%s translate failed: %v", f.name, err)
				}

				tmp := t.TempDir()
				llPath := filepath.Join(tmp, "sig.ll")
				objPath := filepath.Join(tmp, "sig.o")
				if err := os.WriteFile(llPath, []byte(ll), 0644); err != nil {
					t.Fatal(err)
				}
				cmd := exec.Command(llc, "-mtriple="+triple, "-filetype=obj", llPath, "-o", objPath)
				out, err := cmd.CombinedOutput()
				if err != nil {
					// Skip targets not registered in this llc build.
					s := string(out)
					if strings.Contains(s, "No available targets") ||
						strings.Contains(s, "no targets are registered") ||
						strings.Contains(s, "unknown target triple") ||
						strings.Contains(s, "unknown target") ||
						strings.Contains(s, "is not a registered target") {
						t.Skipf("llc does not support triple %q: %s", triple, strings.TrimSpace(s))
					}
					t.Fatalf("llc failed for triple %q: %v\n%s", triple, err, s)
				}
				compiled++
			})
		}
	}
	if compiled == 0 {
		t.Fatalf("expected at least one successful llc compilation")
	}
}

func TestStdlibBoringSig_TranslateOnly(t *testing.T) {
	// A cheap test that doesn't depend on llc/clang binaries.
	goroot := runtime.GOROOT()
	src, err := os.ReadFile(filepath.Join(goroot, "src", "crypto", "internal", "boring", "sig", "sig_amd64.s"))
	if err != nil {
		t.Fatal(err)
	}
	pkgPath := "crypto/internal/boring/sig"
	resolve := func(sym string) string {
		if strings.HasPrefix(sym, "·") {
			return pkgPath + "." + strings.TrimPrefix(sym, "·")
		}
		return strings.ReplaceAll(sym, "·", ".")
	}
	sigs := map[string]FuncSig{
		pkgPath + ".BoringCrypto":   {Name: pkgPath + ".BoringCrypto", Ret: Void},
		pkgPath + ".FIPSOnly":       {Name: pkgPath + ".FIPSOnly", Ret: Void},
		pkgPath + ".StandardCrypto": {Name: pkgPath + ".StandardCrypto", Ret: Void},
	}
	file, err := Parse(ArchAMD64, string(src))
	if err != nil {
		t.Fatal(err)
	}
	_, err = Translate(file, Options{
		TargetTriple: intllvm.GetTargetTriple(runtime.GOOS, runtime.GOARCH),
		ResolveSym:   resolve,
		Sigs:         sigs,
	})
	if err != nil {
		t.Fatal(err)
	}
}
