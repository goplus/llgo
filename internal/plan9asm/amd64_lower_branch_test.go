package plan9asm

import (
	"runtime"
	"strings"
	"testing"

	intllvm "github.com/goplus/llgo/internal/xtool/llvm"
)

func TestAMD64CallSymbol(t *testing.T) {
	src := `
TEXT ·callee(SB),NOSPLIT,$0-0
	RET

TEXT ·foo(SB),NOSPLIT,$0-0
	CALL ·callee(SB)
	CALL runtime·entersyscall<ABIInternal>(SB)
	CALL runtime·exitsyscall<ABIInternal>(SB)
	RET
`
	file, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}

	resolve := func(sym string) string {
		sym = strings.TrimSuffix(sym, "<ABIInternal>")
		sym = strings.TrimSuffix(sym, "<>")
		if strings.HasPrefix(sym, "·") {
			return "test/pkg." + strings.TrimPrefix(sym, "·")
		}
		sym = strings.ReplaceAll(sym, "∕", "/")
		return strings.ReplaceAll(sym, "·", ".")
	}
	sigs := map[string]FuncSig{
		"test/pkg.callee": {Name: "test/pkg.callee", Ret: Void},
		"test/pkg.foo":    {Name: "test/pkg.foo", Ret: Void},
	}
	ll, err := Translate(file, Options{
		TargetTriple: intllvm.GetTargetTriple(runtime.GOOS, runtime.GOARCH),
		ResolveSym:   resolve,
		Sigs:         sigs,
		Goarch:       "amd64",
	})
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(ll, `call void @"test/pkg.callee"()`) {
		t.Fatalf("expected direct symbol call in IR, got:\n%s", ll)
	}
	if strings.Contains(ll, "runtime.entersyscall") || strings.Contains(ll, "runtime.exitsyscall") {
		t.Fatalf("expected runtime entersyscall/exitsyscall hooks to be elided, got:\n%s", ll)
	}
}
