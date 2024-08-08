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
	"fmt"
	"go/ast"
	"go/constant"
	"go/token"
	"go/types"
	"log"
	"os"
	"sort"
	"strings"

	"github.com/goplus/llgo/cl/blocks"
	"github.com/goplus/llgo/internal/typepatch"
	"golang.org/x/tools/go/ssa"

	llssa "github.com/goplus/llgo/ssa"
)

// -----------------------------------------------------------------------------

type dbgFlags = int

const (
	DbgFlagInstruction dbgFlags = 1 << iota
	DbgFlagGoSSA

	DbgFlagAll = DbgFlagInstruction | DbgFlagGoSSA
)

var (
	debugInstr bool
	debugGoSSA bool
)

// SetDebug sets debug flags.
func SetDebug(dbgFlags dbgFlags) {
	debugInstr = (dbgFlags & DbgFlagInstruction) != 0
	debugGoSSA = (dbgFlags & DbgFlagGoSSA) != 0
}

// -----------------------------------------------------------------------------

type instrOrValue interface {
	ssa.Instruction
	ssa.Value
}

const (
	PkgNormal = iota
	PkgLLGo
	PkgPyModule   // py.<module>
	PkgNoInit     // noinit: a package that don't need to be initialized
	PkgDeclOnly   // decl: a package that only have declarations
	PkgLinkIR     // link llvm ir (.ll)
	PkgLinkExtern // link external object (.a/.so/.dll/.dylib/etc.)
	// PkgLinkBitCode // link bitcode (.bc)
)

type pkgInfo struct {
	kind int
}

type none = struct{}

type context struct {
	prog   llssa.Program
	pkg    llssa.Package
	fn     llssa.Function
	fset   *token.FileSet
	goProg *ssa.Program
	goTyps *types.Package
	goPkg  *ssa.Package
	pyMod  string
	link   map[string]string // pkgPath.nameInPkg => linkname
	skips  map[string]none
	loaded map[*types.Package]*pkgInfo // loaded packages
	bvals  map[ssa.Value]llssa.Expr    // block values
	vargs  map[*ssa.Alloc][]llssa.Expr // varargs

	patches  Patches
	blkInfos []blocks.Info

	inits     []func()
	phis      []func()
	initAfter func()

	state   pkgState
	inCFunc bool
	skipall bool
}

type pkgState byte

const (
	pkgNormal pkgState = iota
	pkgHasPatch
	pkgInPatch

	pkgFNoOldInit = 0x80 // flag if no initFnNameOld
)

func (p *context) inMain(instr ssa.Instruction) bool {
	return p.fn.Name() == "main"
}

func (p *context) compileType(pkg llssa.Package, t *ssa.Type) {
	tn := t.Object().(*types.TypeName)
	if tn.IsAlias() { // don't need to compile alias type
		return
	}
	tnName := tn.Name()
	typ := tn.Type()
	name := llssa.FullName(tn.Pkg(), tnName)
	if ignoreName(name) {
		return
	}
	if debugInstr {
		log.Println("==> NewType", name, typ)
	}
	p.compileMethods(pkg, typ)
	p.compileMethods(pkg, types.NewPointer(typ))
}

func (p *context) compileMethods(pkg llssa.Package, typ types.Type) {
	prog := p.goProg
	mthds := prog.MethodSets.MethodSet(typ)
	for i, n := 0, mthds.Len(); i < n; i++ {
		mthd := mthds.At(i)
		if ssaMthd := prog.MethodValue(mthd); ssaMthd != nil {
			p.compileFuncDecl(pkg, ssaMthd)
		}
	}
}

// Global variable.
func (p *context) compileGlobal(pkg llssa.Package, gbl *ssa.Global) {
	typ := globalType(gbl)
	name, vtype, define := p.varName(gbl.Pkg.Pkg, gbl)
	if vtype == pyVar || ignoreName(name) || checkCgo(gbl.Name()) {
		return
	}
	if debugInstr {
		log.Println("==> NewVar", name, typ)
	}
	g := pkg.NewVar(name, typ, llssa.Background(vtype))
	if define {
		g.InitNil()
	}
}

