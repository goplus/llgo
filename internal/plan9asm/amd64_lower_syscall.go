package plan9asm

import "fmt"

func (c *amd64Ctx) lowerSyscall(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "SYSCALL":
		if len(ins.Args) != 0 {
			return true, false, fmt.Errorf("amd64 SYSCALL expects no operands: %q", ins.Raw)
		}
		num, err := c.loadReg(AX)
		if err != nil {
			return true, false, err
		}
		a1, err := c.loadReg(DI)
		if err != nil {
			return true, false, err
		}
		a2, err := c.loadReg(SI)
		if err != nil {
			return true, false, err
		}
		a3, err := c.loadReg(DX)
		if err != nil {
			return true, false, err
		}
		a4, err := c.loadReg(Reg("R10"))
		if err != nil {
			return true, false, err
		}
		a5, err := c.loadReg(Reg("R8"))
		if err != nil {
			return true, false, err
		}
		a6, err := c.loadReg(Reg("R9"))
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
		rax := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %%%s, i64 %%%s, i64 %%%s\n", rax, isErr, negErr, r)
		if err := c.storeReg(AX, "%"+rax); err != nil {
			return true, false, err
		}
		// Linux raw syscall ABI writes r2 in DX. libc syscall provides only one
		// return value, so keep DX at zero.
		if err := c.storeReg(DX, "0"); err != nil {
			return true, false, err
		}
		return true, false, nil
	}
	return false, false, nil
}
