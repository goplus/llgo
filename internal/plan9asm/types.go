package plan9asm

import (
	"fmt"
	"go/ast"
	"go/parser"
	"go/token"
	"math"
	"strconv"
	"strings"
)

type Arch string

const (
	ArchAMD64 Arch = "amd64"
	ArchARM64 Arch = "arm64"
)

type Reg string

const (
	AX Reg = "AX"
	BX Reg = "BX"
	CX Reg = "CX"
	DX Reg = "DX"
	SI Reg = "SI"
	DI Reg = "DI"
	SP Reg = "SP"
	BP Reg = "BP"
	PC Reg = "PC"

	AL Reg = "AL"
	BL Reg = "BL"
	CL Reg = "CL"
	DL Reg = "DL"

	ZR Reg = "ZR"
)

func parseReg(s string) (Reg, bool) {
	ss := strings.ToUpper(strings.TrimSpace(s))
	switch ss {
	case "AX":
		return AX, true
	case "BX":
		return BX, true
	case "CX":
		return CX, true
	case "DX":
		return DX, true
	case "SI":
		return SI, true
	case "DI":
		return DI, true
	case "SP":
		return SP, true
	case "BP":
		return BP, true
	case "PC":
		return PC, true
	case "AL":
		return AL, true
	case "BL":
		return BL, true
	case "CL":
		return CL, true
	case "DL":
		return DL, true
	case "ZR":
		return ZR, true
	}
	if strings.HasPrefix(ss, "R") && len(ss) >= 2 {
		// AArch64 general purpose registers: R0..R31, and x86-64 integer registers R8..R15.
		if n, err := strconv.Atoi(ss[1:]); err == nil && 0 <= n && n <= 31 {
			return Reg(ss), true
		}
	}
	// SIMD/FP registers:
	// - x86: X0..X15, Y0..Y15
	// - arm64: V0..V31, with optional lane suffix (e.g. V0.B16, V8.D[0])
	// - arm64 FP: F0..F31
	if (strings.HasPrefix(ss, "X") || strings.HasPrefix(ss, "Y") || strings.HasPrefix(ss, "V") || strings.HasPrefix(ss, "F")) && len(ss) >= 2 {
		i := 1
		for i < len(ss) && ss[i] >= '0' && ss[i] <= '9' {
			i++
		}
		if i > 1 {
			// Accept optional suffix for arm64 vector lanes: .B16, .D[0], etc.
			rest := ss[i:]
			if rest == "" {
				return Reg(ss), true
			}
			if strings.HasPrefix(rest, ".") {
				return Reg(ss), true
			}
		}
	}
	return "", false
}

type OperandKind int

const (
	OpInvalid OperandKind = iota
	OpImm
	OpReg
	OpRegShift
	OpFP
	OpFPAddr
	OpIdent
	OpSym
	OpLabel
	OpMem
	OpRegList
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
	// OpRegShift
	ShiftAmount int64
	ShiftRight  bool

	FPName   string // OpFP (e.g. "a", "ret")
	FPOffset int64  // OpFP

	Ident string // OpIdent (e.g. system register name in MRS)

	Sym string // OpSym / OpLabel

	// OpMem: a minimal memory addressing mode.
	// Examples:
	//   (SI)
	//   16(SI)
	//   -8(SI)(R8*1)
	//   (R0)(R6)
	Mem MemRef

	RegList []Reg // OpRegList (e.g. (R4, R8))
}

type MemRef struct {
	Base  Reg
	Off   int64
	Index Reg   // optional; empty if not present
	Scale int64 // optional; defaults to 1 when Index is present
}

