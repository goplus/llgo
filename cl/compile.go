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
	vblks       map[ssa.Value]llssa.BasicBlock
	btails      map[*ssa.BasicBlock]llssa.BasicBlock
	vargs       map[*ssa.Alloc][]llssa.Expr // varargs
	recvTuples  map[ssa.Value]*recvTupleState
	paramDIVars map[*types.Var]llssa.DIVar

	patches  Patches
	blkInfos []blocks.Info

	inits     []func()
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

type recvTupleState struct {
	ptr       llssa.Expr
	ok        llssa.Expr
	recvBlock *ssa.BasicBlock
	useBlock  *ssa.BasicBlock
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

func (p *context) canSkipMakeInterfaceLoad(v *ssa.MakeInterface) bool {
	_ = p
	_ = v
	// MakeInterface consumers in llgo sometimes fold back to the original SSA
	// operand (for example identical type-asserts and a few intrinsic helpers).
	// Skipping the backing load here leaves those paths without a materialized
	// value and trips compileValue's dominance cache. Prefer correctness over
	// this micro-optimization.
	return false
}

func isBlankFieldStore(addr ssa.Value) bool {
	fieldAddr, ok := addr.(*ssa.FieldAddr)
	if !ok {
		return false
	}
	switch typ := fieldAddr.X.Type().Underlying().(type) {
	case *types.Pointer:
		st, ok := typ.Elem().Underlying().(*types.Struct)
		return ok && st.Field(fieldAddr.Field).Name() == "_"
	case *types.Struct:
		return typ.Field(fieldAddr.Field).Name() == "_"
	}
	return false
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
	if tn.IsAlias() { // don't need to compile alias type
		return
	}
	tnName := tn.Name()
	typ := tn.Type()
	name := llssa.FullName(tn.Pkg(), tnName)
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
	typ := p.patchType(gbl.Type())
	name, vtype, define := p.varName(gbl.Pkg.Pkg, gbl)
	if vtype == pyVar {
		return
	}
	if debugInstr {
		log.Println("==> NewVar", name, typ)
	}
	var g llssa.Global
	if define {
		g = pkg.NewVar(name, typ, llssa.Background(vtype))
	} else {
		g = pkg.DeclareVar(name, typ, llssa.Background(vtype))
	}
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
		flds[i] = types.NewField(token.NoPos, pkg, v.Name(), v.Type(), false)
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

func genericTypeArgsOf(f *ssa.Function) []types.Type {
	for ; f != nil; f = f.Parent() {
		if targs := f.TypeArgs(); len(targs) != 0 {
			return targs
		}
	}
	return nil
}

func (p *context) compileFuncDecl(pkg llssa.Package, f *ssa.Function) (llssa.Function, llssa.PyObjRef, int) {
	pkgTypes, name, ftype := p.funcName(f)
	if ftype != goFunc {
		return nil, nil, ignoredFunc
	}
	sig := p.patchType(f.Signature).(*types.Signature)
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
		fn.SetGenericTypeArgs(genericTypeArgsOf(f))
		if disableInline {
			fn.Inline(llssa.NoInline)
		}
	} else if targs := genericTypeArgsOf(f); len(targs) != 0 {
		fn.SetGenericTypeArgs(targs)
	}
	if sharedDeferFunc0Eligible(f) {
		fn.SetSharedDeferFunc0(true)
	}
	if needsOptNone(f) {
		fn.Inline(llssa.NoInline)
		fn.Inline(llssa.OptNone)
	}
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
			p.fn = fn
			p.goFn = f
			p.state = state // restore pkgState when compiling funcBody
			defer func() {
				p.fn = nil
				p.goFn = nil
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
			p.vblks = make(map[ssa.Value]llssa.BasicBlock)
			p.btails = make(map[*ssa.BasicBlock]llssa.BasicBlock)
			p.recvTuples = make(map[ssa.Value]*recvTupleState)
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
			b.EndBuild()
		})
		for _, af := range f.AnonFuncs {
			p.compileFuncDecl(pkg, af)
		}
	}
	return fn, nil, goFunc
}

