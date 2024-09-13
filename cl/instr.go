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
	"log"

	"golang.org/x/tools/go/ssa"

	llssa "github.com/goplus/llgo/ssa"
)

// -----------------------------------------------------------------------------

func constStr(v ssa.Value) (ret string, ok bool) {
	if c, ok := v.(*ssa.Const); ok {
		if v := c.Value; v.Kind() == constant.String {
			return constant.StringVal(v), true
		}
	}
	return
}

func constBool(v ssa.Value) (ret bool, ok bool) {
	if c, ok := v.(*ssa.Const); ok {
		if v := c.Value; v.Kind() == constant.Bool {
			return constant.BoolVal(v), true
		}
	}
	return
}

// func pystr(string) *py.Object
func pystr(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 1 {
		if sv, ok := constStr(args[0]); ok {
			return b.PyStr(sv)
		}
	}
	panic("pystr(<string-literal>): invalid arguments")
}

// func cstr(string) *int8
func cstr(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 1 {
		if sv, ok := constStr(args[0]); ok {
			return b.CStr(sv)
		}
	}
	panic("cstr(<string-literal>): invalid arguments")
}

// func index(arr *T, idx int) T
func (p *context) index(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	return b.Load(p.advance(b, args))
}

// func advance(ptr *T, offset int) *T
func (p *context) advance(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 2 {
		ptr := p.compileValue(b, args[0])
		offset := p.compileValue(b, args[1])
		return b.Advance(ptr, offset)
	}
	panic("advance(p ptr, offset int): invalid arguments")
}

// func alloca(size uintptr) unsafe.Pointer
func (p *context) alloca(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 1 {
		n := p.compileValue(b, args[0])
		return b.Alloca(n)
	}
	panic("alloca(size uintptr): invalid arguments")
}

// func allocaCStr(s string) *int8
func (p *context) allocaCStr(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 1 {
		s := p.compileValue(b, args[0])
		return b.AllocaCStr(s)
	}
	panic("allocaCStr(s string): invalid arguments")
}

// func allocaCStrs(strs []string, endWithNil bool) **int8
func (p *context) allocaCStrs(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 2 {
		endWithNil, ok := constBool(args[1])
		if !ok {
			panic("allocaCStrs(strs, endWithNil): endWithNil should be constant bool")
		}
		strs := p.compileValue(b, args[0])
		return b.AllocaCStrs(strs, endWithNil)
	}
	panic("allocaCStrs(strs []string, endWithNil bool): invalid arguments")
}

// func string(cstr *int8, n ...int) *int8
func (p *context) string(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 2 {
		cstr := p.compileValue(b, args[0])
		n := make([]llssa.Expr, 0, 1)
		n = p.compileVArg(n, b, args[1])
		return b.MakeString(cstr, n...)
	}
	panic("string(cstr *int8, n ...int): invalid arguments")
}

// func stringData(s string) *int8
func (p *context) stringData(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 1 {
		s := p.compileValue(b, args[0])
		return b.StringData(s)
	}
	panic("stringData(s string): invalid arguments")
}

// func funcAddr(fn any) unsafe.Pointer
func (p *context) funcAddr(_ llssa.Builder, args []ssa.Value) llssa.Expr {
	if len(args) == 1 {
		if fn, ok := args[0].(*ssa.MakeInterface); ok {
			if fnDecl, ok := fn.X.(*ssa.Function); ok {
				if aFn, _, _ := p.compileFunction(fnDecl); aFn != nil {
					return aFn.Expr
				}
			}
		}
	}
	panic("funcAddr(<func>): invalid arguments")
}

func (p *context) sigsetjmp(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 2 {
		jb := p.compileValue(b, args[0])
		savemask := p.compileValue(b, args[1])
		return b.Sigsetjmp(jb, savemask)
	}
	panic("sigsetjmp(jb c.SigjmpBuf, savemask c.Int): invalid arguments")
}

func (p *context) siglongjmp(b llssa.Builder, args []ssa.Value) {
	if len(args) == 2 {
		jb := p.compileValue(b, args[0])
		retval := p.compileValue(b, args[1])
		b.Siglongjmp(jb, retval)
		return
	}
	panic("siglongjmp(jb c.SigjmpBuf, retval c.Int): invalid arguments")
}

func (p *context) atomic(b llssa.Builder, op llssa.AtomicOp, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 2 {
		addr := p.compileValue(b, args[0])
		val := p.compileValue(b, args[1])
		return b.Atomic(op, addr, val)
	}
	panic("atomicOp(addr *T, val T) T: invalid arguments")
}