func makeClosureCtx(pkg *types.Package, vars []*ssa.FreeVar) *types.Var {
	n := len(vars)
	flds := make([]*types.Var, n)
	for i, v := range vars {
		flds[i] = types.NewField(token.NoPos, pkg, v.Name(), v.Type(), false)
	}
	t := types.NewPointer(types.NewStruct(flds, nil))
	return types.NewParam(token.NoPos, pkg, "__llgo_ctx", t)
}

var (
	argvTy = types.NewPointer(types.NewPointer(types.Typ[types.Int8]))
)

func (p *context) compileFuncDecl(pkg llssa.Package, f *ssa.Function) (llssa.Function, llssa.PyObjRef, int) {
	pkgTypes, name, ftype := p.funcName(f, true)
	if ftype != goFunc {
		/*
			if ftype == pyFunc {
				// TODO(xsw): pyMod == ""
				fnName := pysymPrefix + p.pyMod + "." + name
				return nil, pkg.NewPyFunc(fnName, f.Signature, call), pyFunc
			}
		*/
		return nil, nil, ignoredFunc
	}
	sig := f.Signature
	state := p.state
	isInit := (f.Name() == "init" && sig.Recv() == nil)
	if isInit && state == pkgHasPatch {
		name = initFnNameOfHasPatch(name)
		// TODO(xsw): pkg.init$guard has been set, change ssa.If to ssa.Jump
		block := f.Blocks[0].Instrs[1].(*ssa.If).Block()
		block.Succs[0], block.Succs[1] = block.Succs[1], block.Succs[0]
	}

	fn := pkg.FuncOf(name)
	if fn != nil && fn.HasBody() {
		return fn, nil, goFunc
	}

	var hasCtx = len(f.FreeVars) > 0
	if hasCtx {
		if debugInstr {
			log.Println("==> NewClosure", name, "type:", sig)
		}
		ctx := makeClosureCtx(pkgTypes, f.FreeVars)
		sig = llssa.FuncAddCtx(ctx, sig)
	} else {
		if debugInstr {
			log.Println("==> NewFunc", name, "type:", sig.Recv(), sig, "ftype:", ftype)
		}
	}
	if fn == nil {
		if name == "main" {
			argc := types.NewParam(token.NoPos, pkgTypes, "", types.Typ[types.Int32])
			argv := types.NewParam(token.NoPos, pkgTypes, "", argvTy)
			params := types.NewTuple(argc, argv)
			ret := types.NewParam(token.NoPos, pkgTypes, "", p.prog.CInt().RawType())
			results := types.NewTuple(ret)
			sig = types.NewSignatureType(nil, nil, nil, params, results, false)
		}
		fn = pkg.NewFuncEx(name, sig, llssa.Background(ftype), hasCtx)
	}

	if nblk := len(f.Blocks); nblk > 0 {
		fn.MakeBlocks(nblk)   // to set fn.HasBody() = true
		if f.Recover != nil { // set recover block
			fn.SetRecover(fn.Block(f.Recover.Index))
		}
		p.inits = append(p.inits, func() {
			p.fn = fn
			p.state = state // restore pkgState when compiling funcBody
			defer func() {
				p.fn = nil
			}()
			p.phis = nil
			if debugGoSSA {
				f.WriteTo(os.Stderr)
			}
			if debugInstr {
				log.Println("==> FuncBody", name)
			}
			b := fn.NewBuilder()
			p.bvals = make(map[ssa.Value]llssa.Expr)
			off := make([]int, len(f.Blocks))
			for i, block := range f.Blocks {
				off[i] = p.compilePhis(b, block)
			}
			p.blkInfos = blocks.Infos(f.Blocks)
			i := 0
			for {
				block := f.Blocks[i]
				doMainInit := (i == 0 && name == "main")
				doModInit := (i == 1 && isInit)
				p.compileBlock(b, block, off[i], doMainInit, doModInit)
				if i = p.blkInfos[i].Next; i < 0 {
					break
				}
			}
			for _, phi := range p.phis {
				phi()
			}
			b.EndBuild()
		})
		for _, af := range f.AnonFuncs {
			p.compileFuncDecl(pkg, af)
		}
	}
	return fn, nil, goFunc
}

