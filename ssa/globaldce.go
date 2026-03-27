package ssa

import (
	"go/types"

	"github.com/goplus/llvm"
)

const (
	vcallVisibilityLinkageUnit = 1
	moduleFlagBehaviorMin      = 8
)

func methodCapabilitySig(sig *types.Signature) string {
	return types.TypeString(sig, func(pkg *types.Package) string {
		if pkg == nil {
			return ""
		}
		return PathOf(pkg)
	})
}

func methodCapabilityKey(method *types.Func) string {
	return "go.method." + method.Name() + ":" + methodCapabilitySig(method.Type().(*types.Signature))
}

func (p Program) llvmTypeCheckedLoad(mod llvm.Module) llvm.Value {
	fn := mod.NamedFunction("llvm.type.checked.load")
	if !fn.IsNil() {
		return fn
	}
	mdTy := p.ctx.MetadataType()
	retTy := p.ctx.StructType([]llvm.Type{p.tyVoidPtr(), p.tyInt1()}, false)
	fnTy := llvm.FunctionType(retTy, []llvm.Type{p.tyVoidPtr(), p.Int32().ll, mdTy}, false)
	return llvm.AddFunction(mod, "llvm.type.checked.load", fnTy)
}

func (p Program) llvmAssume(mod llvm.Module) llvm.Value {
	fn := mod.NamedFunction("llvm.assume")
	if !fn.IsNil() {
		return fn
	}
	fnTy := llvm.FunctionType(p.tyVoid(), []llvm.Type{p.tyInt1()}, false)
	return llvm.AddFunction(mod, "llvm.assume", fnTy)
}

func (p Program) llvmFakeUse(mod llvm.Module) llvm.Value {
	fn := mod.NamedFunction("llvm.fake.use")
	if !fn.IsNil() {
		return fn
	}
	fnTy := llvm.FunctionType(p.tyVoid(), nil, true)
	return llvm.AddFunction(mod, "llvm.fake.use", fnTy)
}

func (p Program) addVirtualFunctionElimModuleFlag(mod llvm.Module, enabled bool) {
	val := uint64(0)
	if enabled {
		val = 1
	}
	mod.AddNamedMetadataOperand("llvm.module.flags",
		p.ctx.MDNode([]llvm.Metadata{
			llvm.ConstInt(p.Int32().ll, moduleFlagBehaviorMin, false).ConstantAsMetadata(),
			p.ctx.MDString("Virtual Function Elim"),
			llvm.ConstInt(p.Int32().ll, val, false).ConstantAsMetadata(),
		}),
	)
}

func (p Program) addTypeMetadata(global llvm.Value, offset uint64, typeID string) {
	kind := p.ctx.MDKindID("type")
	node := p.ctx.MDNode([]llvm.Metadata{
		llvm.ConstInt(p.Int64().ll, offset, false).ConstantAsMetadata(),
		p.ctx.MDString(typeID),
	})
	global.AddMetadata(kind, node)
}

func (p Program) setVCallVisibilityMetadata(global llvm.Value, vis uint64) {
	kind := p.ctx.MDKindID("vcall_visibility")
	node := p.ctx.MDNode([]llvm.Metadata{
		llvm.ConstInt(p.Int64().ll, vis, false).ConstantAsMetadata(),
	})
	global.AddMetadata(kind, node)
}

func (p Program) methodCheckedLoad(b llvm.Builder, mod llvm.Module, typedesc llvm.Value, typeID string) llvm.Value {
	mdVal := p.ctx.MetadataAsValue(p.ctx.MDString(typeID))
	res := llvm.CreateCall(b, p.llvmTypeCheckedLoad(mod).GlobalValueType(), p.llvmTypeCheckedLoad(mod), []llvm.Value{
		typedesc,
		llvm.ConstInt(p.Int32().ll, 0, false),
		mdVal,
	})
	ok := llvm.CreateExtractValue(b, res, 1)
	llvm.CreateCall(b, p.llvmAssume(mod).GlobalValueType(), p.llvmAssume(mod), []llvm.Value{ok})
	return llvm.CreateExtractValue(b, res, 0)
}

func (p Program) fakeUseValueInlineAsm(b llvm.Builder, v llvm.Value) {
	fnTy := llvm.FunctionType(p.tyVoid(), []llvm.Type{v.Type()}, false)
	asm := llvm.InlineAsm(fnTy, "", "X", true, false, llvm.InlineAsmDialectATT, false)
	llvm.CreateCall(b, fnTy, asm, []llvm.Value{v})
}

func (fn Function) emitFakeUses(b Builder) {
	if len(fn.fakeUses) == 0 || len(fn.blks) == 0 {
		return
	}
	curBlk := b.blk
	curInsert := b.impl.GetInsertBlock()
	b.SetBlockEx(fn.blks[0], AtStart, false)
	llvm.CreateCall(b.impl, fn.Prog.llvmFakeUse(fn.Pkg.Module()).GlobalValueType(), fn.Prog.llvmFakeUse(fn.Pkg.Module()), fn.fakeUses)
	if !curInsert.IsNil() {
		b.impl.SetInsertPointAtEnd(curInsert)
	}
	b.blk = curBlk
}

func (fn Function) emitFakeUsesInlineAsm(b Builder) {
	if len(fn.fakeUses) == 0 || len(fn.blks) == 0 {
		return
	}
	curBlk := b.blk
	curInsert := b.impl.GetInsertBlock()
	b.SetBlockEx(fn.blks[0], AtStart, false)
	for _, v := range fn.fakeUses {
		fn.Prog.fakeUseValueInlineAsm(b.impl, v)
	}
	if !curInsert.IsNil() {
		b.impl.SetInsertPointAtEnd(curInsert)
	}
	b.blk = curBlk
}

func (p Program) addMethodTypeMetadata(global llvm.Value, fullType Type, mset *types.MethodSet, methodCount int) {
	if !p.enableGoGlobalDCE {
		return
	}
	if methodCount == 0 {
		return
	}
	p.setVCallVisibilityMetadata(global, vcallVisibilityLinkageUnit)
	mt := p.rtNamed("Method")
	methodArrayOffset := p.OffsetOf(fullType, 2)
	methodType := p.Type(mt, InGo)
	ifnOffset := p.OffsetOf(methodType, 2)
	methodStride := p.SizeOf(methodType)
	for i := 0; i < methodCount; i++ {
		sel := mset.At(i)
		offset := methodArrayOffset + uint64(i)*methodStride + ifnOffset
		p.addTypeMetadata(global, offset, methodCapabilityKey(sel.Obj().(*types.Func)))
	}
}