func (p *context) atomicLoad(b llssa.Builder, args []ssa.Value) llssa.Expr {
	if len(args) == 1 {
		addr := p.compileValue(b, args[0])
		return b.Load(addr).SetOrdering(llssa.OrderingSeqConsistent)
	}
	panic("atomicLoad(addr *T) T: invalid arguments")
}

func (p *context) atomicStore(b llssa.Builder, args []ssa.Value) {
	if len(args) == 2 {
		addr := p.compileValue(b, args[0])
		val := p.compileValue(b, args[1])
		b.Store(addr, val).SetOrdering(llssa.OrderingSeqConsistent)
		return
	}
	panic("atomicStore(addr *T, val T) T: invalid arguments")
}

func (p *context) atomicCmpXchg(b llssa.Builder, args []ssa.Value) llssa.Expr {
	if len(args) == 3 {
		addr := p.compileValue(b, args[0])
		old := p.compileValue(b, args[1])
		new := p.compileValue(b, args[2])
		return b.AtomicCmpXchg(addr, old, new)
	}
	panic("atomicCmpXchg(addr *T, old, new T) T: invalid arguments")
}

// -----------------------------------------------------------------------------

var llgoInstrs = map[string]int{
	"cstr":        llgoCstr,
	"advance":     llgoAdvance,
	"index":       llgoIndex,
	"alloca":      llgoAlloca,
	"allocaCStr":  llgoAllocaCStr,
	"allocaCStrs": llgoAllocaCStrs,
	"string":      llgoString,
	"stringData":  llgoStringData,
	"funcAddr":    llgoFuncAddr,
	"pystr":       llgoPyStr,
	"pyList":      llgoPyList,
	"pyTuple":     llgoPyTuple,
	"sigjmpbuf":   llgoSigjmpbuf,
	"sigsetjmp":   llgoSigsetjmp,
	"siglongjmp":  llgoSiglongjmp,
	"deferData":   llgoDeferData,
	"unreachable": llgoUnreachable,

	"atomicLoad":    llgoAtomicLoad,
	"atomicStore":   llgoAtomicStore,
	"atomicCmpXchg": llgoAtomicCmpXchg,

	"atomicXchg": int(llgoAtomicXchg),
	"atomicAdd":  int(llgoAtomicAdd),
	"atomicSub":  int(llgoAtomicSub),
	"atomicAnd":  int(llgoAtomicAnd),
	"atomicNand": int(llgoAtomicNand),
	"atomicOr":   int(llgoAtomicOr),
	"atomicXor":  int(llgoAtomicXor),
	"atomicMax":  int(llgoAtomicMax),
	"atomicMin":  int(llgoAtomicMin),
	"atomicUMax": int(llgoAtomicUMax),
	"atomicUMin": int(llgoAtomicUMin),
}

// funcOf returns a function by name and set ftype = goFunc, cFunc, etc.
// or returns nil and set ftype = llgoCstr, llgoAlloca, llgoUnreachable, etc.
func (p *context) funcOf(fn *ssa.Function) (aFn llssa.Function, pyFn llssa.PyObjRef, ftype int) {
	pkgTypes, name, ftype := p.funcName(fn, false)
	switch ftype {
	case pyFunc:
		if kind, mod := pkgKindByScope(pkgTypes.Scope()); kind == PkgPyModule {
			pkg := p.pkg
			fnName := pysymPrefix + mod + "." + name
			if pyFn = pkg.PyObjOf(fnName); pyFn == nil {
				pyFn = pkg.PyNewFunc(fnName, fn.Signature, true)
			}
			return
		}
		ftype = ignoredFunc
	case llgoInstr:
		if ftype = llgoInstrs[name]; ftype == 0 {
			panic("unknown llgo instruction: " + name)
		}
	default:
		pkg := p.pkg
		if aFn = pkg.FuncOf(name); aFn == nil {
			if len(fn.FreeVars) > 0 {
				return nil, nil, ignoredFunc
			}
			sig := fn.Signature
			aFn = pkg.NewFuncEx(name, sig, llssa.Background(ftype), false, fn.Origin() != nil)
		}
	}
	return
}

// -----------------------------------------------------------------------------

const (
	fnNormal = iota
	fnHasVArg
	fnIgnore
)

