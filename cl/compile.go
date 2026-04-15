/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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
	"strconv"
	"strings"

	"github.com/goplus/llgo/cl/blocks"
	"github.com/goplus/llgo/internal/goembed"
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

	enableCallTracing bool
	enableDbg         bool
	enableDbgSyms     bool
	disableInline     bool

	// enableExportRename enables //export to use different C symbol names than Go function names.
	// This is for TinyGo compatibility when using -target flag for embedded targets.
	// Currently, using -target implies TinyGo embedded target mode.
	enableExportRename bool
)

const rangeFuncGotoRestartSentinel = -3

// SetDebug sets debug flags.
func SetDebug(dbgFlags dbgFlags) {
	debugInstr = (dbgFlags & DbgFlagInstruction) != 0
	debugGoSSA = (dbgFlags & DbgFlagGoSSA) != 0
}

func EnableDebug(b bool) {
	enableDbg = b
}

func EnableDbgSyms(b bool) {
	enableDbgSyms = b
}

func EnableTrace(b bool) {
	enableCallTracing = b
}

// EnableExportRename enables or disables //export with different C symbol names.
// This is enabled when using -target flag for TinyGo compatibility.
func EnableExportRename(b bool) {
	enableExportRename = b
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
	prog        llssa.Program
	pkg         llssa.Package
	fn          llssa.Function
	goFn        *ssa.Function
	fset        *token.FileSet
	goProg      *ssa.Program
	goTyps      *types.Package
	goPkg       *ssa.Package
	pyMod       string
	skips       map[string]none
	loaded      map[*types.Package]*pkgInfo // loaded packages
	bvals       map[ssa.Value]llssa.Expr    // block values
	vargs       map[*ssa.Alloc][]llssa.Expr // varargs
	funcs       map[*ssa.Function]llssa.Function
	paramDIVars map[*types.Var]llssa.DIVar

	patches  Patches
	blkInfos []blocks.Info

	inits     []func()
	finals    []func()
	phis      []func()
	initAfter func()

	state   pkgState
	inCFunc bool
	skipall bool

	cgoCalled  bool
	cgoArgs    []llssa.Expr
	cgoRet     llssa.Expr
	cgoErrno   llssa.Expr
	cgoErrnoTy types.Type
	cgoSymbols []string
	rewrites   map[string]string
	embedMap   goembed.VarMap
	embedInits []embedInit
}

func (p *context) rewriteValue(name string) (string, bool) {
	if p.rewrites == nil {
		return "", false
	}
	dot := strings.LastIndex(name, ".")
	if dot < 0 || dot == len(name)-1 {
		return "", false
	}
	varName := name[dot+1:]
	val, ok := p.rewrites[varName]
	return val, ok
}

// isStringPtrType checks if typ is a pointer to the basic string type (*string).
// This is used to validate that -ldflags -X can only rewrite variables of type *string,
// not derived string types like "type T string".
func (p *context) isStringPtrType(typ types.Type) bool {
	ptr, ok := typ.(*types.Pointer)
	if !ok {
		return false
	}
	basic, ok := ptr.Elem().(*types.Basic)
	return ok && basic.Kind() == types.String
}

func (p *context) globalFullName(g *ssa.Global) string {
	name, _, _ := p.varName(g.Pkg.Pkg, g)
	return name
}

func (p *context) rewriteInitStore(store *ssa.Store, g *ssa.Global) (string, bool) {
	if p.rewrites == nil {
		return "", false
	}
	fn := store.Block().Parent()
	if fn == nil || fn.Synthetic != "package initializer" {
		return "", false
	}
	if _, ok := store.Val.(*ssa.Const); !ok {
		return "", false
	}
	if !p.isStringPtrType(g.Type()) {
		return "", false
	}
	value, ok := p.rewriteValue(p.globalFullName(g))
	if !ok {
		return "", false
	}
	return value, true
}

func isUntypedNil(t types.Type) bool {
	basic, ok := types.Unalias(t).(*types.Basic)
	return ok && basic.Kind() == types.UntypedNil
}

func makeSliceAllocCap(v ssa.Value) (int64, bool) {
	alloc, ok := v.(*ssa.Alloc)
	if !ok || alloc.Comment != "makeslice" {
		return 0, false
	}
	ptr, ok := alloc.Type().(*types.Pointer)
	if !ok {
		return 0, false
	}
	arr, ok := types.Unalias(ptr.Elem()).(*types.Array)
	if !ok {
		return 0, false
	}
	return arr.Len(), true
}

func skipMakeSliceAlloc(v *ssa.Alloc) bool {
	if _, ok := makeSliceAllocCap(v); !ok {
		return false
	}
	refs := *v.Referrers()
	if len(refs) != 1 {
		return false
	}
	slice, ok := refs[0].(*ssa.Slice)
	if !ok {
		return false
	}
	return slice.X == v && slice.Low == nil && slice.Max == nil
}

func singleRef(v ssa.Value) (ssa.Instruction, bool) {
	refs := v.Referrers()
	if refs == nil {
		return nil, false
	}
	var ref ssa.Instruction
	n := 0
	for _, item := range *refs {
		if _, ok := item.(*ssa.DebugRef); ok {
			continue
		}
		ref = item
		n++
	}
	return ref, n == 1
}

func isSendInstr(instr ssa.Instruction) bool {
	_, ok := instr.(*ssa.Send)
	return ok
}

func (p *context) compileSingleUseMakeSliceSend(b llssa.Builder, ch llssa.Expr, v ssa.Value) bool {
	ref, ok := singleRef(v)
	if !ok || !isSendInstr(ref) {
		return false
	}
	voidPtr := types.Typ[types.UnsafePointer]
	intTyp := types.Typ[types.Int]
	makeSliceToFn := b.Pkg.NewFunc(llssa.PkgRuntime+".MakeSliceTo",
		types.NewSignatureType(nil, nil, nil, types.NewTuple(
			types.NewParam(token.NoPos, nil, "", voidPtr),
			types.NewParam(token.NoPos, nil, "", intTyp),
			types.NewParam(token.NoPos, nil, "", intTyp),
			types.NewParam(token.NoPos, nil, "", intTyp),
		), nil, false), llssa.InGo)
	chanSendFn := b.Pkg.NewFunc(llssa.PkgRuntime+".ChanSend",
		types.NewSignatureType(nil, nil, nil, types.NewTuple(
			types.NewParam(token.NoPos, nil, "", voidPtr),
			types.NewParam(token.NoPos, nil, "", voidPtr),
			types.NewParam(token.NoPos, nil, "", intTyp),
		), types.NewTuple(types.NewParam(token.NoPos, nil, "", types.Typ[types.Bool])), false), llssa.InGo)
	var t llssa.Type
	var nLen, nCap llssa.Expr
	switch v := v.(type) {
	case *ssa.MakeSlice:
		t = p.type_(v.Type(), llssa.InGo)
		nLen = p.compileValue(b, v.Len)
		nCap = p.compileValue(b, v.Cap)
	case *ssa.Slice:
		capLen, ok := makeSliceAllocCap(v.X)
		if !ok || v.Low != nil || v.Max != nil {
			return false
		}
		t = p.type_(v.Type(), llssa.InGo)
		nLen = p.prog.IntVal(uint64(capLen), p.prog.Int())
		if v.High != nil {
			nLen = p.compileValue(b, v.High)
		}
		nCap = p.prog.IntVal(uint64(capLen), p.prog.Int())
	default:
		return false
	}
	slot := b.Alloc(t, false)
	telem := p.prog.Index(t)
	teSize := p.prog.IntVal(p.prog.SizeOf(telem), p.prog.Int())
	slotPtr := b.ChangeType(p.prog.VoidPtr(), slot)
	b.InlineCall(makeSliceToFn.Expr, slotPtr, nLen, nCap, teSize)
	eltSize := p.prog.IntVal(p.prog.SizeOf(p.prog.Elem(ch.Type)), p.prog.Int())
	chPtr := b.ChangeType(p.prog.VoidPtr(), ch)
	b.InlineCall(chanSendFn.Expr, chPtr, slotPtr, eltSize)
	b.Store(slot, p.prog.Zero(t))
	return true
}

type pkgState byte

const (
	pkgNormal pkgState = iota
	pkgHasPatch
	pkgInPatch

	pkgFNoOldInit = 0x80 // flag if no initFnNameOld
)

