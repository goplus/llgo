/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package ssa

import (
	"fmt"
	"go/constant"
	"go/token"
	"go/types"
)

// declare void @llvm.coro.destroy(ptr <handle>)
// declare void @llvm.coro.resume(ptr <handle>)
// declare i1 @llvm.coro.done(ptr <handle>)
// declare ptr @llvm.coro.promise(ptr <ptr>, i32 <alignment>, i1 <from>)
// declare i32 @llvm.coro.size.i32()
// declare i64 @llvm.coro.size.i64()
// declare i32 @llvm.coro.align.i32()
// declare i64 @llvm.coro.align.i64()
// declare ptr @llvm.coro.begin(token <id>, ptr <mem>)
// declare ptr @llvm.coro.free(token %id, ptr <frame>)
// declare i1 @llvm.coro.alloc(token <id>)
// declare ptr @llvm.coro.noop()
// declare ptr @llvm.coro.frame()
// declare token @llvm.coro.id(i32 <align>, ptr <promise>, ptr <coroaddr>, ptr <fnaddrs>)
// declare token @llvm.coro.id.async(i32 <context size>, i32 <align>, ptr <context arg>, ptr <async function pointer>)
// declare token @llvm.coro.id.retcon(i32 <size>, i32 <align>, ptr <buffer>, ptr <continuation prototype>, ptr <alloc>, ptr <dealloc>)
// declare token @llvm.coro.id.retcon.once(i32 <size>, i32 <align>, ptr <buffer>, ptr <prototype>, ptr <alloc>, ptr <dealloc>)
// declare i1 @llvm.coro.end(ptr <handle>, i1 <unwind>, token <result.token>)
// declare token @llvm.coro.end.results(...)
// declare i1 @llvm.coro.end.async(ptr <handle>, i1 <unwind>, ...)
// declare i8 @llvm.coro.suspend(token <save>, i1 <final>)
// declare token @llvm.coro.save(ptr <handle>)
// declare {ptr, ptr, ptr} @llvm.coro.suspend.async(ptr <resume function>, ptr <context projection function>, ... <function to call> ... <arguments to function>)
// declare ptr @llvm.coro.prepare.async(ptr <coroutine function>)
// declare i1 @llvm.coro.suspend.retcon(...)
// declare void @await_suspend_function(ptr %awaiter, ptr %hdl)
// declare void @llvm.coro.await.suspend.void(ptr <awaiter>, ptr <handle>, ptr <await_suspend_function>)
// declare i1 @llvm.coro.await.suspend.bool(ptr <awaiter>, ptr <handle>, ptr <await_suspend_function>)
// declare void @llvm.coro.await.suspend.handle(ptr <awaiter>, ptr <handle>, ptr <await_suspend_function>)

// -----------------------------------------------------------------------------

// declare void @llvm.coro.destroy(ptr <handle>)
func (p Program) tyCoDestroy() *types.Signature {
	if p.coDestroyTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i8Ptr)
		p.coDestroyTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.coDestroyTy
}

// declare void @llvm.coro.resume(ptr <handle>)
func (p Program) tyCoResume() *types.Signature {
	if p.coResumeTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i8Ptr)
		p.coResumeTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.coResumeTy
}

// declare i1 @llvm.coro.done(ptr <handle>)
func (p Program) tyCoDone() *types.Signature {
	if p.coDoneTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i8Ptr)
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", p.Bool().raw.Type))
		p.coDoneTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coDoneTy
}

// declare ptr @llvm.coro.promise(ptr <ptr>, i32 <alignment>, i1 <from>)
func (p Program) tyCoPromise() *types.Signature {
	if p.coPromiseTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		i32 := types.NewParam(token.NoPos, nil, "", p.Int32().raw.Type)
		boolParam := types.NewParam(token.NoPos, nil, "", p.Bool().raw.Type)
		params := types.NewTuple(i8Ptr, i32, boolParam)
		results := types.NewTuple(i8Ptr)
		p.coPromiseTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coPromiseTy
}

// declare i32 @llvm.coro.size.i32()
func (p Program) tyCoSizeI32() *types.Signature {
	if p.coSizeI32Ty == nil {
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", p.Int32().raw.Type))
		p.coSizeI32Ty = types.NewSignatureType(nil, nil, nil, nil, results, false)
	}
	return p.coSizeI32Ty
}