func (p *context) compileBlock(b llssa.Builder, block *ssa.BasicBlock, n int, doMainInit, doModInit bool) llssa.BasicBlock {
	var last int
	var pyModInit bool
	var prog = p.prog
	var pkg = p.pkg
	var fn = p.fn
	var instrs = block.Instrs[n:]
	var ret = fn.Block(block.Index)
	b.SetBlock(ret)
	if doModInit {
		if pyModInit = p.pyMod != ""; pyModInit {
			last = len(instrs) - 1
			instrs = instrs[:last]
		} else if p.state != pkgHasPatch {
			// TODO(xsw): confirm pyMod don't need to call AfterInit
			p.initAfter = func() {
				pkg.AfterInit(b, ret)
			}
		}
	} else if doMainInit {
		argc := pkg.NewVar("__llgo_argc", types.NewPointer(types.Typ[types.Int32]), llssa.InC)
		argv := pkg.NewVar("__llgo_argv", types.NewPointer(argvTy), llssa.InC)
		argc.InitNil()
		argv.InitNil()
		b.Store(argc.Expr, fn.Param(0))
		b.Store(argv.Expr, fn.Param(1))
		callRuntimeInit(b, pkg)
		b.Call(pkg.FuncOf("main.init").Expr)
	}
	for i, instr := range instrs {
		if i == 1 && doModInit && p.state == pkgInPatch { // in patch package but no pkgFNoOldInit
			initFnNameOld := initFnNameOfHasPatch(p.fn.Name())
			fnOld := pkg.NewFunc(initFnNameOld, llssa.NoArgsNoRet, llssa.InC)
			b.Call(fnOld.Expr)
		}
		p.compileInstr(b, instr)
	}
	if pyModInit {
		jump := block.Instrs[n+last].(*ssa.Jump)
		jumpTo := p.jumpTo(jump)
		modPath := p.pyMod
		modName := pysymPrefix + modPath
		modPtr := pkg.PyNewModVar(modName, true).Expr
		mod := b.Load(modPtr)
		cond := b.BinOp(token.NEQ, mod, prog.Nil(mod.Type))
		newBlk := fn.MakeBlock()
		b.If(cond, jumpTo, newBlk)
		b.SetBlockEx(newBlk, llssa.AtEnd, false)
		b.Store(modPtr, b.PyImportMod(modPath))
		b.Jump(jumpTo)
	}
	return ret
}

const (
	RuntimeInit = llssa.PkgRuntime + ".init"
)

func callRuntimeInit(b llssa.Builder, pkg llssa.Package) {
	fn := pkg.NewFunc(RuntimeInit, llssa.NoArgsNoRet, llssa.InC) // don't need to convert runtime.init
	b.Call(fn.Expr)
}

func isAny(t types.Type) bool {
	if t, ok := t.(*types.Interface); ok {
		return t.Empty()
	}
	return false
}

func intVal(v ssa.Value) int64 {
	if c, ok := v.(*ssa.Const); ok {
		if iv, exact := constant.Int64Val(c.Value); exact {
			return iv
		}
	}
	panic("intVal: ssa.Value is not a const int")
}

func (p *context) isVArgs(v ssa.Value) (ret []llssa.Expr, ok bool) {
	switch v := v.(type) {
	case *ssa.Alloc:
		ret, ok = p.vargs[v] // varargs: this is a varargs index
	}
	return
}