func needsOptNone(f *ssa.Function) bool {
	origin := f
	if f.Origin() != nil {
		origin = f.Origin()
	}
	if origin.Pkg == nil || origin.Pkg.Pkg == nil {
		return false
	}
	return funcName(origin.Pkg.Pkg, origin, f.Origin() != nil) == "crypto/internal/fips140/drbg.Read"
}

func sharedDeferFunc0Eligible(root *ssa.Function) bool {
	hasForeign := false
	eligible := true
	var walk func(fn *ssa.Function)
	walk = func(fn *ssa.Function) {
		if !eligible || fn == nil || fn.Blocks == nil {
			return
		}
		for _, blk := range fn.Blocks {
			for _, instr := range blk.Instrs {
				d, ok := instr.(*ssa.Defer)
				if !ok {
					continue
				}
				if !isSharedDeferFunc0Site(d) {
					eligible = false
					return
				}
				if _, ok := foreignDeferStackValue(d); ok {
					hasForeign = true
				}
			}
		}
		for _, af := range fn.AnonFuncs {
			walk(af)
		}
	}
	walk(root)
	return eligible && hasForeign
}

func isSharedDeferFunc0Site(d *ssa.Defer) bool {
	if d == nil || d.Call.Method != nil || len(d.Call.Args) != 0 {
		return false
	}
	sig := d.Call.Signature()
	if sig == nil || sig.Params().Len() != 0 || sig.Results().Len() != 0 {
		return false
	}
	fn, ok := d.Call.Value.(*ssa.Function)
	return ok && fn.Parent() != nil
}

