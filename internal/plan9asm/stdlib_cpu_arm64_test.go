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

func TestStdlibInternalCPU_ARM64_Compile(t *testing.T) {
	if runtime.GOARCH != "arm64" {
		t.Skip("host is not arm64")
	}
	llc, _, ok := findLlcAndClang(t)
	if !ok {
		t.Skip("llc not found")
	}

	goroot := runtime.GOROOT()
	src, err := os.ReadFile(filepath.Join(goroot, "src", "internal", "cpu", "cpu_arm64.s"))
	if err != nil {
		t.Fatal(err)
	}

	file, err := Parse(ArchARM64, string(src))
	if err != nil {
		t.Fatal(err)
	}
	resolve := func(sym string) string {
		if strings.HasPrefix(sym, "·") {
			return "internal/cpu." + strings.TrimPrefix(sym, "·")
		}
		return strings.ReplaceAll(sym, "·", ".")
	}
	sigs := map[string]FuncSig{
		"internal/cpu.getisar0": {Name: "internal/cpu.getisar0", Ret: I64},
		"internal/cpu.getpfr0":  {Name: "internal/cpu.getpfr0", Ret: I64},
		"internal/cpu.getMIDR":  {Name: "internal/cpu.getMIDR", Ret: I64},
	}
	ll, err := Translate(file, Options{
		TargetTriple: intllvm.GetTargetTriple(runtime.GOOS, runtime.GOARCH),
		ResolveSym:   resolve,
		Sigs:         sigs,
	})
	if err != nil {
		t.Fatal(err)
	}

	tmp := t.TempDir()
	llPath := filepath.Join(tmp, "cpu.ll")
	objPath := filepath.Join(tmp, "cpu.o")
	if err := os.WriteFile(llPath, []byte(ll), 0644); err != nil {
		t.Fatal(err)
	}
	cmd := exec.Command(llc, "-filetype=obj", llPath, "-o", objPath)
	out, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("llc failed: %v\n%s", err, string(out))
	}
}
