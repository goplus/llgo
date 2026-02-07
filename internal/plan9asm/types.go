package plan9asm

import (
	"fmt"
	"strconv"
	"strings"
)

type Arch string

const (
	ArchAMD64 Arch = "amd64"
)

type Reg string

const (
	AX Reg = "AX"
	BX Reg = "BX"
	CX Reg = "CX"
	DX Reg = "DX"
)

func parseReg(s string) (Reg, bool) {
	switch strings.ToUpper(strings.TrimSpace(s)) {
	case "AX":
		return AX, true
	case "BX":
		return BX, true
	case "CX":
		return CX, true
	case "DX":
		return DX, true
	default:
		return "", false
	}
}

type OperandKind int

const (
	OpInvalid OperandKind = iota
	OpImm
	OpReg
	OpFP
)

// Operand models a minimal subset of Plan 9 asm operands.
//
// Supported:
//   - Immediate: $123
//   - Register: AX, BX, ...
//   - FP slot: name+offset(FP) (used in classic Go stack ABI syntax)
type Operand struct {
	Kind OperandKind

	Imm int64 // OpImm
	Reg Reg   // OpReg

	FPName   string // OpFP (e.g. "a", "ret")
	FPOffset int64  // OpFP
}

func (o Operand) String() string {
	switch o.Kind {
	case OpImm:
		return fmt.Sprintf("$%d", o.Imm)
	case OpReg:
		return string(o.Reg)
	case OpFP:
		return fmt.Sprintf("%s+%d(FP)", o.FPName, o.FPOffset)
	default:
		return "<invalid>"
	}
}

func parseImm(s string) (int64, bool) {
	s = strings.TrimSpace(s)
	if !strings.HasPrefix(s, "$") {
		return 0, false
	}
	v := strings.TrimPrefix(s, "$")
	if v == "" {
		return 0, false
	}
	// Plan9 constants are typically decimal or hex. Accept 0x too.
	n, err := strconv.ParseInt(v, 0, 64)
	if err != nil {
		return 0, false
	}
	return n, true
}

func parseFP(s string) (name string, off int64, ok bool) {
	// Minimal: name+off(FP)
	// Examples: a+0(FP), b+8(FP), ret+16(FP)
	s = strings.TrimSpace(s)
	if !strings.HasSuffix(s, "(FP)") {
		return "", 0, false
	}
	base := strings.TrimSuffix(s, "(FP)")
	plus := strings.LastIndexByte(base, '+')
	if plus <= 0 || plus == len(base)-1 {
		return "", 0, false
	}
	name = strings.TrimSpace(base[:plus])
	offStr := strings.TrimSpace(base[plus+1:])
	off, err := strconv.ParseInt(offStr, 0, 64)
	if err != nil {
		return "", 0, false
	}
	return name, off, true
}

func parseOperand(s string) (Operand, error) {
	if imm, ok := parseImm(s); ok {
		return Operand{Kind: OpImm, Imm: imm}, nil
	}
	if r, ok := parseReg(s); ok {
		return Operand{Kind: OpReg, Reg: r}, nil
	}
	if name, off, ok := parseFP(s); ok {
		return Operand{Kind: OpFP, FPName: name, FPOffset: off}, nil
	}
	return Operand{}, fmt.Errorf("unsupported operand: %q", strings.TrimSpace(s))
}

type Op string

const (
	OpTEXT Op = "TEXT"
	OpMOVQ Op = "MOVQ"
	OpADDQ Op = "ADDQ"
	OpSUBQ Op = "SUBQ"
	OpXORQ Op = "XORQ"
	OpRET  Op = "RET"
)

type Instr struct {
	Op   Op
	Args []Operand
	Raw  string
}
