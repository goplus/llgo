package plan9asm

import (
	"bytes"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"sort"
	"strings"
	"testing"

	intllvm "github.com/goplus/llgo/internal/xtool/llvm"
	llvmEnv "github.com/goplus/llgo/xtool/env/llvm"
)

func TestTranslateAndRun_Add(t *testing.T) {
	llc, clang, ok := findLlcAndClang(t)
	if !ok {
		t.Skip("llc/clang not found")
	}

	src := `
TEXT add(SB), NOSPLIT, $0-0
MOVQ a+0(FP), AX
ADDQ b+8(FP), AX
MOVQ AX, ret+16(FP)
RET
`
	prog, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}

	ll, err := Translate(prog, Options{
		TargetTriple: intllvm.GetTargetTriple(runtime.GOOS, runtime.GOARCH),
		Sig: FuncSig{
			Name: "add",
			Args: []LLVMType{I64, I64},
			Ret:  I64,
		},
	})
	if err != nil {
		t.Fatal(err)
	}

	tmp := t.TempDir()
	llPath := filepath.Join(tmp, "add.ll")
	objPath := filepath.Join(tmp, "add.o")
	cPath := filepath.Join(tmp, "main.c")
	binPath := filepath.Join(tmp, "a.out")
	if runtime.GOOS == "windows" {
		binPath += ".exe"
	}
	if err := os.WriteFile(llPath, []byte(ll), 0644); err != nil {
		t.Fatal(err)
	}

	// llc -filetype=obj add.ll -o add.o
	cmd := exec.Command(llc, "-filetype=obj", llPath, "-o", objPath)
	cmd.Env = os.Environ()
	out, err := cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("llc failed: %v\n%s", err, string(out))
	}

	cSrc := `
#include <stdint.h>
#include <stdio.h>
extern int64_t add(int64_t a, int64_t b);
int main() {
  long long v = (long long)add(2, 3);
  printf("%lld\n", v);
  return v == 5 ? 0 : 1;
}
`
	if err := os.WriteFile(cPath, []byte(strings.TrimSpace(cSrc)+"\n"), 0644); err != nil {
		t.Fatal(err)
	}

	// clang main.c add.o -o a.out
	cmd = exec.Command(clang, cPath, objPath, "-o", binPath)
	cmd.Env = os.Environ()
	out, err = cmd.CombinedOutput()
	if err != nil {
		t.Fatalf("clang failed: %v\n%s", err, string(out))
	}

	cmd = exec.Command(binPath)
	cmd.Env = os.Environ()
	var runOut bytes.Buffer
	cmd.Stdout = &runOut
	cmd.Stderr = &runOut
	err = cmd.Run()
	if err != nil {
		t.Fatalf("run failed: %v\n%s", err, runOut.String())
	}
	if got := runOut.String(); got != "5\n" {
		t.Fatalf("output=%q, want %q", got, "5\\n")
	}
}

func findLlcAndClang(t *testing.T) (llc, clang string, ok bool) {
	t.Helper()
	env := llvmEnv.New("")
	binDir := env.BinDir()

	llc = findTool(binDir, "llc")
	if llc == "" {
		llc, _ = exec.LookPath("llc")
	}
	clang = findTool(binDir, "clang")
	if clang == "" {
		clang, _ = exec.LookPath("clang")
	}
	return llc, clang, llc != "" && clang != ""
}

func findTool(binDir, base string) string {
	if binDir == "" {
		return ""
	}
	cand := filepath.Join(binDir, base)
	if fi, err := os.Stat(cand); err == nil && !fi.IsDir() {
		return cand
	}
	matches, _ := filepath.Glob(filepath.Join(binDir, base+"-*"))
	sort.Sort(sort.Reverse(sort.StringSlice(matches)))
	for _, m := range matches {
		if fi, err := os.Stat(m); err == nil && !fi.IsDir() {
			return m
		}
	}
	return ""
}