func (p *context) compileType(pkg llssa.Package, t *ssa.Type) {
	tn := t.Object().(*types.TypeName)
	tnName := tn.Name()
	typ := tn.Type()
	name := llssa.FullName(tn.Pkg(), tnName)
	if debugInstr {
		log.Println("==> NewType", name, typ)
	}
	p.compileTypeMethods(pkg, tn, typ)
}

func (p *context) compileTypeMethods(pkg llssa.Package, obj *types.TypeName, typ types.Type) {
	if obj.IsAlias() {
		raw := types.Unalias(typ)
		if !isLocalMethodType(obj.Pkg(), raw) {
			return
		}
		p.compileMethods(pkg, raw)
		if ptr, ok := raw.(*types.Pointer); ok {
			p.compileMethods(pkg, ptr.Elem())
		}
		return
	}
	p.compileMethods(pkg, typ)
	p.compileMethods(pkg, types.NewPointer(typ))
}

func isLocalMethodType(pkg *types.Package, typ types.Type) bool {
	for {
		switch t := typ.(type) {
		case *types.Pointer:
			typ = t.Elem()
		case *types.Named:
			obj := t.Obj()
			return obj != nil && obj.Pkg() == pkg
		default:
			return false
		}
	}
}

func (p *context) compileMethods(pkg llssa.Package, typ types.Type) {
	prog := p.goProg
	mthds := prog.MethodSets.MethodSet(typ)
	for i, n := 0, mthds.Len(); i < n; i++ {
		mthd := mthds.At(i)
		if ssaMthd := prog.MethodValue(mthd); ssaMthd != nil {
			_, name, ftype := p.funcName(ssaMthd)
			if ftype == goFunc {
				pkg.Preserve(name)
			}
			p.compileFuncDecl(pkg, ssaMthd)
		}
	}
}

// Global variable.
func (p *context) compileGlobal(pkg llssa.Package, gbl *ssa.Global) {
	typ := p.patchType(gbl.Type())
	name, vtype, define := p.varName(gbl.Pkg.Pkg, gbl)
	if vtype == pyVar {
		return
	}
	if debugInstr {
		log.Println("==> NewVar", name, typ)
	}
	g := pkg.NewVar(name, typ, llssa.Background(vtype))
	if p.tryEmbedGlobalInit(pkg, gbl, g, name) {
		return
	}
	if value, ok := p.rewriteValue(name); ok {
		if p.isStringPtrType(gbl.Type()) {
			g.Init(pkg.ConstString(value))
		} else {
			log.Printf("warning: ignoring rewrite for non-string variable %s (type: %v)", name, gbl.Type())
			if define {
				g.InitNil()
			}
		}
	} else if define {
		g.InitNil()
	}
}

func makeClosureCtx(pkg *types.Package, vars []*ssa.FreeVar) *types.Var {
	n := len(vars)
	flds := make([]*types.Var, n)
	for i, v := range vars {
		name := v.Name()
		if name == "" {
			name = "_"
		}
		flds[i] = types.NewField(token.NoPos, pkg, name, v.Type(), false)
	}
	t := types.NewPointer(types.NewStruct(flds, nil))
	return types.NewParam(token.NoPos, pkg, "__llgo_ctx", t)
}

func isCgoExternSymbol(f *ssa.Function) bool {
	name := f.Name()
	return isCgoCfunc(name) || isCgoCmacro(name) || isCgoC2func(name)
}

func isCgoCfpvar(name string) bool {
	return strings.HasPrefix(name, "_Cfpvar_")
}

func isCgoCfunc(name string) bool {
	return strings.HasPrefix(name, "_Cfunc_")
}

func isCgoC2func(name string) bool {
	return strings.HasPrefix(name, "_C2func_")
}

func isCgoCmacro(name string) bool {
	return strings.HasPrefix(name, "_Cmacro_")
}

func isCgoVar(name string) bool {
	return strings.HasPrefix(name, "_cgo_") || isCgoFuncPtrVar(name)
}

func isCgoFuncPtrVar(name string) bool {
	return strings.HasPrefix(name, "__cgo_")
}

// isInstance reports whether f is an instance method or generic instantiation.
func isInstance(f *ssa.Function) bool {
	if f.Origin() != nil {
		return true
	}
	if recv := f.Type().(*types.Signature).Recv(); recv != nil {
		return recv.Origin() != recv
	}
	return false
}

func (p *context) compileFuncDecl(pkg llssa.Package, f *ssa.Function) (llssa.Function, llssa.PyObjRef, int) {
	pkgTypes, name, ftype := p.funcName(f)
	if ftype != goFunc {
		return nil, nil, ignoredFunc
	}
	oldGoFn := p.goFn
	p.goFn = f
	sig := p.patchType(f.Signature).(*types.Signature)
	p.goFn = oldGoFn
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
		fn = pkg.NewFuncEx(name, sig, llssa.Background(ftype), hasCtx, isInstance(f))
		if disableInline {
			fn.Inline(llssa.NoInline)
		}
		if p.rangeFuncYieldNeedsOptimizeNone(f) {
			fn.OptimizeNone()
		}
	}
	p.funcs[f] = fn
	isCgo := isCgoExternSymbol(f)
	if nblk := len(f.Blocks); nblk > 0 {
		p.cgoCalled = false
		p.cgoArgs = nil
		p.cgoErrno = llssa.Nil
		if isCgo {
			fn.MakeBlocks(1)
		} else {
			fn.MakeBlocks(nblk) // to set fn.HasBody() = true
		}
		if f.Recover != nil { // set recover block
			fn.SetRecover(fn.Block(f.Recover.Index))
		}
		dbgEnabled := enableDbg && (f == nil || f.Origin() == nil)
		dbgSymsEnabled := enableDbgSyms && (f == nil || f.Origin() == nil)
		p.inits = append(p.inits, func() {
			oldFn, oldGoFn := p.fn, p.goFn
			p.fn = fn
			p.goFn = f
			p.state = state // restore pkgState when compiling funcBody
			defer func() {
				p.fn, p.goFn = oldFn, oldGoFn
			}()
			p.phis = nil
			if dbgSymsEnabled {
				p.paramDIVars = make(map[*types.Var]llssa.DIVar)
			} else {
				p.paramDIVars = nil
			}
			if debugGoSSA {
				f.WriteTo(os.Stderr)
			}
			if debugInstr {
				log.Println("==> FuncBody", name)
			}
			b := fn.NewBuilder()
			if dbgEnabled {
				pos := p.goProg.Fset.Position(f.Pos())
				bodyPos := p.getFuncBodyPos(f)
				b.DebugFunction(fn, pos, bodyPos)
			}
			p.bvals = make(map[ssa.Value]llssa.Expr)
			off := make([]int, len(f.Blocks))
			if isCgo {
				p.cgoArgs = make([]llssa.Expr, len(f.Params))
				for i, param := range f.Params {
					p.cgoArgs[i] = p.compileValue(b, param)
				}
			} else {
				for i, block := range f.Blocks {
					off[i] = p.compilePhis(b, block)
				}
			}
			p.blkInfos = blocks.Infos(f.Blocks)
			i := 0
			for {
				block := f.Blocks[i]
				doModInit := (i == 1 && isInit)
				p.compileBlock(b, block, off[i], doModInit)
				if isCgo {
					// just process first block for performance
					break
				}
				if i = p.blkInfos[i].Next; i < 0 {
					break
				}
			}
			for _, phi := range p.phis {
				phi()
			}
			p.finals = append(p.finals, b.EndBuild)
		})
		for _, af := range f.AnonFuncs {
			p.compileFuncDecl(pkg, af)
		}
	}
	return fn, nil, goFunc
}

func (p *context) getFuncBodyPos(f *ssa.Function) token.Position {
	if f.Object() != nil {
		if fn, ok := f.Object().(*types.Func); ok && fn.Scope() != nil {
			return p.goProg.Fset.Position(fn.Scope().Pos())
		}
	}
	return p.goProg.Fset.Position(f.Pos())
}

func isGlobal(v *types.Var) bool {
	// TODO(lijie): better implementation
	return strings.HasPrefix(v.Parent().String(), "package ")
}

