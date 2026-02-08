package plan9asm

import (
	"bufio"
	"fmt"
	"strconv"
	"strings"
)

// File is a parsed Plan 9 asm source file (subset).
type File struct {
	Arch  Arch
	Funcs []Func

	// Data and Globl capture a minimal subset of the Plan 9 DATA/GLOBL directives
	// used by some stdlib asm (e.g. hash/crc32/crc32_amd64.s).
	//
	// These are emitted as LLVM globals by the translator so loads like:
	//   MOVOA r2r1<>+0(SB), X0
	// can be translated without relying on an overlay/alt package.
	Data  []DataStmt
	Globl []GloblStmt
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
				if cur == nil {
					return nil, fmt.Errorf("line %d: label outside TEXT: %q", lineno, stmt)
				}
				lbl := strings.TrimSpace(strings.TrimSuffix(stmt, ":"))
				if lbl == "" {
					return nil, fmt.Errorf("line %d: empty label: %q", lineno, stmt)
				}
				cur.Instrs = append(cur.Instrs, Instr{
					Op:   OpLABEL,
					Args: []Operand{{Kind: OpLabel, Sym: lbl}},
					Raw:  stmt,
				})
				continue
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

			case "DATA":
				// In stdlib asm, DATA/GLOBL blocks typically appear between TEXT
				// functions and/or after the last RET. If we're currently inside a
				// TEXT function and it has already terminated, treat this as leaving
				// the function body.
				if cur != nil {
					if len(cur.Instrs) > 0 && cur.Instrs[len(cur.Instrs)-1].Op == OpRET {
						cur = nil
					} else {
						return nil, fmt.Errorf("line %d: DATA inside TEXT not supported: %q", lineno, stmt)
					}
				}
				ds, err := parseDATAStmt(rest)
				if err != nil {
					return nil, fmt.Errorf("line %d: %v", lineno, err)
				}
				f.Data = append(f.Data, ds)
				continue

			case "GLOBL":
				if cur != nil {
					if len(cur.Instrs) > 0 && cur.Instrs[len(cur.Instrs)-1].Op == OpRET {
						cur = nil
					} else {
						return nil, fmt.Errorf("line %d: GLOBL inside TEXT not supported: %q", lineno, stmt)
					}
				}
				gs, err := parseGLOBLStmt(rest)
				if err != nil {
					return nil, fmt.Errorf("line %d: %v", lineno, err)
				}
				f.Globl = append(f.Globl, gs)
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
				if strings.TrimSpace(rest) != "" {
					// Some files use "RET" alone; accept "RET x" as generic for now.
					args, err := parseOperandsCSV(rest)
					if err != nil {
						return nil, fmt.Errorf("line %d: %v", lineno, err)
					}
					cur.Instrs = append(cur.Instrs, Instr{Op: op, Args: args, Raw: stmt})
					continue
				}
				cur.Instrs = append(cur.Instrs, Instr{Op: OpRET, Raw: stmt})
				continue

			default:
				if cur == nil {
					return nil, fmt.Errorf("line %d: instruction outside TEXT: %q", lineno, stmt)
				}
				// For now, parse unknown opcodes as generic instructions. The translator
				// is responsible for rejecting unsupported ones.
				args, err := parseOperandsCSV(rest)
				if err != nil {
					return nil, fmt.Errorf("line %d: %v", lineno, err)
				}
				cur.Instrs = append(cur.Instrs, Instr{Op: op, Args: args, Raw: stmt})
				continue
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

func parseDATAStmt(rest string) (DataStmt, error) {
	// DATA sym+off(SB)/width, $value
	parts := strings.Split(rest, ",")
	if len(parts) != 2 {
		return DataStmt{}, fmt.Errorf("invalid DATA: %q", "DATA "+rest)
	}
	lhs := strings.TrimSpace(parts[0])
	rhs := strings.TrimSpace(parts[1])
	if lhs == "" || rhs == "" {
		return DataStmt{}, fmt.Errorf("invalid DATA: %q", "DATA "+rest)
	}

	// lhs: sym+off(SB)/width
	symPart, widthStr, ok := strings.Cut(lhs, "/")
	if !ok {
		return DataStmt{}, fmt.Errorf("DATA missing /width: %q", "DATA "+rest)
	}
	width, err := parseInt(widthStr)
	if err != nil || width <= 0 {
		return DataStmt{}, fmt.Errorf("DATA invalid width %q: %q", widthStr, "DATA "+rest)
	}

	symPart = strings.TrimSpace(symPart)
	if !strings.HasSuffix(symPart, "(SB)") {
		return DataStmt{}, fmt.Errorf("DATA symbol must end with (SB): %q", "DATA "+rest)
	}
	symPart = strings.TrimSuffix(symPart, "(SB)")
	symPart = strings.TrimSpace(symPart)
	if symPart == "" {
		return DataStmt{}, fmt.Errorf("DATA empty symbol: %q", "DATA "+rest)
	}

	sym, off := splitSymPlusOff(symPart)

	val, ok := parseImm(rhs)
	if !ok {
		return DataStmt{}, fmt.Errorf("DATA invalid immediate %q: %q", rhs, "DATA "+rest)
	}
	return DataStmt{Sym: sym, Off: off, Width: width, Value: uint64(val)}, nil
}

func parseGLOBLStmt(rest string) (GloblStmt, error) {
	// GLOBL sym(SB), flags, $size
	parts := strings.Split(rest, ",")
	if len(parts) != 3 {
		return GloblStmt{}, fmt.Errorf("invalid GLOBL: %q", "GLOBL "+rest)
	}
	symPart := strings.TrimSpace(parts[0])
	flags := strings.TrimSpace(parts[1])
	sizePart := strings.TrimSpace(parts[2])
	if !strings.HasSuffix(symPart, "(SB)") {
		return GloblStmt{}, fmt.Errorf("GLOBL symbol must end with (SB): %q", "GLOBL "+rest)
	}
	sym := strings.TrimSpace(strings.TrimSuffix(symPart, "(SB)"))
	if sym == "" {
		return GloblStmt{}, fmt.Errorf("GLOBL empty symbol: %q", "GLOBL "+rest)
	}
	sz, ok := parseImm(sizePart)
	if !ok || sz < 0 {
		return GloblStmt{}, fmt.Errorf("GLOBL invalid size %q: %q", sizePart, "GLOBL "+rest)
	}
	return GloblStmt{Sym: sym, Flags: flags, Size: int64(sz)}, nil
}

func splitSymPlusOff(s string) (sym string, off int64) {
	// Best-effort parse for forms like:
	//   name+0
	//   name-8
	// If offset parsing fails, treat the entire string as a symbol name.
	s = strings.TrimSpace(s)
	if s == "" {
		return "", 0
	}
	// Prefer the last '+' or '-' as the separator.
	sep := strings.LastIndexAny(s, "+-")
	if sep <= 0 || sep == len(s)-1 {
		return s, 0
	}
	n, err := parseInt(s[sep:])
	if err != nil {
		return s, 0
	}
	return strings.TrimSpace(s[:sep]), n
}

func parseInt(s string) (int64, error) {
	s = strings.TrimSpace(s)
	if s == "" {
		return 0, fmt.Errorf("empty int")
	}
	// Accept 0x... too.
	return strconv.ParseInt(s, 0, 64)
}

func parseOperandsCSV(s string) ([]Operand, error) {
	if s == "" {
		return nil, nil
	}
	parts := splitTopLevelCSV(s)
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
