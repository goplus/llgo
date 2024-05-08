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

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
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

func ignoreName(name string) bool {
	/* TODO(xsw): confirm this is not needed more
	if name == "unsafe.init" {
		return true
	}
	*/
	if strings.HasPrefix(name, "internal/") || strings.HasPrefix(name, "crypto/") ||
		strings.HasPrefix(name, "arena.") || strings.HasPrefix(name, "maps.") ||
		strings.HasPrefix(name, "time.") || strings.HasPrefix(name, "syscall.") ||
		strings.HasPrefix(name, "os.") || strings.HasPrefix(name, "plugin.") ||
		strings.HasPrefix(name, "reflect.") || strings.HasPrefix(name, "errors.") {
		return true // TODO(xsw)
	}
	return inPkg(name, "runtime") || inPkg(name, "sync")
}

func inPkg(name, pkg string) bool {
	if len(name) > len(pkg) && strings.HasPrefix(name, pkg) {
		c := name[len(pkg)]
		return c == '.' || c == '/'
	}
	return false
}

// -----------------------------------------------------------------------------

type instrOrValue interface {
	ssa.Instruction
	ssa.Value
}

const (
	PkgNormal = iota
	PkgLLGo
	PkgNoInit   // noinit: a package that don't need to be initialized
	PkgDeclOnly // decl: a package that only have declarations
	PkgLinkIR   // link llvm ir (.ll)
	// PkgLinkBitCode // link bitcode (.bc)
)

type pkgInfo struct {
	kind int
}

