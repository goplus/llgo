package plan9asm

import (
	"bufio"
	"fmt"
	"strings"
)

// File is a parsed Plan 9 asm source file (subset).
type File struct {
	Arch  Arch
	Funcs []Func
}

type Func struct {
	// Sym is the symbol name from the TEXT directive with (SB) trimmed.
	// It may contain the Plan 9 middle dot (·).
	Sym string

	Instrs []Instr
}

// Parse parses a subset of Go/Plan 9 assembly syntax.
//
// Currently supported:
//   - TEXT directives (function start)
//   - MOVQ/ADDQ/SUBQ/XORQ/MOVL, CPUID, XGETBV, BYTE, RET
//   - Operands: immediate ($imm), register (AX/BX/CX/DX), and name+off(FP)
//
// Also supported at a minimal level:
//   - #include is ignored
//   - #define NAME <body> with optional single-line continuation via '\' and
//     macro invocation when the entire statement is just NAME.
func Parse(arch Arch, src string) (*File, error) {
	f := &File{Arch: arch}

	pp, err := preprocess(src)
	if err != nil {
		return nil, err
	}

	sc := bufio.NewScanner(strings.NewReader(pp))
	lineno := 0
	var cur *Func
	for sc.Scan() {
		lineno++
		line := strings.TrimSpace(sc.Text())
		if line == "" {
			continue
		}
		for _, stmt := range splitSemicolons(line) {
			if stmt == "" {
				continue
			}
			if strings.HasSuffix(stmt, ":") {
				return nil, fmt.Errorf("line %d: labels not supported yet: %q", lineno, stmt)
			}

			opStr, rest := splitOpcode(stmt)
			op := Op(strings.ToUpper(opStr))
			switch op {
			case OpTEXT:
				// TEXT name(SB), flags, $frame-args
				parts := strings.Split(rest, ",")
				if len(parts) < 1 {
					return nil, fmt.Errorf("line %d: invalid TEXT: %q", lineno, stmt)
				}
				sym := strings.TrimSpace(parts[0])
				if !strings.HasSuffix(sym, "(SB)") {
					return nil, fmt.Errorf("line %d: TEXT symbol must end with (SB): %q", lineno, sym)
				}
				sym = strings.TrimSpace(strings.TrimSuffix(sym, "(SB)"))
				if sym == "" {
					return nil, fmt.Errorf("line %d: empty TEXT symbol: %q", lineno, stmt)
				}
				f.Funcs = append(f.Funcs, Func{Sym: sym})
				cur = &f.Funcs[len(f.Funcs)-1]
				cur.Instrs = append(cur.Instrs, Instr{Op: OpTEXT, Raw: stmt})
				continue

			case OpMOVQ, OpADDQ, OpSUBQ, OpXORQ, OpMOVL, OpMOVD, OpMRS:
				if cur == nil {
					return nil, fmt.Errorf("line %d: instruction outside TEXT: %q", lineno, stmt)
				}
				args, err := parseOperandsCSV(rest)
				if err != nil {
					return nil, fmt.Errorf("line %d: %v", lineno, err)
				}
				if len(args) != 2 {
					return nil, fmt.Errorf("line %d: %s expects 2 operands, got %d: %q", lineno, op, len(args), stmt)
				}
				cur.Instrs = append(cur.Instrs, Instr{Op: op, Args: args, Raw: stmt})
				continue

			case OpCPUID, OpXGETBV:
				if cur == nil {
					return nil, fmt.Errorf("line %d: %s outside TEXT: %q", lineno, op, stmt)
				}
				if strings.TrimSpace(rest) != "" {
					return nil, fmt.Errorf("line %d: %s takes no operands: %q", lineno, op, stmt)
				}
				cur.Instrs = append(cur.Instrs, Instr{Op: op, Raw: stmt})
				continue

			case OpBYTE:
				if cur == nil {
					return nil, fmt.Errorf("line %d: BYTE outside TEXT: %q", lineno, stmt)
				}
				args, err := parseOperandsCSV(rest)
				if err != nil {
					return nil, fmt.Errorf("line %d: %v", lineno, err)
				}
				if len(args) != 1 || args[0].Kind != OpImm {
					return nil, fmt.Errorf("line %d: BYTE expects single immediate operand: %q", lineno, stmt)
				}
				cur.Instrs = append(cur.Instrs, Instr{Op: op, Args: args, Raw: stmt})
				continue

			case OpRET:
				if cur == nil {
					return nil, fmt.Errorf("line %d: RET outside TEXT: %q", lineno, stmt)
				}
				cur.Instrs = append(cur.Instrs, Instr{Op: OpRET, Raw: stmt})
				continue

			default:
				return nil, fmt.Errorf("line %d: unsupported opcode %q", lineno, opStr)
			}
		}
	}
	if err := sc.Err(); err != nil {
		return nil, err
	}
	if len(f.Funcs) == 0 {
		return nil, fmt.Errorf("no TEXT directive found")
	}
	return f, nil
}

func parseOperandsCSV(s string) ([]Operand, error) {
	if s == "" {
		return nil, nil
	}
	parts := strings.Split(s, ",")
	out := make([]Operand, 0, len(parts))
	for _, part := range parts {
		part = strings.TrimSpace(part)
		if part == "" {
			continue
		}
		op, err := parseOperand(part)
		if err != nil {
			return nil, err
		}
		out = append(out, op)
	}
	return out, nil
}

func splitOpcode(stmt string) (op, rest string) {
	opEnd := strings.IndexAny(stmt, " \t")
	if opEnd < 0 {
		return stmt, ""
	}
	return strings.TrimSpace(stmt[:opEnd]), strings.TrimSpace(stmt[opEnd:])
}

func splitSemicolons(line string) []string {
	parts := strings.Split(line, ";")
	out := make([]string, 0, len(parts))
	for _, p := range parts {
		out = append(out, strings.TrimSpace(p))
	}
	return out
}