func (p *context) checkVArgs(v *ssa.Alloc, t *types.Pointer) bool {
	if v.Comment == "varargs" { // this maybe a varargs allocation
		if arr, ok := t.Elem().(*types.Array); ok {
			if isAny(arr.Elem()) && isAllocVargs(p, v) {
				p.vargs[v] = make([]llssa.Expr, arr.Len())
				return true
			}
		}
	}
	return false
}

func isAllocVargs(ctx *context, v *ssa.Alloc) bool {
	refs := *v.Referrers()
	n := len(refs)
	lastref := refs[n-1]
	if i, ok := lastref.(*ssa.Slice); ok {
		if refs = *i.Referrers(); len(refs) == 1 {
			var call *ssa.CallCommon
			switch ref := refs[0].(type) {
			case *ssa.Call:
				call = &ref.Call
			case *ssa.Defer:
				call = &ref.Call
			case *ssa.Go:
				call = &ref.Call
			default:
				return false
			}
			return ctx.funcKind(call.Value) == fnHasVArg
		}
	}
	return false
}

func isPhi(i ssa.Instruction) bool {
	_, ok := i.(*ssa.Phi)
	return ok
}

func (p *context) compilePhis(b llssa.Builder, block *ssa.BasicBlock) int {
	fn := p.fn
	ret := fn.Block(block.Index)
	b.SetBlockEx(ret, llssa.AtEnd, false)
	if ninstr := len(block.Instrs); ninstr > 0 {
		if isPhi(block.Instrs[0]) {
			n := 1
			for n < ninstr && isPhi(block.Instrs[n]) {
				n++
			}
			rets := make([]llssa.Expr, n) // TODO(xsw): check to remove this
			for i := 0; i < n; i++ {
				iv := block.Instrs[i].(*ssa.Phi)
				rets[i] = p.compilePhi(b, iv)
			}
			for i := 0; i < n; i++ {
				iv := block.Instrs[i].(*ssa.Phi)
				p.bvals[iv] = rets[i]
			}
			return n
		}
	}
	return 0
}

func (p *context) compilePhi(b llssa.Builder, v *ssa.Phi) (ret llssa.Expr) {
	phi := b.Phi(p.prog.Type(v.Type(), llssa.InGo))
	ret = phi.Expr
	p.phis = append(p.phis, func() {
		preds := v.Block().Preds
		bblks := make([]llssa.BasicBlock, len(preds))
		for i, pred := range preds {
			bblks[i] = p.fn.Block(pred.Index)
		}
		edges := v.Edges
		phi.AddIncoming(b, bblks, func(i int, blk llssa.BasicBlock) llssa.Expr {
			b.SetBlockEx(blk, llssa.BeforeLast, false)
			return p.compileValue(b, edges[i])
		})
	})
	return
}