type context struct {
	prog   llssa.Program
	pkg    llssa.Package
	fn     llssa.Function
	fset   *token.FileSet
	goProg *ssa.Program
	goTyps *types.Package
	goPkg  *ssa.Package
	link   map[string]string           // pkgPath.nameInPkg => linkname
	loaded map[*types.Package]*pkgInfo // loaded packages
	bvals  map[ssa.Value]llssa.Expr    // block values
	vargs  map[*ssa.Alloc][]llssa.Expr // varargs
	inits  []func()
	phis   []func()
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
	typ := gbl.Type()
	name, vtype := p.varName(gbl.Pkg.Pkg, gbl)
	if ignoreName(name) || checkCgo(gbl.Name()) {
		return
	}
	if debugInstr {
		log.Println("==> NewVar", name, typ)
	}
	g := pkg.NewVar(name, typ, llssa.Background(vtype))
	if vtype == goVar {
		g.Init(p.prog.Null(g.Type))
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

func (p *context) compileFuncDecl(pkg llssa.Package, f *ssa.Function) llssa.Function {
	pkgTypes, name, ftype := p.funcName(f, true)
	if ftype != goFunc {
		return nil
	}
	fn := pkg.FuncOf(name)
	if fn != nil && fn.HasBody() {
		return fn
	}

	var sig = f.Signature
	var hasCtx = len(f.FreeVars) > 0
	if hasCtx {
		if debugInstr {
			log.Println("==> NewClosure", name, "type:", sig)
		}
		ctx := makeClosureCtx(pkgTypes, f.FreeVars)
		sig = llssa.FuncAddCtx(ctx, sig)
	} else {
		if debugInstr {
			log.Println("==> NewFunc", name, "type:", sig.Recv(), sig)
		}
	}
	if fn == nil {
		if name == "main" {
			argc := types.NewParam(token.NoPos, pkgTypes, "", types.Typ[types.Int32])
			argv := types.NewParam(token.NoPos, pkgTypes, "", argvTy)
			params := types.NewTuple(argc, argv)
			sig = types.NewSignatureType(nil, nil, nil, params, nil, false)
		}
		fn = pkg.NewFuncEx(name, sig, llssa.Background(ftype), hasCtx)
	}
	if nblk := len(f.Blocks); nblk > 0 {
		fn.MakeBlocks(nblk) // to set fn.HasBody() = true
		p.inits = append(p.inits, func() {
			p.fn = fn
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
			for i, block := range f.Blocks {
				p.compileBlock(b, block, off[i], i == 0 && name == "main")
			}
			for _, phi := range p.phis {
				phi()
			}
		})
	}
	return fn
}

// funcOf returns a function by name and set ftype = goFunc, cFunc, etc.
// or returns nil and set ftype = llgoCstr, llgoAlloca, llgoUnreachable, etc.
func (p *context) funcOf(fn *ssa.Function) (ret llssa.Function, ftype int) {
	_, name, ftype := p.funcName(fn, false)
	if ftype == llgoInstr {
		switch name {
		case "cstr":
			ftype = llgoCstr
		case "advance":
			ftype = llgoAdvance
		case "index":
			ftype = llgoIndex
		case "alloca":
			ftype = llgoAlloca
		case "allocaCStr":
			ftype = llgoAllocaCStr
		case "unreachable":
			ftype = llgoUnreachable
		default:
			panic("unknown llgo instruction: " + name)
		}
	} else {
		pkg := p.pkg
		if ret = pkg.FuncOf(name); ret == nil && len(fn.FreeVars) == 0 {
			sig := fn.Signature
			ret = pkg.NewFuncEx(name, sig, llssa.Background(ftype), false)
		}
	}
	return
}

func (p *context) compileBlock(b llssa.Builder, block *ssa.BasicBlock, n int, doInit bool) llssa.BasicBlock {
	ret := p.fn.Block(block.Index)
	b.SetBlock(ret)
	if doInit {
		prog := p.prog
		pkg := p.pkg
		fn := p.fn
		argc := pkg.NewVar("__llgo_argc", types.NewPointer(types.Typ[types.Int32]), llssa.InC)
		argv := pkg.NewVar("__llgo_argv", types.NewPointer(argvTy), llssa.InC)
		argc.Init(prog.Null(argc.Type))
		argv.Init(prog.Null(argv.Type))
		b.Store(argc.Expr, fn.Param(0))
		b.Store(argv.Expr, fn.Param(1))
		callRuntimeInit(b, pkg)
		b.Call(pkg.FuncOf("main.init").Expr)
	}
	for _, instr := range block.Instrs[n:] {
		p.compileInstr(b, instr)
	}
	return ret
}

const (
	RuntimeInit = llssa.PkgRuntime + ".init"
)

func callRuntimeInit(b llssa.Builder, pkg llssa.Package) {
	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	fn := pkg.NewFunc(RuntimeInit, sig, llssa.InC) // don't need to convert runtime.init
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

func (p *context) isVArgs(vx ssa.Value) (ret []llssa.Expr, ok bool) {
	if va, vok := vx.(*ssa.Alloc); vok {
		ret, ok = p.vargs[va] // varargs: this is a varargs index
	}
	return
}

func (p *context) checkVArgs(v *ssa.Alloc, t *types.Pointer) bool {
	if v.Comment == "varargs" { // this maybe a varargs allocation
		if arr, ok := t.Elem().(*types.Array); ok {
			if isAny(arr.Elem()) && isVargs(p, v) {
				p.vargs[v] = make([]llssa.Expr, arr.Len())
				return true
			}
		}
	}
	return false
}

func isVargs(ctx *context, v *ssa.Alloc) bool {
	refs := *v.Referrers()
	n := len(refs)
	lastref := refs[n-1]
	if i, ok := lastref.(*ssa.Slice); ok {
		if refs = *i.Referrers(); len(refs) == 1 {
			if call, ok := refs[0].(*ssa.Call); ok {
				return ctx.funcKind(call.Call.Value) == fnHasVArg
			}
		}
	}
	return false
}

// func cstr(string) *int8
func cstr(b llssa.Builder, args []ssa.Value) (ret llssa.Expr) {
	if len(args) == 1 {
		if c, ok := args[0].(*ssa.Const); ok {
			if v := c.Value; v.Kind() == constant.String {
				sv := constant.StringVal(v)
				return b.CStr(sv)
			}
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

func isPhi(i ssa.Instruction) bool {
	_, ok := i.(*ssa.Phi)
	return ok
}

func (p *context) compilePhis(b llssa.Builder, block *ssa.BasicBlock) int {
	ret := p.fn.Block(block.Index)
	b.SetBlock(ret)
	if ninstr := len(block.Instrs); ninstr > 0 {
		if isPhi(block.Instrs[0]) {
			n := 1
			for n < ninstr && isPhi(block.Instrs[n]) {
				n++
			}
			rets := make([]llssa.Expr, n)
			for i := 0; i < n; i++ {
				iv := block.Instrs[i].(*ssa.Phi)
				rets[i] = p.compilePhi(b, iv)
			}
			for i := 0; i < n; i++ {
				iv := block.Instrs[i].(*ssa.Phi)
				p.bvals[iv] = rets[i].Do(b)
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
		phi.AddIncoming(b, bblks, func(i int) llssa.Expr {
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
		cv := v.Call.Value
		kind := p.funcKind(cv)
		if kind == fnIgnore {
			return
		}
		args := v.Call.Args
		if debugGoSSA {
			log.Println(">>> Call", cv, args)
		}
		switch cv := cv.(type) {
		case *ssa.Builtin:
			fn := cv.Name()
			if fn == "ssa:wrapnilchk" { // TODO(xsw): check nil ptr
				arg := args[0]
				ret = p.compileValue(b, arg)
				// log.Println("wrapnilchk:", ret.TypeOf())
			} else {
				args := p.compileValues(b, args, kind)
				ret = b.BuiltinCall(fn, args...)
			}
		case *ssa.Function:
			fn, ftype := p.compileFunction(cv)
			switch ftype {
			case goFunc, cFunc:
				args := p.compileValues(b, args, kind)
				ret = b.Call(fn.Expr, args...)
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
			case llgoUnreachable: // func unreachable()
				b.Unreachable()
			default:
				panic("todo")
			}
		default:
			fn := p.compileValue(b, cv)
			args := p.compileValues(b, args, kind)
			ret = b.Call(fn, args...)
		}
	case *ssa.BinOp:
		x := p.compileValue(b, v.X)
		y := p.compileValue(b, v.Y)
		ret = b.BinOp(v.Op, x, y)
	case *ssa.UnOp:
		x := p.compileValue(b, v.X)
		ret = b.UnOp(v.Op, x)
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
		ret = b.Index(x, idx, func(e llssa.Expr) (ret llssa.Expr) {
			if e == x {
				if n, ok := v.X.(*ssa.UnOp); ok {
					return p.compileValue(b, n.X)
				}
			}
			panic(fmt.Errorf("todo: addr of %v", e))
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
		const (
			delayExpr = true // varargs: don't need to convert an expr to any
		)
		t := p.prog.Type(v.Type(), llssa.InGo)
		x := p.compileValue(b, v.X)
		ret = b.MakeInterface(t, x, delayExpr)
	case *ssa.MakeSlice:
		var nCap llssa.Expr
		t := p.prog.Type(v.Type(), llssa.InGo)
		nLen := p.compileValue(b, v.Len)
		if v.Cap != nil {
			nCap = p.compileValue(b, v.Cap)
		}
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
	default:
		panic(fmt.Sprintf("compileInstrAndValue: unknown instr - %T\n", iv))
	}
	p.bvals[iv] = ret
	return ret
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
		fn := p.fn
		succs := v.Block().Succs
		jmpb := fn.Block(succs[0].Index)
		b.Jump(jmpb)
	case *ssa.Return:
		var results []llssa.Expr
		if n := len(v.Results); n > 0 {
			results = make([]llssa.Expr, n)
			for i, r := range v.Results {
				results[i] = p.compileValue(b, r)
			}
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
	case *ssa.Panic:
		arg := p.compileValue(b, v.X).Do(b)
		b.Panic(arg)
	default:
		panic(fmt.Sprintf("compileInstr: unknown instr - %T\n", instr))
	}
}

func (p *context) compileFunction(v *ssa.Function) (llssa.Function, int) {
	// v.Pkg == nil: means auto generated function?
	if v.Pkg == p.goPkg || v.Pkg == nil {
		// function in this package
		if fn := p.compileFuncDecl(p.pkg, v); fn != nil {
			return fn, goFunc
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
		fn, _ := p.compileFunction(v)
		return fn.Expr
	case *ssa.Global:
		g := p.varOf(v)
		return g.Expr
	case *ssa.Const:
		t := types.Default(v.Type())
		return b.Const(v.Value, p.prog.Type(t, llssa.InGo))
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
		ret[i] = p.compileValue(b, vals[i]).Do(b)
	}
	if hasVArg > 0 {
		ret = p.compileVArg(ret, b, vals[n])
	}
	return ret
}

// -----------------------------------------------------------------------------

// NewPackage compiles a Go package to LLVM IR package.
func NewPackage(prog llssa.Program, pkg *ssa.Package, files []*ast.File) (ret llssa.Package, err error) {
	type namedMember struct {
		name string
		val  ssa.Member
	}

	members := make([]*namedMember, 0, len(pkg.Members))
	for name, v := range pkg.Members {
		members = append(members, &namedMember{name, v})
	}
	sort.Slice(members, func(i, j int) bool {
		return members[i].name < members[j].name
	})

	pkgProg := pkg.Prog
	pkgTypes := pkg.Pkg
	pkgName, pkgPath := pkgTypes.Name(), llssa.PathOf(pkgTypes)
	if pkgPath == llssa.PkgRuntime {
		prog.SetRuntime(pkgTypes)
	}
	ret = prog.NewPackage(pkgName, pkgPath)

	ctx := &context{
		prog:   prog,
		pkg:    ret,
		fset:   pkgProg.Fset,
		goProg: pkgProg,
		goTyps: pkgTypes,
		goPkg:  pkg,
		link:   make(map[string]string),
		vargs:  make(map[*ssa.Alloc][]llssa.Expr),
		loaded: map[*types.Package]*pkgInfo{
			types.Unsafe: {kind: PkgDeclOnly}, // TODO(xsw): PkgNoInit or PkgDeclOnly?
		},
	}
	ctx.initFiles(pkgPath, files)
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
	for len(ctx.inits) > 0 {
		inits := ctx.inits
		ctx.inits = nil
		for _, ini := range inits {
			ini()
		}
	}
	return
}

// -----------------------------------------------------------------------------
