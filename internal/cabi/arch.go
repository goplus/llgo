package cabi

import (
	"github.com/goplus/llvm"
)

const skip_same_type = false

func elementTypesCount(typ llvm.Type) int {
	switch typ.TypeKind() {
	case llvm.VoidTypeKind:
		return 0
	case llvm.StructTypeKind:
		var count int
		for _, t := range typ.StructElementTypes() {
			count += elementTypesCount(t)
		}
		return count
	case llvm.ArrayTypeKind:
		return typ.ArrayLength() * elementTypesCount(typ.ElementType())
	}
	return 1
}

func elementTypes(td llvm.TargetData, typ llvm.Type) (types []llvm.Type) {
	switch typ.TypeKind() {
	case llvm.VoidTypeKind:
	case llvm.StructTypeKind:
		for _, t := range typ.StructElementTypes() {
			types = append(types, elementTypes(td, t)...)
		}
	case llvm.ArrayTypeKind:
		sub := elementTypes(td, typ.ElementType())
		n := typ.ArrayLength()
		for i := 0; i < n; i++ {
			types = append(types, sub...)
		}
	default:
		types = append(types, typ)
	}
	return
}

func checkTypes(typs []llvm.Type, typ llvm.Type) bool {
	for _, t := range typs {
		if t != typ {
			return false
		}
	}
	return true
}

func hasTypes(typs []llvm.Type, typ llvm.Type) bool {
	for _, t := range typs {
		if t == typ {
			return true
		}
	}
	return false
}

type TypeInfoAmd64 struct {
	*Transformer
}

func (p *TypeInfoAmd64) SupportByVal() bool {
	return true
}

func (p *TypeInfoAmd64) IsWrapType(ctx llvm.Context, typ llvm.Type, bret bool) bool {
	return elementTypesCount(typ) >= 2
}

func (p *TypeInfoAmd64) GetTypeInfo(ctx llvm.Context, typ llvm.Type, bret bool) *TypeInfo {
	info := &TypeInfo{}
	info.Type = typ
	info.Type1 = typ
	if typ.TypeKind() == llvm.VoidTypeKind {
		info.Kind = AttrVoid
		return info
	} else if typ.TypeKind() == llvm.PointerTypeKind {
	}
	info.Size = p.Sizeof(typ)
	info.Align = p.Alignof(typ)
	if n := elementTypesCount(typ); n >= 2 {
		if info.Size > 16 {
			info.Kind = AttrPointer
			info.Type1 = llvm.PointerType(typ, 0)
		} else if info.Size <= 8 {
			info.Kind = AttrWidthType
			info.Type1 = ctx.IntType(info.Size * 8)
			types := elementTypes(p.td, typ)
			if types[0] == ctx.FloatType() && types[1] == ctx.FloatType() {
				info.Type1 = llvm.VectorType(ctx.FloatType(), 2)
			}
		} else {
			types := elementTypes(p.td, typ)
			if n == 2 && skip_same_type {
				// skip (float32,float32)
				if types[0] == ctx.FloatType() && types[1] == ctx.FloatType() {
					return info
				}
				// skip (i64|double,*) (*,i64/double)
				if p.Sizeof(types[0]) == 8 || p.Sizeof(types[1]) == 8 {
					return info
				}
			}
			info.Kind = AttrWidthType2
			var count int
			for i, et := range types {
				count += p.Sizeof(et)
				if count >= 8 {
					if i == 0 {
						info.Type1 = et
					} else if i == 1 && types[0] == ctx.FloatType() && types[1] == ctx.FloatType() {
						info.Type1 = llvm.VectorType(ctx.FloatType(), 2)
					} else {
						info.Type1 = ctx.Int64Type()
					}
					right := len(types) - i
					if count == 8 {
						right--
					}
					if right == 1 {
						info.Type2 = types[len(types)-1]
					} else if right == 2 && types[len(types)-1] == ctx.FloatType() && types[len(types)-2] == ctx.FloatType() {
						info.Type2 = llvm.VectorType(ctx.FloatType(), 2)
					} else {
						info.Type2 = ctx.IntType((info.Size - 8) * 8)
					}
					break
				}
			}
		}
	}
	return info
}

type TypeInfoArm64 struct {
	*Transformer
}

func (p *TypeInfoArm64) SupportByVal() bool {
	return false
}

func (p *TypeInfoArm64) IsWrapType(ctx llvm.Context, typ llvm.Type, bret bool) bool {
	switch typ.TypeKind() {
	case llvm.StructTypeKind, llvm.ArrayTypeKind:
		if bret && elementTypesCount(typ) == 1 {
			return false
		}
		return true
	default:
		return false
	}
}

func (p *TypeInfoArm64) GetTypeInfo(ctx llvm.Context, typ llvm.Type, bret bool) *TypeInfo {
	info := &TypeInfo{}
	info.Type = typ
	info.Type1 = typ
	kind := typ.TypeKind()
	if kind == llvm.VoidTypeKind {
		info.Kind = AttrVoid
		return info
	}
	info.Size = p.Sizeof(typ)
	info.Align = p.Alignof(typ)
	switch kind {
	case llvm.StructTypeKind, llvm.ArrayTypeKind:
		types := elementTypes(p.td, typ)
		n := len(types)
		if bret && n == 1 {
			return info
		}
		if n == 2 {
			// skip (i64/ptr,i64/ptr)
			if (types[0].TypeKind() == llvm.PointerTypeKind || types[0] == ctx.Int64Type()) &&
				(types[1].TypeKind() == llvm.PointerTypeKind || types[1] == ctx.Int64Type()) {
				return info
			}
		}
		if n <= 4 {
			if checkTypes(types, ctx.FloatType()) || checkTypes(types, ctx.DoubleType()) {
				return info
			}
		}
		if info.Size > 16 {
			info.Kind = AttrPointer
			info.Type1 = llvm.PointerType(typ, 0)
		} else if info.Size <= 8 {
			info.Kind = AttrWidthType
			if bret {
				info.Type1 = ctx.IntType(info.Size * 8)
			} else {
				info.Type1 = ctx.Int64Type()
			}
		} else {
			info.Kind = AttrWidthType
			info.Type1 = llvm.ArrayType(ctx.Int64Type(), 2)
		}
	}

	return info
}

