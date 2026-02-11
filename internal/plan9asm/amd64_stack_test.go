//go:build !llgo
// +build !llgo

package plan9asm

import (
	"strings"
	"testing"
)

func TestTranslateAMD64PushPop(t *testing.T) {
	src := `
TEXT ·stackOps(SB),NOSPLIT,$0
POPQ R12
PUSHQ R12
MOVQ R12, AX
RET
`
	file, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}
	const pkgPath = "test/pkg"
	resolve := func(sym string) string {
		if strings.HasPrefix(sym, "·") {
			return pkgPath + "." + strings.TrimPrefix(sym, "·")
		}
		return sym
	}
	sigs := map[string]FuncSig{
		pkgPath + ".stackOps": {
			Name: pkgPath + ".stackOps",
			Ret:  I64,
		},
	}
	if _, err := Translate(file, Options{
		TargetTriple: "x86_64-unknown-linux-gnu",
		ResolveSym:   resolve,
		Sigs:         sigs,
		Goarch:       "amd64",
	}); err != nil {
		t.Fatal(err)
	}
}