func (p *context) debugRef(b llssa.Builder, v *ssa.DebugRef) {
	object := v.Object()
	variable, ok := object.(*types.Var)
	if !ok {
		// Not a local variable.
		return
	}
	if variable.IsField() {
		// skip *ssa.FieldAddr
		return
	}
	if isGlobal(variable) {
		// avoid generate local variable debug info of global variable in function
		return
	}
	pos := p.goProg.Fset.Position(v.Pos())
	value := p.compileValue(b, v.X)
	fn := v.Parent()
	dbgVar := p.getLocalVariable(b, fn, variable)
	scope := variable.Parent()
	diScope := b.DIScope(p.fn, scope)
	if v.IsAddr {
		// *ssa.Alloc
		b.DIDeclare(variable, value, dbgVar, diScope, pos, b.Func.Block(v.Block().Index))
	} else {
		b.DIValue(variable, value, dbgVar, diScope, pos, b.Func.Block(v.Block().Index))
	}
}

func (p *context) debugParams(b llssa.Builder, f *ssa.Function) {
	for i, param := range f.Params {
		variable := param.Object().(*types.Var)
		pos := p.goProg.Fset.Position(param.Pos())
		v := p.compileValue(b, param)
		ty := param.Type()
		argNo := i + 1
		div := b.DIVarParam(p.fn, pos, param.Name(), p.type_(ty, llssa.InGo), argNo)
		if p.paramDIVars != nil {
			p.paramDIVars[variable] = div
		}
		b.DIParam(variable, v, div, p.fn, pos, p.fn.Block(0))
	}
}