// declare i64 @llvm.coro.size.i64()
func (p Program) tyCoSizeI64() *types.Signature {
	if p.coSizeI64Ty == nil {
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", p.Int64().raw.Type))
		p.coSizeI64Ty = types.NewSignatureType(nil, nil, nil, nil, results, false)
	}
	return p.coSizeI64Ty
}

// declare i32 @llvm.coro.align.i32()
func (p Program) tyCoAlignI32() *types.Signature {
	if p.coAlignI32Ty == nil {
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", p.Int32().raw.Type))
		p.coAlignI32Ty = types.NewSignatureType(nil, nil, nil, nil, results, false)
	}
	return p.coAlignI32Ty
}

// declare i64 @llvm.coro.align.i64()
func (p Program) tyCoAlignI64() *types.Signature {
	if p.coAlignI64Ty == nil {
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", p.Int64().raw.Type))
		p.coAlignI64Ty = types.NewSignatureType(nil, nil, nil, nil, results, false)
	}
	return p.coAlignI64Ty
}

// declare ptr @llvm.coro.begin(token <id>, ptr <mem>)
func (p Program) tyCoBegin() *types.Signature {
	if p.coBeginTy == nil {
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(tokenParam, i8Ptr)
		results := types.NewTuple(i8Ptr)
		p.coBeginTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coBeginTy
}

// declare ptr @llvm.coro.free(token %id, ptr <frame>)
func (p Program) tyCoFree() *types.Signature {
	if p.coFreeTy == nil {
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(tokenParam, i8Ptr)
		results := types.NewTuple(i8Ptr)
		p.coFreeTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coFreeTy
}

// declare i1 @llvm.coro.alloc(token <id>)
func (p Program) tyCoAlloc() *types.Signature {
	if p.coAllocTy == nil {
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		params := types.NewTuple(tokenParam)
		boolParam := types.NewParam(token.NoPos, nil, "", p.Bool().raw.Type)
		results := types.NewTuple(boolParam)
		p.coAllocTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coAllocTy
}

// declare ptr @llvm.coro.noop()
func (p Program) tyCoNoop() *types.Signature {
	if p.coNoopTy == nil {
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type))
		p.coNoopTy = types.NewSignatureType(nil, nil, nil, nil, results, false)
	}
	return p.coNoopTy
}

// declare ptr @llvm.coro.frame()
func (p Program) tyCoFrame() *types.Signature {
	if p.coFrameTy == nil {
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type))
		p.coFrameTy = types.NewSignatureType(nil, nil, nil, nil, results, false)
	}
	return p.coFrameTy
}

// declare token @llvm.coro.id(i32 <align>, ptr <promise>, ptr <coroaddr>, ptr <fnaddrs>)
func (p Program) tyCoID() *types.Signature {
	if p.coIDTy == nil {
		i32 := types.NewParam(token.NoPos, nil, "", p.Int32().raw.Type)
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i32, i8Ptr, i8Ptr, i8Ptr)
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		results := types.NewTuple(tokenParam)
		p.coIDTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coIDTy
}

/*
// declare token @llvm.coro.id.async(i32 <context size>, i32 <align>, ptr <context arg>, ptr <async function pointer>)
func (p Program) tyCoIDAsync() *types.Signature {
	if p.coIDAsyncTy == nil {
		i32 := types.NewParam(token.NoPos, nil, "", p.Int32().raw.Type)
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i32, i32, i8Ptr, i8Ptr)
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		results := types.NewTuple(tokenParam)
		p.coIDAsyncTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coIDAsyncTy
}

// declare token @llvm.coro.id.retcon(i32 <size>, i32 <align>, ptr <buffer>, ptr <continuation prototype>, ptr <alloc>, ptr <dealloc>)
func (p Program) tyCoIDRetcon() *types.Signature {
	if p.coIDRetconTy == nil {
		i32 := types.NewParam(token.NoPos, nil, "", p.Int32().raw.Type)
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i32, i32, i8Ptr, i8Ptr, i8Ptr, i8Ptr)
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		results := types.NewTuple(tokenParam)
		p.coIDRetconTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coIDRetconTy
}

// declare token @llvm.coro.id.retcon.once(i32 <size>, i32 <align>, ptr <buffer>, ptr <prototype>, ptr <alloc>, ptr <dealloc>)
func (p Program) tyCoIDRetconOnce() *types.Signature {
	if p.coIDRetconOnceTy == nil {
		i32 := types.NewParam(token.NoPos, nil, "", p.Int32().raw.Type)
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i32, i32, i8Ptr, i8Ptr, i8Ptr, i8Ptr)
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		results := types.NewTuple(tokenParam)
		p.coIDRetconOnceTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coIDRetconOnceTy
}
*/

