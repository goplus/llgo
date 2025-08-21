package cabi

import (
	"strings"

	"github.com/goplus/llgo/ssa"
	"github.com/goplus/llvm"
)

type Mode int

const (
	ModeNone Mode = iota
	ModeCFunc
	ModeAllFunc
)

func NewTransformer(prog ssa.Program, mode Mode) *Transformer {
	target := prog.Target()
	tr := &Transformer{
		prog:   prog,
		td:     prog.TargetData(),
		GOOS:   target.GOOS,
		GOARCH: target.GOARCH,
		mode:   mode,
	}
	switch target.GOARCH {
	case "amd64":
		tr.sys = &TypeInfoAmd64{tr}
	case "arm64":
		tr.sys = &TypeInfoArm64{tr}
	case "arm":
		tr.sys = &TypeInfoArm{tr}
	case "wasm":
		tr.sys = &TypeInfoWasm{tr}
	case "riscv64":
		tr.sys = &TypeInfoRiscv64{tr}
	case "386":
		tr.sys = &TypeInfo386{tr}
	}
	return tr
}

type Transformer struct {
	prog   ssa.Program
	td     llvm.TargetData
	GOOS   string
	GOARCH string
	sys    TypeInfoSys
	mode   Mode
}

func (p *Transformer) isCFunc(name string) bool {
	return !strings.Contains(name, ".")
}

func (p *Transformer) TransformModule(path string, m llvm.Module) {
	ctx := m.Context()
	var fns []llvm.Value
	var callInstrs []llvm.Value
	switch p.mode {
	case ModeNone:
		return
	case ModeCFunc:
		fn := m.FirstFunction()
		for !fn.IsNil() {
			if p.isCFunc(fn.Name()) {
				p.transformFuncCall(m, fn)
				if p.isWrapFunctionType(m.Context(), fn.GlobalValueType()) {
					fns = append(fns, fn)
					use := fn.FirstUse()
					for !use.IsNil() {
						if call := use.User().IsACallInst(); !call.IsNil() && call.CalledValue() == fn {
							callInstrs = append(callInstrs, call)
						}
						use = use.NextUse()
					}
				}
			}
			fn = llvm.NextFunction(fn)
		}
	case ModeAllFunc:
		fn := m.FirstFunction()
		for !fn.IsNil() {
			if p.isWrapFunctionType(ctx, fn.GlobalValueType()) {
				fns = append(fns, fn)
			}
			bb := fn.FirstBasicBlock()
			for !bb.IsNil() {
				instr := bb.FirstInstruction()
				for !instr.IsNil() {
					if call := instr.IsACallInst(); !call.IsNil() {
						if p.isWrapFunctionType(ctx, call.CalledFunctionType()) {
							callInstrs = append(callInstrs, call)
						}
					}
					instr = llvm.NextInstruction(instr)
				}
				bb = llvm.NextBasicBlock(bb)
			}
			fn = llvm.NextFunction(fn)
		}
	}
	for _, call := range callInstrs {
		p.transformCallInstr(ctx, call)
	}
	for _, fn := range fns {
		p.transformFunc(m, fn)
	}
}

func (p *Transformer) isWrapFunctionType(ctx llvm.Context, ft llvm.Type) bool {
	if p.IsWrapType(ctx, ft, ft.ReturnType(), 0) {
		return true
	}
	for i, typ := range ft.ParamTypes() {
		if p.IsWrapType(ctx, ft, typ, i+1) {
			return true
		}
	}
	return false
}

type TypeInfoSys interface {
	SupportByVal() bool
	SkipEmptyParams() bool
	IsWrapType(ctx llvm.Context, ftyp llvm.Type, typ llvm.Type, index int) bool
	GetTypeInfo(ctx llvm.Context, ftyp llvm.Type, typ llvm.Type, index int) *TypeInfo
}

type AttrKind int

