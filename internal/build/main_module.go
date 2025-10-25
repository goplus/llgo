//go:build !llgo
// +build !llgo

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

package build

import (
	"go/token"

	"github.com/goplus/llgo/internal/packages"
	"go/types"
	"runtime"

	llvm "github.com/goplus/llvm"

	llssa "github.com/goplus/llgo/ssa"
)

func genMainModule(ctx *context, rtPkgPath string, pkg *packages.Package, needRuntime, needPyInit bool) (llssa.Package, error) {
	prog := ctx.prog
	mainPkg := prog.NewPackage("", pkg.PkgPath+".main")

	argcVar := mainPkg.NewVarEx("__llgo_argc", prog.Pointer(prog.Int32()))
	argcVar.Init(prog.Zero(prog.Int32()))

	charPtrType := prog.Pointer(prog.Byte())
	argvValueType := prog.Pointer(charPtrType)
	argvVar := mainPkg.NewVarEx("__llgo_argv", prog.Pointer(argvValueType))
	argvVar.InitNil()

	if ctx.buildConf.BuildMode != BuildModeExe {
		return mainPkg, nil
	}

	runtimeStub := defineWeakNoArgStub(mainPkg, "runtime.init")
	defineWeakNoArgStub(mainPkg, "syscall.init")

	var pyInit llssa.Function
	if needPyInit {
		pyInit = declareNoArgFunc(mainPkg, "Py_Initialize")
	}

	var rtInit llssa.Function
	if needRuntime {
		rtInit = declareNoArgFunc(mainPkg, rtPkgPath+".init")
	}

	mainInit := declareNoArgFunc(mainPkg, pkg.PkgPath+".init")
	mainMain := declareNoArgFunc(mainPkg, pkg.PkgPath+".main")

	entryFn := defineEntryFunction(ctx, mainPkg, argcVar, argvVar, argvValueType, runtimeStub, mainInit, mainMain, pyInit, rtInit)

	if needStart(ctx) {
		defineStart(mainPkg, entryFn, argvValueType)
	}

	return mainPkg, nil
}

func defineEntryFunction(ctx *context, pkg llssa.Package, argcVar, argvVar llssa.Global, argvType llssa.Type, runtimeStub, mainInit, mainMain llssa.Function, pyInit, rtInit llssa.Function) llssa.Function {
	prog := pkg.Prog
	entryName := "main"
	if !needStart(ctx) && isWasmTarget(ctx.buildConf.Goos) {
		entryName = "__main_argc_argv"
	}
	sig := newEntrySignature(argvType.RawType())
	fn := pkg.NewFunc(entryName, sig, llssa.InC)
	fnVal := pkg.Module().NamedFunction(entryName)
	if entryName != "main" {
		fnVal.SetVisibility(llvm.HiddenVisibility)
		fnVal.SetUnnamedAddr(true)
	}
	b := fn.MakeBody(1)
	b.Store(argcVar.Expr, fn.Param(0))
	b.Store(argvVar.Expr, fn.Param(1))
	if IsStdioNobuf() {
		emitStdioNobuf(b, pkg, ctx.buildConf.Goarch)
	}
	if pyInit != nil {
		b.Call(pyInit.Expr)
	}
	if rtInit != nil {
		b.Call(rtInit.Expr)
	}
	b.Call(runtimeStub.Expr)
	b.Call(mainInit.Expr)
	b.Call(mainMain.Expr)
	b.Return(prog.IntVal(0, prog.Int32()))
	return fn
}

func defineStart(pkg llssa.Package, entry llssa.Function, argvType llssa.Type) {
	fn := pkg.NewFunc("_start", llssa.NoArgsNoRet, llssa.InC)
	pkg.Module().NamedFunction("_start").SetLinkage(llvm.WeakAnyLinkage)
	b := fn.MakeBody(1)
	prog := pkg.Prog
	b.Call(entry.Expr, prog.IntVal(0, prog.Int32()), prog.Nil(argvType))
	b.Return()
}

