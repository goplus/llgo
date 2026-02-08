package plan9asm

import (
	"fmt"
	"strings"
)

type amd64Block struct {
	name   string
	instrs []Instr
}

func amd64SplitBlocks(fn Func) []amd64Block {
	blocks := []amd64Block{{name: "entry"}}
	cur := 0
	anon := 0

	startAnon := func() {
		anon++
		blocks = append(blocks, amd64Block{name: fmt.Sprintf("anon_%d", anon)})
		cur = len(blocks) - 1
	}

	isTerminator := func(ins Instr) bool {
		if ins.Op == OpRET {
			return true
		}
		op := strings.ToUpper(string(ins.Op))
		switch Op(op) {
		case "JMP",
			"JE", "JEQ", "JZ", "JNE", "JNZ",
			"JL", "JLT", "JLE", "JG", "JGE",
			"JB", "JBE", "JA", "JAE",
			"JNC", "JC":
			return true
		default:
			return false
		}
	}

	for _, ins := range fn.Instrs {
		if ins.Op == OpLABEL && len(ins.Args) == 1 && ins.Args[0].Kind == OpLabel {
			lbl := ins.Args[0].Sym
			if len(blocks[cur].instrs) == 0 && strings.HasPrefix(blocks[cur].name, "anon_") {
				blocks[cur].name = lbl
				continue
			}
			blocks = append(blocks, amd64Block{name: lbl})
			cur = len(blocks) - 1
			continue
		}
		blocks[cur].instrs = append(blocks[cur].instrs, ins)
		if isTerminator(ins) {
			startAnon()
		}
	}

	if len(blocks) > 1 && len(blocks[len(blocks)-1].instrs) == 0 && strings.HasPrefix(blocks[len(blocks)-1].name, "anon_") {
		blocks = blocks[:len(blocks)-1]
	}
	return blocks
}

func amd64LLVMBlockName(src string) string {
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
	if s == "entry" {
		s = "bb_entry"
	}
	return s
}
