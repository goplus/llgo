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

func TestStdlibMathExp_ARM64_Compile(t *testing.T) {
	llc, _, ok := findLlcAndClang(t)
	if !ok {
		t.Skip("llc not found")
	}

	goroot := runtime.GOROOT()
	src, err := os.ReadFile(filepath.Join(goroot, "src", "math", "exp_arm64.s"))
	if err != nil {
		t.Fatal(err)
	}

	file, err := Parse(ArchARM64, string(src))
	if err != nil {
		t.Fatal(err)
	}
	resolve := func(sym string) string {
		if strings.HasPrefix(sym, "·") {
			return "math." + strings.TrimPrefix(sym, "·")
		}
		return strings.ReplaceAll(sym, "·", ".")
	}
	f64 := LLVMType("double")
	sigs := map[string]FuncSig{
		"math.archExp": {
			Name: "math.archExp",
			Args: []LLVMType{f64},
			Ret:  f64,
			Frame: FrameLayout{
				Params:  []FrameSlot{{Offset: 0, Type: f64, Index: 0, Field: -1}},
				Results: []FrameSlot{{Offset: 8, Type: f64, Index: 0, Field: -1}},
			},
		},
		"math.archExp2": {
			Name: "math.archExp2",
			Args: []LLVMType{f64},
			Ret:  f64,
			Frame: FrameLayout{
				Params:  []FrameSlot{{Offset: 0, Type: f64, Index: 0, Field: -1}},
				Results: []FrameSlot{{Offset: 8, Type: f64, Index: 0, Field: -1}},
			},
		},
	}

	triples := []string{
		"aarch64-unknown-linux-gnu",
		"arm64-apple-macosx",
	}
	host := intllvm.GetTargetTriple(runtime.GOOS, runtime.GOARCH)
	if host != "" && !containsString(triples, host) {
		triples = append(triples, host)
	}

	compiled := 0
	for _, triple := range triples {
		t.Run(triple, func(t *testing.T) {
			ll, err := Translate(file, Options{
				TargetTriple: triple,
				ResolveSym:   resolve,
				Sigs:         sigs,
				Goarch:       "arm64",
			})
			if err != nil {
				t.Fatalf("translate failed: %v", err)
			}
			tmp := t.TempDir()
			llPath := filepath.Join(tmp, "exp_arm64.ll")
			objPath := filepath.Join(tmp, "exp_arm64.o")
			if err := os.WriteFile(llPath, []byte(ll), 0644); err != nil {
				t.Fatal(err)
			}
			cmd := exec.Command(llc, "-mtriple="+triple, "-filetype=obj", llPath, "-o", objPath)
			out, err := cmd.CombinedOutput()
			if err != nil {
				s := string(out)
				if strings.Contains(s, "No available targets") ||
					strings.Contains(s, "no targets are registered") ||
					strings.Contains(s, "unknown target triple") ||
					strings.Contains(s, "unknown target") ||
					strings.Contains(s, "is not a registered target") {
					t.Skipf("llc does not support triple %q: %s", triple, strings.TrimSpace(s))
				}
				t.Fatalf("llc failed for %q: %v\n%s", triple, err, s)
			}
			compiled++
		})
	}
	if compiled == 0 {
		t.Fatalf("expected at least one successful llc compilation")
	}
}

func containsString(xs []string, s string) bool {
	for _, x := range xs {
		if x == s {
			return true
		}
	}
	return false
}