// declare i1 @llvm.coro.end(ptr <handle>, i1 <unwind>, token <result.token>)
func (p Program) tyCoEnd() *types.Signature {
	if p.coEndTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		boolParam := types.NewParam(token.NoPos, nil, "", p.Bool().raw.Type)
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		params := types.NewTuple(i8Ptr, boolParam, tokenParam)
		results := types.NewTuple(boolParam)
		p.coEndTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coEndTy
}

/*
// TODO(lijie): varargs
// declare token @llvm.coro.end.results(...)
func (p Program) tyCoEndResults() *types.Signature {
	panic("not implemented")
}

// TODO(lijie): varargs
// declare i1 @llvm.coro.end.async(ptr <handle>, i1 <unwind>, ...)
func (p Program) tyCoEndAsync() *types.Signature {
	panic("not implemented")
}
*/

// declare i8 @llvm.coro.suspend(token <save>, i1 <final>)
func (p Program) tyCoSuspend() *types.Signature {
	if p.coSuspendTy == nil {
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		boolParam := types.NewParam(token.NoPos, nil, "", p.Bool().raw.Type)
		params := types.NewTuple(tokenParam, boolParam)
		paramByte := types.NewParam(token.NoPos, nil, "", p.Byte().raw.Type)
		results := types.NewTuple(paramByte)
		p.coSuspendTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coSuspendTy
}

/*
// declare token @llvm.coro.save(ptr <handle>)
func (p Program) tyCoSave() *types.Signature {
	if p.coSaveTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i8Ptr)
		tokenParam := types.NewParam(token.NoPos, nil, "", p.Token().raw.Type)
		results := types.NewTuple(tokenParam)
		p.coSaveTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coSaveTy
}

// TODO(lijie): varargs
// declare {ptr, ptr, ptr} @llvm.coro.suspend.async(ptr <resume function>, ptr <context projection function>, ... <function to call> ... <arguments to function>)
func (p Program) tyCoSuspendAsync() *types.Signature {
	panic("not implemented")
}

// declare ptr @llvm.coro.prepare.async(ptr <coroutine function>)
func (p Program) tyCoPrepareAsync() *types.Signature {
	if p.coPrepareAsyncTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i8Ptr)
		results := types.NewTuple(i8Ptr)
		p.coPrepareAsyncTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coPrepareAsyncTy
}

// declare i1 @llvm.coro.suspend.retcon(...)
func (p Program) tyCoSuspendRetcon() *types.Signature {
	panic("not implemented")
}

// declare void @await_suspend_function(ptr %awaiter, ptr %hdl)
func (p Program) tyCoAwaitSuspendFunction() *types.Signature {
	if p.coAwaitSuspendFunctionTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i8Ptr, i8Ptr)
		p.coAwaitSuspendFunctionTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.coAwaitSuspendFunctionTy
}

// declare void @llvm.coro.await.suspend.void(ptr <awaiter>, ptr <handle>, ptr <await_suspend_function>)
func (p Program) tyCoAwaitSuspendVoid() *types.Signature {
	if p.coAwaitSuspendVoidTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i8Ptr, i8Ptr, i8Ptr)
		p.coAwaitSuspendVoidTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.coAwaitSuspendVoidTy
}

// declare i1 @llvm.coro.await.suspend.bool(ptr <awaiter>, ptr <handle>, ptr <await_suspend_function>)
func (p Program) tyCoAwaitSuspendBool() *types.Signature {
	if p.coAwaitSuspendBoolTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i8Ptr, i8Ptr, i8Ptr)
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", p.Bool().raw.Type))
		p.coAwaitSuspendBoolTy = types.NewSignatureType(nil, nil, nil, params, results, false)
	}
	return p.coAwaitSuspendBoolTy
}

// declare void @llvm.coro.await.suspend.handle(ptr <awaiter>, ptr <handle>, ptr <await_suspend_function>)
func (p Program) tyCoAwaitSuspendHandle() *types.Signature {
	if p.coAwaitSuspendHandleTy == nil {
		i8Ptr := types.NewParam(token.NoPos, nil, "", p.VoidPtr().raw.Type)
		params := types.NewTuple(i8Ptr, i8Ptr, i8Ptr)
		p.coAwaitSuspendHandleTy = types.NewSignatureType(nil, nil, nil, params, nil, false)
	}
	return p.coAwaitSuspendHandleTy
}
*/

// -----------------------------------------------------------------------------

func (b Builder) SetBlockOffset(offset int) {
	b.blkOffset = offset
}

func (b Builder) BlockOffset() int {
	return b.blkOffset
}

func (b Builder) Async() bool {
	return b.async
}

func (b Builder) AsyncToken() Expr {
	return b.asyncToken
}

func (b Builder) SetAsyncToken(token Expr) {
	b.asyncToken = token
}

func (b Builder) EndAsync() {
	b.onReturn()
}

/*
retPtr := malloc(sizeof(Promise))
id := @llvm.coro.id(0, null, null, null)
frameSize := @llvm.coro.size.i64()
needAlloc := @llvm.coro.alloc(id)
; Allocate memory for return type and coroutine frame
frame := null

	if needAlloc {
		frame := malloc(frameSize)
	}

hdl := @llvm.coro.begin(id, frame)
*retPtr = hdl
*/
func (b Builder) BeginAsync(fn Function, entryBlk, allocBlk, cleanBlk, suspdBlk, trapBlk, beginBlk BasicBlock) {
	ty := fn.Type.RawType().(*types.Signature).Results().At(0).Type()
	ptrTy, ok := ty.(*types.Pointer)
	if !ok {
		panic("async function must return a *async.Promise")
	}
	promiseTy := b.Prog.Type(ptrTy.Elem(), InGo)

	b.async = true

	b.SetBlock(entryBlk)
	promiseSize := b.Const(constant.MakeUint64(b.Prog.SizeOf(promiseTy)), b.Prog.Int64()).SetName("promise.size")
	promise := b.AllocZ(promiseSize).SetName("promise")
	promise.Type = b.Prog.Pointer(promiseTy)
	b.promise = promise
	align := b.Const(constant.MakeInt64(0), b.Prog.CInt()).SetName("align")
	null := b.Const(nil, b.Prog.CIntPtr())
	id := b.CoID(align, null, null, null).SetName("id")
	b.asyncToken = id
	needAlloc := b.CoAlloc(id).SetName("need.dyn.alloc")
	b.If(needAlloc, allocBlk, beginBlk)
	b.SetBlock(allocBlk)
	frameSize := b.CoSizeI64().SetName("frame.size")
	frame := b.AllocZ(frameSize).SetName("frame")
	b.Jump(beginBlk)
	b.SetBlock(beginBlk)
	phi := b.Phi(b.Prog.VoidPtr())
	phi.SetName("frame")
	phi.AddIncoming(b, []BasicBlock{entryBlk, allocBlk}, func(i int, blk BasicBlock) Expr {
		if i == 0 {
			return null
		}
		return frame
	})
	hdl := b.CoBegin(id, phi.Expr)
	hdl.SetName("hdl")
	b.Store(promise, hdl)

	b.SetBlock(cleanBlk)
	b.CoFree(id, hdl)
	b.Jump(suspdBlk)

	b.SetBlock(suspdBlk)
	b.CoEnd(hdl, b.Prog.BoolVal(false), b.Prog.TokenNone())
	b.Return(promise)

	b.SetBlock(trapBlk)
	b.LLVMTrap()
	b.Unreachable()

	b.onSuspBlk = func(nextBlk BasicBlock) (BasicBlock, BasicBlock, BasicBlock) {
		return suspdBlk, nextBlk, cleanBlk
	}
	b.onReturn = func() {
		b.CoSuspend(b.asyncToken, b.Prog.BoolVal(true), trapBlk)
	}
}

// -----------------------------------------------------------------------------

// declare void @llvm.coro.destroy(ptr <handle>)
func (b Builder) CoDestroy(hdl Expr) {
	fn := b.Pkg.cFunc("llvm.coro.destroy", b.Prog.tyCoDestroy())
	b.Call(fn, hdl)
}

// declare void @llvm.coro.resume(ptr <handle>)
func (b Builder) CoResume(hdl Expr) {
	fn := b.Pkg.cFunc("llvm.coro.resume", b.Prog.tyCoResume())
	b.Call(fn, hdl)
}

// declare i1 @llvm.coro.done(ptr <handle>)
func (b Builder) coDone(hdl Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.done", b.Prog.tyCoDone())
	return b.Call(fn, hdl)
}

// return c.Char
func (b Builder) CoDone(hdl Expr) Expr {
	bvar := b.coDone(hdl)
	// TODO(lijie): inefficient
	// %6 = zext i1 %5 to i64
	// %7 = trunc i64 %6 to i8
	return b.valFromData(b.Prog.Byte(), bvar.impl)
}

// declare ptr @llvm.coro.promise(ptr <ptr>, i32 <alignment>, i1 <from>)
func (b Builder) CoPromise(ptr, align, from Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.promise", b.Prog.tyCoPromise())
	return b.Call(fn, ptr, align, from)
}

// declare i32 @llvm.coro.size.i32()
func (b Builder) CoSizeI32() Expr {
	fn := b.Pkg.cFunc("llvm.coro.size.i32", b.Prog.tyCoSizeI32())
	return b.Call(fn)
}

// declare i64 @llvm.coro.size.i64()
func (b Builder) CoSizeI64() Expr {
	fn := b.Pkg.cFunc("llvm.coro.size.i64", b.Prog.tyCoSizeI64())
	return b.Call(fn)
}

// declare i32 @llvm.coro.align.i32()
func (b Builder) CoAlignI32() Expr {
	fn := b.Pkg.cFunc("llvm.coro.align.i32", b.Prog.tyCoAlignI32())
	return b.Call(fn)
}

// declare i64 @llvm.coro.align.i64()
func (b Builder) CoAlignI64() Expr {
	fn := b.Pkg.cFunc("llvm.coro.align.i64", b.Prog.tyCoAlignI64())
	return b.Call(fn)
}

// declare ptr @llvm.coro.begin(token <id>, ptr <mem>)
func (b Builder) CoBegin(id, mem Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.begin", b.Prog.tyCoBegin())
	return b.Call(fn, id, mem)
}

// declare ptr @llvm.coro.free(token %id, ptr <frame>)
func (b Builder) CoFree(id, frame Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.free", b.Prog.tyCoFree())
	return b.Call(fn, id, frame)
}

// declare i1 @llvm.coro.alloc(token <id>)
func (b Builder) CoAlloc(id Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.alloc", b.Prog.tyCoAlloc())
	return b.Call(fn, id)
}

// declare ptr @llvm.coro.noop()
func (b Builder) CoNoop() Expr {
	fn := b.Pkg.cFunc("llvm.coro.noop", b.Prog.tyCoNoop())
	return b.Call(fn)
}

// declare ptr @llvm.coro.frame()
func (b Builder) CoFrame() Expr {
	fn := b.Pkg.cFunc("llvm.coro.frame", b.Prog.tyCoFrame())
	return b.Call(fn)
}

// declare token @llvm.coro.id(i32 <align>, ptr <promise>, ptr <coroaddr>, ptr <fnaddrs>)
func (b Builder) CoID(align Expr, promise, coroAddr, fnAddrs Expr) Expr {
	if align.Type != b.Prog.Int32() {
		panic("align must be i32")
	}
	fn := b.Pkg.cFunc("llvm.coro.id", b.Prog.tyCoID())
	return b.Call(fn, align, promise, coroAddr, fnAddrs)
}

/*
// declare token @llvm.coro.id.async(i32 <context size>, i32 <align>, ptr <context arg>, ptr <async function pointer>)
func (b Builder) CoIDAsync(contextSize, align, contextArg, asyncFnPtr Expr) Expr {
	if contextSize.Type != b.Prog.Int32() {
		panic("contextSize must be i32")
	}
	if align.Type != b.Prog.Int32() {
		panic("align must be i32")
	}
	fn := b.Pkg.cFunc("llvm.coro.id.async", b.Prog.tyCoIDAsync())
	return b.Call(fn, contextSize, align, contextArg, asyncFnPtr)
}

// declare token @llvm.coro.id.retcon(i32 <size>, i32 <align>, ptr <buffer>, ptr <continuation prototype>, ptr <alloc>, ptr <dealloc>)
func (b Builder) CoIDRetcon(size, align, buffer, contProto, alloc, dealloc Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.id.retcon", b.Prog.tyCoIDRetcon())
	return b.Call(fn, size, align, buffer, contProto, alloc, dealloc)
}

// declare token @llvm.coro.id.retcon.once(i32 <size>, i32 <align>, ptr <buffer>, ptr <prototype>, ptr <alloc>, ptr <dealloc>)
func (b Builder) CoIDRetconOnce(size, align, buffer, prototype, alloc, dealloc Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.id.retcon.once", b.Prog.tyCoIDRetconOnce())
	return b.Call(fn, size, align, buffer, prototype, alloc, dealloc)
}
*/

// declare i1 @llvm.coro.end(ptr <handle>, i1 <unwind>, token <result.token>)
func (b Builder) CoEnd(hdl Expr, unwind Expr, resultToken Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.end", b.Prog.tyCoEnd())
	return b.Call(fn, hdl, unwind, resultToken)
}

/*
// declare token @llvm.coro.end.results(...)
func (b Builder) CoEndResults(args []Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.end.results", b.Prog.tyCoEndResults())
	return b.Call(fn, args...)
}

// declare i1 @llvm.coro.end.async(ptr <handle>, i1 <unwind>, ...)
func (b Builder) CoEndAsync(handle, unwind Expr, args ...Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.end.async", b.Prog.tyCoEndAsync())
	vargs := append([]Expr{handle, unwind}, args...)
	return b.Call(fn, vargs...)
}
*/

// declare i8 @llvm.coro.suspend(token <save>, i1 <final>)
func (b Builder) coSuspend(save, final Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.suspend", b.Prog.tyCoSuspend())
	return b.Call(fn, save, final)
}

func (b Builder) CoSuspend(save, final Expr, nextBlk BasicBlock) {
	if !b.async {
		panic(fmt.Errorf("suspend %v not in async block", b.Func.Name()))
	}
	if nextBlk == nil {
		b.Func.MakeBlock("")
		nextBlk = b.Func.Block(b.blk.idx + 1)
	}
	ret := b.coSuspend(save, final)
	susp, next, clean := b.onSuspBlk(nextBlk)
	swt := b.Switch(ret, susp)
	swt.Case(b.Const(constant.MakeInt64(0), b.Prog.Byte()), next)
	swt.Case(b.Const(constant.MakeInt64(1), b.Prog.Byte()), clean)
	swt.End(b)
	b.SetBlock(nextBlk)
}

func (b Builder) CoReturn(args ...Expr) {
	if !b.async {
		panic(fmt.Errorf("return %v not in async block", b.Func.Name()))
	}

	b.Func.MakeBlock("")
	nextBlk := b.Func.Block(b.blk.idx + 1)
	_, _, cleanBlk := b.onSuspBlk(nextBlk)
	b.Jump(cleanBlk)
	b.SetBlock(nextBlk)
}

/*
// declare token @llvm.coro.save(ptr <handle>)
func (b Builder) CoSave(hdl Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.save", b.Prog.tyCoSave())
	return b.Call(fn, hdl)
}

// declare ptr @llvm.coro.prepare.async(ptr <coroutine function>)
func (b Builder) CoPrepareAsync(f Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.prepare.async", b.Prog.tyCoPrepareAsync())
	return b.Call(fn, f)
}

// declare i1 @llvm.coro.suspend.retcon(...)
func (b Builder) CoSuspendRetcon(args []Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.suspend.retcon", b.Prog.tyCoSuspendRetcon())
	return b.Call(fn, args...)
}

// declare void @llvm.coro.await.suspend.void(ptr <awaiter>, ptr <handle>, ptr <await_suspend_function>)
func (b Builder) CoAwaitSuspendVoid(awaiter, handle, f Expr) {
	fn := b.Pkg.cFunc("llvm.coro.await.suspend.void", b.Prog.tyCoAwaitSuspendVoid())
	b.Call(fn, awaiter, handle, f)
}

// declare i1 @llvm.coro.await.suspend.bool(ptr <awaiter>, ptr <handle>, ptr <await_suspend_function>)
func (b Builder) CoAwaitSuspendBool(awaiter, handle, f Expr) Expr {
	fn := b.Pkg.cFunc("llvm.coro.await.suspend.bool", b.Prog.tyCoAwaitSuspendBool())
	return b.Call(fn, awaiter, handle, f)
}

// declare void @llvm.coro.await.suspend.handle(ptr <awaiter>, ptr <handle>, ptr <await_suspend_function>)
func (b Builder) CoAwaitSuspendHandle(awaiter, handle, f Expr) {
	fn := b.Pkg.cFunc("llvm.coro.await.suspend.handle", b.Prog.tyCoAwaitSuspendHandle())
	b.Call(fn, awaiter, handle, f)
}
*/

func (b Builder) CoYield(setValueFn Function, value Expr, final Expr) {
	if !b.async {
		panic(fmt.Errorf("yield %v not in async block", b.Func.Name()))
	}
	b.Call(setValueFn.Expr, b.promise, value)
	b.CoSuspend(b.AsyncToken(), final, nil)
}