func (p *context) compileInstrOrValue(b llssa.Builder, iv instrOrValue, asValue bool) (ret llssa.Expr) {
	if asValue {
		if v, ok := p.bvals[iv]; ok {
			return v
		}
		log.Panicln("unreachable:", iv)
	}
	switch v := iv.(type) {
	case *ssa.Call:
		ret = p.call(b, llssa.Call, &v.Call)
	case *ssa.BinOp:
		x := p.compileValue(b, v.X)
		y := p.compileValue(b, v.Y)
		ret = b.BinOp(v.Op, x, y)
	case *ssa.UnOp:
		x := p.compileValue(b, v.X)
		if v.Op == token.ARROW {
			ret = b.Recv(x, v.CommaOk)
		} else {
			ret = b.UnOp(v.Op, x)
		}
	case *ssa.ChangeType:
		t := v.Type()
		x := p.compileValue(b, v.X)
		ret = b.ChangeType(p.prog.Type(t, llssa.InGo), x)
	case *ssa.Convert:
		t := v.Type()
		x := p.compileValue(b, v.X)
		ret = b.Convert(p.prog.Type(t, llssa.InGo), x)
	case *ssa.FieldAddr:
		x := p.compileValue(b, v.X)
		ret = b.FieldAddr(x, v.Field)
	case *ssa.Alloc:
		t := v.Type().(*types.Pointer)
		if p.checkVArgs(v, t) { // varargs: this maybe a varargs allocation
			return
		}
		elem := p.prog.Type(t.Elem(), llssa.InGo)
		ret = b.Alloc(elem, v.Heap)
	case *ssa.IndexAddr:
		vx := v.X
		if _, ok := p.isVArgs(vx); ok { // varargs: this is a varargs index
			return
		}
		x := p.compileValue(b, vx)
		idx := p.compileValue(b, v.Index)
		ret = b.IndexAddr(x, idx)
	case *ssa.Index:
		x := p.compileValue(b, v.X)
		idx := p.compileValue(b, v.Index)
		ret = b.Index(x, idx, func() (addr llssa.Expr, zero bool) {
			switch n := v.X.(type) {
			case *ssa.Const:
				zero = true
			case *ssa.UnOp:
				addr = p.compileValue(b, n.X)
			}
			return
		})
	case *ssa.Lookup:
		x := p.compileValue(b, v.X)
		idx := p.compileValue(b, v.Index)
		ret = b.Lookup(x, idx, v.CommaOk)
	case *ssa.Slice:
		vx := v.X
		if _, ok := p.isVArgs(vx); ok { // varargs: this is a varargs slice
			return
		}
		var low, high, max llssa.Expr
		x := p.compileValue(b, vx)
		if v.Low != nil {
			low = p.compileValue(b, v.Low)
		}
		if v.High != nil {
			high = p.compileValue(b, v.High)
		}
		if v.Max != nil {
			max = p.compileValue(b, v.Max)
		}
		ret = b.Slice(x, low, high, max)
	case *ssa.MakeInterface:
		if refs := *v.Referrers(); len(refs) == 1 {
			switch ref := refs[0].(type) {
			case *ssa.Store:
				if va, ok := ref.Addr.(*ssa.IndexAddr); ok {
					if _, ok = p.isVArgs(va.X); ok { // varargs: this is a varargs store
						return
					}
				}
			case *ssa.Call:
				if fn, ok := ref.Call.Value.(*ssa.Function); ok {
					if _, _, ftype := p.funcOf(fn); ftype == llgoFuncAddr { // llgo.funcAddr
						return
					}
				}
			}
		}
		prog := p.prog
		t := prog.Type(v.Type(), llssa.InGo)
		x := p.compileValue(b, v.X)
		ret = b.MakeInterface(t, x)
	case *ssa.MakeSlice:
		t := p.prog.Type(v.Type(), llssa.InGo)
		nLen := p.compileValue(b, v.Len)
		nCap := p.compileValue(b, v.Cap)
		ret = b.MakeSlice(t, nLen, nCap)
	case *ssa.MakeMap:
		var nReserve llssa.Expr
		t := p.prog.Type(v.Type(), llssa.InGo)
		if v.Reserve != nil {
			nReserve = p.compileValue(b, v.Reserve)
		}
		ret = b.MakeMap(t, nReserve)
	case *ssa.MakeClosure:
		fn := p.compileValue(b, v.Fn)
		bindings := p.compileValues(b, v.Bindings, 0)
		ret = b.MakeClosure(fn, bindings)
	case *ssa.TypeAssert:
		x := p.compileValue(b, v.X)
		t := p.prog.Type(v.AssertedType, llssa.InGo)
		ret = b.TypeAssert(x, t, v.CommaOk)
	case *ssa.Extract:
		x := p.compileValue(b, v.Tuple)
		ret = b.Extract(x, v.Index)
	case *ssa.Range:
		x := p.compileValue(b, v.X)
		ret = b.Range(x)
	case *ssa.Next:
		var typ llssa.Type
		if !v.IsString {
			typ = p.prog.Type(v.Iter.(*ssa.Range).X.Type(), llssa.InGo)
		}
		iter := p.compileValue(b, v.Iter)
		ret = b.Next(typ, iter, v.IsString)
	case *ssa.ChangeInterface:
		t := v.Type()
		x := p.compileValue(b, v.X)
		ret = b.ChangeInterface(p.prog.Type(t, llssa.InGo), x)
	case *ssa.Field:
		x := p.compileValue(b, v.X)
		ret = b.Field(x, v.Field)
	case *ssa.MakeChan:
		t := v.Type()
		size := p.compileValue(b, v.Size)
		ret = b.MakeChan(p.prog.Type(t, llssa.InGo), size)
	case *ssa.Select:
		states := make([]*llssa.SelectState, len(v.States))
		for i, s := range v.States {
			states[i] = &llssa.SelectState{
				Chan: p.compileValue(b, s.Chan),
				Send: s.Dir == types.SendOnly,
			}
			if s.Send != nil {
				states[i].Value = p.compileValue(b, s.Send)
			}
		}
		ret = b.Select(states, v.Blocking)
	default:
		panic(fmt.Sprintf("compileInstrAndValue: unknown instr - %T\n", iv))
	}
	p.bvals[iv] = ret
	return ret
}

