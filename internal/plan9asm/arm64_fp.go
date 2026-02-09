package plan9asm

import "fmt"

func (c *arm64Ctx) storeFPResult64(off int64, v64 string) error {
	slot, ok := c.fpResAllocaOff[off]
	if !ok {
		return fmt.Errorf("arm64: unsupported FP result slot +%d(FP)", off)
	}
	// Find the element type via FrameSlot.
	var ty LLVMType
	found := false
	for _, s := range c.fpResults {
		if s.Offset == off {
			ty = s.Type
			found = true
			break
		}
	}
	if !found {
		return fmt.Errorf("arm64: missing FP result metadata for +%d(FP)", off)
	}

	switch string(ty) {
	case "i64":
		fmt.Fprintf(c.b, "  store i64 %s, ptr %s\n", v64, slot)
		return nil
	case "i32", "i16", "i8", "i1":
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to %s\n", t, v64, ty)
		fmt.Fprintf(c.b, "  store %s %%%s, ptr %s\n", ty, t, slot)
		return nil
	case "ptr":
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = inttoptr i64 %s to ptr\n", t, v64)
		fmt.Fprintf(c.b, "  store ptr %%%s, ptr %s\n", t, slot)
		return nil
	case "double":
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast i64 %s to double\n", t, v64)
		fmt.Fprintf(c.b, "  store double %%%s, ptr %s\n", t, slot)
		return nil
	case "float":
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", t, v64)
		b := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast i32 %%%s to float\n", b, t)
		fmt.Fprintf(c.b, "  store float %%%s, ptr %s\n", b, slot)
		return nil
	default:
		return fmt.Errorf("arm64: unsupported FP result slot type %q", ty)
	}
}

func (c *arm64Ctx) loadFPResult(slot FrameSlot) (val string, err error) {
	p, ok := c.fpResAllocaIdx[slot.Index]
	if !ok {
		return "", fmt.Errorf("arm64: missing FP result alloca for index %d", slot.Index)
	}
	t := c.newTmp()
	fmt.Fprintf(c.b, "  %%%s = load %s, ptr %s\n", t, slot.Type, p)
	return "%" + t, nil
}
