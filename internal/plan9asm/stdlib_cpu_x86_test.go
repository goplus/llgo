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

func TestStdlibInternalCPU_X86_CompileX86Triples(t *testing.T) {
	llc, _, ok := findLlcAndClang(t)
	if !ok {
		t.Skip("llc not found")
	}

	goroot := runtime.GOROOT()
	src, err := os.ReadFile(filepath.Join(goroot, "src", "internal", "cpu", "cpu_x86.s"))
	if err != nil {
		t.Fatal(err)
	}

	file, err := Parse(ArchAMD64, string(src))
	if err != nil {
		t.Fatal(err)
	}

	resolve := func(sym string) string {
		if strings.HasPrefix(sym, "·") {
			return "internal/cpu." + strings.TrimPrefix(sym, "·")
		}
		return strings.ReplaceAll(sym, "·", ".")
	}

	// func cpuid(eaxArg, ecxArg uint32) (eax, ebx, ecx, edx uint32)
	cpuidRet := LLVMType("{ i32, i32, i32, i32 }")
	// func xgetbv() (eax, edx uint32)
	xgetbvRet := LLVMType("{ i32, i32 }")

	sigs := map[string]FuncSig{
		"internal/cpu.cpuid": {
			Name: "internal/cpu.cpuid",
			Args: []LLVMType{I32, I32},
			Ret:  cpuidRet,
			Frame: FrameLayout{
				Params: []FrameSlot{
					{Offset: 0, Type: I32, Index: 0, Field: -1}, // eaxArg
					{Offset: 4, Type: I32, Index: 1, Field: -1}, // ecxArg
				},
				Results: []FrameSlot{
					{Offset: 8, Type: I32, Index: 0, Field: -1},  // eax
					{Offset: 12, Type: I32, Index: 1, Field: -1}, // ebx
					{Offset: 16, Type: I32, Index: 2, Field: -1}, // ecx
					{Offset: 20, Type: I32, Index: 3, Field: -1}, // edx
				},
			},
		},
		"internal/cpu.xgetbv": {
			Name: "internal/cpu.xgetbv",
			Ret:  xgetbvRet,
			Frame: FrameLayout{
				Results: []FrameSlot{
					{Offset: 0, Type: I32, Index: 0, Field: -1}, // eax
					{Offset: 4, Type: I32, Index: 1, Field: -1}, // edx
				},
			},
		},
		"internal/cpu.getGOAMD64level": {
			Name: "internal/cpu.getGOAMD64level",
			Ret:  I32,
			Frame: FrameLayout{
				Results: []FrameSlot{
					{Offset: 0, Type: I32, Index: 0, Field: -1},
				},
			},
		},
	}

	triples := []string{
		"x86_64-unknown-linux-gnu",
		"x86_64-apple-macosx",
		intllvm.GetTargetTriple(runtime.GOOS, runtime.GOARCH),
	}

	compiled := 0
	for _, triple := range triples {
		t.Run(triple, func(t *testing.T) {
			ll, err := Translate(file, Options{
				TargetTriple: triple,
				ResolveSym:   resolve,
				Sigs:         sigs,
			})
			if err != nil {
				// Host triple may not be x86_64; only enforce for x86_64 triples.
				if strings.HasPrefix(triple, "x86_64-") {
					t.Fatalf("translate failed: %v", err)
				}
				t.Skipf("translate skipped for non-x86 triple %q: %v", triple, err)
			}

			if !strings.HasPrefix(triple, "x86_64-") {
				t.Skip("llc compilation only meaningful for x86_64 triples")
			}

			tmp := t.TempDir()
			llPath := filepath.Join(tmp, "cpu_x86.ll")
			objPath := filepath.Join(tmp, "cpu_x86.o")
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
				t.Fatalf("llc failed for triple %q: %v\n%s", triple, err, s)
			}
			compiled++
		})
	}
	if compiled == 0 {
		t.Fatalf("expected at least one successful llc compilation")
	}
}
