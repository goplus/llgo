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
		rawOp := strings.ToUpper(string(ins.Op))
		if strings.Contains(rawOp, ".") {
			return true
		}
		op := rawOp
		if dot := strings.IndexByte(op, '.'); dot >= 0 {
			op = op[:dot]
		}
		switch Op(op) {
		// Keep the linear path only for the tiny subset it can currently lower.
		case OpTEXT, OpRET, OpBYTE, OpMRS:
			continue
		case OpMOVD:
			// Linear arm64 lowering only supports immediate/reg/FP value moves.
			for _, a := range ins.Args {
				switch a.Kind {
				case OpImm, OpReg, OpFP:
					// ok
				default:
					return true
				}
			}
			continue
		case "B", "JMP", "BEQ", "BNE", "BLO", "BHI", "BLT", "BGE", "BLE", "BGT",
			"CBZ", "CBNZ", "TBZ", "TBNZ":
			return true
		default:
			// Any other opcode is unsupported by linear arm64 lowering.
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
