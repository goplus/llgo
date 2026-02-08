package plan9asm

import "strings"

// funcNeedsARM64CFG decides whether we need the (currently) ARM64-only CFG-based
// translator. The linear prototype cannot handle labels/branches or opcode
// suffixes like ".P".
func funcNeedsARM64CFG(fn Func) bool {
	for _, ins := range fn.Instrs {
		if ins.Op == OpLABEL {
			return true
		}
		op := string(ins.Op)
		if strings.Contains(op, ".") {
			return true
		}
		switch Op(op) {
		case "B", "BEQ", "BNE", "BLO", "BHI", "BLT", "BGE", "BLE", "BGT",
			"CBZ", "CBNZ", "TBZ", "TBNZ":
			return true
		}
	}
	return false
}

type arm64Flags struct {
	kind  string // "cmp" or "res"
	dst   string // i64 SSA or constant
	src   string // i64 SSA or constant (for cmp)
	width LLVMType
}

