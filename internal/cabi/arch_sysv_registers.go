package cabi

import "github.com/xgo-dev/llvm"

// SysV allocates an aggregate's integer/SSE classes atomically. When either
// register bank lacks space, the whole value is passed in memory and neither
// bank is consumed. Letting LLVM spill independent coercions is not equivalent:
// for example, a spilled <2 x float> occupies 16 bytes instead of a C pair's 8.
func (p *Transformer) allocateSysVAggregateRegisters(info *FuncInfo) {
	integer, floating := 6, 8
	if info.Return.Kind == AttrPointer {
		integer-- // Hidden return storage is the first integer argument.
	}
	for _, param := range info.Params {
		if param.Kind == AttrPointer || param.Kind == AttrVoid {
			continue // byval arguments occupy stack memory, not a pointer register.
		}
		gp, fp := sysVRegisterClasses(param.Type1)
		if param.Kind == AttrWidthType2 {
			gp2, fp2 := sysVRegisterClasses(param.Type2)
			gp, fp = gp+gp2, fp+fp2
		}
		if gp > integer || fp > floating {
			if kind := param.Type.TypeKind(); kind == llvm.StructTypeKind || kind == llvm.ArrayTypeKind {
				param.Kind = AttrPointer
				param.Type1 = llvm.PointerType(param.Type, 0)
				param.Type2 = llvm.Type{}
				param.ByValAlign = max(8, param.Align)
			}
			continue
		}
		integer, floating = integer-gp, floating-fp
	}
}

func sysVRegisterClasses(typ llvm.Type) (integer, floating int) {
	switch typ.TypeKind() {
	case llvm.IntegerTypeKind:
		return (typ.IntTypeWidth() + 63) / 64, 0
	case llvm.PointerTypeKind:
		return 1, 0
	case llvm.FloatTypeKind, llvm.DoubleTypeKind, llvm.VectorTypeKind:
		return 0, 1
	case llvm.StructTypeKind:
		for _, element := range typ.StructElementTypes() {
			gp, fp := sysVRegisterClasses(element)
			integer, floating = integer+gp, floating+fp
		}
	case llvm.ArrayTypeKind:
		gp, fp := sysVRegisterClasses(typ.ElementType())
		integer, floating = gp*typ.ArrayLength(), fp*typ.ArrayLength()
	}
	return
}