const (
	AttrNone       AttrKind = iota // keep org type
	AttrVoid                       // return type void / param type void (size == 0) skip
	AttrPointer                    // type => type*
	AttrWidthType                  // type => width int i16/i24/i32/i40/i48/i56/i64 float/double
	AttrWidthType2                 // type => width two int {i64,i16} float/double
	AttrExtract                    // extract struct type
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
		if t.Kind > AttrNone {
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

func byvalAttribute(ctx llvm.Context, typ llvm.Type) llvm.Attribute {
	id := llvm.AttributeKindID("byval")
	return ctx.CreateTypeAttribute(id, typ)
}

func sretAttribute(ctx llvm.Context, typ llvm.Type) llvm.Attribute {
	id := llvm.AttributeKindID("sret")
	return ctx.CreateTypeAttribute(id, typ)
}

func funcInlineHint(ctx llvm.Context) llvm.Attribute {
	return ctx.CreateEnumAttribute(llvm.AttributeKindID("inlinehint"), 0)
}

func (p *Transformer) IsWrapType(ctx llvm.Context, ftyp llvm.Type, typ llvm.Type, index int) bool {
	if p.sys != nil {
		bret := index == 0
		if p.sys.SkipEmptyParams() && p.isWrapEmptyType(ctx, typ, bret) {
			return true
		}
		return p.sys.IsWrapType(ctx, ftyp, typ, index)
	}
	return false
}

func (p *Transformer) isWrapEmptyType(ctx llvm.Context, typ llvm.Type, bret bool) bool {
	if !bret && (typ.TypeKind() == llvm.VoidTypeKind || p.Sizeof(typ) == 0) {
		return true
	}
	return false
}

func (p *Transformer) getEmptyType(ctx llvm.Context, typ llvm.Type, bret bool) (*TypeInfo, bool) {
	if typ.TypeKind() == llvm.VoidTypeKind {
		return &TypeInfo{Type: typ, Kind: AttrVoid, Type1: ctx.VoidType()}, true
	} else if p.Sizeof(typ) == 0 {
		if bret {
			return &TypeInfo{Type: typ, Kind: AttrNone, Type1: typ}, true
		}
		return &TypeInfo{Type: typ, Kind: AttrVoid, Type1: ctx.VoidType()}, true
	}
	return nil, false
}

func (p *Transformer) GetTypeInfo(ctx llvm.Context, ftyp llvm.Type, typ llvm.Type, index int) *TypeInfo {
	if p.sys != nil {
		bret := index == 0
		if p.sys.SkipEmptyParams() {
			if info, ok := p.getEmptyType(ctx, typ, bret); ok {
				return info
			}
		}
		return p.sys.GetTypeInfo(ctx, ftyp, typ, index)
	}
	panic("not implment: " + p.GOARCH)
}

func (p *Transformer) Sizeof(typ llvm.Type) int {
	return int(p.td.TypeAllocSize(typ))
}

func (p *Transformer) Alignof(typ llvm.Type) int {
	return int(p.td.ABITypeAlignment(typ))
}

func (p *Transformer) GetFuncInfo(ctx llvm.Context, typ llvm.Type) (info FuncInfo) {
	info.Type = typ
	info.Return = p.GetTypeInfo(ctx, typ, typ.ReturnType(), 0)
	params := typ.ParamTypes()
	info.Params = make([]*TypeInfo, len(params))
	for i, t := range params {
		info.Params[i] = p.GetTypeInfo(ctx, typ, t, i+1)
	}
	return
}

func (p *Transformer) transformFuncType(ctx llvm.Context, info *FuncInfo) (llvm.Type, map[int]llvm.Attribute) {
	var paramTypes []llvm.Type
	var returnType llvm.Type
	attrs := make(map[int]llvm.Attribute)
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
		case AttrVoid:
			// skip
		case AttrNone, AttrWidthType:
			paramTypes = append(paramTypes, ti.Type1)
		case AttrPointer:
			paramTypes = append(paramTypes, ti.Type1)
			if p.sys.SupportByVal() {
				attrs[len(paramTypes)] = byvalAttribute(ctx, ti.Type)
			}
		case AttrWidthType2:
			paramTypes = append(paramTypes, ti.Type1, ti.Type2)
		case AttrExtract:
			subs := ti.Type.StructElementTypes()
			paramTypes = append(paramTypes, subs...)
		}
	}
	return llvm.FunctionType(returnType, paramTypes, info.Type.IsFunctionVarArg()), attrs
}

