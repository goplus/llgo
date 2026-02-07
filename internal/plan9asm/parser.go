package plan9asm

import (
	"bufio"
	"fmt"
	"strings"
)

// Program is a parsed Plan 9 asm file (subset).
type Program struct {
	Arch   Arch
	Func   string
	Instrs []Instr
}

// Parse parses a subset of Go/Plan 9 assembly syntax.
//
// Currently supported:
//   - TEXT directives (function start)
//   - MOVQ/ADDQ/SUBQ/XORQ and RET
//   - Operands: immediate ($imm), register (AX/BX/CX/DX), and name+off(FP)
func Parse(arch Arch, src string) (*Program, error) {
	p := &Program{Arch: arch}

	sc := bufio.NewScanner(strings.NewReader(src))
	lineno := 0
	for sc.Scan() {
		lineno++
		line := sc.Text()

		// Strip comments: Plan 9 uses // as comment marker in Go asm sources.
		if idx := strings.Index(line, "//"); idx >= 0 {
			line = line[:idx]
		}
		line = strings.TrimSpace(line)
		if line == "" {
			continue
		}
		if strings.HasSuffix(line, ":") {
			// Labels not implemented yet.
			return nil, fmt.Errorf("line %d: labels not supported yet: %q", lineno, line)
		}

		// Split opcode from operands.
		opEnd := strings.IndexAny(line, " \t")
		var opStr string
		var rest string
		if opEnd < 0 {
			opStr = line
		} else {
			opStr = strings.TrimSpace(line[:opEnd])
			rest = strings.TrimSpace(line[opEnd:])
		}

		op := Op(strings.ToUpper(opStr))
		switch op {
		case OpTEXT:
			// TEXT name(SB), flags, $frame-args
			// We only extract the function symbol name before (SB).
			parts := strings.Split(rest, ",")
			if len(parts) < 1 {
				return nil, fmt.Errorf("line %d: invalid TEXT: %q", lineno, line)
			}
			sym := strings.TrimSpace(parts[0])
			if !strings.HasSuffix(sym, "(SB)") {
				return nil, fmt.Errorf("line %d: TEXT symbol must end with (SB): %q", lineno, sym)
			}
			sym = strings.TrimSuffix(sym, "(SB)")
			sym = strings.TrimSpace(sym)
			// Common Go convention uses "·" or "." prefixes. Keep ASCII-only name
			// for now: strip leading "·" and leading dots.
			sym = strings.TrimPrefix(sym, "·")
			sym = strings.TrimPrefix(sym, ".")
			if sym == "" {
				return nil, fmt.Errorf("line %d: empty TEXT symbol: %q", lineno, line)
			}
			if p.Func != "" && p.Func != sym {
				return nil, fmt.Errorf("line %d: multiple functions not supported (%q vs %q)", lineno, p.Func, sym)
			}
			p.Func = sym
			p.Instrs = append(p.Instrs, Instr{Op: OpTEXT, Raw: line})
			continue

		case OpMOVQ, OpADDQ, OpSUBQ, OpXORQ:
			args, err := parseOperandsCSV(rest)
			if err != nil {
				return nil, fmt.Errorf("line %d: %v", lineno, err)
			}
			if len(args) != 2 {
				return nil, fmt.Errorf("line %d: %s expects 2 operands, got %d: %q", lineno, op, len(args), line)
			}
			p.Instrs = append(p.Instrs, Instr{Op: op, Args: args, Raw: line})
			continue

		case OpRET:
			p.Instrs = append(p.Instrs, Instr{Op: OpRET, Raw: line})
			continue

		default:
			return nil, fmt.Errorf("line %d: unsupported opcode %q", lineno, opStr)
		}
	}
	if err := sc.Err(); err != nil {
		return nil, err
	}
	if p.Func == "" {
		return nil, fmt.Errorf("no TEXT directive found")
	}
	return p, nil
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
