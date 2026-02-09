package plan9asm

import (
	"fmt"
)

func (c *amd64Ctx) evalI64(op Operand) (string, error) {
	switch op.Kind {
	case OpImm:
		return fmt.Sprintf("%d", op.Imm), nil
	case OpReg:
		return c.loadReg(op.Reg)
	case OpFP:
		return c.evalFPToI64(op.FPOffset)
	default:
		return "", fmt.Errorf("amd64: unsupported i64 operand: %s", op.String())
	}
}
