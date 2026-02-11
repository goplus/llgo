//go:build !llgo
// +build !llgo

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

func TestStdlibInternalRuntimeSys_ARM64_Compile(t *testing.T) {
	if runtime.GOARCH != "arm64" {
		t.Skip("host is not arm64")
	}
	llc, _, ok := findLlcAndClang(t)
	if !ok {
		t.Skip("llc not found")
	}

	goroot := runtime.GOROOT()
	src, err := os.ReadFile(filepath.Join(goroot, "src", "internal", "runtime", "sys", "dit_arm64.s"))
	if err != nil {
		t.Fatal(err)
	}

	file, err := Parse(ArchARM64, string(src))
	if err != nil {
		t.Fatal(err)
	}
	resolve := func(sym string) string {
		if strings.HasPrefix(sym, "·") {
			return "internal/runtime/sys." + strings.TrimPrefix(sym, "·")
		}
		return strings.ReplaceAll(sym, "·", ".")
	}
	sigs := map[string]FuncSig{
		"internal/runtime/sys.EnableDIT": {
			Name: "internal/runtime/sys.EnableDIT",
			Ret:  I1,
			Frame: FrameLayout{
				Results: []FrameSlot{{Offset: 0, Type: I1, Index: 0}},
			},
		},
		"internal/runtime/sys.DITEnabled": {
			Name: "internal/runtime/sys.DITEnabled",
			Ret:  I1,
			Frame: FrameLayout{
				Results: []FrameSlot{{Offset: 0, Type: I1, Index: 0}},
			},
		},
		"internal/runtime/sys.DisableDIT": {
			Name: "internal/runtime/sys.DisableDIT",
			Ret:  Void,
		},
	}
	ll, err := Translate(file, Options{
		TargetTriple: intllvm.GetTargetTriple(runtime.GOOS, runtime.GOARCH),
		ResolveSym:   resolve,
		Sigs:         sigs,
		Goarch:       runtime.GOARCH,
	})
	if err != nil {
		t.Fatal(err)
	}

	tmp := t.TempDir()
	llPath := filepath.Join(tmp, "dit.ll")
	objPath := filepath.Join(tmp, "dit.o")
	if err := os.WriteFile(llPath, []byte(ll), 0644); err != nil {
		t.Fatal(err)
	}
	cmd := exec.Command(llc, "-filetype=obj", llPath, "-o", objPath)
	out, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("llc failed: %v\n%s", err, string(out))
	}
}
