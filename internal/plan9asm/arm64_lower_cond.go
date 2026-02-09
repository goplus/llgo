package plan9asm

import "fmt"

func (c *arm64Ctx) lowerCond(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "CSEL":
		// CSEL cond, a, b, dst
		if len(ins.Args) != 4 || ins.Args[0].Kind != OpIdent || ins.Args[3].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 CSEL expects cond, a, b, dstReg: %q", ins.Raw)
		}
		a, err := c.eval64(ins.Args[1], false)
		if err != nil {
			return true, false, err
		}
		bv, err := c.eval64(ins.Args[2], false)
		if err != nil {
			return true, false, err
		}
		cv, err := c.condValue(ins.Args[0].Ident)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %s, i64 %s, i64 %s\n", t, cv, a, bv)
		return true, false, c.storeReg(ins.Args[3].Reg, "%"+t)

	case "CSET":
		// CSET cond, dst
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpIdent || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 CSET expects cond, dstReg: %q", ins.Raw)
		}
		cv, err := c.condValue(ins.Args[0].Ident)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %s, i64 1, i64 0\n", t, cv)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+t)

	case "CNEG":
		// CNEG cond, src, dst => dst = cond ? -src : src
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpIdent || ins.Args[1].Kind != OpReg || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 CNEG expects cond, srcReg, dstReg: %q", ins.Raw)
		}
		cv, err := c.condValue(ins.Args[0].Ident)
		if err != nil {
			return true, false, err
		}
		src, err := c.loadReg(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		nt := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = sub i64 0, %s\n", nt, src)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %s, i64 %%%s, i64 %s\n", t, cv, nt, src)
		return true, false, c.storeReg(ins.Args[2].Reg, "%"+t)

	case "CINC":
		// CINC cond, src, dst => dst = cond ? src+1 : src
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpIdent || ins.Args[1].Kind != OpReg || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("arm64 CINC expects cond, srcReg, dstReg: %q", ins.Raw)
		}
		cv, err := c.condValue(ins.Args[0].Ident)
		if err != nil {
			return true, false, err
		}
		src, err := c.loadReg(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		it := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i64 %s, 1\n", it, src)
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select i1 %s, i64 %%%s, i64 %s\n", t, cv, it, src)
		return true, false, c.storeReg(ins.Args[2].Reg, "%"+t)
	}
	return false, false, nil
}