func declareNoArgFunc(pkg llssa.Package, name string) llssa.Function {
	return pkg.NewFunc(name, llssa.NoArgsNoRet, llssa.InC)
}

func defineWeakNoArgStub(pkg llssa.Package, name string) llssa.Function {
	fn := pkg.NewFunc(name, llssa.NoArgsNoRet, llssa.InC)
	pkg.Module().NamedFunction(name).SetLinkage(llvm.WeakAnyLinkage)
	b := fn.MakeBody(1)
	b.Return()
	return fn
}

func emitStdioNobuf(b llssa.Builder, pkg llssa.Package, goarch string) {
	prog := pkg.Prog
	streamType := prog.VoidPtr()
	streamPtrType := prog.Pointer(streamType)
	stdout := declareExternalPtrGlobal(pkg, "stdout", streamType)
	stderr := declareExternalPtrGlobal(pkg, "stderr", streamType)
	stdoutAlt := declareExternalPtrGlobal(pkg, "__stdout", streamType)
	stderrAlt := declareExternalPtrGlobal(pkg, "__stderr", streamType)
	sizeType := sizeTypeForArch(prog, goarch)
	charPtrType := prog.Pointer(prog.Byte())
	setvbuf := declareSetvbuf(pkg, streamPtrType, charPtrType, prog.Int32(), sizeType)

	stdoutSlot := b.AllocaT(streamPtrType)
	b.Store(stdoutSlot, stdout)
	stderrSlot := b.AllocaT(streamPtrType)
	b.Store(stderrSlot, stderr)
	cond := b.BinOp(token.EQL, stdout, prog.Nil(streamPtrType))
	b.IfThen(cond, func() {
		b.Store(stdoutSlot, stdoutAlt)
		b.Store(stderrSlot, stderrAlt)
	})
	stdoutPtr := b.Load(stdoutSlot)
	stderrPtr := b.Load(stderrSlot)

	mode := prog.IntVal(2, prog.Int32())
	zeroSize := prog.Zero(sizeType)
	nullBuf := prog.Nil(charPtrType)

	b.Call(setvbuf.Expr, stdoutPtr, nullBuf, mode, zeroSize)
	b.Call(setvbuf.Expr, stderrPtr, nullBuf, mode, zeroSize)
}

func declareExternalPtrGlobal(pkg llssa.Package, name string, valueType llssa.Type) llssa.Expr {
	ptrType := pkg.Prog.Pointer(valueType)
	global := pkg.NewVarEx(name, ptrType)
	pkg.Module().NamedGlobal(name).SetLinkage(llvm.ExternalLinkage)
	return global.Expr
}

func declareSetvbuf(pkg llssa.Package, streamPtrType, bufPtrType, intType, sizeType llssa.Type) llssa.Function {
	sig := newSignature(
		[]types.Type{
			streamPtrType.RawType(),
			bufPtrType.RawType(),
			intType.RawType(),
			sizeType.RawType(),
		},
		[]types.Type{intType.RawType()},
	)
	return pkg.NewFunc("setvbuf", sig, llssa.InC)
}

func tupleOf(tys ...types.Type) *types.Tuple {
	if len(tys) == 0 {
		return types.NewTuple()
	}
	vars := make([]*types.Var, len(tys))
	for i, t := range tys {
		vars[i] = types.NewParam(token.NoPos, nil, "", t)
	}
	return types.NewTuple(vars...)
}

func newSignature(params []types.Type, results []types.Type) *types.Signature {
	return types.NewSignatureType(nil, nil, nil, tupleOf(params...), tupleOf(results...), false)
}

func newEntrySignature(argvType types.Type) *types.Signature {
	return newSignature(
		[]types.Type{types.Typ[types.Int32], argvType},
		[]types.Type{types.Typ[types.Int32]},
	)
}

func sizeTypeForArch(prog llssa.Program, arch string) llssa.Type {
	if arch == "" {
		arch = runtime.GOARCH
	}
	if is32Bits(arch) {
		return prog.Uint32()
	}
	return prog.Uint64()
}
