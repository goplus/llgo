package cabi

import (
	"strings"

	"github.com/goplus/llgo/ssa"
	"github.com/goplus/llvm"
)

func NewTransformer(prog ssa.Program) *Transformer {
	target := prog.Target()
	tr := &Transformer{
		prog:   prog,
		td:     prog.TargetData(),
		GOOS:   target.GOOS,
		GOARCH: target.GOARCH,
	}
	switch target.GOARCH {
	case "amd64":
		tr.sys = &TypeInfoAmd64{tr}
	case "arm64":
		tr.sys = &TypeInfoArm64{tr}
	case "arm":
	case "wasm", "i386":
		tr.sys = &TypeInfo32{tr}
	}
	return tr
}

type Transformer struct {
	prog   ssa.Program
	td     llvm.TargetData
	GOOS   string
	GOARCH string
	sys    TypeInfoSys
}

func (p *Transformer) isCFunc(name string) bool {
	return !strings.Contains(name, ".")
}

func (p *Transformer) TransformModule(m llvm.Module) {
	var cfns []llvm.Value
	var exports []llvm.Value
	fn := m.FirstFunction()
	for !fn.IsNil() {
		if p.isCFunc(fn.Name()) {
			p.TransformFuncCall(m, fn)
			if p.isWrapFunctionType(m.Context(), fn.GlobalValueType()) {
				if fn.IsDeclaration() {
					cfns = append(cfns, fn)
				} else {
					exports = append(exports, fn)
				}
			}
		}
		fn = llvm.NextFunction(fn)
	}
	for _, fn := range cfns {
		p.transformCFunc(m, fn)
	}
	for _, fn := range exports {
		if wrap, ok := p.transformGoFunc(m, fn); ok {
			fname := fn.Name()
			fn.SetName("__llgo_godecl$" + fname)
			wrap.SetName(fname)
		}
	}
}

func (p *Transformer) isWrapFunctionType(ctx llvm.Context, ft llvm.Type) bool {
	if p.IsWrapType(ctx, ft.ReturnType(), true) {
		return true
	}
	for _, typ := range ft.ParamTypes() {
		if p.IsWrapType(ctx, typ, false) {
			return true
		}
	}
	return false
}

type TypeInfoSys interface {
	SupportByVal() bool
	IsWrapType(ctx llvm.Context, typ llvm.Type, bret bool) bool
	GetTypeInfo(ctx llvm.Context, typ llvm.Type, bret bool) *TypeInfo
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

func (p *Transformer) TransformFuncCall(m llvm.Module, fn llvm.Value) {
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

func (p *Transformer) IsWrapType(ctx llvm.Context, typ llvm.Type, bret bool) bool {
	if p.sys != nil {
		return p.sys.IsWrapType(ctx, typ, bret)
	}
	return false
}

func (p *Transformer) GetTypeInfo(ctx llvm.Context, typ llvm.Type, bret bool) *TypeInfo {
	if p.sys != nil {
		return p.sys.GetTypeInfo(ctx, typ, bret)
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
	info.Return = p.GetTypeInfo(ctx, typ.ReturnType(), true)
	params := typ.ParamTypes()
	info.Params = make([]*TypeInfo, len(params))
	for i, t := range params {
		info.Params[i] = p.GetTypeInfo(ctx, t, false)
	}
	return
}

func (p *Transformer) transformCFunc(m llvm.Module, fn llvm.Value) (wrap llvm.Value, ok bool) {
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
			if p.sys.SupportByVal() {
				attrs[len(paramTypes)] = byvalAttribute(ctx, ti.Type)
			}
		case AttrWidthType2:
			paramTypes = append(paramTypes, ti.Type1, ti.Type2)
		}
	}

	fname := fn.Name()
	nft := llvm.FunctionType(returnType, paramTypes, info.Type.IsFunctionVarArg())
	wrapFunc := llvm.AddFunction(m, "__llgo_godecl$"+fname, info.Type)
	wrapFunc.SetLinkage(llvm.LinkOnceAnyLinkage)
	wrapFunc.AddFunctionAttr(funcInlineHint(ctx))

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
		ret := llvm.CreateCall(b, nft, nfn, nparams)
		b.CreateRet(ret)
	}
	return wrapFunc, true
}

func (p *Transformer) transformGoFunc(m llvm.Module, fn llvm.Value) (wrap llvm.Value, ok bool) {
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
			if p.sys.SupportByVal() {
				attrs[len(paramTypes)] = byvalAttribute(ctx, ti.Type)
			}
		case AttrWidthType2:
			paramTypes = append(paramTypes, ti.Type1, ti.Type2)
		}
	}

	fname := fn.Name()
	nft := llvm.FunctionType(returnType, paramTypes, info.Type.IsFunctionVarArg())
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
		ret := llvm.CreateCall(b, info.Type, fn, nparams)
		b.CreateRet(ret)
	}
	return wrapFunc, true
}
