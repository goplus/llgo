package plan9asm

import (
	"fmt"
	"strings"
)

func (c *arm64Ctx) storeFlag(slot string, v string) {
	fmt.Fprintf(c.b, "  store i1 %s, ptr %s\n", v, slot)
}

func (c *arm64Ctx) setFlagsSub(dst, src, res string) {
	// NZCV for subtraction:
	// Z: res==0
	// N: res<0 (signed)
	// C: dst >= src (unsigned, no borrow)
	// V: signed overflow for dst - src
	c.flagsWritten = true

	z := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %s, 0\n", z, res)
	n := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp slt i64 %s, 0\n", n, res)
	carry := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp uge i64 %s, %s\n", carry, dst, src)

	// overflow = ((dst ^ src) & (dst ^ res)) < 0
	x1 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = xor i64 %s, %s\n", x1, dst, src)
	x2 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = xor i64 %s, %s\n", x2, dst, res)
	x3 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = and i64 %%%s, %%%s\n", x3, x1, x2)
	ov := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp slt i64 %%%s, 0\n", ov, x3)

	c.storeFlag(c.flagsZSlot, "%"+z)
	c.storeFlag(c.flagsNSlot, "%"+n)
	c.storeFlag(c.flagsCSlot, "%"+carry)
	c.storeFlag(c.flagsVSlot, "%"+ov)
}

func (c *arm64Ctx) setFlagsAdd(dst, src, res string) {
	// NZCV for addition:
	// Z: res==0
	// N: res<0 (signed)
	// C: carry out (unsigned overflow) => res < dst
	// V: signed overflow for dst + src
	c.flagsWritten = true

	z := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %s, 0\n", z, res)
	n := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp slt i64 %s, 0\n", n, res)
	carry := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp ult i64 %s, %s\n", carry, res, dst)

	// overflow = (~(dst ^ src) & (dst ^ res)) < 0
	x1 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = xor i64 %s, %s\n", x1, dst, src)
	nx1 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = xor i64 %%%s, -1\n", nx1, x1)
	x2 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = xor i64 %s, %s\n", x2, dst, res)
	x3 := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = and i64 %%%s, %%%s\n", x3, nx1, x2)
	ov := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp slt i64 %%%s, 0\n", ov, x3)

	c.storeFlag(c.flagsZSlot, "%"+z)
	c.storeFlag(c.flagsNSlot, "%"+n)
	c.storeFlag(c.flagsCSlot, "%"+carry)
	c.storeFlag(c.flagsVSlot, "%"+ov)
}

func (c *arm64Ctx) setFlagsLogic(res string) {
	// ANDS-like: update N/Z; set C/V to 0 (good enough for current corpus).
	c.flagsWritten = true

	z := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %s, 0\n", z, res)
	n := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = icmp slt i64 %s, 0\n", n, res)

	c.storeFlag(c.flagsZSlot, "%"+z)
	c.storeFlag(c.flagsNSlot, "%"+n)
	c.storeFlag(c.flagsCSlot, "false")
	c.storeFlag(c.flagsVSlot, "false")
}

func (c *arm64Ctx) condValue(cond string) (string, error) {
	if !c.flagsWritten {
		return "", fmt.Errorf("arm64: condition %s without any prior flags write", cond)
	}
	ldN := c.newTmp()
	ldZ := c.newTmp()
	ldC := c.newTmp()
	ldV := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = load i1, ptr %s\n", ldN, c.flagsNSlot)
	fmt.Fprintf(c.b, "  %%%s = load i1, ptr %s\n", ldZ, c.flagsZSlot)
	fmt.Fprintf(c.b, "  %%%s = load i1, ptr %s\n", ldC, c.flagsCSlot)
	fmt.Fprintf(c.b, "  %%%s = load i1, ptr %s\n", ldV, c.flagsVSlot)

	n := "%" + ldN
	z := "%" + ldZ
	carry := "%" + ldC
	v := "%" + ldV

	not := func(x string) string {
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %s, true\n", t, x)
		return "%" + t
	}
	and := func(a, b string) string {
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and i1 %s, %s\n", t, a, b)
		return "%" + t
	}
	or := func(a, b string) string {
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i1 %s, %s\n", t, a, b)
		return "%" + t
	}
	xor := func(a, b string) string {
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = xor i1 %s, %s\n", t, a, b)
		return "%" + t
	}
	eq := func(a, b string) string {
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = icmp eq i1 %s, %s\n", t, a, b)
		return "%" + t
	}

	switch strings.ToUpper(cond) {
	case "EQ":
		return z, nil
	case "NE":
		return not(z), nil
	case "HS":
		return carry, nil
	case "LO":
		return not(carry), nil
	case "HI":
		return and(carry, not(z)), nil
	case "LS":
		return or(not(carry), z), nil
	case "LT":
		return xor(n, v), nil
	case "GE":
		return eq(n, v), nil
	case "GT":
		return and(not(z), eq(n, v)), nil
	case "LE":
		return or(z, xor(n, v)), nil
	default:
		return "", fmt.Errorf("arm64: unsupported condition %q", cond)
	}
}