func foreignDeferStackValue(d *ssa.Defer) (ssa.Value, bool) {
	if d == nil {
		return nil, false
	}
	ops := d.Operands(nil)
	if len(ops) == 0 || ops[len(ops)-1] == nil {
		return nil, false
	}
	stack := *ops[len(ops)-1]
	u, ok := stack.(*ssa.UnOp)
	if !ok {
		return nil, false
	}
	fv, ok := u.X.(*ssa.FreeVar)
	if !ok || fv.Name() != "defer$stack" {
		return nil, false
	}
	return stack, true
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
	p.clearExpiredRecvTuples(b, block)
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
		if iv, ok := instr.(instrOrValue); ok && canDeferValueInstr(iv) {
			continue
		}
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
	p.btails[block] = b.Block()
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

type paramEscapeKey struct {
	fn  *ssa.Function
	idx int
}

func (p *context) canPromoteHeapAllocToStack(v *ssa.Alloc) bool {
	if !v.Heap || v.Comment == "varargs" || v.Comment == "makeslice" {
		return false
	}
	return p.valueDoesNotEscape(v, map[ssa.Value]bool{}, map[paramEscapeKey]bool{})
}

func (p *context) valueDoesNotEscape(v ssa.Value, seen map[ssa.Value]bool, params map[paramEscapeKey]bool) bool {
	if seen[v] {
		return true
	}
	seen[v] = true
	refs := v.Referrers()
	if refs == nil {
		return true
	}
	for _, ref := range *refs {
		switch ref := ref.(type) {
		case *ssa.DebugRef:
			continue
		case *ssa.FieldAddr:
			if !p.valueDoesNotEscape(ref, seen, params) {
				return false
			}
		case *ssa.IndexAddr:
			if !p.valueDoesNotEscape(ref, seen, params) {
				return false
			}
		case *ssa.ChangeType:
			if !p.valueDoesNotEscape(ref, seen, params) {
				return false
			}
		case *ssa.Convert:
			if !p.valueDoesNotEscape(ref, seen, params) {
				return false
			}
		case *ssa.Phi:
			if !p.valueDoesNotEscape(ref, seen, params) {
				return false
			}
		case *ssa.MakeInterface:
			if !p.valueDoesNotEscape(ref, seen, params) {
				return false
			}
		case *ssa.Store:
			if ref.Addr == v {
				continue
			}
			return false
		case *ssa.UnOp:
			if ref.Op == token.MUL {
				continue
			}
			return false
		case *ssa.Call:
			if !p.callArgDoesNotEscape(&ref.Call, v, params) {
				return false
			}
		case *ssa.Defer:
			if !p.callArgDoesNotEscape(&ref.Call, v, params) {
				return false
			}
		case *ssa.Go:
			return false
		case *ssa.Return, *ssa.MapUpdate, *ssa.Send, *ssa.Range:
			return false
		default:
			return false
		}
	}
	return true
}

func (p *context) callArgDoesNotEscape(call *ssa.CallCommon, arg ssa.Value, params map[paramEscapeKey]bool) bool {
	if call == nil || call.IsInvoke() {
		return false
	}
	var fn *ssa.Function
	switch v := call.Value.(type) {
	case *ssa.Function:
		fn = v
	default:
		return false
	}
	if isKeepAliveFunc(fn) {
		return true
	}
	if fn.Blocks == nil {
		return false
	}
	for i, actual := range call.Args {
		if actual != arg {
			continue
		}
		if !p.paramDoesNotEscape(fn, i, params) {
			return false
		}
	}
	return true
}

func (p *context) paramDoesNotEscape(fn *ssa.Function, idx int, params map[paramEscapeKey]bool) bool {
	if fn == nil || idx < 0 || idx >= len(fn.Params) {
		return false
	}
	key := paramEscapeKey{fn: fn, idx: idx}
	if params[key] {
		return true
	}
	params[key] = true
	return p.valueDoesNotEscape(fn.Params[idx], map[ssa.Value]bool{}, params)
}

func isKeepAliveFunc(fn *ssa.Function) bool {
	if fn == nil || fn.Pkg == nil || fn.Pkg.Pkg == nil || fn.Name() != "KeepAlive" {
		return false
	}
	switch fn.Pkg.Pkg.Path() {
	case "runtime", "github.com/goplus/llgo/runtime/internal/lib/runtime":
		return true
	default:
		return false
	}
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

func canDeferValueInstr(iv instrOrValue) bool {
	switch v := iv.(type) {
	case *ssa.Extract:
		_, ok := singleRef(v)
		return ok
	default:
		return false
	}
}

func canLowerLazyRecvTuple(v *ssa.UnOp) bool {
	if v == nil || v.Op != token.ARROW || !v.CommaOk {
		return false
	}
	refs := v.Referrers()
	if refs == nil {
		return false
	}
	hasValueExtract := false
	for _, ref := range *refs {
		switch ex := ref.(type) {
		case *ssa.DebugRef:
			continue
		case *ssa.Extract:
			if ex.Index == 0 {
				hasValueExtract = true
			}
			continue
		default:
			return false
		}
	}
	if hasValueExtract && recvValueUseBlock(v) == nil {
		return false
	}
	return true
}

func recvValueUseBlock(v *ssa.UnOp) *ssa.BasicBlock {
	if v == nil {
		return nil
	}
	refs := v.Referrers()
	if refs == nil {
		return nil
	}
	var useBlk *ssa.BasicBlock
	for _, ref := range *refs {
		ex, ok := ref.(*ssa.Extract)
		if !ok || ex.Index != 0 {
			continue
		}
		use, ok := singleRef(ex)
		if !ok {
			return nil
		}
		blk := use.Block()
		if blk == nil {
			return nil
		}
		if useBlk == nil {
			useBlk = blk
			continue
		}
		if useBlk != blk {
			return nil
		}
	}
	return useBlk
}

func dominatesBlock(dom, blk *ssa.BasicBlock) bool {
	if dom == nil || blk == nil || dom.Parent() != blk.Parent() {
		return false
	}
	if dom == blk {
		return true
	}
	entry := dom.Parent().Blocks[0]
	return !canReachBlockWithout(entry, blk, dom)
}

func canReachBlockWithout(from, to, avoid *ssa.BasicBlock) bool {
	if from == nil || to == nil {
		return false
	}
	if from == avoid {
		return false
	}
	seen := map[*ssa.BasicBlock]bool{}
	var walk func(*ssa.BasicBlock) bool
	walk = func(cur *ssa.BasicBlock) bool {
		if cur == nil || cur == avoid || seen[cur] {
			return false
		}
		if cur == to {
			return true
		}
		seen[cur] = true
		for _, succ := range cur.Succs {
			if walk(succ) {
				return true
			}
		}
		return false
	}
	return walk(from)
}

func (p *context) clearExpiredRecvTuples(b llssa.Builder, blk *ssa.BasicBlock) {
	for _, state := range p.recvTuples {
		if state == nil || state.ptr.Type == nil {
			continue
		}
		if blk == nil || state.recvBlock == nil || state.useBlock == nil {
			continue
		}
		if blk == state.recvBlock || blk == state.useBlock {
			continue
		}
		if !dominatesBlock(state.recvBlock, blk) {
			continue
		}
		if canReachBlockWithout(blk, state.useBlock, state.recvBlock) {
			continue
		}
		b.ClearRecvTemp(state.ptr)
	}
}

func isSendInstr(instr ssa.Instruction) bool {
	_, ok := instr.(*ssa.Send)
	return ok
}

func (p *context) compileSingleUseMakeSliceSend(b llssa.Builder, ch llssa.Expr, v ssa.Value) bool {
	ref, ok := singleRef(v)
	if !ok {
		return false
	}
	if !isSendInstr(ref) {
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
		phi.AddIncomingEx(b, makePhiPredBlocks(p, preds), func(i int, blk llssa.BasicBlock) (llssa.Expr, llssa.BasicBlock) {
			edge := v.Edges[i]
			b.SetBlockEx(blk, llssa.BeforeLast, false)
			val := p.compileValue(b, edge)
			if tail, ok := p.btails[preds[i]]; ok && tail != nil {
				return val, tail
			}
			if usesSplitPhiIncoming(edge) {
				if edgeBlk, ok := p.vblks[edge]; ok && edgeBlk != nil {
					return val, edgeBlk
				}
			}
			return val, blk
		})
	})
	return
}

func makePhiPredBlocks(p *context, preds []*ssa.BasicBlock) []llssa.BasicBlock {
	ret := make([]llssa.BasicBlock, len(preds))
	for i, pred := range preds {
		ret[i] = p.fn.Block(pred.Index)
	}
	return ret
}

func usesSplitPhiIncoming(edge ssa.Value) bool {
	switch v := edge.(type) {
	case *ssa.TypeAssert:
		return true
	case *ssa.Call:
		return v.Call.IsInvoke()
	default:
		return false
	}
}

func (p *context) compileInstrOrValue(b llssa.Builder, iv instrOrValue, asValue bool) (ret llssa.Expr) {
	if asValue {
		if v, ok := p.bvals[iv]; ok {
			return v
		}
		if canDeferValueInstr(iv) {
			return p.compileInstrOrValue(b, iv, false)
		}
		fn := "<nil>"
		if p.goFn != nil {
			fn = p.goFn.String()
		}
		log.Panicf("unreachable: %T %v in %s", iv, iv, fn)
	}
	switch v := iv.(type) {
	case *ssa.Call:
		ret = p.call(b, llssa.Call, &v.Call)
	case *ssa.BinOp:
		if xConst, ok := v.X.(*ssa.Const); ok && xConst.Value == nil {
			if yConst, ok := v.Y.(*ssa.Const); ok && yConst.Value == nil {
				switch v.Op {
				case token.EQL:
					ret = p.prog.BoolVal(true)
					break
				case token.NEQ:
					ret = p.prog.BoolVal(false)
					break
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
		if v.Op == token.MUL {
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
			if refs := v.Referrers(); refs != nil {
				if len(*refs) == 1 {
					if mi, ok := (*refs)[0].(*ssa.MakeInterface); ok && p.canSkipMakeInterfaceLoad(mi) {
						return
					}
				}
			}
		}
		x := p.compileValue(b, v.X)
		if v.Op == token.ARROW {
			if canLowerLazyRecvTuple(v) {
				ptr, ok := b.RecvToTemp(x)
				p.recvTuples[v] = &recvTupleState{
					ptr:       ptr,
					ok:        ok,
					recvBlock: v.Block(),
					useBlock:  recvValueUseBlock(v),
				}
				ret = p.prog.Zero(p.type_(v.Type(), llssa.InGo))
			} else {
				ret = b.Recv(x, v.CommaOk)
			}
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
		ret = b.Alloc(elem, v.Heap && !p.canPromoteHeapAllocToStack(v))
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
			return
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
		ret.Type = b.Prog.Type(v.Type(), llssa.InGo)
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
			case *ssa.TypeAssert:
				if types.Identical(v.X.Type(), ref.AssertedType) {
					return
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
		if ref, ok := singleRef(v); ok {
			if isSendInstr(ref) {
				return
			}
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
		if mi, ok := v.X.(*ssa.MakeInterface); ok && types.Identical(mi.X.Type(), v.AssertedType) {
			val := p.compileValue(b, mi.X)
			if v.CommaOk {
				t := p.type_(v.AssertedType, llssa.InGo)
				ret = b.Aggregate(p.prog.Struct(t, p.prog.Bool()), val, p.prog.BoolVal(true))
			} else {
				ret = val
			}
			break
		}
		x := p.compileValue(b, v.X)
		t := p.type_(v.AssertedType, llssa.InGo)
		ret = b.TypeAssert(x, t, v.CommaOk)
	case *ssa.Extract:
		if recv, ok := p.recvTuples[v.Tuple]; ok {
			if v.Index == 0 {
				ret = b.RecvFromTemp(recv.ptr)
			} else {
				ret = recv.ok
			}
			break
		}
		x := p.compileValue(b, v.Tuple)
		ret = b.Extract(x, v.Index)
	case *ssa.Range:
		x := p.compileValue(b, v.X)
		ret = b.Range(x)
	case *ssa.Next:
		var srcTyp llssa.Type
		var keyTyp, valTyp llssa.Type
		if !v.IsString {
			srcTyp = p.type_(v.Iter.(*ssa.Range).X.Type(), llssa.InGo)
			styp := v.Iter.(*ssa.Range).X.Type().Underlying().(*types.Map)
			keyTyp = p.prog.Type(styp.Key(), llssa.InGo)
			valTyp = p.prog.Type(styp.Elem(), llssa.InGo)
			ttyp := v.Type().(*types.Tuple)
			if _, ok := ttyp.At(1).Type().Underlying().(*types.Interface); ok {
				keyTyp = p.prog.Type(ttyp.At(1).Type().Underlying(), llssa.InGo)
			}
			if _, ok := ttyp.At(2).Type().Underlying().(*types.Interface); ok {
				valTyp = p.prog.Type(ttyp.At(2).Type().Underlying(), llssa.InGo)
			}
		}
		iter := p.compileValue(b, v.Iter)
		ret = b.Next(srcTyp, keyTyp, valTyp, iter, v.IsString)
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
	if usesSplitPhiIncoming(iv) {
		p.vblks[iv] = b.Block()
	}
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
		if isBlankFieldStore(va) {
			return
		}
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
		if p.needImplicitRunDefers(v) {
			b.RunDefers()
		}
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
	case *ssa.Defer:
		if p.compileSharedDeferFunc0(b, v) {
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

func (p *context) needImplicitRunDefers(ret *ssa.Return) bool {
	fn := ret.Parent()
	if fn == nil || fn.Synthetic != "range-over-func yield" || !functionHasDefer(fn) {
		return false
	}
	for _, instr := range ret.Block().Instrs {
		if instr == ret {
			break
		}
		if _, ok := instr.(*ssa.RunDefers); ok {
			return false
		}
	}
	return true
}

func (p *context) compileSharedDeferFunc0(b llssa.Builder, v *ssa.Defer) bool {
	if !isSharedDeferFunc0Site(v) {
		return false
	}
	stack, ok := foreignDeferStackValue(v)
	if !ok {
		return false
	}
	cur := v.Parent()
	if cur == nil || cur.Parent() == nil {
		return false
	}
	outer, _, kind := p.compileFunction(cur.Parent())
	if kind != goFunc || outer == nil || !outer.SharedDeferFunc0() {
		return false
	}
	fn := p.compileValue(b, v.Call.Value)
	target := p.compileValue(b, stack)
	b.PushSharedDeferFunc0(target, fn)
	return true
}

func functionHasDefer(fn *ssa.Function) bool {
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			if _, ok := instr.(*ssa.Defer); ok {
				return true
			}
		}
	}
	return false
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

func isUntypedNil(t types.Type) bool {
	basic, ok := types.Unalias(t).(*types.Basic)
	return ok && basic.Kind() == types.UntypedNil
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
			if !isCgoVar(member.Name()) {
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
	case *types.Named:
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
