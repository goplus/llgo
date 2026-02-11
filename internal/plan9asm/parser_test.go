//go:build !llgo
// +build !llgo

package plan9asm

import (
	"math"
	"testing"
)

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

func TestParseImmediateExpr(t *testing.T) {
	src := `
TEXT ·ImmExpr(SB),NOSPLIT,$0
MOVQ $~(1<<63), DX
MOVQ $(1<<63), AX
RET
`
	file, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}
	if len(file.Funcs) != 1 {
		t.Fatalf("Funcs=%d, want 1", len(file.Funcs))
	}
	if len(file.Funcs[0].Instrs) < 3 {
		t.Fatalf("instrs=%d, want >=3", len(file.Funcs[0].Instrs))
	}
	immMask := file.Funcs[0].Instrs[1].Args[0].Imm
	if immMask != 0x7fffffffffffffff {
		t.Fatalf("mask imm=%#x, want %#x", uint64(immMask), uint64(0x7fffffffffffffff))
	}
	immSign := file.Funcs[0].Instrs[2].Args[0].Imm
	if immSign != int64(-9223372036854775808) {
		t.Fatalf("sign imm=%#x, want %#x", uint64(immSign), uint64(1<<63))
	}
}

func TestParseFloatImmediate(t *testing.T) {
	src := `
TEXT ·ImmFloat(SB),NOSPLIT,$0
MOVSD $1.5, X0
MOVSD $(-1.0), X1
RET
`
	file, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}
	if len(file.Funcs) != 1 || len(file.Funcs[0].Instrs) < 3 {
		t.Fatalf("unexpected parse shape: funcs=%d instrs=%d", len(file.Funcs), len(file.Funcs[0].Instrs))
	}
	got := uint64(file.Funcs[0].Instrs[1].Args[0].Imm)
	want := math.Float64bits(1.5)
	if got != want {
		t.Fatalf("float imm bits=%#x, want %#x", got, want)
	}
	gotNeg := uint64(file.Funcs[0].Instrs[2].Args[0].Imm)
	wantNeg := math.Float64bits(-1.0)
	if gotNeg != wantNeg {
		t.Fatalf("neg float imm bits=%#x, want %#x", gotNeg, wantNeg)
	}
}

func TestParseLegacyScaledOffsetMem(t *testing.T) {
	src := `
TEXT ·LegacyMem(SB),NOSPLIT,$0
MOVL (0*4)(BP), AX
MOVL (3*4)(SI), R8
RET
`
	file, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}
	if len(file.Funcs) != 1 {
		t.Fatalf("Funcs=%d, want 1", len(file.Funcs))
	}
	if len(file.Funcs[0].Instrs) < 3 {
		t.Fatalf("instrs=%d, want >=3", len(file.Funcs[0].Instrs))
	}

	mem0 := file.Funcs[0].Instrs[1].Args[0].Mem
	if mem0.Base != BP || mem0.Off != 0 {
		t.Fatalf("first mem=(base=%s,off=%d), want (BP,0)", mem0.Base, mem0.Off)
	}
	mem1 := file.Funcs[0].Instrs[2].Args[0].Mem
	if mem1.Base != SI || mem1.Off != 12 {
		t.Fatalf("second mem=(base=%s,off=%d), want (SI,12)", mem1.Base, mem1.Off)
	}
}

func TestParseFunctionLikeMacroCall(t *testing.T) {
	src := `
#define ROUND1(a,b) MOVL a, b; ADDL $1, b
TEXT ·FnMacro(SB),NOSPLIT,$0
ROUND1(AX, BX);
RET
`
	file, err := Parse(ArchAMD64, src)
	if err != nil {
		t.Fatal(err)
	}
	if len(file.Funcs) != 1 {
		t.Fatalf("Funcs=%d, want 1", len(file.Funcs))
	}
	if len(file.Funcs[0].Instrs) < 4 {
		t.Fatalf("instrs=%d, want >=4", len(file.Funcs[0].Instrs))
	}
	if file.Funcs[0].Instrs[1].Op != OpMOVL {
		t.Fatalf("first expanded op=%s, want %s", file.Funcs[0].Instrs[1].Op, OpMOVL)
	}
	if file.Funcs[0].Instrs[2].Op != Op("ADDL") {
		t.Fatalf("second expanded op=%s, want %s", file.Funcs[0].Instrs[2].Op, Op("ADDL"))
	}
}
