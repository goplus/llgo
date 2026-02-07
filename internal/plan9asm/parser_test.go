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
	prog, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}
	if prog.Func != "add" {
		t.Fatalf("Func=%q, want %q", prog.Func, "add")
	}
	if len(prog.Instrs) != 5 {
		t.Fatalf("instrs=%d, want 5", len(prog.Instrs))
	}
	if prog.Instrs[0].Op != OpTEXT || prog.Instrs[4].Op != OpRET {
		t.Fatalf("unexpected ops: %v ... %v", prog.Instrs[0].Op, prog.Instrs[4].Op)
	}
}