type TypeInfoArm struct {
	*Transformer
}

func (p *TypeInfoArm) SupportByVal() bool {
	return false
}

func (p *TypeInfoArm) IsWrapType(ctx llvm.Context, typ llvm.Type, bret bool) bool {
	switch typ.TypeKind() {
	case llvm.StructTypeKind, llvm.ArrayTypeKind:
		return true
	default:
		return false
	}
}

func (p *TypeInfoArm) GetTypeInfo(ctx llvm.Context, typ llvm.Type, bret bool) *TypeInfo {
	info := &TypeInfo{}
	info.Type = typ
	info.Type1 = typ
	kind := typ.TypeKind()
	if kind == llvm.VoidTypeKind {
		info.Kind = AttrVoid
		return info
	}
	info.Size = p.Sizeof(typ)
	info.Align = p.Alignof(typ)
	switch kind {
	case llvm.StructTypeKind, llvm.ArrayTypeKind:
		types := elementTypes(p.td, typ)
		n := len(types)
		if n <= 4 {
			if checkTypes(types, ctx.FloatType()) || checkTypes(types, ctx.DoubleType()) {
				return info
			}
		}
		if bret {
			if info.Size > 4 {
				info.Kind = AttrPointer
				info.Type1 = llvm.PointerType(typ, 0)
			} else {
				info.Kind = AttrWidthType
				info.Type1 = ctx.IntType(info.Size * 8)
			}
		} else {
			if info.Size > 64 {
				info.Kind = AttrPointer
				info.Type1 = llvm.PointerType(typ, 0)
			} else {
				info.Kind = AttrWidthType
				if hasTypes(types, ctx.Int64Type()) || hasTypes(types, ctx.DoubleType()) {
					size := (info.Size + 7) &^ 7
					info.Type1 = llvm.ArrayType(ctx.Int64Type(), size/8)
				} else {
					size := (info.Size + 3) &^ 3
					info.Type1 = llvm.ArrayType(ctx.Int32Type(), size/4)
				}
			}
		}
	}

	return info
}

type TypeInfoWasm struct {
	*Transformer
}

func (p *TypeInfoWasm) SupportByVal() bool {
	return true
}

func (p *TypeInfoWasm) IsWrapType(ctx llvm.Context, typ llvm.Type, bret bool) bool {
	return elementTypesCount(typ) >= 2
}

func (p *TypeInfoWasm) GetTypeInfo(ctx llvm.Context, typ llvm.Type, bret bool) *TypeInfo {
	info := &TypeInfo{}
	info.Type = typ
	info.Type1 = typ
	if typ.TypeKind() == llvm.VoidTypeKind {
		info.Kind = AttrVoid
		return info
	}
	info.Size = p.Sizeof(typ)
	info.Align = p.Alignof(typ)
	if n := elementTypesCount(typ); n >= 2 {
		info.Kind = AttrPointer
		info.Type1 = llvm.PointerType(typ, 0)
	}
	return info
}

type TypeInfoRiscv64 struct {
	*Transformer
}

func (p *TypeInfoRiscv64) SupportByVal() bool {
	return true
}

func (p *TypeInfoRiscv64) IsWrapType(ctx llvm.Context, typ llvm.Type, bret bool) bool {
	switch typ.TypeKind() {
	case llvm.StructTypeKind, llvm.ArrayTypeKind:
		return true
	}
	return false
}

func (p *TypeInfoRiscv64) GetTypeInfo(ctx llvm.Context, typ llvm.Type, bret bool) *TypeInfo {
	info := &TypeInfo{}
	info.Type = typ
	info.Type1 = typ
	if typ.TypeKind() == llvm.VoidTypeKind {
		info.Kind = AttrVoid
		return info
	}
	info.Size = p.Sizeof(typ)
	info.Align = p.Alignof(typ)
	switch typ.TypeKind() {
	case llvm.StructTypeKind, llvm.ArrayTypeKind:
		types := elementTypes(p.td, typ)
		switch len(types) {
		case 1:
			if types[0].TypeKind() == llvm.PointerTypeKind || types[0] == ctx.Int64Type() {
				return info
			}
		case 2:
			if (types[0].TypeKind() == llvm.PointerTypeKind || types[0] == ctx.Int64Type()) &&
				(types[1].TypeKind() == llvm.PointerTypeKind || types[1] == ctx.Int64Type()) {
				return info
			}
		}
		if info.Size > 16 {
			info.Kind = AttrPointer
			info.Type1 = llvm.PointerType(typ, 0)
		} else if info.Size <= 8 {
			info.Kind = AttrWidthType
			info.Type1 = ctx.Int64Type()
		} else {
			info.Kind = AttrWidthType
			info.Type1 = llvm.ArrayType(ctx.Int64Type(), 2)
		}
	}
	return info
}
