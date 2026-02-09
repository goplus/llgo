package plan9asm

import "fmt"

func (c *arm64Ctx) lowerSyscall(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "SVC":
		if len(ins.Args) != 0 {
			return true, false, fmt.Errorf("arm64 SVC expects no operands: %q", ins.Raw)
		}
		num, err := c.loadReg(Reg("R8"))
		if err != nil {
			return true, false, err
		}
		a1, err := c.loadReg(Reg("R0"))
		if err != nil {
			return true, false, err
		}
		a2, err := c.loadReg(Reg("R1"))
		if err != nil {
			return true, false, err
		}
		a3, err := c.loadReg(Reg("R2"))
		if err != nil {
			return true, false, err
		}
		a4, err := c.loadReg(Reg("R3"))
		if err != nil {
			return true, false, err
		}
		a5, err := c.loadReg(Reg("R4"))
		if err != nil {
			return true, false, err
		}
		a6, err := c.loadReg(Reg("R5"))
		if err != nil {
			return true, false, err
		}

		r := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i64 @syscall(i64 %s, i64 %s, i64 %s, i64 %s, i64 %s, i64 %s, i64 %s)\n", r, num, a1, a2, a3, a4, a5, a6)
		isErr := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %%%s, -1\n", isErr, r)
		errno32 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i32 @cliteErrno()\n", errno32)
		errno64 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", errno64, errno32)
		negErr := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sub i64 0, %%%s\n", negErr, errno64)
		r0 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %%%s, i64 %%%s, i64 %%%s\n", r0, isErr, negErr, r)
		if err := c.storeReg(Reg("R0"), "%"+r0); err != nil {
			return true, false, err
		}
		// Linux raw syscall ABI has r2 in R1. Keep it at zero for libc syscall.
		if err := c.storeReg(Reg("R1"), "0"); err != nil {
			return true, false, err
		}
		return true, false, nil
	}
	return false, false, nil
}
