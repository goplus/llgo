package plan9asm

import (
	"fmt"
	"strings"
)

type arm64Block struct {
	name   string // source label (or "entry")
	instrs []Instr
}

func arm64SplitBlocks(fn Func) []arm64Block {
	blocks := []arm64Block{{name: "entry"}}
	cur := 0
	anon := 0

	startAnon := func() {
		anon++
		blocks = append(blocks, arm64Block{name: fmt.Sprintf("anon_%d", anon)})
		cur = len(blocks) - 1
	}

	isTerminator := func(ins Instr) bool {
		if ins.Op == OpRET {
			return true
		}
		op := strings.ToUpper(string(ins.Op))
		if dot := strings.IndexByte(op, '.'); dot >= 0 {
			op = op[:dot]
		}
		switch Op(op) {
		case "B", "JMP", "BEQ", "BNE", "BLO", "BHI", "BLT", "BGE", "BLE", "BGT", "BHS", "BLS",
			"BCC", "CBZ", "CBNZ", "TBZ", "TBNZ":
			return true
		default:
			return false
		}
	}

	for _, ins := range fn.Instrs {
		if ins.Op == OpLABEL && len(ins.Args) == 1 && ins.Args[0].Kind == OpLabel {
			lbl := ins.Args[0].Sym
			// Labels start a new basic block. If we previously created an empty
			// synthetic fallthrough block, reuse it by renaming.
			if len(blocks[cur].instrs) == 0 && strings.HasPrefix(blocks[cur].name, "anon_") {
				blocks[cur].name = lbl
				continue
			}
			blocks = append(blocks, arm64Block{name: lbl})
			cur = len(blocks) - 1
			continue
		}

		blocks[cur].instrs = append(blocks[cur].instrs, ins)
		if isTerminator(ins) {
			// Create a fresh fallthrough block for subsequent instructions.
			startAnon()
		}
	}

	// Drop trailing empty synthetic block if present.
	if len(blocks) > 1 && len(blocks[len(blocks)-1].instrs) == 0 && strings.HasPrefix(blocks[len(blocks)-1].name, "anon_") {
		blocks = blocks[:len(blocks)-1]
	}
	return blocks
}

func arm64LLVMBlockName(src string) string {
	if src == "" {
		return "bb"
	}
	var out []byte
	for i := 0; i < len(src); i++ {
		ch := src[i]
		if (ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z') || (ch >= '0' && ch <= '9') {
			out = append(out, ch)
			continue
		}
		out = append(out, '_')
	}
	s := string(out)
	if s == "" {
		return "bb"
	}
	if s[0] >= '0' && s[0] <= '9' {
		s = "bb_" + s
	}
	// Avoid collisions with "entry:" / "ret:" that some tools special-case.
	if s == "entry" {
		s = "bb_entry"
	}
	return s
}

func arm64BranchTarget(op Operand) (string, bool) {
	switch op.Kind {
	case OpIdent:
		return op.Ident, true
	case OpSym:
		// Local labels sometimes appear with "<>" suffix.
		s := strings.TrimSuffix(strings.TrimSuffix(op.Sym, "(SB)"), "<>")
		if s == "" {
			return "", false
		}
		return s, true
	default:
		return "", false
	}
}
