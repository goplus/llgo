package plan9asm

import "testing"

func TestParseBasic(t *testing.T) {
	src := `
// simple add
TEXT add(SB), NOSPLIT, $0-0
MOVQ a+0(FP), AX
ADDQ b+8(FP), AX
MOVQ AX, ret+16(FP)
RET
`
	file, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}
	if len(file.Funcs) != 1 {
		t.Fatalf("Funcs=%d, want 1", len(file.Funcs))
	}
	if file.Funcs[0].Sym != "add" {
		t.Fatalf("Sym=%q, want %q", file.Funcs[0].Sym, "add")
	}
	// TEXT + 3 ops + RET
	if len(file.Funcs[0].Instrs) != 5 {
		t.Fatalf("instrs=%d, want 5", len(file.Funcs[0].Instrs))
	}
}

func TestParseDefineAndSemicolons(t *testing.T) {
	src := `
#define X BYTE $0x01; BYTE $0x02
TEXT ·Foo(SB),$0
X
RET
`
	file, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}
	if len(file.Funcs) != 1 {
		t.Fatalf("Funcs=%d, want 1", len(file.Funcs))
	}
	got := 0
	for _, ins := range file.Funcs[0].Instrs {
		if ins.Op == OpBYTE {
			got++
		}
	}
	if got != 2 {
		t.Fatalf("BYTE count=%d, want 2", got)
	}
}