func (p *context) funcKind(vfn ssa.Value) int {
	if fn, ok := vfn.(*ssa.Function); ok {
		params := fn.Signature.Params()
		n := params.Len()
		if n == 0 {
			if fn.Signature.Recv() == nil {
				if fn.Name() == "init" && p.pkgNoInit(fn.Pkg.Pkg) {
					return fnIgnore
				}
			}
		} else {
			last := params.At(n - 1)
			if last.Name() == llssa.NameValist {
				return fnHasVArg
			}
		}
	}
	return fnNormal
}

func (p *context) pkgNoInit(pkg *types.Package) bool {
	p.ensureLoaded(pkg)
	if i, ok := p.loaded[pkg]; ok {
		return i.kind >= PkgNoInit
	}
	return false
}

// -----------------------------------------------------------------------------

func (p *context) call(b llssa.Builder, act llssa.DoAction, call *ssa.CallCommon) (ret llssa.Expr) {
	cv := call.Value
	if mthd := call.Method; mthd != nil {
		o := p.compileValue(b, cv)
		fn := b.Imethod(o, mthd)
		args := p.compileValues(b, call.Args, fnNormal)
		ret = b.Do(act, fn, args...)
		return
	}
	kind := p.funcKind(cv)
	if kind == fnIgnore {
		return
	}
	args := call.Args
	if debugGoSSA {
		log.Println(">>> Do", act, cv, args)
	}
	switch cv := cv.(type) {
	case *ssa.Builtin:
		fn := cv.Name()
		if fn == "ssa:wrapnilchk" { // TODO(xsw): check nil ptr
			arg := args[0]
			ret = p.compileValue(b, arg)
		} else {
			args := p.compileValues(b, args, kind)
			ret = b.Do(act, llssa.Builtin(fn), args...)
		}
	case *ssa.Function:
		aFn, pyFn, ftype := p.compileFunction(cv)
		// TODO(xsw): check ca != llssa.Call
		switch ftype {
		case cFunc:
			p.inCFunc = true
			args := p.compileValues(b, args, kind)
			p.inCFunc = false
			ret = b.Do(act, aFn.Expr, args...)
		case goFunc:
			args := p.compileValues(b, args, kind)
			ret = b.Do(act, aFn.Expr, args...)
		case pyFunc:
			args := p.compileValues(b, args, kind)
			ret = b.Do(act, pyFn.Expr, args...)
		case llgoPyList:
			args := p.compileValues(b, args, fnHasVArg)
			ret = b.PyList(args...)
		case llgoPyTuple:
			args := p.compileValues(b, args, fnHasVArg)
			ret = b.PyTuple(args...)
		case llgoPyStr:
			ret = pystr(b, args)
		case llgoCstr:
			ret = cstr(b, args)
		case llgoAdvance:
			ret = p.advance(b, args)
		case llgoIndex:
			ret = p.index(b, args)
		case llgoAlloca:
			ret = p.alloca(b, args)
		case llgoAllocaCStr:
			ret = p.allocaCStr(b, args)
		case llgoAllocaCStrs:
			ret = p.allocaCStrs(b, args)
		case llgoString:
			ret = p.string(b, args)
		case llgoStringData:
			ret = p.stringData(b, args)
		case llgoAtomicLoad:
			ret = p.atomicLoad(b, args)
		case llgoAtomicStore:
			p.atomicStore(b, args)
		case llgoAtomicCmpXchg:
			ret = p.atomicCmpXchg(b, args)
		case llgoSigsetjmp:
			ret = p.sigsetjmp(b, args)
		case llgoSiglongjmp:
			p.siglongjmp(b, args)
		case llgoSigjmpbuf: // func sigjmpbuf()
			ret = b.AllocaSigjmpBuf()
		case llgoDeferData: // func deferData() *Defer
			ret = b.DeferData()
		case llgoFuncAddr:
			ret = p.funcAddr(b, args)
		case llgoUnreachable: // func unreachable()
			b.Unreachable()
		default:
			if ftype >= llgoAtomicOpBase && ftype <= llgoAtomicOpLast {
				ret = p.atomic(b, llssa.AtomicOp(ftype-llgoAtomicOpBase), args)
			} else {
				log.Panicln("unknown ftype:", ftype)
			}
		}
	default:
		fn := p.compileValue(b, cv)
		args := p.compileValues(b, args, kind)
		ret = b.Do(act, fn, args...)
	}
	return
}

// -----------------------------------------------------------------------------
