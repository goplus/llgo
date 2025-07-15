package cabi

import (
	"github.com/goplus/llvm"
)

func NewTransform(td llvm.TargetData, isCFunc func(name string) bool) *Transform {
	return &Transform{
		td:        td,
		isCFunc:   isCFunc,
		elements:  2,
		threshold: 16,
	}
}

type Transform struct {
	td        llvm.TargetData
	isCFunc   func(name string) bool
	elements  int
	threshold int
}

func (p *Transform) TransformModule(m llvm.Module) {
	var fns []llvm.Value
	fn := m.FirstFunction()
	for !fn.IsNil() {
		if p.isLargeFunction(fn) {
			fns = append(fns, fn)
		}
		fn = llvm.NextFunction(fn)
	}
	for _, fn := range fns {
		p.transformFunc(m, fn)
	}
}

func (p *Transform) isLargeType(typ llvm.Type) bool {
	return elementTypesCount(typ) >= p.elements
}

func (p *Transform) isLargeFunctionType(fn llvm.Type) bool {
	if p.isLargeType(fn.ReturnType()) {
		return true
	}
	for _, typ := range fn.ParamTypes() {
		if p.isLargeType(typ) {
			return true
		}
	}
	return false
}

type AttrKind int

const (
	AttrNone       AttrKind = iota
	AttrVoid                // param type void
	AttrPointer             // param type => type*
	AttrWidthType           // type => width int i16/i24/i32/i40/i48/i56/i64 float/double
	AttrWidthType2          // type => width two int {i64,i16} float/double
)

type FuncInfo struct {
	Type   llvm.Type   // func type
	Return *TypeInfo   // return info
	Params []*TypeInfo // params info
}

type TypeInfo struct {
	Type  llvm.Type
	Kind  AttrKind
	Type1 llvm.Type // AttrWidthType
	Type2 llvm.Type // AttrWidthType2
	Size  int
	Align int
}

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

func elementSizes(td llvm.TargetData, typ llvm.Type) (sizes []int) {
	switch typ.TypeKind() {
	case llvm.VoidTypeKind:
	case llvm.StructTypeKind:
		for _, t := range typ.StructElementTypes() {
			sizes = append(sizes, elementSizes(td, t)...)
		}
	case llvm.ArrayTypeKind:
		sub := elementSizes(td, typ)
		n := typ.ArrayLength()
		for i := 0; i < n; i++ {
			sizes = append(sizes, sub...)
		}
	default:
		sizes = append(sizes, int(td.TypeAllocSize(typ)))
	}
	return
}

func (p *Transform) isLargeFunction(fn llvm.Value) bool {
	if !p.isCFunc(fn.Name()) {
		return false
	}
	if !fn.IsDeclaration() {
		return false
	}
	return p.isLargeFunctionType(fn.GlobalValueType())
}

func (p *Transform) TransformFunc(m llvm.Module, fn llvm.Value) {
	if !p.isLargeFunction(fn) {
		return
	}
	p.transformFunc(m, fn)
}

func byvalAttribute(ctx llvm.Context, typ llvm.Type) llvm.Attribute {
	id := llvm.AttributeKindID("byval")
	return ctx.CreateTypeAttribute(id, typ)
}

func sretAttribute(ctx llvm.Context, typ llvm.Type) llvm.Attribute {
	id := llvm.AttributeKindID("sret")
	return ctx.CreateTypeAttribute(id, typ)
}

func (p *Transform) GetTypeAttr(typ llvm.Type) AttrKind {
	if elementTypesCount(typ) >= p.elements {
		size := p.td.TypeAllocSize(typ)
		if size > uint64(p.threshold) {
			return AttrPointer
		} else if size <= 8 {
			return AttrWidthType
		}
		return AttrWidthType2
	}
	return AttrNone
}

func (p *Transform) GetTypeInfo(ctx llvm.Context, typ llvm.Type) *TypeInfo {
	info := &TypeInfo{}
	info.Type = typ
	info.Type1 = typ
	if typ.TypeKind() == llvm.VoidTypeKind {
		info.Kind = AttrVoid
		return info
	}
	info.Kind = p.GetTypeAttr(typ)
	info.Size = int(p.td.TypeAllocSize(typ))
	info.Align = int(p.td.ABITypeAlignment(typ))
	if elementTypesCount(typ) >= p.elements {
		if info.Size > p.threshold {
			info.Kind = AttrPointer
			info.Type1 = llvm.PointerType(typ, 0)
		} else if info.Size <= 8 {
			info.Kind = AttrWidthType
			info.Type1 = ctx.IntType(info.Size * 8)
		} else {
			info.Kind = AttrWidthType2
			sizes := elementSizes(p.td, typ)
			var count int
			for i, sz := range sizes {
				count += sz
				if count == 8 {
					info.Type1 = ctx.Int64Type()
					info.Type2 = ctx.IntType((info.Size - 8) * 8)
					break
				} else if count > 8 {
					if i == 1 {
						info.Type1 = ctx.IntType(sizes[0] * 8)
						info.Type2 = ctx.Int64Type()
					} else {
						info.Type1 = ctx.Int64Type()
						info.Type2 = ctx.IntType((info.Size - 8) * 8)
					}
					break
				}
			}
		}
	}
	return info
}

