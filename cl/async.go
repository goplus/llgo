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

package cl

import (
	"go/constant"
	"go/types"
	"strings"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

// TODO(lijie): need more generics, shouldn't limit to async.Promise
func promiseType(ty types.Type) (types.Type, bool) {
	// ty is a generic type, so we need to check the package path and type name
	if ptrTy, ok := ty.(*types.Pointer); ok {
		ty = ptrTy.Elem()
		if ty, ok := ty.(*types.Named); ok {
			if ty.Obj().Pkg() == nil {
				return nil, false
			}
			if ty.Obj().Pkg().Path() == "github.com/goplus/llgo/x/async" && ty.Obj().Name() == "Promise" {
				return ty, true
			}
		}
	}
	return nil, false
}

// check function return async.Promise[T]
// TODO(lijie): make it generic
func isAsyncFunc(sig *types.Signature) bool {
	r := sig.Results()
	if r.Len() != 1 {
		return false
	}
	ty := r.At(0).Type()
	_, ok := promiseType(ty)
	return ok
}

func (p *context) coAwait(b llssa.Builder, args []ssa.Value) llssa.Expr {
	if !isAsyncFunc(b.Func.RawType().(*types.Signature)) {
		panic("coAwait(promise *T) T: invalid context")
	}
	if len(args) == 1 {
		// promise := p.compileValue(b, args[0])
		b.Unreachable()
		// return b.CoroutineAwait(promise)
	}
	panic("coAwait(promise *T) T: invalid arguments")
}

func (p *context) coSuspend(b llssa.Builder, final llssa.Expr) {
	b.CoSuspend(b.AsyncToken(), final, nil)
}

func (p *context) coDone(b llssa.Builder, args []ssa.Value) llssa.Expr {
	if len(args) != 1 {
		panic("coDone(promise *T): invalid arguments")
	}
	hdl := p.compileValue(b, args[0])
	return b.CoDone(hdl)
}

func (p *context) coResume(b llssa.Builder, args []ssa.Value) {
	if len(args) == 1 {
		hdl := p.compileValue(b, args[0])
		b.CoResume(hdl)
	}
}

func (p *context) getSetValueFunc(fn *ssa.Function) llssa.Function {
	typ := fn.Signature.Recv().Type()
	mthds := p.goProg.MethodSets.MethodSet(typ)
	for i := 0; i < mthds.Len(); i++ {
		m := mthds.At(i)
		if ssaMthd := p.goProg.MethodValue(m); ssaMthd != nil {
			if ssaMthd.Name() == "setValue" || strings.HasPrefix(ssaMthd.Name(), "setValue[") {
				setValueFn, _, _ := p.compileFunction(ssaMthd)
				return setValueFn
			}
		}
	}
	panic("method setValue not found on type " + typ.String())
}

func (p *context) coReturn(b llssa.Builder, fn *ssa.Function, args []ssa.Value) {
	setValueFn := p.getSetValueFunc(fn)
	value := p.compileValue(b, args[1])
	b.CoReturn(setValueFn, value)
}

func (p *context) coYield(b llssa.Builder, fn *ssa.Function, args []ssa.Value) {
	setValueFn := p.getSetValueFunc(fn)
	value := p.compileValue(b, args[1])
	// TODO(lijie): find whether the co.Yield/co.Return is the last instruction
	final := b.Const(constant.MakeBool(false), b.Prog.Bool())
	b.CoYield(setValueFn, value, final)
}

func (p *context) coRun(b llssa.Builder, args []ssa.Value) {
	panic("coRun(): not implemented")
}
