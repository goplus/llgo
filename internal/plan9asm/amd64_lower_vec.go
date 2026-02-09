package plan9asm

import (
	"fmt"
	"strings"
)

func (c *amd64Ctx) lowerVec(op Op, ins Instr) (ok bool, terminated bool, err error) {
	switch op {
	case "MOVOU", "MOVOA", "MOVQ", "MOVL", "MOVD",
		"VMOVDQU", "VPCMPEQB", "VPMOVMSKB", "VZEROUPPER", "VPBROADCASTB", "VPAND", "VPTEST",
		"PXOR", "PAND", "PCLMULQDQ", "PCMPEQB", "PMOVMSKB", "PSRLDQ", "PSRLQ", "PEXTRD",
		"PUNPCKLBW", "PSHUFL", "PCMPESTRI":
		// ok
	default:
		return false, false, nil
	}

	// MOVL fp, Xn (seed vector with CRC value)
	if op == "MOVL" && len(ins.Args) == 2 && ins.Args[1].Kind == OpReg {
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); ok {
			if ins.Args[0].Kind != OpFP {
				return true, false, fmt.Errorf("amd64 MOVL to X reg expects fp src: %q", ins.Raw)
			}
			v64, err := c.evalFPToI64(ins.Args[0].FPOffset)
			if err != nil {
				return true, false, err
			}
			tr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, v64)
			// Build <4 x i32> { crc, 0, 0, 0 } then bitcast to <16 x i8>.
			v0 := "%" + tr
			tvec := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = insertelement <4 x i32> zeroinitializer, i32 %s, i32 0\n", tvec, v0)
			bc := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = bitcast <4 x i32> %%%s to <16 x i8>\n", bc, tvec)
			return true, false, c.storeX(ins.Args[1].Reg, "%"+bc)
		}
	}

	// MOVD reg, Xn (seed vector with low 32-bit value)
	if op == "MOVD" && len(ins.Args) == 2 && ins.Args[0].Kind == OpReg && ins.Args[1].Kind == OpReg {
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); ok {
			v64, err := c.loadReg(ins.Args[0].Reg)
			if err != nil {
				return true, false, err
			}
			tr := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", tr, v64)
			// Build <4 x i32> { v, 0, 0, 0 } then bitcast to <16 x i8>.
			v0 := "%" + tr
			tvec := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = insertelement <4 x i32> zeroinitializer, i32 %s, i32 0\n", tvec, v0)
			bc := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = bitcast <4 x i32> %%%s to <16 x i8>\n", bc, tvec)
			return true, false, c.storeX(ins.Args[1].Reg, "%"+bc)
		}
	}

	if op == "VZEROUPPER" {
		// No-op in LLVM IR. Kept for completeness.
		return true, false, nil
	}

	// MOVQ src, Xn (load low 64 bits into Xn)
	if op == "MOVQ" && len(ins.Args) == 2 && ins.Args[1].Kind == OpReg {
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); ok {
			var low string
			switch ins.Args[0].Kind {
			case OpImm:
				low = fmt.Sprintf("%d", ins.Args[0].Imm)
			case OpReg:
				v, err := c.loadReg(ins.Args[0].Reg)
				if err != nil {
					return true, false, err
				}
				low = v
			case OpFP:
				v, err := c.evalFPToI64(ins.Args[0].FPOffset)
				if err != nil {
					return true, false, err
				}
				low = v
			case OpMem:
				addr, err := c.addrFromMem(ins.Args[0].Mem)
				if err != nil {
					return true, false, err
				}
				p := c.ptrFromAddrI64(addr)
				ld := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = load i64, ptr %s, align 1\n", ld, p)
				low = "%" + ld
			case OpSym:
				p, err := c.ptrFromSB(ins.Args[0].Sym)
				if err != nil {
					return true, false, err
				}
				ld := c.newTmp()
				fmt.Fprintf(c.b, "  %%%s = load i64, ptr %s, align 1\n", ld, p)
				low = "%" + ld
			default:
				return true, false, fmt.Errorf("amd64 MOVQ to X reg unsupported src: %q", ins.Raw)
			}
			// Build <2 x i64> { low, 0 }.
			ins0 := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = insertelement <2 x i64> zeroinitializer, i64 %s, i32 0\n", ins0, low)
			bc := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = bitcast <2 x i64> %%%s to <16 x i8>\n", bc, ins0)
			return true, false, c.storeX(ins.Args[1].Reg, "%"+bc)
		}
	}

	// MOVQ Xn, dst (extract low 64 bits from Xn).
	if op == "MOVQ" && len(ins.Args) == 2 && ins.Args[0].Kind == OpReg {
		if _, ok := amd64ParseXReg(ins.Args[0].Reg); ok {
			xv, err := c.loadX(ins.Args[0].Reg)
			if err != nil {
				return true, false, err
			}
			bc := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = bitcast <16 x i8> %s to <2 x i64>\n", bc, xv)
			lo := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = extractelement <2 x i64> %%%s, i32 0\n", lo, bc)
			switch ins.Args[1].Kind {
			case OpReg:
				return true, false, c.storeReg(ins.Args[1].Reg, "%"+lo)
			case OpMem:
				addr, err := c.addrFromMem(ins.Args[1].Mem)
				if err != nil {
					return true, false, err
				}
				p := c.ptrFromAddrI64(addr)
				fmt.Fprintf(c.b, "  store i64 %%%s, ptr %s, align 1\n", lo, p)
				return true, false, nil
			default:
				return true, false, fmt.Errorf("amd64 MOVQ from X reg unsupported dst: %q", ins.Raw)
			}
		}
	}

	switch op {
	case "VPTEST":
		// VPTEST Ysrc1, Ysrc2 (sets flags based on bitwise tests; used with JZ/JNZ).
		// We implement the ZF behavior (ZF=1 iff (a&b)==0) since stdlib uses JNZ.
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 VPTEST expects Ysrc1, Ysrc2: %q", ins.Raw)
		}
		if _, ok := amd64ParseYReg(ins.Args[0].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseYReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		a, err := c.loadY(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		b, err := c.loadY(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		and := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and <32 x i8> %s, %s\n", and, a, b)
		bc := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast <32 x i8> %%%s to <4 x i64>\n", bc, and)
		e0, e1, e2, e3 := c.newTmp(), c.newTmp(), c.newTmp(), c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = extractelement <4 x i64> %%%s, i32 0\n", e0, bc)
		fmt.Fprintf(c.b, "  %%%s = extractelement <4 x i64> %%%s, i32 1\n", e1, bc)
		fmt.Fprintf(c.b, "  %%%s = extractelement <4 x i64> %%%s, i32 2\n", e2, bc)
		fmt.Fprintf(c.b, "  %%%s = extractelement <4 x i64> %%%s, i32 3\n", e3, bc)
		o01 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i64 %%%s, %%%s\n", o01, e0, e1)
		o23 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i64 %%%s, %%%s\n", o23, e2, e3)
		o := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i64 %%%s, %%%s\n", o, o01, o23)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = icmp eq i64 %%%s, 0\n", z, o)
		fmt.Fprintf(c.b, "  store i1 %%%s, ptr %s\n", z, c.flagsZSlot)
		// CF/other flags are not used by stdlib here; clear CF to avoid stale reads.
		fmt.Fprintf(c.b, "  store i1 false, ptr %s\n", c.flagsCFSlot)
		return true, false, nil

	case "PCMPESTRI":
		// PCMPESTRI $imm, mem, Xsrc (implicit lengths; result index in ECX).
		//
		// LLVM 19 has backend issues selecting the native X86ISD::PCMPESTR node
		// for the corresponding intrinsic in some environments. For now we
		// emulate the subset used by the Go stdlib:
		//   imm=0x0c: unsigned byte compare, equal ordered, first match.
		//
		// We compute the first offset i in [0..15] where:
		// - bytes(mem[i:]) has a prefix that matches Xsrc[0:lenA]
		// - or a partial match at the end of the 16-byte block (to drive the
		//   stdlib's "partial match" control flow).
		// If no match/partial match exists, return 16.
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpImm || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 PCMPESTRI expects $imm, mem, Xsrc: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[2].Reg); !ok {
			return false, false, nil
		}
		imm := int64(ins.Args[0].Imm) & 0xff
		if imm != 0x0c {
			return true, false, fmt.Errorf("amd64 PCMPESTRI: unsupported imm 0x%x (only 0x0c supported): %q", imm, ins.Raw)
		}

		// A: needle bytes.
		a, err := c.loadX(ins.Args[2].Reg)
		if err != nil {
			return true, false, err
		}
		// B: 16-byte haystack chunk.
		var bvec string
		switch ins.Args[1].Kind {
		case OpMem:
			addr, err := c.addrFromMem(ins.Args[1].Mem)
			if err != nil {
				return true, false, err
			}
			p := c.ptrFromAddrI64(addr)
			ld := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = load <16 x i8>, ptr %s, align 1\n", ld, p)
			bvec = "%" + ld
		case OpSym:
			p, err := c.ptrFromSB(ins.Args[1].Sym)
			if err != nil {
				return true, false, err
			}
			ld := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = load <16 x i8>, ptr %s, align 1\n", ld, p)
			bvec = "%" + ld
		default:
			return true, false, fmt.Errorf("amd64 PCMPESTRI unsupported mem operand: %q", ins.Raw)
		}

		ax, err := c.loadReg(AX)
		if err != nil {
			return true, false, err
		}
		la := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = trunc i64 %s to i32\n", la, ax)

		allOnes := llvmAllOnesI8Vec(16)
		idx := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = add i32 0, 16\n", idx)
		prev := "%" + idx

		// Build first-match index using a select chain.
		for i := 0; i < 16; i++ {
			// Shuffle B so that element 0 is B[i], padding beyond 16 with 0.
			maskElts := make([]string, 0, 16)
			for k := 0; k < 16; k++ {
				j := i + k
				if j < 16 {
					maskElts = append(maskElts, fmt.Sprintf("i32 %d", j))
				} else {
					// 16 selects element 0 of the second (zero) vector.
					maskElts = append(maskElts, "i32 16")
				}
			}
			mask := "<16 x i32> <" + strings.Join(maskElts, ", ") + ">"

			sh := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = shufflevector <16 x i8> %s, <16 x i8> zeroinitializer, %s\n", sh, bvec, mask)
			cmp := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp eq <16 x i8> %%%s, %s\n", cmp, sh, a)
			sel := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = select <16 x i1> %%%s, <16 x i8> %s, <16 x i8> zeroinitializer\n", sel, cmp, allOnes)
			pm := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.x86.sse2.pmovmskb.128(<16 x i8> %%%s)\n", pm, sel)

			// minLen = min(lenA, 16-i)
			cap := 16 - i
			lt := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp ult i32 %%%s, %d\n", lt, la, cap)
			min := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = select i1 %%%s, i32 %%%s, i32 %d\n", min, lt, la, cap)
			sh1 := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = shl i32 1, %%%s\n", sh1, min)
			req := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = sub i32 %%%s, 1\n", req, sh1)
			have := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = and i32 %%%s, %%%s\n", have, pm, req)
			okt := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp eq i32 %%%s, %%%s\n", okt, have, req)

			unset := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = icmp eq i32 %s, 16\n", unset, prev)
			take := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = and i1 %%%s, %%%s\n", take, okt, unset)
			next := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = select i1 %%%s, i32 %d, i32 %s\n", next, take, i, prev)
			prev = "%" + next
		}

		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %s to i64\n", z, prev)
		return true, false, c.storeReg(CX, "%"+z)

	case "VPAND":
		// VPAND Ysrc1, Ysrc2, Ydst
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 VPAND expects Ysrc1, Ysrc2, Ydst: %q", ins.Raw)
		}
		if _, ok := amd64ParseYReg(ins.Args[0].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseYReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseYReg(ins.Args[2].Reg); !ok {
			return false, false, nil
		}
		a, err := c.loadY(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		b, err := c.loadY(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = and <32 x i8> %s, %s\n", t, a, b)
		return true, false, c.storeY(ins.Args[2].Reg, "%"+t)

	case "VPBROADCASTB":
		// VPBROADCASTB Xsrc, Ydst (broadcast low byte to all 32 bytes).
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 VPBROADCASTB expects Xsrc, Ydst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[0].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseYReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		xv, err := c.loadX(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		e := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = extractelement <16 x i8> %s, i32 0\n", e, xv)
		ins0 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = insertelement <32 x i8> undef, i8 %%%s, i32 0\n", ins0, e)
		spl := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = shufflevector <32 x i8> %%%s, <32 x i8> zeroinitializer, <32 x i32> zeroinitializer\n", spl, ins0)
		return true, false, c.storeY(ins.Args[1].Reg, "%"+spl)

	case "PUNPCKLBW":
		// PUNPCKLBW Xsrc, Xdst
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 PUNPCKLBW expects Xsrc, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[0].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		// Interleave low 8 bytes: dst = [dst0,src0,dst1,src1,...,dst7,src7].
		src, err := c.loadX(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		dstv, err := c.loadX(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		mask := "<16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>"
		sh := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = shufflevector <16 x i8> %s, <16 x i8> %s, %s\n", sh, dstv, src, mask)
		return true, false, c.storeX(ins.Args[1].Reg, "%"+sh)

	case "PSHUFL":
		// PSHUFL $imm, Xsrc, Xdst
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpImm || ins.Args[1].Kind != OpReg || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 PSHUFL expects $imm, Xsrc, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseXReg(ins.Args[2].Reg); !ok {
			return false, false, nil
		}
		imm := uint64(ins.Args[0].Imm) & 0xff
		idx := func(k uint) uint64 { return (imm >> (2 * k)) & 3 }
		src, err := c.loadX(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		bc1 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast <16 x i8> %s to <4 x i32>\n", bc1, src)
		mask := fmt.Sprintf("<4 x i32> <i32 %d, i32 %d, i32 %d, i32 %d>", idx(0), idx(1), idx(2), idx(3))
		sh := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = shufflevector <4 x i32> %%%s, <4 x i32> zeroinitializer, %s\n", sh, bc1, mask)
		bc2 := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast <4 x i32> %%%s to <16 x i8>\n", bc2, sh)
		return true, false, c.storeX(ins.Args[2].Reg, "%"+bc2)

	case "VMOVDQU":
		// VMOVDQU srcMem, Ydst (load 32 bytes)
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 VMOVDQU expects src, Ydst: %q", ins.Raw)
		}
		if _, ok := amd64ParseYReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		if ins.Args[0].Kind != OpMem {
			return true, false, fmt.Errorf("amd64 VMOVDQU unsupported src: %q", ins.Raw)
		}
		addr, err := c.addrFromMem(ins.Args[0].Mem)
		if err != nil {
			return true, false, err
		}
		p := c.ptrFromAddrI64(addr)
		ld := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = load <32 x i8>, ptr %s, align 1\n", ld, p)
		return true, false, c.storeY(ins.Args[1].Reg, "%"+ld)

	case "VPCMPEQB":
		// VPCMPEQB Ysrc1, Ysrc2, Ydst
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 VPCMPEQB expects Ysrc1, Ysrc2, Ydst: %q", ins.Raw)
		}
		if _, ok := amd64ParseYReg(ins.Args[0].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseYReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseYReg(ins.Args[2].Reg); !ok {
			return false, false, nil
		}
		a, err := c.loadY(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		b, err := c.loadY(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		allOnes := llvmAllOnesI8Vec(32)
		cmp := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = icmp eq <32 x i8> %s, %s\n", cmp, a, b)
		sel := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select <32 x i1> %%%s, <32 x i8> %s, <32 x i8> zeroinitializer\n", sel, cmp, allOnes)
		return true, false, c.storeY(ins.Args[2].Reg, "%"+sel)

	case "VPMOVMSKB":
		// VPMOVMSKB Ysrc, dstReg
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 VPMOVMSKB expects Ysrc, dstReg: %q", ins.Raw)
		}
		if _, ok := amd64ParseYReg(ins.Args[0].Reg); !ok {
			return false, false, nil
		}
		v, err := c.loadY(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		// Work around LLVM backend issues with the AVX2 pmovmskb intrinsic by
		// splitting the 256-bit vector into two 128-bit halves and using the SSE2
		// pmovmskb.128 intrinsic.
		lo := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = shufflevector <32 x i8> %s, <32 x i8> zeroinitializer, <16 x i32> %s\n", lo, v, llvmI32RangeMask(0, 16))
		hi := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = shufflevector <32 x i8> %s, <32 x i8> zeroinitializer, <16 x i32> %s\n", hi, v, llvmI32RangeMask(16, 16))
		ml := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.x86.sse2.pmovmskb.128(<16 x i8> %%%s)\n", ml, lo)
		mh := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.x86.sse2.pmovmskb.128(<16 x i8> %%%s)\n", mh, hi)
		sh := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = shl i32 %%%s, 16\n", sh, mh)
		or := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = or i32 %%%s, %%%s\n", or, sh, ml)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, or)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+z)

	case "MOVOU", "MOVOA":
		if len(ins.Args) != 2 || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects src, Xdst: %q", op, ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		dst := ins.Args[1].Reg

		// src can be mem, sym, or X reg.
		switch ins.Args[0].Kind {
		case OpReg:
			v, err := c.loadX(ins.Args[0].Reg)
			if err != nil {
				return true, false, err
			}
			return true, false, c.storeX(dst, v)
		case OpMem:
			addr, err := c.addrFromMem(ins.Args[0].Mem)
			if err != nil {
				return true, false, err
			}
			p := c.ptrFromAddrI64(addr)
			ld := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = load <16 x i8>, ptr %s, align 1\n", ld, p)
			return true, false, c.storeX(dst, "%"+ld)
		case OpSym:
			p, err := c.ptrFromSB(ins.Args[0].Sym)
			if err != nil {
				return true, false, err
			}
			ld := c.newTmp()
			fmt.Fprintf(c.b, "  %%%s = load <16 x i8>, ptr %s, align 1\n", ld, p)
			return true, false, c.storeX(dst, "%"+ld)
		default:
			return true, false, fmt.Errorf("amd64 %s unsupported src: %q", op, ins.Raw)
		}

	case "PXOR", "PAND":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 %s expects Xsrc, Xdst: %q", op, ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[0].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		src, err := c.loadX(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		dstv, err := c.loadX(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		t := c.newTmp()
		if op == "PXOR" {
			fmt.Fprintf(c.b, "  %%%s = xor <16 x i8> %s, %s\n", t, dstv, src)
		} else {
			fmt.Fprintf(c.b, "  %%%s = and <16 x i8> %s, %s\n", t, dstv, src)
		}
		return true, false, c.storeX(ins.Args[1].Reg, "%"+t)

	case "PCLMULQDQ":
		// PCLMULQDQ $imm, Xsrc, Xdst  => Xdst = pclmul(Xdst, Xsrc, imm)
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpImm || ins.Args[1].Kind != OpReg || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 PCLMULQDQ expects $imm, Xsrc, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseXReg(ins.Args[2].Reg); !ok {
			return false, false, nil
		}
		imm := ins.Args[0].Imm & 0xff
		src, err := c.loadX(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		dstv, err := c.loadX(ins.Args[2].Reg)
		if err != nil {
			return true, false, err
		}
		bd := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast <16 x i8> %s to <2 x i64>\n", bd, dstv)
		bs := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast <16 x i8> %s to <2 x i64>\n", bs, src)
		call := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %%%s, <2 x i64> %%%s, i8 %d)\n", call, bd, bs, imm)
		bc := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast <2 x i64> %%%s to <16 x i8>\n", bc, call)
		return true, false, c.storeX(ins.Args[2].Reg, "%"+bc)

	case "PCMPEQB":
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 PCMPEQB expects Xsrc, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[0].Reg); !ok {
			return false, false, nil
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		allOnes := llvmAllOnesI8Vec(16)
		// Common idiom: PCMPEQB X3, X3 -> all ones.
		if ins.Args[0].Reg == ins.Args[1].Reg {
			return true, false, c.storeX(ins.Args[1].Reg, allOnes)
		}
		srcv, err := c.loadX(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		dstv, err := c.loadX(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		cmp := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = icmp eq <16 x i8> %s, %s\n", cmp, dstv, srcv)
		sel := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = select <16 x i1> %%%s, <16 x i8> %s, <16 x i8> zeroinitializer\n", sel, cmp, allOnes)
		return true, false, c.storeX(ins.Args[1].Reg, "%"+sel)

	case "PMOVMSKB":
		// PMOVMSKB Xsrc, dstReg
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpReg || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 PMOVMSKB expects Xsrc, dstReg: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[0].Reg); !ok {
			return false, false, nil
		}
		v, err := c.loadX(ins.Args[0].Reg)
		if err != nil {
			return true, false, err
		}
		call := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = call i32 @llvm.x86.sse2.pmovmskb.128(<16 x i8> %s)\n", call, v)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, call)
		return true, false, c.storeReg(ins.Args[1].Reg, "%"+z)

	case "PSRLDQ":
		// PSRLDQ $imm, Xdst
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpImm || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 PSRLDQ expects $imm, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		n := ins.Args[0].Imm
		if n < 0 || n > 16 {
			return true, false, fmt.Errorf("amd64 PSRLDQ invalid imm %d: %q", n, ins.Raw)
		}
		v, err := c.loadX(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		shuf := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = shufflevector <16 x i8> %s, <16 x i8> zeroinitializer, <16 x i32> %s\n", shuf, v, llvmShiftRightBytesMask(n))
		return true, false, c.storeX(ins.Args[1].Reg, "%"+shuf)

	case "PSRLQ":
		// PSRLQ $imm, Xdst (shift each 64-bit lane right)
		if len(ins.Args) != 2 || ins.Args[0].Kind != OpImm || ins.Args[1].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 PSRLQ expects $imm, Xdst: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		n := ins.Args[0].Imm & 63
		v, err := c.loadX(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		bc := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast <16 x i8> %s to <2 x i64>\n", bc, v)
		sh := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = lshr <2 x i64> %%%s, <i64 %d, i64 %d>\n", sh, bc, n, n)
		back := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast <2 x i64> %%%s to <16 x i8>\n", back, sh)
		return true, false, c.storeX(ins.Args[1].Reg, "%"+back)

	case "PEXTRD":
		// PEXTRD $imm, Xsrc, dstReg (extract 32-bit lane)
		if len(ins.Args) != 3 || ins.Args[0].Kind != OpImm || ins.Args[1].Kind != OpReg || ins.Args[2].Kind != OpReg {
			return true, false, fmt.Errorf("amd64 PEXTRD expects $imm, Xsrc, dstReg: %q", ins.Raw)
		}
		if _, ok := amd64ParseXReg(ins.Args[1].Reg); !ok {
			return false, false, nil
		}
		imm := ins.Args[0].Imm & 3
		v, err := c.loadX(ins.Args[1].Reg)
		if err != nil {
			return true, false, err
		}
		bc := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = bitcast <16 x i8> %s to <4 x i32>\n", bc, v)
		ex := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = extractelement <4 x i32> %%%s, i32 %d\n", ex, bc, imm)
		z := c.newTmp()
		fmt.Fprintf(c.b, "  %%%s = zext i32 %%%s to i64\n", z, ex)
		return true, false, c.storeReg(ins.Args[2].Reg, "%"+z)
	}

	// Other MOVQ/MOVL cases are handled elsewhere.
	return false, false, nil
}

func llvmShiftRightBytesMask(n int64) string {
	// shufflevector mask for right shift by n bytes.
	// Use second vector's element 0 (index 16) as the "zero" source.
	var sb strings.Builder
	sb.WriteString("<")
	for i := 0; i < 16; i++ {
		if i != 0 {
			sb.WriteString(", ")
		}
		idx := int64(i) + n
		if idx < 16 {
			fmt.Fprintf(&sb, "i32 %d", idx)
		} else {
			sb.WriteString("i32 16")
		}
	}
	sb.WriteString(">")
	return sb.String()
}

func llvmAllOnesI8Vec(n int) string {
	if n <= 0 {
		return "<>"
	}
	var b strings.Builder
	b.WriteString("<")
	for i := 0; i < n; i++ {
		if i > 0 {
			b.WriteString(", ")
		}
		b.WriteString("i8 -1")
	}
	b.WriteString(">")
	return b.String()
}

func llvmI32RangeMask(start int, n int) string {
	// Build <n x i32> <start, start+1, ...>.
	if n <= 0 {
		return "<>"
	}
	var b strings.Builder
	b.WriteString("<")
	for i := 0; i < n; i++ {
		if i > 0 {
			b.WriteString(", ")
		}
		fmt.Fprintf(&b, "i32 %d", start+i)
	}
	b.WriteString(">")
	return b.String()
}