func (p *Transform) GetFuncInfo(ctx llvm.Context, typ llvm.Type) (info FuncInfo) {
	info.Type = typ
	info.Return = p.GetTypeInfo(ctx, typ.ReturnType())
	params := typ.ParamTypes()
	info.Params = make([]*TypeInfo, len(params))
	for i, t := range params {
		info.Params[i] = p.GetTypeInfo(ctx, t)
	}
	return
}

func (p *Transform) transformFunc(m llvm.Module, fn llvm.Value) {
	var paramTypes []llvm.Type
	var returnType llvm.Type
	attrs := make(map[int]llvm.Attribute)
	ctx := m.Context()
	info := p.GetFuncInfo(ctx, fn.GlobalValueType())
	switch info.Return.Kind {
	case AttrPointer:
		returnType = ctx.VoidType()
		paramTypes = append(paramTypes, info.Return.Type1)
		attrs[1] = sretAttribute(ctx, info.Return.Type)
	case AttrWidthType:
		returnType = info.Return.Type1
	case AttrWidthType2:
		returnType = llvm.StructType([]llvm.Type{info.Return.Type1, info.Return.Type2}, false)
	default:
		returnType = info.Return.Type1
	}

	for _, ti := range info.Params {
		switch ti.Kind {
		case AttrNone, AttrWidthType:
			paramTypes = append(paramTypes, ti.Type1)
		case AttrPointer:
			paramTypes = append(paramTypes, ti.Type1)
			attrs[len(paramTypes)] = byvalAttribute(ctx, ti.Type)
		case AttrWidthType2:
			paramTypes = append(paramTypes, ti.Type1, ti.Type2)
		}
	}

	fname := fn.Name()
	fn.SetName("")
	nft := llvm.FunctionType(returnType, paramTypes, info.Type.IsFunctionVarArg())
	nfn := llvm.AddFunction(m, fname, nft)
	for i, attr := range attrs {
		nfn.AddAttributeAtIndex(i, attr)
	}
	nfn.SetLinkage(fn.Linkage())

	wrapFunc := llvm.AddFunction(m, "__llgo_cwrap."+fname, info.Type)
	wrapFunc.SetLinkage(llvm.LinkOnceAnyLinkage)

	fn.ReplaceAllUsesWith(wrapFunc)
	fn.EraseFromParentAsFunction()

	b := ctx.NewBuilder()
	block := llvm.AddBasicBlock(wrapFunc, "entry")
	b.SetInsertPointAtEnd(block)

	var nparams []llvm.Value
	for i, param := range wrapFunc.Params() {
		ti := info.Params[i]
		switch ti.Kind {
		default:
			nparams = append(nparams, param)
		case AttrPointer:
			ptr := llvm.CreateAlloca(b, ti.Type)
			b.CreateStore(param, ptr)
			nparams = append(nparams, ptr)
		case AttrWidthType:
			ptr := llvm.CreateAlloca(b, ti.Type)
			b.CreateStore(param, ptr)
			iptr := b.CreateBitCast(ptr, llvm.PointerType(ti.Type1, 0), "")
			nparams = append(nparams, b.CreateLoad(ti.Type1, iptr, ""))
		case AttrWidthType2:
			ptr := llvm.CreateAlloca(b, ti.Type)
			b.CreateStore(param, ptr)
			typ := llvm.StructType([]llvm.Type{ti.Type1, ti.Type2}, false) // {i8,i64}
			iptr := b.CreateBitCast(ptr, llvm.PointerType(typ, 0), "")
			nparams = append(nparams, b.CreateLoad(ti.Type1, b.CreateStructGEP(typ, iptr, 0, ""), ""))
			nparams = append(nparams, b.CreateLoad(ti.Type2, b.CreateStructGEP(typ, iptr, 1, ""), ""))
		}
	}

	switch info.Return.Kind {
	case AttrVoid:
		llvm.CreateCall(b, nft, nfn, nparams)
		b.CreateRetVoid()
	case AttrPointer:
		ret := llvm.CreateAlloca(b, info.Return.Type)
		llvm.CreateCall(b, nft, nfn, append([]llvm.Value{ret}, nparams...))
		b.CreateRet(b.CreateLoad(info.Return.Type, ret, ""))
	case AttrWidthType, AttrWidthType2:
		call := llvm.CreateCall(b, nft, nfn, nparams)
		call.SetTailCall(true)
		ptr := llvm.CreateAlloca(b, returnType)
		b.CreateStore(call, ptr)
		pret := b.CreateBitCast(ptr, llvm.PointerType(info.Return.Type, 0), "")
		b.CreateRet(b.CreateLoad(info.Return.Type, pret, ""))
	default:
		call := llvm.CreateCall(b, nft, nfn, nparams)
		call.SetTailCall(true)
		b.CreateRet(call)
	}
}