func (p *context) jumpTo(v *ssa.Jump) llssa.BasicBlock {
	fn := p.fn
	succs := v.Block().Succs
	return fn.Block(succs[0].Index)
}

func (p *context) compileInstr(b llssa.Builder, instr ssa.Instruction) {
	if iv, ok := instr.(instrOrValue); ok {
		p.compileInstrOrValue(b, iv, false)
		return
	}
	switch v := instr.(type) {
	case *ssa.Store:
		va := v.Addr
		if va, ok := va.(*ssa.IndexAddr); ok {
			if args, ok := p.isVArgs(va.X); ok { // varargs: this is a varargs store
				idx := intVal(va.Index)
				val := v.Val
				if vi, ok := val.(*ssa.MakeInterface); ok {
					val = vi.X
				}
				args[idx] = p.compileValue(b, val)
				return
			}
		}
		ptr := p.compileValue(b, va)
		val := p.compileValue(b, v.Val)
		b.Store(ptr, val)
	case *ssa.Jump:
		jmpb := p.jumpTo(v)
		b.Jump(jmpb)
	case *ssa.Return:
		var results []llssa.Expr
		if n := len(v.Results); n > 0 {
			results = make([]llssa.Expr, n)
			for i, r := range v.Results {
				results[i] = p.compileValue(b, r)
			}
		}
		if p.inMain(instr) {
			results = make([]llssa.Expr, 1)
			results[0] = p.prog.IntVal(0, p.prog.CInt())
		}
		b.Return(results...)
	case *ssa.If:
		fn := p.fn
		cond := p.compileValue(b, v.Cond)
		succs := v.Block().Succs
		thenb := fn.Block(succs[0].Index)
		elseb := fn.Block(succs[1].Index)
		b.If(cond, thenb, elseb)
	case *ssa.MapUpdate:
		m := p.compileValue(b, v.Map)
		key := p.compileValue(b, v.Key)
		val := p.compileValue(b, v.Value)
		b.MapUpdate(m, key, val)
	case *ssa.Defer:
		p.call(b, p.blkInfos[v.Block().Index].Kind, &v.Call)
	case *ssa.Go:
		p.call(b, llssa.Go, &v.Call)
	case *ssa.RunDefers:
		b.RunDefers()
	case *ssa.Panic:
		arg := p.compileValue(b, v.X)
		b.Panic(arg)
	case *ssa.Send:
		ch := p.compileValue(b, v.Chan)
		x := p.compileValue(b, v.X)
		b.Send(ch, x)
	default:
		panic(fmt.Sprintf("compileInstr: unknown instr - %T\n", instr))
	}
}

