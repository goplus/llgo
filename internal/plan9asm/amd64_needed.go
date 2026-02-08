package plan9asm

import "strings"

// funcNeedsAMD64CFG decides whether we need the CFG-based amd64 translator.
// The linear prototype cannot handle labels/branches and most vector ops.
func funcNeedsAMD64CFG(fn Func) bool {
	for _, ins := range fn.Instrs {
		if ins.Op == OpLABEL {
			return true
		}
		op := strings.ToUpper(string(ins.Op))
		switch Op(op) {
		case "JMP", "JL", "JLE", "JG", "JGE", "JB", "JBE", "JA", "JAE", "JZ", "JNZ", "JNC", "JC":
			return true
		}
		// A handful of amd64 stdlib asm functions are straight-line, but if we
		// see any obvious vector-ish opcode, route through CFG translator.
		if strings.HasPrefix(op, "MOVO") || strings.HasPrefix(op, "PCLMUL") || strings.HasPrefix(op, "CRC32") || strings.HasPrefix(op, "PXOR") {
			return true
		}
	}
	return false
}