func (p *context) compileBlock(b llssa.Builder, block *ssa.BasicBlock, n int, doModInit bool) llssa.BasicBlock {
	var last int
	var pyModInit bool
	var prog = p.prog
	var pkg = p.pkg
	var fn = p.fn
	var instrs = block.Instrs[n:]
	var ret = fn.Block(block.Index)
	b.SetBlock(ret)
	if block.Index == 0 && enableCallTracing && !strings.HasPrefix(fn.Name(), "github.com/goplus/llgo/runtime/internal/runtime.Print") {
		b.Printf("call " + fn.Name() + "\n\x00")
	}
	// place here to avoid wrong current-block
	if enableDbgSyms && block.Parent().Origin() == nil && block.Index == 0 {
		p.debugParams(b, block.Parent())
	}

	if doModInit {
		if p.state != pkgInPatch {
			p.applyEmbedInits(b)
		}
		if pyModInit = p.pyMod != ""; pyModInit {
			last = len(instrs) - 1
			instrs = instrs[:last]
		} else if p.state != pkgHasPatch {
			// TODO(xsw): confirm pyMod don't need to call AfterInit
			p.initAfter = func() {
				pkg.AfterInit(b, ret)
			}
		}
	}

	fnName := block.Parent().Name()
	cgoReturned := false
	isCgoCfunc := isCgoCfunc(fnName)
	isCgoC2 := isCgoC2func(fnName)
	isCgoCmacro := isCgoCmacro(fnName)
	for i, instr := range instrs {
		if i == 1 && doModInit && p.state == pkgInPatch { // in patch package but no pkgFNoOldInit
			initFnNameOld := initFnNameOfHasPatch(p.fn.Name())
			fnOld := pkg.NewFunc(initFnNameOld, llssa.NoArgsNoRet, llssa.InC)
			b.Call(fnOld.Expr)
		}
		if isCgoCfunc || isCgoC2 || isCgoCmacro {
			switch instr := instr.(type) {
			case *ssa.Alloc:
				// return value allocation
				p.compileInstr(b, instr)
			case *ssa.UnOp:
				// load cgo function pointer
				varName := instr.X.Name()
				if instr.Op == token.MUL && strings.HasPrefix(varName, "_cgo_") {
					p.cgoSymbols = append(p.cgoSymbols, varName)
					p.compileInstr(b, instr)
				}
			case *ssa.Call:
				if isCgoCmacro {
					p.cgoRet = p.compileValue(b, instr.Call.Args[0])
					p.cgoCalled = true
				} else {
					// call c function
					p.compileInstr(b, instr)
					p.cgoCalled = true
				}
			case *ssa.Return:
				// return cgo function result
				if isCgoCmacro {
					ty := p.type_(instr.Results[0].Type(), llssa.InGo)
					p.cgoRet.Type = p.prog.Pointer(ty)
					p.cgoRet = b.Load(p.cgoRet)
				} else {
					p.cgoReturn(b, isCgoC2)
					cgoReturned = true
					continue
				}
				b.Return(p.cgoRet)
				cgoReturned = true
			}
		} else {
			p.compileInstr(b, instr)
		}
	}
	// is cgo cfunc but not return yet, some funcs has multiple blocks
	if (isCgoCfunc || isCgoC2 || isCgoCmacro) && !cgoReturned {
		if !p.cgoCalled {
			panic("cgo cfunc not called")
		}
		for _, block := range block.Parent().Blocks {
			for _, instr := range block.Instrs {
				if _, ok := instr.(*ssa.Return); ok {
					p.cgoReturn(b, isCgoC2)
					goto end
				}
			}
		}
	}
end:
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

func isAny(t types.Type) bool {
	if t, ok := t.Underlying().(*types.Interface); ok {
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

func skipUnusedArrayDeref(v *ssa.UnOp) bool {
	if v.Op != token.MUL {
		return false
	}
	refs := v.Referrers()
	if refs == nil || len(*refs) != 0 {
		return false
	}
	if _, ok := v.Type().Underlying().(*types.Array); !ok {
		return false
	}
	return !valueHasArrayLenRangeEvalEffect(v.X, nil)
}

func (p *context) unusedArrayDerefNeedsNilCheck(v *ssa.UnOp) bool {
	loc := p.sourceLine(v.Pos())
	return strings.Contains(loc, "&*") || strings.Contains(loc, "&(*")
}

func (p *context) sourceLine(pos token.Pos) string {
	if pos == token.NoPos {
		return ""
	}
	loc := p.goProg.Fset.Position(pos)
	if loc.Filename == "" || loc.Line <= 0 {
		return ""
	}
	data, err := os.ReadFile(loc.Filename)
	if err != nil {
		return ""
	}
	lines := strings.Split(string(data), "\n")
	if loc.Line > len(lines) {
		return ""
	}
	return lines[loc.Line-1]
}

func memmoveStoreLoad(v ssa.Value) (*ssa.UnOp, bool) {
	load, ok := v.(*ssa.UnOp)
	if !ok || load.Op != token.MUL || !memmoveCopyType(v.Type()) {
		return nil, false
	}
	return load, true
}

func memmoveCopyType(t types.Type) bool {
	switch types.Unalias(t).Underlying().(type) {
	case *types.Array, *types.Struct:
		return true
	}
	return false
}

func soleRefIsMemmoveStore(v *ssa.UnOp) bool {
	if _, ok := memmoveStoreLoad(v); !ok {
		return false
	}
	refs := v.Referrers()
	if refs == nil || len(*refs) != 1 {
		return false
	}
	store, ok := (*refs)[0].(*ssa.Store)
	return ok && store.Val == v && memmoveStoreCanDeferLoad(v, store)
}

func memmoveStoreCanDeferLoad(load *ssa.UnOp, store *ssa.Store) bool {
	if load.Block() != store.Block() {
		return false
	}
	instrs := load.Block().Instrs
	for i, instr := range instrs {
		if instr != load {
			continue
		}
		if i+1 < len(instrs) && instrs[i+1] == store {
			return true
		}
		return memmoveStoreCanDeferGlobalLoad(load, store, instrs[i+1:])
	}
	return false
}

func memmoveStoreCanDeferGlobalLoad(load *ssa.UnOp, store *ssa.Store, instrs []ssa.Instruction) bool {
	source, ok := load.X.(*ssa.Global)
	if !ok {
		return false
	}
	for _, instr := range instrs {
		if instr == store {
			return true
		}
		if !memmoveStoreAllowsDeferAcross(instr, source) {
			return false
		}
	}
	return false
}

func memmoveStoreAllowsDeferAcross(instr ssa.Instruction, source *ssa.Global) bool {
	switch instr := instr.(type) {
	case *ssa.DebugRef, *ssa.FieldAddr, *ssa.IndexAddr, *ssa.UnOp:
		return true
	case *ssa.Store:
		base := memmoveAddrBase(instr.Addr)
		return base != nil && base != source
	default:
		return false
	}
}

func memmoveAddrBase(v ssa.Value) ssa.Value {
	for {
		switch x := v.(type) {
		case *ssa.FieldAddr:
			v = x.X
		case *ssa.IndexAddr:
			v = x.X
		default:
			return v
		}
	}
}

func valueHasArrayLenRangeEvalEffect(v ssa.Value, seen map[ssa.Value]bool) bool {
	if seen[v] {
		return false
	}
	if seen == nil {
		seen = make(map[ssa.Value]bool)
	}
	seen[v] = true

	switch v := v.(type) {
	case *ssa.Call:
		return true
	case *ssa.UnOp:
		if v.Op == token.ARROW {
			return true
		}
		return valueHasArrayLenRangeEvalEffect(v.X, seen)
	case *ssa.BinOp:
		return valueHasArrayLenRangeEvalEffect(v.X, seen) || valueHasArrayLenRangeEvalEffect(v.Y, seen)
	case *ssa.ChangeInterface:
		return valueHasArrayLenRangeEvalEffect(v.X, seen)
	case *ssa.ChangeType:
		return valueHasArrayLenRangeEvalEffect(v.X, seen)
	case *ssa.Convert:
		return valueHasArrayLenRangeEvalEffect(v.X, seen)
	case *ssa.Extract:
		return valueHasArrayLenRangeEvalEffect(v.Tuple, seen)
	case *ssa.Field:
		return valueHasArrayLenRangeEvalEffect(v.X, seen)
	case *ssa.FieldAddr:
		return valueHasArrayLenRangeEvalEffect(v.X, seen)
	case *ssa.Index:
		return valueHasArrayLenRangeEvalEffect(v.X, seen) || valueHasArrayLenRangeEvalEffect(v.Index, seen)
	case *ssa.IndexAddr:
		return valueHasArrayLenRangeEvalEffect(v.X, seen) || valueHasArrayLenRangeEvalEffect(v.Index, seen)
	case *ssa.Lookup:
		return valueHasArrayLenRangeEvalEffect(v.X, seen) || valueHasArrayLenRangeEvalEffect(v.Index, seen)
	case *ssa.MakeInterface:
		return valueHasArrayLenRangeEvalEffect(v.X, seen)
	case *ssa.Phi:
		for _, edge := range v.Edges {
			if valueHasArrayLenRangeEvalEffect(edge, seen) {
				return true
			}
		}
	}
	return false
}

func (p *context) cgoErrnoType() types.Type {
	if p.cgoErrnoTy != nil {
		return p.cgoErrnoTy
	}
	if pkg := p.goProg.ImportedPackage("syscall"); pkg != nil {
		if obj := pkg.Pkg.Scope().Lookup("Errno"); obj != nil {
			p.cgoErrnoTy = obj.Type()
			return p.cgoErrnoTy
		}
	}
	p.cgoErrnoTy = types.Typ[types.Int32]
	return p.cgoErrnoTy
}

func (p *context) cgoReturn(b llssa.Builder, isCgoC2 bool) {
	if !isCgoC2 {
		b.Return(p.cgoRet)
		return
	}
	sig := p.fn.Type.RawType().(*types.Signature)
	if sig.Results().Len() != 2 {
		panic("cgo C2func should return (result, error)")
	}
	p.cgoC2Return(b, p.cgoRet, sig.Results().At(1).Type())
}

func (p *context) cgoC2Return(b llssa.Builder, ret llssa.Expr, errType types.Type) {
	errTy := p.type_(errType, llssa.InGo)
	nilSlot := b.AllocU(errTy)
	b.Store(nilSlot, p.prog.Zero(errTy))
	nilErr := b.Load(nilSlot)
	if p.cgoErrno.IsNil() {
		b.Return(ret, nilErr)
		return
	}
	i32 := p.type_(types.Typ[types.Int32], llssa.InGo)
	errno := p.cgoErrno
	if !types.Identical(errno.RawType(), i32.RawType()) {
		errno = b.Convert(i32, errno)
	}
	zero := p.prog.Zero(i32)
	cond := b.BinOp(token.NEQ, errno, zero)
	errnoVal := b.Convert(p.type_(p.cgoErrnoType(), llssa.InGo), errno)
	errIface := b.MakeInterface(errTy, errnoVal)
	fn := b.Func
	errBlk := fn.MakeBlock()
	okBlk := fn.MakeBlock()
	b.If(cond, errBlk, okBlk)
	b.SetBlockEx(errBlk, llssa.AtEnd, false)
	b.Return(ret, errIface)
	b.SetBlockEx(okBlk, llssa.AtEnd, false)
	b.Return(ret, nilErr)
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
			if call.IsInvoke() {
				return llssa.HasNameValist(call.Signature())
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
	phi := b.Phi(p.type_(v.Type(), llssa.InGo))
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
		if _, ok := iv.(*ssa.Alloc); ok {
			return p.compileInstrOrValue(b, iv, false)
		}
		log.Panicln("unreachable:", iv)
	}
	switch v := iv.(type) {
	case *ssa.Call:
		ret = p.call(b, llssa.Call, &v.Call)
		if rangeFuncCallNeedsDeferDrain(&v.Call) {
			b.DeferStackDrain()
		}
	case *ssa.BinOp:
		if xConst, ok := v.X.(*ssa.Const); ok && xConst.Value == nil {
			if yConst, ok := v.Y.(*ssa.Const); ok && yConst.Value == nil {
				switch v.Op {
				case token.EQL:
					ret = p.prog.BoolVal(true)
				case token.NEQ:
					ret = p.prog.BoolVal(false)
				}
				if ret.Type != nil {
					break
				}
			}
		}
		if xConst, ok := v.X.(*ssa.Const); ok && xConst.Value == nil {
			x := p.compileConst(b, xConst, v.Y.Type())
			y := p.compileValue(b, v.Y)
			ret = b.BinOp(v.Op, x, y)
			break
		}
		if yConst, ok := v.Y.(*ssa.Const); ok && yConst.Value == nil {
			x := p.compileValue(b, v.X)
			y := p.compileConst(b, yConst, v.X.Type())
			ret = b.BinOp(v.Op, x, y)
			break
		}
		x := p.compileValue(b, v.X)
		y := p.compileValue(b, v.Y)
		ret = b.BinOp(v.Op, x, y)
	case *ssa.UnOp:
		if skipUnusedArrayDeref(v) {
			if p.unusedArrayDerefNeedsNilCheck(v) {
				x := p.compileValue(b, v.X)
				b.AssertNilDeref(x)
			}
			return
		}
		if v.Op == token.MUL {
			if soleRefIsMemmoveStore(v) {
				return
			}
			if _, ok := v.X.(*ssa.UnOp); ok {
				if refs := v.Referrers(); refs != nil && len(*refs) == 0 {
					if t := p.type_(v.Type(), llssa.InGo); t.RawType() != nil {
						if _, ok := t.RawType().Underlying().(*types.Pointer); !ok && p.prog.SizeOf(t) > 1<<20 {
							x := p.compileValue(b, v.X)
							b.AssertNilDeref(x)
							return
						}
					}
				}
			}
			if refs := v.Referrers(); refs != nil && len(*refs) == 1 {
				if _, ok := (*refs)[0].(*ssa.MakeInterface); ok {
					if t := p.type_(v.Type(), llssa.InGo); t.RawType() != nil {
						if _, ok := t.RawType().Underlying().(*types.Pointer); !ok && p.prog.SizeOf(t) > 1<<20 {
							return
						}
					}
				}
			}
		}
		x := p.compileValue(b, v.X)
		if v.Op == token.ARROW {
			ret = b.Recv(x, v.CommaOk)
		} else {
			ret = b.UnOp(v.Op, x)
		}
	case *ssa.ChangeType:
		t := v.Type()
		x := p.compileValue(b, v.X)
		ret = b.ChangeType(p.type_(t, llssa.InGo), x)
	case *ssa.Convert:
		t := v.Type()
		x := p.compileValue(b, v.X)
		ret = b.Convert(p.type_(t, llssa.InGo), x)
	case *ssa.FieldAddr:
		x := p.compileValue(b, v.X)
		ret = b.FieldAddr(x, v.Field)
	case *ssa.Alloc:
		t := v.Type().(*types.Pointer)
		if p.checkVArgs(v, t) { // varargs: this maybe a varargs allocation
			return
		}
		if skipMakeSliceAlloc(v) {
			return
		}
		elem := p.type_(t.Elem(), llssa.InGo)
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
		if ref, ok := singleRef(v); ok && isSendInstr(ref) {
			if _, ok := makeSliceAllocCap(vx); ok && v.Low == nil && v.Max == nil {
				return
			}
		}
		if capLen, ok := makeSliceAllocCap(vx); ok && v.Low == nil && v.Max == nil {
			t := p.type_(v.Type(), llssa.InGo)
			nLen := p.prog.IntVal(uint64(capLen), p.prog.Int())
			if v.High != nil {
				nLen = p.compileValue(b, v.High)
			}
			nCap := p.prog.IntVal(uint64(capLen), p.prog.Int())
			ret = b.MakeSlice(t, nLen, nCap)
			ret.Type = t
			break
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
		ret.Type = p.type_(v.Type(), llssa.InGo)
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
					if _, _, ftype := p.funcOf(fn); ftype == llgoFuncAddr || ftype == llgoFuncPCABI0 { // llgo.funcAddr/funcPCABI0
						return
					}
				}
			}
		}
		t := p.type_(v.Type(), llssa.InGo)
		if unop, ok := v.X.(*ssa.UnOp); ok && unop.Op == token.MUL {
			if ptr := p.compileValue(b, unop.X); ptr.Type != nil {
				ret = b.MakeInterfaceFromPtr(t, ptr)
				break
			}
		}
		x := p.compileValue(b, v.X)
		ret = b.MakeInterface(t, x)
	case *ssa.MakeSlice:
		if ref, ok := singleRef(v); ok && isSendInstr(ref) {
			return
		}
		t := p.type_(v.Type(), llssa.InGo)
		nLen := p.compileValue(b, v.Len)
		nCap := p.compileValue(b, v.Cap)
		ret = b.MakeSlice(t, nLen, nCap)
	case *ssa.MakeMap:
		var nReserve llssa.Expr
		t := p.type_(v.Type(), llssa.InGo)
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
		t := p.type_(v.AssertedType, llssa.InGo)
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
			typ = p.type_(v.Iter.(*ssa.Range).X.Type(), llssa.InGo)
		}
		iter := p.compileValue(b, v.Iter)
		ret = b.Next(typ, iter, v.IsString)
	case *ssa.ChangeInterface:
		t := v.Type()
		x := p.compileValue(b, v.X)
		ret = b.ChangeInterface(p.type_(t, llssa.InGo), x)
	case *ssa.Field:
		x := p.compileValue(b, v.X)
		ret = b.Field(x, v.Field)
	case *ssa.MakeChan:
		t := v.Type()
		size := p.compileValue(b, v.Size)
		ret = b.MakeChan(p.type_(t, llssa.InGo), size)
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
	case *ssa.SliceToArrayPointer:
		t := p.type_(v.Type(), llssa.InGo)
		x := p.compileValue(b, v.X)
		ret = b.SliceToArrayPointer(x, t)
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

func (p *context) getDebugLocScope(v *ssa.Function, pos token.Pos) *types.Scope {
	if v.Object() == nil {
		return nil
	}
	funcScope := v.Object().(*types.Func).Scope()
	if funcScope == nil {
		return nil
	}
	return funcScope.Innermost(pos)
}

func (p *context) compileInstr(b llssa.Builder, instr ssa.Instruction) {
	if iv, ok := instr.(instrOrValue); ok {
		p.compileInstrOrValue(b, iv, false)
		return
	}
	if enableDbg && instr.Parent().Origin() == nil {
		scope := p.getDebugLocScope(instr.Parent(), instr.Pos())
		if scope != nil {
			diScope := b.DIScope(p.fn, scope)
			pos := p.fset.Position(instr.Pos())
			b.DISetCurrentDebugLocation(diScope, pos)
		}
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
		if load, ok := memmoveStoreLoad(v.Val); ok && memmoveStoreCanDeferLoad(load, v) {
			t := p.type_(v.Val.Type(), llssa.InGo)
			ptr := p.compileValue(b, va)
			src := p.compileValue(b, load.X)
			b.AssertNilDeref(src)
			b.Memmove(ptr, src, p.prog.SizeOf(t))
			return
		}
		if p.rewrites != nil {
			if g, ok := va.(*ssa.Global); ok {
				if _, ok := p.rewriteInitStore(v, g); ok {
					return
				}
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
		if returnNeedsImplicitRunDefers(v) {
			b.RunDefers()
		}
		b.Return(results...)
	case *ssa.If:
		if p.compileRangeFuncGotoRestart(b, v) {
			return
		}
		if p.compileRangeFuncGotoRestartResume(b, v) {
			return
		}
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
		if v.DeferStack != nil {
			p.callDeferStack(b, p.blkInfos[v.Block().Index].Kind, &v.Call, v.DeferStack, v.Parent())
			return
		}
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
		if p.compileSingleUseMakeSliceSend(b, ch, v.X) {
			return
		}
		x := p.compileValue(b, v.X)
		b.Send(ch, x)
	case *ssa.DebugRef:
		if enableDbgSyms && v.Parent().Origin() == nil {
			p.debugRef(b, v)
		}
	default:
		panic(fmt.Sprintf("compileInstr: unknown instr - %T\n", instr))
	}
}

func (p *context) getLocalVariable(b llssa.Builder, fn *ssa.Function, v *types.Var) llssa.DIVar {
	if p.paramDIVars != nil {
		if div, ok := p.paramDIVars[v]; ok {
			return div
		}
	}
	pos := p.fset.Position(v.Pos())
	t := p.type_(v.Type(), llssa.InGo)
	scope := b.DIScope(p.fn, v.Parent())
	return b.DIVarAuto(scope, pos, v.Name(), t)
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

func (p *context) compileConst(b llssa.Builder, v *ssa.Const, hint types.Type) llssa.Expr {
	bg := llssa.InGo
	if p.inCFunc {
		bg = llssa.InC
	}
	if v.Value == nil {
		t := v.Type()
		if isUntypedNil(t) {
			t = hint
		}
		return p.prog.Nil(p.type_(t, bg))
	}
	return b.Const(v.Value, p.type_(types.Default(v.Type()), bg))
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
				return b.Param(idx)
			}
		}
	case *ssa.Function:
		aFn, pyFn, _ := p.compileFunction(v)
		if aFn != nil {
			return aFn.Expr
		}
		return pyFn.Expr
	case *ssa.Global:
		varName := v.Name()
		val := p.varOf(b, v)
		if isCgoVar(varName) {
			p.cgoSymbols = append(p.cgoSymbols, val.Name())
		}
		if enableDbgSyms {
			pos := p.fset.Position(v.Pos())
			b.DIGlobal(val, v.Name(), pos)
		}
		return val
	case *ssa.Const:
		return p.compileConst(b, v, nil)
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

func rangeFuncCallNeedsDeferDrain(call *ssa.CallCommon) bool {
	for _, arg := range call.Args {
		closure, ok := arg.(*ssa.MakeClosure)
		if !ok {
			continue
		}
		fn, ok := closure.Fn.(*ssa.Function)
		if !ok || fn.Synthetic != "range-over-func yield" {
			continue
		}
		if functionHasExplicitStackDefer(fn, make(map[*ssa.Function]bool)) {
			return true
		}
	}
	return false
}

func (p *context) compileRangeFuncGotoRestart(b llssa.Builder, v *ssa.If) bool {
	block := v.Block()
	if block == nil || block.Parent().Synthetic != "range-over-func yield" || !p.ifConditionLineHasGoto(v) {
		return false
	}
	succs := block.Succs
	if len(succs) != 2 {
		return false
	}
	yieldContinue := -1
	for i, succ := range succs {
		if succ.Comment == "yield-continue" {
			yieldContinue = i
			break
		}
	}
	if yieldContinue < 0 {
		return false
	}
	jump, ok := rangeFuncJumpFreeVar(block.Parent())
	if !ok {
		return false
	}
	fn := p.fn
	cond := p.compileValue(b, v.Cond)
	restart := fn.MakeBlock()
	thenb := fn.Block(succs[0].Index)
	elseb := fn.Block(succs[1].Index)
	if yieldContinue == 0 {
		thenb = restart
	} else {
		elseb = restart
	}
	b.If(cond, thenb, elseb)
	b.SetBlockEx(restart, llssa.AtEnd, false)
	b.Store(p.compileValue(b, jump), p.prog.Val(rangeFuncGotoRestartSentinel))
	b.Return(p.prog.BoolVal(false))
	return true
}

func (p *context) ifConditionLineHasGoto(v *ssa.If) bool {
	return strings.Contains(p.sourceLine(v.Cond.Pos()), "goto ")
}

func rangeFuncJumpFreeVar(fn *ssa.Function) (ssa.Value, bool) {
	for _, fv := range fn.FreeVars {
		if strings.HasPrefix(fv.Name(), "jump$") {
			return fv, true
		}
	}
	return nil, false
}

func (p *context) compileRangeFuncGotoRestartResume(b llssa.Builder, v *ssa.If) bool {
	block := v.Block()
	if block == nil || len(block.Succs) != 2 || block.Succs[1].Comment != "rangefunc.done" {
		return false
	}
	jumpVal, restartBlock, ok := rangeFuncResumeJumpValue(v.Cond)
	if !ok {
		return false
	}
	if !p.rangeFuncIteratorCallHasGotoRestart(restartBlock) {
		return false
	}
	fn := p.fn
	cond := p.compileValue(b, v.Cond)
	match := fn.Block(block.Succs[0].Index)
	checkRestart := fn.MakeBlock()
	b.If(cond, match, checkRestart)
	b.SetBlockEx(checkRestart, llssa.AtEnd, false)
	isRestart := b.BinOp(token.EQL, p.compileValue(b, jumpVal), p.prog.Val(rangeFuncGotoRestartSentinel))
	restart := fn.MakeBlock()
	b.If(isRestart, restart, fn.Block(block.Succs[1].Index))
	p.emitRangeFuncGotoRestart(b, restart, restartBlock, v)
	return true
}

func (p *context) rangeFuncIteratorCallHasGotoRestart(block *ssa.BasicBlock) bool {
	call := rangeFuncIteratorCall(block)
	if call == nil {
		return false
	}
	for _, arg := range call.Call.Args {
		closure, ok := arg.(*ssa.MakeClosure)
		if !ok {
			continue
		}
		fn, ok := closure.Fn.(*ssa.Function)
		if !ok || fn.Synthetic != "range-over-func yield" {
			continue
		}
		for _, block := range fn.Blocks {
			if rangeFuncYieldBlockNeedsGotoRestart(p, block) {
				return true
			}
		}
	}
	return false
}

func rangeFuncYieldBlockNeedsGotoRestart(p *context, block *ssa.BasicBlock) bool {
	if block == nil || block.Parent() == nil || block.Parent().Synthetic != "range-over-func yield" {
		return false
	}
	jump, ok := rangeFuncJumpFreeVar(block.Parent())
	if !ok || jump == nil {
		return false
	}
	for _, instr := range block.Instrs {
		if v, ok := instr.(*ssa.If); ok && p.ifConditionLineHasGoto(v) {
			for _, succ := range block.Succs {
				if succ.Comment == "yield-continue" {
					return true
				}
			}
		}
	}
	return false
}

func (p *context) rangeFuncYieldNeedsOptimizeNone(fn *ssa.Function) bool {
	return fn != nil && fn.Synthetic == "range-over-func yield"
}

func (p *context) emitRangeFuncGotoRestart(b llssa.Builder, blk llssa.BasicBlock, restartBlock *ssa.BasicBlock, final *ssa.If) {
	call := rangeFuncIteratorCall(restartBlock)
	jumpLoad := rangeFuncBlockJumpLoad(restartBlock)
	if call == nil || jumpLoad == nil || len(restartBlock.Succs) != 2 {
		b.SetBlockEx(blk, llssa.AtEnd, false)
		b.Jump(p.fn.Block(restartBlock.Index))
		return
	}
	readyCheck := restartBlock.Succs[1]
	if len(readyCheck.Succs) != 2 {
		b.SetBlockEx(blk, llssa.AtEnd, false)
		b.Jump(p.fn.Block(restartBlock.Index))
		return
	}
	exitID, ok := rangeFuncResumeExitID(final.Cond)
	if !ok {
		b.SetBlockEx(blk, llssa.AtEnd, false)
		b.Jump(p.fn.Block(restartBlock.Index))
		return
	}
	exits := rangeFuncResumeExits(restartBlock)
	if len(exits) == 0 {
		exits = []rangeFuncExit{{id: exitID, target: final.Block().Succs[0]}}
	}
	fn := p.fn
	done := fn.Block(final.Block().Succs[1].Index)
	busy := fn.Block(restartBlock.Succs[0].Index)
	ready := fn.Block(readyCheck.Succs[0].Index)

	b.SetBlockEx(blk, llssa.AtEnd, false)
	jumpPtr := p.compileValue(b, jumpLoad.X)
	b.Store(jumpPtr, p.prog.Val(0))
	p.call(b, llssa.Call, &call.Call)
	if rangeFuncCallNeedsDeferDrain(&call.Call) {
		b.DeferStackDrain()
	}
	jumpVal := b.Load(jumpPtr)
	notBusy := fn.MakeBlock()
	b.If(b.BinOp(token.EQL, jumpVal, p.prog.Val(-1)), busy, notBusy)

	b.SetBlockEx(notBusy, llssa.AtEnd, false)
	notReady := fn.MakeBlock()
	b.If(b.BinOp(token.EQL, jumpVal, p.prog.Val(0)), ready, notReady)

	b.SetBlockEx(notReady, llssa.AtEnd, false)
	for _, exit := range exits {
		next := fn.MakeBlock()
		b.If(b.BinOp(token.EQL, jumpVal, p.prog.Val(exit.id)), fn.Block(exit.target.Index), next)
		b.SetBlockEx(next, llssa.AtEnd, false)
	}
	b.If(b.BinOp(token.EQL, jumpVal, p.prog.Val(rangeFuncGotoRestartSentinel)), blk, done)
}

type rangeFuncExit struct {
	id     int
	target *ssa.BasicBlock
}

func rangeFuncResumeExits(restartBlock *ssa.BasicBlock) []rangeFuncExit {
	if restartBlock == nil || len(restartBlock.Succs) != 2 {
		return nil
	}
	readyCheck := restartBlock.Succs[1]
	if len(readyCheck.Succs) != 2 {
		return nil
	}
	var exits []rangeFuncExit
	for block := readyCheck.Succs[1]; block != nil; {
		if len(block.Succs) != 2 {
			return exits
		}
		term := blockTerminatingIf(block)
		if term == nil {
			return exits
		}
		id, ok := rangeFuncResumeExitID(term.Cond)
		if !ok {
			return exits
		}
		exits = append(exits, rangeFuncExit{id: id, target: block.Succs[0]})
		if block.Succs[1].Comment == "rangefunc.done" {
			return exits
		}
		block = block.Succs[1]
	}
	return exits
}

func blockTerminatingIf(block *ssa.BasicBlock) *ssa.If {
	for i := len(block.Instrs) - 1; i >= 0; i-- {
		if _, ok := block.Instrs[i].(*ssa.DebugRef); ok {
			continue
		}
		if instr, ok := block.Instrs[i].(*ssa.If); ok {
			return instr
		}
		return nil
	}
	return nil
}

func rangeFuncIteratorCall(block *ssa.BasicBlock) *ssa.Call {
	for _, instr := range block.Instrs {
		if call, ok := instr.(*ssa.Call); ok {
			return call
		}
	}
	return nil
}

func rangeFuncBlockJumpLoad(block *ssa.BasicBlock) *ssa.UnOp {
	afterIteratorCall := false
	for _, instr := range block.Instrs {
		if _, ok := instr.(*ssa.Call); ok {
			afterIteratorCall = true
			continue
		}
		if !afterIteratorCall {
			continue
		}
		load, ok := instr.(*ssa.UnOp)
		if ok && load.Op == token.MUL {
			return load
		}
	}
	return nil
}

func rangeFuncResumeJumpValue(cond ssa.Value) (ssa.Value, *ssa.BasicBlock, bool) {
	bin, ok := cond.(*ssa.BinOp)
	if !ok || bin.Op != token.EQL {
		return nil, nil, false
	}
	if isPositiveConstInt(bin.X) {
		return rangeFuncResumeLoadedValue(bin.Y)
	}
	if isPositiveConstInt(bin.Y) {
		return rangeFuncResumeLoadedValue(bin.X)
	}
	return nil, nil, false
}

func rangeFuncResumeExitID(cond ssa.Value) (int, bool) {
	bin, ok := cond.(*ssa.BinOp)
	if !ok || bin.Op != token.EQL {
		return 0, false
	}
	if id, ok := positiveConstID(bin.X); ok {
		return id, true
	}
	return positiveConstID(bin.Y)
}

func rangeFuncResumeLoadedValue(v ssa.Value) (ssa.Value, *ssa.BasicBlock, bool) {
	load, ok := v.(*ssa.UnOp)
	if !ok || load.Op != token.MUL || load.Block() == nil {
		return nil, nil, false
	}
	return load, load.Block(), true
}

func isPositiveConstInt(v ssa.Value) bool {
	_, ok := positiveConstID(v)
	return ok
}

func positiveConstID(v ssa.Value) (int, bool) {
	c, ok := v.(*ssa.Const)
	if !ok || c.Value == nil {
		return 0, false
	}
	n, exact := constant.Int64Val(c.Value)
	return int(n), exact && n > 0
}

func functionHasExplicitStackDefer(fn *ssa.Function, seen map[*ssa.Function]bool) bool {
	if fn == nil || seen[fn] {
		return false
	}
	seen[fn] = true
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			if d, ok := instr.(*ssa.Defer); ok && d.DeferStack != nil {
				return true
			}
		}
	}
	for _, child := range fn.AnonFuncs {
		if functionHasExplicitStackDefer(child, seen) {
			return true
		}
	}
	return false
}

func returnNeedsImplicitRunDefers(ret *ssa.Return) bool {
	fn := ret.Parent()
	if fn == nil || fn.Synthetic != "" || ret.Block() == fn.Recover {
		return false
	}
	if previousNonDebugInstrIsRunDefers(ret) {
		return false
	}
	return functionHasExplicitStackDeferInAnon(fn, make(map[*ssa.Function]bool))
}

func previousNonDebugInstrIsRunDefers(ret *ssa.Return) bool {
	block := ret.Block()
	if block == nil {
		return false
	}
	for i := len(block.Instrs) - 1; i >= 0; i-- {
		instr := block.Instrs[i]
		if instr == ret {
			continue
		}
		if _, ok := instr.(*ssa.DebugRef); ok {
			continue
		}
		_, ok := instr.(*ssa.RunDefers)
		return ok
	}
	return false
}

func functionHasExplicitStackDeferInAnon(fn *ssa.Function, seen map[*ssa.Function]bool) bool {
	if fn == nil || seen[fn] {
		return false
	}
	seen[fn] = true
	for _, child := range fn.AnonFuncs {
		if functionHasExplicitStackDefer(child, seen) {
			return true
		}
	}
	return false
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
	case *ssa.Parameter:
		if llssa.HasNameValist(v.Parent().Signature) {
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
	ret, _, err = NewPackageEx(prog, nil, nil, pkg, files)
	return
}

// NewPackageEx compiles a Go package to LLVM IR package.
//
// Parameters:
//   - prog: target LLVM SSA program context
//   - patches: optional package patches applied during compilation
//   - rewrites: per-package string initializers rewritten at compile time
//   - pkg: SSA package to compile
//   - files: parsed AST files that belong to the package
//
// The rewrites map uses short variable names (without package qualifier) and
// only affects string-typed globals defined in the current package.
func NewPackageEx(prog llssa.Program, patches Patches, rewrites map[string]string, pkg *ssa.Package, files []*ast.File) (ret llssa.Package, externs []string, err error) {
	return newPackageEx(prog, patches, rewrites, pkg, files, nil)
}

// NewPackageExWithEmbed compiles a package using pre-loaded go:embed metadata.
//
// This avoids re-scanning directives when the caller already loaded them.
func NewPackageExWithEmbed(prog llssa.Program, patches Patches, rewrites map[string]string, pkg *ssa.Package, files []*ast.File, embedMap goembed.VarMap) (ret llssa.Package, externs []string, err error) {
	return newPackageEx(prog, patches, rewrites, pkg, files, &embedMap)
}

func newPackageEx(prog llssa.Program, patches Patches, rewrites map[string]string, pkg *ssa.Package, files []*ast.File, embedMap *goembed.VarMap) (ret llssa.Package, externs []string, err error) {
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
	if enableDbg {
		ret.InitDebug(pkgName, pkgPath, pkgProg.Fset)
	}

	ctx := &context{
		prog:    prog,
		pkg:     ret,
		fset:    pkgProg.Fset,
		goProg:  pkgProg,
		goTyps:  pkgTypes,
		goPkg:   pkg,
		patches: patches,
		skips:   make(map[string]none),
		vargs:   make(map[*ssa.Alloc][]llssa.Expr),
		funcs:   make(map[*ssa.Function]llssa.Function),
		loaded: map[*types.Package]*pkgInfo{
			types.Unsafe: {kind: PkgDeclOnly}, // TODO(xsw): PkgNoInit or PkgDeclOnly?
		},
		cgoSymbols: make([]string, 0, 128),
		rewrites:   rewrites,
	}
	if embedMap != nil {
		ctx.embedMap = *embedMap
	} else {
		ctx.embedMap, err = goembed.LoadDirectives(ctx.fset, files)
		if err != nil {
			panic(err)
		}
	}
	ctx.initPyModule()
	ctx.initFiles(pkgPath, files, pkgName == "C")
	ctx.prog.SetPatch(ctx.patchType)
	ctx.prog.SetCompileMethods(ctx.checkCompileMethods)
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
	for _, fini := range ctx.finals {
		fini()
	}
	ctx.finals = nil
	if fn := ctx.initAfter; fn != nil {
		ctx.initAfter = nil
		fn()
	}
	ret.MaterializePreserveSyms()
	externs = ctx.cgoSymbols
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
			if strings.HasSuffix(member.Name(), "_trampoline") {
				continue
			}
			if member.TypeParams() != nil || member.TypeArgs() != nil {
				// TODO(xsw): don't compile generic functions
				// Do not try to build generic (non-instantiated) functions.
				continue
			}
			ctx.compileFuncDecl(ret, member)
		case *ssa.Type:
			ctx.compileType(ret, member)
		case *ssa.Global:
			if !isCgoFuncPtrVar(member.Name()) {
				ctx.compileGlobal(ret, member)
			}
		}
	}
}

func (p *context) type_(typ types.Type, bg llssa.Background) llssa.Type {
	return p.prog.Type(p.patchType(typ), bg)
}

func (p *context) patchType(typ types.Type) (r types.Type) {
	r, _ = p._patchType(typ)
	return
}

func (p *context) _patchType(typ types.Type) (types.Type, bool) {
	switch typ := typ.(type) {
	case *types.Pointer:
		if t, ok := p._patchType(typ.Elem()); ok {
			return types.NewPointer(t), true
		}
	case *types.Slice:
		if t, ok := p._patchType(typ.Elem()); ok {
			return types.NewSlice(t), true
		}
	case *types.Array:
		if t, ok := p._patchType(typ.Elem()); ok {
			return types.NewArray(t, typ.Len()), true
		}
	case *types.Map:
		var patched bool
		key := typ.Key()
		elem := typ.Elem()
		if t, ok := p._patchType(key); ok {
			key = t
			patched = true
		}
		if t, ok := p._patchType(elem); ok {
			elem = t
			patched = true
		}
		if patched {
			return types.NewMap(key, elem), true
		}
	case *types.Chan:
		if t, ok := p._patchType(typ.Elem()); ok {
			return types.NewChan(typ.Dir(), t), true
		}
	case *types.Named:
		if t, ok := p.patchLocalGenericNamed(typ); ok {
			return t, true
		}
		o := typ.Obj()
		if pkg := o.Pkg(); typepatch.IsPatched(pkg) {
			if patch, ok := p.patches[pkg.Path()]; ok {
				if obj := patch.Types.Scope().Lookup(o.Name()); obj != nil {
					raw := p.prog.Type(instantiate(obj.Type(), typ), llssa.InGo).RawType()
					return raw, typ != raw
				}
			}
		}
	case *types.Tuple:
		var patched bool
		vars := make([]*types.Var, typ.Len())
		for i := 0; i < typ.Len(); i++ {
			v := typ.At(i)
			if t, ok := p._patchType(v.Type()); ok {
				vars[i] = types.NewVar(v.Pos(), v.Pkg(), v.Name(), t)
				patched = true
			} else {
				vars[i] = v
			}
		}
		if patched {
			return types.NewTuple(vars...), true
		}
	case *types.Signature:
		params, ok1 := p._patchType(typ.Params())
		results, ok2 := p._patchType(typ.Results())
		if ok1 || ok2 {
			return types.NewSignature(typ.Recv(), params.(*types.Tuple), results.(*types.Tuple), typ.Variadic()), true
		}
	}
	return typ, false
}

func (p *context) patchLocalGenericNamed(t *types.Named) (*types.Named, bool) {
	if p.goFn == nil || len(p.goFn.TypeArgs()) == 0 || !p.isGenericLocalType(t.Obj()) {
		return nil, false
	}
	obj := types.NewTypeName(token.NoPos, t.Obj().Pkg(), p.localNamedName(t, false), nil)
	return types.NewNamed(obj, t.Underlying(), nil), true
}

func (p *context) localNamedName(t *types.Named, suffix bool) string {
	obj := t.Obj()
	name := obj.Name()
	outer := p.localTypeOuterArgs(obj)
	own := typeListArgs(t.TypeArgs(), p.typeArgName)
	switch {
	case len(outer) != 0 && len(own) != 0:
		name += "[" + strings.Join(outer, ",") + ";" + strings.Join(own, ",") + "]"
	case len(outer) != 0:
		name += "[" + strings.Join(outer, ",") + "]"
	case len(own) != 0:
		name += "[" + strings.Join(own, ",") + "]"
	}
	if suffix {
		if n := p.localTypeOrdinal(obj); n != 0 {
			name += "·" + strconv.Itoa(n)
		}
	}
	return name
}

func (p *context) localTypeOuterArgs(obj types.Object) []string {
	if p.goFn == nil || len(p.goFn.TypeArgs()) == 0 || !p.isGenericLocalType(obj) {
		return nil
	}
	args := p.goFn.TypeArgs()
	ret := make([]string, len(args))
	for i, arg := range args {
		ret[i] = p.typeArgName(arg)
	}
	return ret
}

func typeListArgs(list *types.TypeList, nameOf func(types.Type) string) []string {
	if list == nil {
		return nil
	}
	ret := make([]string, list.Len())
	for i := 0; i < list.Len(); i++ {
		ret[i] = nameOf(list.At(i))
	}
	return ret
}

func (p *context) typeArgName(t types.Type) string {
	switch t := t.(type) {
	case *types.Alias:
		return p.typeArgName(types.Unalias(t))
	case *types.Basic:
		return t.String()
	case *types.Named:
		name := p.localNamedName(t, p.isLocalType(t.Obj()))
		if pkg := t.Obj().Pkg(); pkg != nil {
			return pkg.Name() + "." + name
		}
		return name
	case *types.Pointer:
		return "*" + p.typeArgName(t.Elem())
	case *types.Slice:
		return "[]" + p.typeArgName(t.Elem())
	case *types.Array:
		return fmt.Sprintf("[%v]%s", t.Len(), p.typeArgName(t.Elem()))
	case *types.Map:
		return fmt.Sprintf("map[%s]%s", p.typeArgName(t.Key()), p.typeArgName(t.Elem()))
	case *types.Chan:
		s := chanDirName(t.Dir())
		elem := p.typeArgName(t.Elem())
		if t.Dir() == types.SendRecv {
			if ch, ok := t.Elem().(*types.Chan); ok && ch.Dir() == types.RecvOnly {
				elem = "(" + elem + ")"
			}
		}
		return fmt.Sprintf("%s %s", s, elem)
	default:
		return types.TypeString(t, func(pkg *types.Package) string {
			if pkg == nil {
				return ""
			}
			return pkg.Name()
		})
	}
}

func chanDirName(dir types.ChanDir) string {
	switch dir {
	case types.SendRecv:
		return "chan"
	case types.SendOnly:
		return "chan<-"
	case types.RecvOnly:
		return "<-chan"
	default:
		panic("invalid channel direction")
	}
}

func (p *context) isGenericLocalType(obj types.Object) bool {
	if !p.isLocalType(obj) {
		return false
	}
	if obj.Parent() == nil {
		return p.inCurrentFunction(obj.Pos())
	}
	for scope := obj.Parent(); scope != nil; scope = scope.Parent() {
		if pkg := obj.Pkg(); pkg != nil && scope == pkg.Scope() {
			return false
		}
		if scopeHasTypeParams(scope) {
			return true
		}
	}
	return false
}

func (p *context) isLocalType(obj types.Object) bool {
	if obj == nil || obj.Pkg() == nil {
		return false
	}
	parent := obj.Parent()
	if parent == nil {
		return obj.Pos().IsValid()
	}
	return parent != obj.Pkg().Scope()
}

func scopeHasTypeParams(scope *types.Scope) bool {
	for _, name := range scope.Names() {
		if isTypeParamObject(scope.Lookup(name)) {
			return true
		}
	}
	return false
}

func (p *context) localTypeOrdinal(obj types.Object) int {
	scope := obj.Parent()
	if scope == nil || !obj.Pos().IsValid() {
		return p.localTypeOrdinalBySyntax(obj.Pos())
	}
	n := 0
	for _, name := range scope.Names() {
		o := scope.Lookup(name)
		if _, ok := o.(*types.TypeName); !ok || isTypeParamObject(o) {
			continue
		}
		if pos := o.Pos(); pos.IsValid() && pos <= obj.Pos() {
			n++
		}
	}
	return n
}

func (p *context) inCurrentFunction(pos token.Pos) bool {
	if !pos.IsValid() {
		return false
	}
	syntax := p.currentFunctionSyntax()
	return syntax != nil && syntax.Pos() <= pos && pos <= syntax.End()
}

func (p *context) localTypeOrdinalBySyntax(pos token.Pos) int {
	if !p.inCurrentFunction(pos) {
		return 0
	}
	n := 0
	ast.Inspect(p.currentFunctionSyntax(), func(node ast.Node) bool {
		spec, ok := node.(*ast.TypeSpec)
		if !ok {
			return true
		}
		if spec.Name != nil && spec.Name.Pos().IsValid() && spec.Name.Pos() <= pos {
			n++
		}
		return true
	})
	return n
}

func (p *context) currentFunctionSyntax() ast.Node {
	if p.goFn == nil {
		return nil
	}
	fn := p.goFn
	if origin := fn.Origin(); origin != nil {
		fn = origin
	}
	return fn.Syntax()
}

func isTypeParamObject(obj types.Object) bool {
	tn, ok := obj.(*types.TypeName)
	if !ok {
		return false
	}
	_, ok = tn.Type().(*types.TypeParam)
	return ok
}

func instantiate(orig types.Type, t *types.Named) (typ types.Type) {
	typ, _ = llssa.Instantiate(orig, t)
	return
}

func (p *context) resolveLinkname(name string) string {
	if link, ok := p.prog.Linkname(name); ok {
		prefix, ltarget, _ := strings.Cut(link, ".")
		if prefix != "C" {
			panic("resolveLinkname: invalid link: " + link)
		}
		return ltarget
	}
	return name
}

// checkCompileMethods ensures that all methods attached to the given type
// (and to the types it refers to) are compiled and emitted into the
// current SSA package. Generic named types and struct types are the
// primary targets; pointer types are followed until a non-pointer is
// reached. non-generic named have their methods compiled elsewhere.
func (p *context) checkCompileMethods(pkg llssa.Package, typ types.Type) {
	nt := typ
retry:
	switch t := nt.(type) {
	case *types.Named:
		if t.TypeArgs() == nil {
			obj := t.Obj()
			// skip package-level type
			if obj.Parent() == obj.Pkg().Scope() {
				return
			}
		}
		p.compileMethods(pkg, typ)
	case *types.Struct:
		p.compileMethods(pkg, typ)
	case *types.Pointer:
		nt = t.Elem()
		goto retry
	}
}

// -----------------------------------------------------------------------------