func (p *context) compileFunction(v *ssa.Function) (goFn llssa.Function, pyFn llssa.PyObjRef, kind int) {
	// TODO(xsw) v.Pkg == nil: means auto generated function?
	if v.Pkg == p.goPkg || v.Pkg == nil {
		// function in this package
		goFn, pyFn, kind = p.compileFuncDecl(p.pkg, v)
		if kind != ignoredFunc {
			return
		}
	}
	return p.funcOf(v)
}

func (p *context) compileValue(b llssa.Builder, v ssa.Value) llssa.Expr {
	if iv, ok := v.(instrOrValue); ok {
		return p.compileInstrOrValue(b, iv, true)
	}
	switch v := v.(type) {
	case *ssa.Parameter:
		fn := v.Parent()
		for idx, param := range fn.Params {
			if param == v {
				return p.fn.Param(idx)
			}
		}
	case *ssa.Function:
		aFn, pyFn, _ := p.compileFunction(v)
		if aFn != nil {
			return aFn.Expr
		}
		return pyFn.Expr
	case *ssa.Global:
		return p.varOf(b, v)
	case *ssa.Const:
		t := types.Default(v.Type())
		bg := llssa.InGo
		if p.inCFunc {
			bg = llssa.InC
		}
		return b.Const(v.Value, p.prog.Type(t, bg))
	case *ssa.FreeVar:
		fn := v.Parent()
		for idx, freeVar := range fn.FreeVars {
			if freeVar == v {
				return p.fn.FreeVar(b, idx)
			}
		}
	}
	panic(fmt.Sprintf("compileValue: unknown value - %T\n", v))
}

func (p *context) compileVArg(ret []llssa.Expr, b llssa.Builder, v ssa.Value) []llssa.Expr {
	_ = b
	switch v := v.(type) {
	case *ssa.Slice: // varargs: this is a varargs slice
		if args, ok := p.isVArgs(v.X); ok {
			return append(ret, args...)
		}
	case *ssa.Const:
		if v.Value == nil {
			return ret
		}
	}
	panic(fmt.Sprintf("compileVArg: unknown value - %T\n", v))
}

func (p *context) compileValues(b llssa.Builder, vals []ssa.Value, hasVArg int) []llssa.Expr {
	n := len(vals) - hasVArg
	ret := make([]llssa.Expr, n)
	for i := 0; i < n; i++ {
		ret[i] = p.compileValue(b, vals[i])
	}
	if hasVArg > 0 {
		ret = p.compileVArg(ret, b, vals[n])
	}
	return ret
}

// -----------------------------------------------------------------------------

// Patch is a patch of some package.
type Patch struct {
	Alt   *ssa.Package
	Types *types.Package
}

// Patches is patches of some packages.
type Patches = map[string]Patch

// NewPackage compiles a Go package to LLVM IR package.
func NewPackage(prog llssa.Program, pkg *ssa.Package, files []*ast.File) (ret llssa.Package, err error) {
	return NewPackageEx(prog, nil, pkg, files)
}

