package cabi

import (
	"strings"

	"github.com/goplus/llgo/ssa"
	"github.com/goplus/llvm"
)

func NewTransform(prog ssa.Program, isCFunc func(name string) bool) *Transform {
	return &Transform{
		prog:    prog,
		td:      prog.TargetData(),
		isCFunc: isCFunc,
		GOARCH:  prog.Target().GOARCH,
	}
}

type Transform struct {
	prog    ssa.Program
	td      llvm.TargetData
	isCFunc func(name string) bool
	GOARCH  string
}

func (p *Transform) TransformModule(m llvm.Module) {
	var fns []llvm.Value
	fn := m.FirstFunction()
	for !fn.IsNil() {
		if p.isLargeFunction(m, fn) {
			fns = append(fns, fn)
		}
		fn = llvm.NextFunction(fn)
	}
	for _, fn := range fns {
		p.transformCFunc(m, fn)
	}
}

func (p *Transform) isLargeFunctionType(ft llvm.Type) bool {
	if p.isLargeType(ft.ReturnType(), true) {
		return true
	}
	for _, typ := range ft.ParamTypes() {
		if p.isLargeType(typ, false) {
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

func (p *FuncInfo) HasWrap() bool {
	if p.Return.Kind > AttrVoid {
		return true
	}
	for _, t := range p.Params {
		if t.Kind > AttrVoid {
			return true
		}
	}
	return false
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

func (p *Transform) isLargeFunction(m llvm.Module, fn llvm.Value) bool {
	if !p.isCFunc(fn.Name()) {
		return false
	}
	if !fn.IsDeclaration() {
		return false
	}
	p.transformUses(m, fn)

	return p.isLargeFunctionType(fn.GlobalValueType())
}

func (p *Transform) transformUses(m llvm.Module, fn llvm.Value) {
	u := fn.FirstUse()
	for !u.IsNil() {
		if call := u.User().IsACallInst(); !call.IsNil() {
			n := call.OperandsCount()
			for i := 0; i < n; i++ {
				op := call.Operand(i)
				if op == fn {
					continue
				}
				if gv := op.IsAGlobalValue(); !gv.IsNil() {
					if ft := gv.GlobalValueType(); ft.TypeKind() == llvm.FunctionTypeKind {
						if p.isCFunc(gv.Name()) {
							continue
						}
						if p.isLargeFunctionType(ft) {
							if wrap, ok := p.transformGoFunc(m, gv); ok {
								call.SetOperand(i, wrap)
							}
						}
					}
				}
			}
		}
		u = u.NextUse()
	}
}

func (p *Transform) TransformFunc(m llvm.Module, fn llvm.Value) {
	if !p.isLargeFunction(m, fn) {
		return
	}
	p.transformCFunc(m, fn)
}

func byvalAttribute(ctx llvm.Context, typ llvm.Type) llvm.Attribute {
	id := llvm.AttributeKindID("byval")
	return ctx.CreateTypeAttribute(id, typ)
}

func sretAttribute(ctx llvm.Context, typ llvm.Type) llvm.Attribute {
	id := llvm.AttributeKindID("sret")
	return ctx.CreateTypeAttribute(id, typ)
}

func (p *Transform) isLargeType(typ llvm.Type, bret bool) bool {
	switch p.GOARCH {
	case "amd64":
		return elementTypesCount(typ) >= 2
	case "arm64":
	}
	return false
}

func (p *Transform) GetTypeInfo(ctx llvm.Context, typ llvm.Type, isret bool) *TypeInfo {
	arch := p.prog.Target().GOARCH
	switch arch {
	case "amd64":
		return p.GetTypeInfoAmd64(ctx, typ, isret)
	case "arm64":
		return p.GetTypeInfoArm64(ctx, typ, isret)
	default:
		panic("not implment: " + arch)
	}
}

func (p *Transform) GetTypeInfoArm64(ctx llvm.Context, typ llvm.Type, isret bool) *TypeInfo {
	info := &TypeInfo{}
	info.Type = typ
	info.Type1 = typ
	info.Size = p.Sizeof(typ)
	info.Align = p.Alignof(typ)
	return info
}

func (p *Transform) GetTypeInfoAmd64(ctx llvm.Context, typ llvm.Type, isret bool) *TypeInfo {
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
			if n == 2 {
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

func (p *Transform) Sizeof(typ llvm.Type) int {
	return int(p.td.TypeAllocSize(typ))
}

func (p *Transform) Alignof(typ llvm.Type) int {
	return int(p.td.ABITypeAlignment(typ))
}

func (p *Transform) GetFuncInfo(ctx llvm.Context, typ llvm.Type) (info FuncInfo) {
	info.Type = typ
	info.Return = p.GetTypeInfo(ctx, typ.ReturnType(), true)
	params := typ.ParamTypes()
	info.Params = make([]*TypeInfo, len(params))
	for i, t := range params {
		info.Params[i] = p.GetTypeInfo(ctx, t, false)
	}
	return
}

func (p *Transform) transformCFunc(m llvm.Module, fn llvm.Value) (wrap llvm.Value, ok bool) {
	var paramTypes []llvm.Type
	var returnType llvm.Type
	attrs := make(map[int]llvm.Attribute)
	ctx := m.Context()
	info := p.GetFuncInfo(ctx, fn.GlobalValueType())
	if !info.HasWrap() {
		return fn, false
	}

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
	nft := llvm.FunctionType(returnType, paramTypes, info.Type.IsFunctionVarArg())
	wrapFunc := llvm.AddFunction(m, "__llgo_cwrap$"+fname, info.Type)
	wrapFunc.SetLinkage(llvm.LinkOnceAnyLinkage)

	fn.SetName("")

	nfn := llvm.AddFunction(m, fname, nft)
	for i, attr := range attrs {
		nfn.AddAttributeAtIndex(i, attr)
	}
	nfn.SetLinkage(fn.Linkage())

	use := fn.FirstUse()
	for !use.IsNil() {
		if call := use.User().IsACallInst(); !call.IsNil() {
			// call in other cfunc params use nfn
			if cv := call.CalledValue(); cv != fn {
				if name := cv.Name(); strings.HasPrefix(name, "__llgo_cwrap$") || p.isCFunc(name) {
					n := call.OperandsCount()
					for i := 0; i < n; i++ {
						if call.Operand(i) == fn {
							call.SetOperand(i, nfn)
						}
					}
				}
			}
		}
		use = use.NextUse()
	}

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
		ret := llvm.CreateCall(b, nft, nfn, nparams)
		ptr := llvm.CreateAlloca(b, returnType)
		b.CreateStore(ret, ptr)
		pret := b.CreateBitCast(ptr, llvm.PointerType(info.Return.Type, 0), "")
		b.CreateRet(b.CreateLoad(info.Return.Type, pret, ""))
	default:
		call := llvm.CreateCall(b, nft, nfn, nparams)
		call.SetTailCall(true)
		b.CreateRet(call)
	}
	return wrapFunc, true
}

func (p *Transform) transformGoFunc(m llvm.Module, fn llvm.Value) (wrap llvm.Value, ok bool) {
	var paramTypes []llvm.Type
	var returnType llvm.Type
	attrs := make(map[int]llvm.Attribute)
	ctx := m.Context()
	info := p.GetFuncInfo(ctx, fn.GlobalValueType())
	if !info.HasWrap() {
		return fn, false
	}

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
	nft := llvm.FunctionType(returnType, paramTypes, info.Type.IsFunctionVarArg())
	wrapName := "__llgo_gowrap$" + fname
	if wrapFunc := m.NamedFunction(wrapName); !wrapFunc.IsNil() {
		return wrapFunc, true
	}
	wrapFunc := llvm.AddFunction(m, wrapName, nft)
	wrapFunc.SetLinkage(llvm.LinkOnceAnyLinkage)

	for i, attr := range attrs {
		wrapFunc.AddAttributeAtIndex(i, attr)
	}

	b := ctx.NewBuilder()
	block := llvm.AddBasicBlock(wrapFunc, "entry")
	b.SetInsertPointAtEnd(block)

	var nparams []llvm.Value
	params := wrapFunc.Params()
	index := 0
	if info.Return.Kind == AttrPointer {
		index++
	}
	for _, ti := range info.Params {
		switch ti.Kind {
		default:
		case AttrPointer:
			nparams = append(nparams, b.CreateLoad(ti.Type, params[index], ""))
		case AttrWidthType:
			iptr := llvm.CreateAlloca(b, ti.Type1)
			b.CreateStore(params[index], iptr)
			ptr := b.CreateBitCast(iptr, llvm.PointerType(ti.Type, 0), "")
			nparams = append(nparams, b.CreateLoad(ti.Type, ptr, ""))
		case AttrWidthType2:
			typ := llvm.StructType([]llvm.Type{ti.Type1, ti.Type2}, false)
			iptr := llvm.CreateAlloca(b, typ)
			b.CreateStore(params[index], b.CreateStructGEP(typ, iptr, 0, ""))
			index++
			b.CreateStore(params[index], b.CreateStructGEP(typ, iptr, 1, ""))
			ptr := b.CreateBitCast(iptr, llvm.PointerType(ti.Type, 0), "")
			nparams = append(nparams, b.CreateLoad(ti.Type, ptr, ""))
		}
		index++
	}

	switch info.Return.Kind {
	case AttrVoid:
		llvm.CreateCall(b, info.Type, fn, nparams)
		b.CreateRetVoid()
	case AttrPointer:
		ret := llvm.CreateCall(b, info.Type, fn, nparams)
		b.CreateStore(ret, params[0])
		b.CreateRetVoid()
	case AttrWidthType, AttrWidthType2:
		ret := llvm.CreateCall(b, info.Type, fn, nparams)
		ptr := llvm.CreateAlloca(b, info.Return.Type)
		b.CreateStore(ret, ptr)
		iptr := b.CreateBitCast(ptr, llvm.PointerType(returnType, 0), "")
		b.CreateRet(b.CreateLoad(returnType, iptr, ""))
	default:
		call := llvm.CreateCall(b, info.Type, fn, nparams)
		call.SetTailCall(true)
		b.CreateRet(call)
	}
	return wrapFunc, true
}