func (o Operand) String() string {
	switch o.Kind {
	case OpImm:
		return fmt.Sprintf("$%d", o.Imm)
	case OpReg:
		return string(o.Reg)
	case OpRegShift:
		if o.ShiftRight {
			return fmt.Sprintf("%s>>%d", o.Reg, o.ShiftAmount)
		}
		return fmt.Sprintf("%s<<%d", o.Reg, o.ShiftAmount)
	case OpFP:
		return fmt.Sprintf("%s+%d(FP)", o.FPName, o.FPOffset)
	case OpFPAddr:
		return fmt.Sprintf("$%s+%d(FP)", o.FPName, o.FPOffset)
	case OpIdent:
		return o.Ident
	case OpSym:
		return o.Sym
	case OpLabel:
		return o.Sym + ":"
	case OpMem:
		// Best-effort pretty print.
		if o.Mem.Index != "" {
			if o.Mem.Scale == 0 {
				return fmt.Sprintf("%d(%s)(%s)", o.Mem.Off, o.Mem.Base, o.Mem.Index)
			}
			return fmt.Sprintf("%d(%s)(%s*%d)", o.Mem.Off, o.Mem.Base, o.Mem.Index, o.Mem.Scale)
		}
		return fmt.Sprintf("%d(%s)", o.Mem.Off, o.Mem.Base)
	case OpRegList:
		parts := make([]string, 0, len(o.RegList))
		for _, r := range o.RegList {
			parts = append(parts, string(r))
		}
		return "(" + strings.Join(parts, ", ") + ")"
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
	if err == nil {
		return n, true
	}
	// Some stdlib asm uses unsigned 64-bit immediates like 0xFFFFFFFFFFFFFFFF
	// to mean the corresponding 64-bit bit-pattern (e.g. -1). Accept those by
	// parsing as uint64 and converting to int64 (two's complement).
	u, uerr := strconv.ParseUint(v, 0, 64)
	if uerr != nil {
		// Floating immediates (e.g. $1.0, $6.02e23) are used by some amd64
		// scalar FP instructions. Keep parser surface small by storing raw
		// float64 bit-patterns in Imm.
		if f, ferr := strconv.ParseFloat(v, 64); ferr == nil {
			return int64(math.Float64bits(f)), true
		}
		if f, ok := parseImmFloatExpr(v); ok {
			return int64(math.Float64bits(f)), true
		}
		u, ok := parseImmExpr(v)
		if !ok {
			return 0, false
		}
		return int64(u), true
	}
	return int64(u), true
}

func parseImmExpr(v string) (uint64, bool) {
	// Plan9 asm frequently uses C-style unary "~" for bitwise-not in immediates.
	// Go expressions use "^", so normalize before parsing.
	exprText := strings.ReplaceAll(strings.TrimSpace(v), "~", "^")
	if exprText == "" {
		return 0, false
	}
	expr, err := parser.ParseExpr(exprText)
	if err != nil {
		return 0, false
	}
	return evalImmExpr(expr)
}

func parseImmFloatExpr(v string) (float64, bool) {
	exprText := strings.TrimSpace(v)
	if exprText == "" {
		return 0, false
	}
	expr, err := parser.ParseExpr(exprText)
	if err != nil {
		return 0, false
	}
	return evalFloatExpr(expr)
}

func evalFloatExpr(e ast.Expr) (float64, bool) {
	switch x := e.(type) {
	case *ast.ParenExpr:
		return evalFloatExpr(x.X)
	case *ast.BasicLit:
		switch x.Kind {
		case token.FLOAT:
			f, err := strconv.ParseFloat(x.Value, 64)
			if err != nil {
				return 0, false
			}
			return f, true
		case token.INT:
			i, err := strconv.ParseInt(x.Value, 0, 64)
			if err != nil {
				return 0, false
			}
			return float64(i), true
		default:
			return 0, false
		}
	case *ast.UnaryExpr:
		v, ok := evalFloatExpr(x.X)
		if !ok {
			return 0, false
		}
		switch x.Op {
		case token.ADD:
			return v, true
		case token.SUB:
			return -v, true
		default:
			return 0, false
		}
	case *ast.BinaryExpr:
		lv, ok := evalFloatExpr(x.X)
		if !ok {
			return 0, false
		}
		rv, ok := evalFloatExpr(x.Y)
		if !ok {
			return 0, false
		}
		switch x.Op {
		case token.ADD:
			return lv + rv, true
		case token.SUB:
			return lv - rv, true
		case token.MUL:
			return lv * rv, true
		case token.QUO:
			if rv == 0 {
				return 0, false
			}
			return lv / rv, true
		default:
			return 0, false
		}
	default:
		return 0, false
	}
}

func evalImmExpr(e ast.Expr) (uint64, bool) {
	switch x := e.(type) {
	case *ast.ParenExpr:
		return evalImmExpr(x.X)
	case *ast.BasicLit:
		if x.Kind != token.INT {
			return 0, false
		}
		if u, err := strconv.ParseUint(x.Value, 0, 64); err == nil {
			return u, true
		}
		n, err := strconv.ParseInt(x.Value, 0, 64)
		if err != nil {
			return 0, false
		}
		return uint64(n), true
	case *ast.UnaryExpr:
		v, ok := evalImmExpr(x.X)
		if !ok {
			return 0, false
		}
		switch x.Op {
		case token.ADD:
			return v, true
		case token.SUB:
			return uint64(0) - v, true
		case token.XOR:
			return ^v, true
		default:
			return 0, false
		}
	case *ast.BinaryExpr:
		lv, ok := evalImmExpr(x.X)
		if !ok {
			return 0, false
		}
		rv, ok := evalImmExpr(x.Y)
		if !ok {
			return 0, false
		}
		switch x.Op {
		case token.ADD:
			return lv + rv, true
		case token.SUB:
			return lv - rv, true
		case token.MUL:
			return lv * rv, true
		case token.QUO:
			if rv == 0 {
				return 0, false
			}
			return lv / rv, true
		case token.REM:
			if rv == 0 {
				return 0, false
			}
			return lv % rv, true
		case token.SHL:
			if rv >= 64 {
				return 0, true
			}
			return lv << rv, true
		case token.SHR:
			if rv >= 64 {
				return 0, true
			}
			return lv >> rv, true
		case token.AND:
			return lv & rv, true
		case token.OR:
			return lv | rv, true
		case token.XOR:
			return lv ^ rv, true
		case token.AND_NOT:
			return lv &^ rv, true
		default:
			return 0, false
		}
	default:
		return 0, false
	}
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

func parseFPAddr(s string) (name string, off int64, ok bool) {
	// Minimal: $name+off(FP) (address-of FP slot).
	s = strings.TrimSpace(s)
	if !strings.HasPrefix(s, "$") {
		return "", 0, false
	}
	return parseFP(strings.TrimPrefix(s, "$"))
}

func parseOperand(s string) (Operand, error) {
	s = strings.TrimSpace(s)
	if s == "" {
		return Operand{}, fmt.Errorf("empty operand")
	}
	if imm, ok := parseImm(s); ok {
		return Operand{Kind: OpImm, Imm: imm}, nil
	}
	if name, off, ok := parseFPAddr(s); ok {
		return Operand{Kind: OpFPAddr, FPName: name, FPOffset: off}, nil
	}
	if base, amt, right, ok := parseRegShift(s); ok {
		return Operand{Kind: OpRegShift, Reg: base, ShiftAmount: amt, ShiftRight: right}, nil
	}
	if r, ok := parseReg(s); ok {
		return Operand{Kind: OpReg, Reg: r}, nil
	}
	if name, off, ok := parseFP(s); ok {
		return Operand{Kind: OpFP, FPName: name, FPOffset: off}, nil
	}
	// Bracketed register list (used by some arm64 vector load/store forms):
	//   [V1.B16, V2.B16]
	//   [V0.D2, V1.D2, V2.D2, V3.D2]
	if strings.HasPrefix(s, "[") && strings.HasSuffix(s, "]") {
		inner := strings.TrimSpace(strings.TrimSuffix(strings.TrimPrefix(s, "["), "]"))
		if inner == "" {
			return Operand{}, fmt.Errorf("empty reg list: %q", s)
		}
		parts := splitTopLevelCSV(inner)
		regs := make([]Reg, 0, len(parts))
		for _, p := range parts {
			p = strings.TrimSpace(p)
			r, ok := parseReg(p)
			if !ok {
				return Operand{}, fmt.Errorf("invalid reg in reg list %q: %q", s, p)
			}
			regs = append(regs, r)
		}
		return Operand{Kind: OpRegList, RegList: regs}, nil
	}
	// Register list: (R4, R8)
	if strings.HasPrefix(s, "(") && strings.HasSuffix(s, ")") && strings.Contains(s, ",") {
		inner := strings.TrimSpace(strings.TrimSuffix(strings.TrimPrefix(s, "("), ")"))
		if inner == "" {
			return Operand{}, fmt.Errorf("empty reg list: %q", s)
		}
		parts := splitTopLevelCSV(inner)
		regs := make([]Reg, 0, len(parts))
		for _, p := range parts {
			p = strings.TrimSpace(p)
			r, ok := parseReg(p)
			if !ok {
				return Operand{}, fmt.Errorf("invalid reg in reg list %q: %q", s, p)
			}
			regs = append(regs, r)
		}
		return Operand{Kind: OpRegList, RegList: regs}, nil
	}
	// Memory reference: off(base)(index*scale)
	if mem, ok := parseMem(s); ok {
		return Operand{Kind: OpMem, Mem: mem}, nil
	}
	// Symbol reference: foo<>(SB), runtime·bar(SB), etc.
	if sym, ok := parseSym(s); ok {
		return Operand{Kind: OpSym, Sym: sym}, nil
	}
	// Identifier (used by some arch-specific instructions like MRS).
	if ident, ok := parseIdent(s); ok {
		return Operand{Kind: OpIdent, Ident: ident}, nil
	}
	return Operand{}, fmt.Errorf("unsupported operand: %q", s)
}

func parseRegShift(s string) (base Reg, amt int64, right bool, ok bool) {
	s = strings.TrimSpace(s)
	if s == "" {
		return "", 0, false, false
	}
	op := ""
	i := strings.Index(s, "<<")
	if i >= 0 {
		op = "<<"
	} else {
		i = strings.Index(s, ">>")
		if i >= 0 {
			op = ">>"
		}
	}
	if op == "" {
		return "", 0, false, false
	}
	l := strings.TrimSpace(s[:i])
	r := strings.TrimSpace(s[i+2:])
	if l == "" || r == "" {
		return "", 0, false, false
	}
	br, ok := parseReg(l)
	if !ok {
		return "", 0, false, false
	}
	n, err := strconv.ParseInt(r, 0, 64)
	if err != nil {
		return "", 0, false, false
	}
	return br, n, op == ">>", true
}

type Op string

const (
	OpTEXT   Op = "TEXT"
	OpMRS    Op = "MRS"
	OpMOVQ   Op = "MOVQ"
	OpMOVL   Op = "MOVL"
	OpADDQ   Op = "ADDQ"
	OpSUBQ   Op = "SUBQ"
	OpXORQ   Op = "XORQ"
	OpMOVD   Op = "MOVD"
	OpCPUID  Op = "CPUID"
	OpXGETBV Op = "XGETBV"
	OpBYTE   Op = "BYTE"
	OpRET    Op = "RET"
	OpLABEL  Op = "LABEL"
)

type Instr struct {
	Op   Op
	Args []Operand
	Raw  string
}

// DataStmt models a minimal Plan 9 DATA directive:
//
//	DATA sym+off(SB)/width, $value
//
// Width is in bytes. Value is encoded little-endian into the global.
type DataStmt struct {
	Sym   string
	Off   int64
	Width int64
	Value uint64
}

// GloblStmt models a minimal Plan 9 GLOBL directive:
//
//	GLOBL sym(SB), flags, $size
//
// Flags are preserved as raw text for now (e.g. "RODATA").
type GloblStmt struct {
	Sym   string
	Flags string
	Size  int64
}

func parseIdent(s string) (string, bool) {
	s = strings.TrimSpace(s)
	if s == "" {
		return "", false
	}
	for i := 0; i < len(s); i++ {
		ch := s[i]
		if (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') || ch == '_' {
			continue
		}
		if i > 0 && ch >= '0' && ch <= '9' {
			continue
		}
		return "", false
	}
	return s, true
}

func parseSym(s string) (string, bool) {
	s = strings.TrimSpace(s)
	if s == "" {
		return "", false
	}
	// Heuristic: if it's an identifier, let parseIdent handle it; sym is for
	// things containing punctuation like (SB), ·, /, <>, etc.
	if _, ok := parseIdent(s); ok {
		return "", false
	}
	// Common form: name(SB)
	if strings.HasSuffix(s, "(SB)") {
		return s, true
	}
	// Local labels used as branch targets.
	if strings.IndexAny(s, " \t,") < 0 && strings.HasSuffix(s, "<>") {
		return s, true
	}
	// If it has any non-identifier chars and no spaces, treat as sym.
	if strings.IndexAny(s, " \t,") >= 0 {
		return "", false
	}
	for i := 0; i < len(s); i++ {
		ch := s[i]
		switch {
		case ch >= 0x80:
			// Allow UTF-8 bytes as part of Plan 9 symbol names (e.g. package
			// separators like the middle dot in raw asm sources).
			continue
		case (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') || (ch >= '0' && ch <= '9'):
			continue
		case ch == '_' || ch == '.' || ch == '/':
			continue
		case ch == '<' || ch == '>' || ch == '+' || ch == '-' || ch == '$':
			continue
		case ch == '(' || ch == ')' || ch == '[' || ch == ']' || ch == '*':
			continue
		default:
			return "", false
		}
	}
	return s, true
}

func parseMem(s string) (MemRef, bool) {
	// Very small subset:
	//   off(base)
	//   (base)
	//   off(base)(index*scale)
	//   off(base)(index)
	//   (base)(index)
	//   off(index*scale)   (no base; used by LEAQ idioms like -1(AX*2))
	s = strings.TrimSpace(s)
	if !strings.Contains(s, "(") || !strings.Contains(s, ")") {
		return MemRef{}, false
	}

	parseIndexScale := func(inner string) (idx Reg, scale int64, ok bool) {
		inner = strings.TrimSpace(inner)
		if inner == "" {
			return "", 0, false
		}
		if star := strings.IndexByte(inner, '*'); star >= 0 {
			idxStr := strings.TrimSpace(inner[:star])
			scaleStr := strings.TrimSpace(inner[star+1:])
			idx, ok = parseReg(idxStr)
			if !ok {
				return "", 0, false
			}
			n, err := strconv.ParseInt(scaleStr, 0, 64)
			if err != nil || n == 0 {
				return "", 0, false
			}
			return idx, n, true
		}
		idx, ok = parseReg(inner)
		if !ok {
			return "", 0, false
		}
		return idx, 1, true
	}

	offPart := ""
	i := strings.IndexByte(s, '(')
	if i < 0 {
		return MemRef{}, false
	}
	offPart = strings.TrimSpace(s[:i])
	rest := s[i:]
	if !strings.HasPrefix(rest, "(") {
		return MemRef{}, false
	}
	j := strings.IndexByte(rest, ')')
	if j < 0 {
		return MemRef{}, false
	}
	baseStr := strings.TrimSpace(rest[1:j])
	rest = strings.TrimSpace(rest[j+1:])

	var off int64
	if offPart != "" {
		n, err := strconv.ParseInt(offPart, 0, 64)
		if err != nil {
			return MemRef{}, false
		}
		off = n
	}

	base, ok := parseReg(baseStr)
	if !ok {
		// Legacy Go amd64 asm syntax in older stdlib releases uses
		// "(N*4)(REG)" for word-indexed offsets.
		if offPart == "" && strings.HasPrefix(rest, "(") && strings.HasSuffix(rest, ")") {
			base2 := strings.TrimSpace(strings.TrimSuffix(strings.TrimPrefix(rest, "("), ")"))
			if br, ok := parseReg(base2); ok {
				if u, ok := parseImmExpr(baseStr); ok {
					return MemRef{Base: br, Off: int64(u)}, true
				}
			}
		}
		// Accept off(index*scale) with no base, e.g. -1(AX*2).
		idx, scale, ok := parseIndexScale(baseStr)
		if !ok || rest != "" {
			return MemRef{}, false
		}
		return MemRef{Base: "", Off: off, Index: idx, Scale: scale}, true
	}

	mem := MemRef{Base: base, Off: off}
	if rest == "" {
		return mem, true
	}

	// Optional (index*scale) or (index)
	if !strings.HasPrefix(rest, "(") || !strings.HasSuffix(rest, ")") {
		return MemRef{}, false
	}
	inner := strings.TrimSpace(strings.TrimSuffix(strings.TrimPrefix(rest, "("), ")"))
	idx, scale, ok := parseIndexScale(inner)
	if !ok {
		return MemRef{}, false
	}
	mem.Index = idx
	mem.Scale = scale
	return mem, true
}

func splitTopLevelCSV(s string) []string {
	s = strings.TrimSpace(s)
	if s == "" {
		return nil
	}
	var out []string
	start := 0
	par := 0
	brk := 0
	for i := 0; i < len(s); i++ {
		switch s[i] {
		case '(':
			par++
		case ')':
			if par > 0 {
				par--
			}
		case '[':
			brk++
		case ']':
			if brk > 0 {
				brk--
			}
		case ',':
			if par == 0 && brk == 0 {
				out = append(out, strings.TrimSpace(s[start:i]))
				start = i + 1
			}
		}
	}
	out = append(out, strings.TrimSpace(s[start:]))
	return out
}