// NewPackageEx compiles a Go package to LLVM IR package.
func NewPackageEx(prog llssa.Program, patches Patches, pkg *ssa.Package, files []*ast.File) (ret llssa.Package, err error) {
	pkgProg := pkg.Prog
	pkgTypes := pkg.Pkg
	oldTypes := pkgTypes
	pkgName, pkgPath := pkgTypes.Name(), llssa.PathOf(pkgTypes)
	patch, hasPatch := patches[pkgPath]
	if hasPatch {
		pkgTypes = patch.Types
		pkg.Pkg = pkgTypes
		patch.Alt.Pkg = pkgTypes
	}
	if pkgPath == llssa.PkgRuntime {
		prog.SetRuntime(pkgTypes)
	}
	ret = prog.NewPackage(pkgName, pkgPath)

	ctx := &context{
		prog:    prog,
		pkg:     ret,
		fset:    pkgProg.Fset,
		goProg:  pkgProg,
		goTyps:  pkgTypes,
		goPkg:   pkg,
		patches: patches,
		link:    make(map[string]string),
		skips:   make(map[string]none),
		vargs:   make(map[*ssa.Alloc][]llssa.Expr),
		loaded: map[*types.Package]*pkgInfo{
			types.Unsafe: {kind: PkgDeclOnly}, // TODO(xsw): PkgNoInit or PkgDeclOnly?
		},
	}
	ctx.initPyModule()
	ctx.initFiles(pkgPath, files)
	ret.SetPatch(ctx.patchType)
	ret.SetResolveLinkname(ctx.resolveLinkname)

	if hasPatch {
		skips := ctx.skips
		typepatch.Merge(pkgTypes, oldTypes, skips, ctx.skipall)
		ctx.skips = nil
		ctx.state = pkgInPatch
		if _, ok := skips["init"]; ok || ctx.skipall {
			ctx.state |= pkgFNoOldInit
		}
		processPkg(ctx, ret, patch.Alt)
		ctx.state = pkgHasPatch
		ctx.skips = skips
	}
	if !ctx.skipall {
		processPkg(ctx, ret, pkg)
	}
	for len(ctx.inits) > 0 {
		inits := ctx.inits
		ctx.inits = nil
		for _, ini := range inits {
			ini()
		}
	}
	if fn := ctx.initAfter; fn != nil {
		ctx.initAfter = nil
		fn()
	}
	return
}

func initFnNameOfHasPatch(name string) string {
	return name + "$hasPatch"
}

func processPkg(ctx *context, ret llssa.Package, pkg *ssa.Package) {
	type namedMember struct {
		name string
		val  ssa.Member
	}

	members := make([]*namedMember, 0, len(pkg.Members))
	skips := ctx.skips
	for name, v := range pkg.Members {
		if _, ok := skips[name]; !ok {
			members = append(members, &namedMember{name, v})
		}
	}
	sort.Slice(members, func(i, j int) bool {
		return members[i].name < members[j].name
	})

	for _, m := range members {
		member := m.val
		switch member := member.(type) {
		case *ssa.Function:
			if member.TypeParams() != nil || member.TypeArgs() != nil {
				// TODO(xsw): don't compile generic functions
				// Do not try to build generic (non-instantiated) functions.
				continue
			}
			ctx.compileFuncDecl(ret, member)
		case *ssa.Type:
			ctx.compileType(ret, member)
		case *ssa.Global:
			ctx.compileGlobal(ret, member)
		}
	}
}

func globalType(gbl *ssa.Global) types.Type {
	t := gbl.Type()
	if t, ok := t.(*types.Named); ok {
		o := t.Obj()
		if pkg := o.Pkg(); typepatch.IsPatched(pkg) {
			if patch := gbl.Pkg.Pkg.Scope().Lookup(o.Name()); patch != nil {
				return patch.Type()
			}
		}
	}
	return t
}

func (p *context) patchType(typ types.Type) types.Type {
	if t, ok := typ.(*types.Named); ok {
		o := t.Obj()
		if pkg := o.Pkg(); typepatch.IsPatched(pkg) {
			if patch, ok := p.patches[pkg.Path()]; ok {
				if obj := patch.Types.Scope().Lookup(o.Name()); obj != nil {
					return p.prog.Type(obj.Type(), llssa.InGo).RawType()
				}
			}
		}
	}
	return typ
}

func (p *context) resolveLinkname(name string) string {
	if link, ok := p.link[name]; ok {
		prefix, ltarget, _ := strings.Cut(link, ".")
		if prefix != "C" {
			panic("resolveLinkname: invalid link: " + link)
		}
		return ltarget
	}
	return name
}

// -----------------------------------------------------------------------------