func (p *Transformer) transformFunc(m llvm.Module, fn llvm.Value) bool {
	ctx := m.Context()
	info := p.GetFuncInfo(ctx, fn.GlobalValueType())
	if !info.HasWrap() {
		return false
	}
	nft, attrs := p.transformFuncType(ctx, &info)
	fname := fn.Name()
	fn.SetName("")
	nfn := llvm.AddFunction(m, fname, nft)
	for i, attr := range attrs {
		nfn.AddAttributeAtIndex(i, attr)
	}
	nfn.SetLinkage(fn.Linkage())
	nfn.SetFunctionCallConv(fn.FunctionCallConv())
	for _, attr := range fn.GetFunctionAttributes() {
		nfn.AddAttributeAtIndex(-1, attr)
	}
	if sp := fn.Subprogram(); !sp.IsNil() {
		nfn.SetSubprogram(sp)
	}

	if !fn.IsDeclaration() {
		p.transformFuncBody(ctx, &info, fn, nfn, nft)
	}

	fn.ReplaceAllUsesWith(nfn)
	fn.EraseFromParentAsFunction()
	return true
}

func (p *Transformer) transformFuncBody(ctx llvm.Context, info *FuncInfo, fn llvm.Value, nfn llvm.Value, nft llvm.Type) {
	var blocks []llvm.BasicBlock
	bb := fn.FirstBasicBlock()
	for !bb.IsNil() {
		blocks = append(blocks, bb)
		bb = llvm.NextBasicBlock(bb)
	}
	for _, bb := range blocks {
		bb.RemoveFromParent()
		llvm.AppendExistingBasicBlock(nfn, bb)
	}

	b := ctx.NewBuilder()
	b.SetInsertPointBefore(nfn.EntryBasicBlock().FirstInstruction())

	params := nfn.Params()
	index := 0
	if info.Return.Kind == AttrPointer {
		index++
	}
	for i, ti := range info.Params {
		var nv llvm.Value
		switch ti.Kind {
		default:
			nv = params[index]
		case AttrVoid:
			nv = llvm.ConstNull(ti.Type)
			fn.Param(i).ReplaceAllUsesWith(nv)
			// skip
			continue
		case AttrPointer:
			nv = b.CreateLoad(ti.Type, params[index], "")
		case AttrWidthType:
			iptr := llvm.CreateAlloca(b, ti.Type1)
			b.CreateStore(params[index], iptr)
			ptr := b.CreateBitCast(iptr, llvm.PointerType(ti.Type, 0), "")
			nv = b.CreateLoad(ti.Type, ptr, "")
		case AttrWidthType2:
			typ := llvm.StructType([]llvm.Type{ti.Type1, ti.Type2}, false)
			iptr := llvm.CreateAlloca(b, typ)
			b.CreateStore(params[index], b.CreateStructGEP(typ, iptr, 0, ""))
			index++
			b.CreateStore(params[index], b.CreateStructGEP(typ, iptr, 1, ""))
			ptr := b.CreateBitCast(iptr, llvm.PointerType(ti.Type, 0), "")
			nv = b.CreateLoad(ti.Type, ptr, "")
		case AttrExtract:
			nsubs := ti.Type.StructElementTypesCount()
			nv = llvm.Undef(ti.Type)
			for i := 0; i < nsubs; i++ {
				nv = b.CreateInsertValue(nv, params[index], i, "")
				index++
			}
			fn.Param(i).ReplaceAllUsesWith(nv)
			continue
		}
		fn.Param(i).ReplaceAllUsesWith(nv)
		index++
	}
	if info.Return.Kind >= AttrPointer {
		var retInstrs []llvm.Value
		bb := nfn.FirstBasicBlock()
		for !bb.IsNil() {
			instr := bb.FirstInstruction()
			for !instr.IsNil() {
				if !instr.IsAReturnInst().IsNil() {
					retInstrs = append(retInstrs, instr)
				}
				instr = llvm.NextInstruction(instr)
			}
			bb = llvm.NextBasicBlock(bb)
		}
		for _, instr := range retInstrs {
			ret := instr.Operand(0)
			b.SetInsertPointBefore(instr)
			var rv llvm.Value
			switch info.Return.Kind {
			case AttrPointer:
				b.CreateStore(ret, params[0])
				rv = b.CreateRetVoid()
			case AttrWidthType, AttrWidthType2:
				ptr := llvm.CreateAlloca(b, info.Return.Type)
				b.CreateStore(ret, ptr)
				iptr := b.CreateBitCast(ptr, llvm.PointerType(nft.ReturnType(), 0), "")
				rv = b.CreateRet(b.CreateLoad(nft.ReturnType(), iptr, ""))
			}
			instr.ReplaceAllUsesWith(rv)
			instr.EraseFromParentAsInstruction()
		}
	}
}

