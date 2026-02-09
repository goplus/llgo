package plan9asm

import "fmt"

func (c *arm64Ctx) lowerSyscall(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "SVC":
		if len(ins.Args) > 1 || (len(ins.Args) == 1 && ins.Args[0].Kind != OpImm) {
			return true, false, fmt.Errorf("arm64 SVC expects optional immediate operand: %q", ins.Raw)
		}

		darwinMode := false
		if len(ins.Args) == 1 && ins.Args[0].Kind == OpImm && ins.Args[0].Imm == 0x80 {
			darwinMode = true
		}

		numReg := Reg("R8")
		if _, ok := c.regSlot[numReg]; !ok {
			// Darwin syscall asm passes trap number via R16.
			numReg = Reg("R16")
		}
		num, err := c.loadReg(numReg)
		if err != nil {
			return true, false, err
		}
		loadArg := func(r Reg) (string, error) {
			if _, ok := c.regSlot[r]; !ok {
				return "0", nil
			}
			return c.loadReg(r)
		}

		a1, err := loadArg(Reg("R0"))
		if err != nil {
			return true, false, err
		}
		a2, err := loadArg(Reg("R1"))
		if err != nil {
			return true, false, err
		}
		a3, err := loadArg(Reg("R2"))
		if err != nil {
			return true, false, err
		}
		a4, err := loadArg(Reg("R3"))
		if err != nil {
			return true, false, err
		}
		a5, err := loadArg(Reg("R4"))
		if err != nil {
			return true, false, err
		}
		a6, err := loadArg(Reg("R5"))
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

		if darwinMode {
			// Darwin syscall asm checks carry flag (BCC) after SVC:
			// - C=0 success, R0=r1
			// - C=1 error,   R0=errno
			r0 := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = select i1 %%%s, i64 %%%s, i64 %%%s\n", r0, isErr, errno64, r)
			if err := c.storeReg(Reg("R0"), "%"+r0); err != nil {
				return true, false, err
			}
			if err := c.storeReg(Reg("R1"), "0"); err != nil {
				return true, false, err
			}
			fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsNSlot)
			fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsZSlot)
			fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", isErr, c.flagsCSlot)
			fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsVSlot)
			c.flagsWritten = true
			return true, false, nil
		}

		// Default path (Linux-like): return -errno on failure in R0.
		negErr := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sub i64 0, %%%s\n", negErr, errno64)
		r0 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %%%s, i64 %%%s, i64 %%%s\n", r0, isErr, negErr, r)
		if err := c.storeReg(Reg("R0"), "%"+r0); err != nil {
			return true, false, err
		}
		// libc syscall has a single return value; keep R1 zero.
		if err := c.storeReg(Reg("R1"), "0"); err != nil {
			return true, false, err
		}
		fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsNSlot)
		fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsZSlot)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", isErr, c.flagsCSlot)
		fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsVSlot)
		c.flagsWritten = true
		return true, false, nil
	}
	return false, false, nil
}
