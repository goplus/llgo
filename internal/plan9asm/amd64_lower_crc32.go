package plan9asm

import "fmt"

func (c *amd64Ctx) lowerCrc32(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "CRC32B", "CRC32W", "CRC32L", "CRC32Q":
		// ok
	default:
		return false, false, nil
	}
	if len(ins.Args) != 2 || ins.Args[0].Kind != OpMem || ins.Args[1].Kind != OpReg {
		return true, false, fmt.Errorf("amd64 %s expects mem, reg: %q", op, ins.Raw)
	}
	src := ins.Args[0].Mem
	dst := ins.Args[1].Reg

	addr, err := c.addrFromMem(src)
	if err != nil {
		return true, false, err
	}
	p := c.ptrFromAddrI64(addr)

	dv, err := c.loadReg(dst)
	if err != nil {
		return true, false, err
	}

	switch op {
	case "CRC32Q":
		ld := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i64, ptr %s, align 1\n", ld, p)
		call := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i64 @llvm.x86.sse42.crc32.64.64(i64 %s, i64 %%%s)\n", call, dv, ld)
		return true, false, c.storeReg(dst, "%"+call)

	case "CRC32L":
		ld := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i32, ptr %s, align 1\n", ld, p)
		crc32 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", crc32, dv)
		call := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.x86.sse42.crc32.32.32(i32 %%%s, i32 %%%s)\n", call, crc32, ld)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, call)
		return true, false, c.storeReg(dst, "%"+z)

	case "CRC32W":
		ld := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i16, ptr %s, align 1\n", ld, p)
		crc32 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", crc32, dv)
		call := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.x86.sse42.crc32.32.16(i32 %%%s, i16 %%%s)\n", call, crc32, ld)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, call)
		return true, false, c.storeReg(dst, "%"+z)

	case "CRC32B":
		ld := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load i8, ptr %s, align 1\n", ld, p)
		crc32 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", crc32, dv)
		call := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.x86.sse42.crc32.32.8(i32 %%%s, i8 %%%s)\n", call, crc32, ld)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, call)
		return true, false, c.storeReg(dst, "%"+z)
	}
	return true, false, fmt.Errorf("amd64: unknown CRC32 op %s", op)
}