func (p *Transformer) transformCallInstr(ctx llvm.Context, call llvm.Value) bool {
	nfn := call.CalledValue()
	info := p.GetFuncInfo(ctx, call.CalledFunctionType())
	if !info.HasWrap() {
		return false
	}
	nft, attrs := p.transformFuncType(ctx, &info)
	b := ctx.NewBuilder()
	b.SetInsertPointBefore(call)
	operandCount := len(info.Params)
	var nparams []llvm.Value
	for i := 0; i < operandCount; i++ {
		param := call.Operand(i)
		ti := info.Params[i]
		switch ti.Kind {
		default:
			nparams = append(nparams, param)
		case AttrVoid:
			// none
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
		case AttrExtract:
			nsubs := ti.Type.StructElementTypesCount()
			for i := 0; i < nsubs; i++ {
				nparams = append(nparams, b.CreateExtractValue(param, i, ""))
			}
		}
	}

	updateCallAttr := func(call llvm.Value) {
		for i, attr := range attrs {
			call.AddCallSiteAttribute(i, attr)
		}
	}

	var instr llvm.Value
	switch info.Return.Kind {
	case AttrVoid:
		instr = llvm.CreateCall(b, nft, nfn, nparams)
		updateCallAttr(instr)
	case AttrPointer:
		ret := llvm.CreateAlloca(b, info.Return.Type)
		call := llvm.CreateCall(b, nft, nfn, append([]llvm.Value{ret}, nparams...))
		updateCallAttr(call)
		instr = b.CreateLoad(info.Return.Type, ret, "")
	case AttrWidthType, AttrWidthType2:
		ret := llvm.CreateCall(b, nft, nfn, nparams)
		updateCallAttr(ret)
		ptr := llvm.CreateAlloca(b, nft.ReturnType())
		b.CreateStore(ret, ptr)
		pret := b.CreateBitCast(ptr, llvm.PointerType(info.Return.Type, 0), "")
		instr = b.CreateLoad(info.Return.Type, pret, "")
	default:
		instr = llvm.CreateCall(b, nft, nfn, nparams)
		updateCallAttr(instr)
	}
	call.ReplaceAllUsesWith(instr)
	call.RemoveFromParentAsInstruction()
	return true
}

func (p *Transformer) transformFuncCall(m llvm.Module, fn llvm.Value) {
	u := fn.FirstUse()
	ctx := m.Context()
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
						if p.isWrapFunctionType(ctx, ft) {
							if wrap, ok := p.transformCallbackFunc(m, gv); ok {
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

func (p *Transformer) transformCallbackFunc(m llvm.Module, fn llvm.Value) (wrap llvm.Value, ok bool) {
	ctx := m.Context()
	info := p.GetFuncInfo(ctx, fn.GlobalValueType())
	if !info.HasWrap() {
		return fn, false
	}

	nft, attrs := p.transformFuncType(ctx, &info)

	fname := fn.Name()
	wrapName := "__llgo_cdecl$" + fname
	if wrapFunc := m.NamedFunction(wrapName); !wrapFunc.IsNil() {
		return wrapFunc, true
	}
	wrapFunc := llvm.AddFunction(m, wrapName, nft)
	wrapFunc.SetLinkage(llvm.LinkOnceAnyLinkage)
	wrapFunc.AddFunctionAttr(funcInlineHint(ctx))

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
		case AttrVoid:
			// none
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
		case AttrExtract:
			nsubs := ti.Type.StructElementTypesCount()
			nv := llvm.Undef(ti.Type)
			for i := 0; i < nsubs; i++ {
				nv = b.CreateInsertValue(nv, params[index], i, "")
				index++
			}
			nparams = append(nparams, nv)
			continue
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
		returnType := nft.ReturnType()
		iptr := b.CreateBitCast(ptr, llvm.PointerType(returnType, 0), "")
		b.CreateRet(b.CreateLoad(returnType, iptr, ""))
	default:
		ret := llvm.CreateCall(b, info.Type, fn, nparams)
		b.CreateRet(ret)
	}
	return wrapFunc, true
}
