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
	prog               llssa.Program
	pkg                llssa.Package
	fn                 llssa.Function
	goFn               *ssa.Function
	fset               *token.FileSet
	goProg             *ssa.Program
	goTyps             *types.Package
	goPkg              *ssa.Package
	pyMod              string
	skips              map[string]none
	loaded             map[*types.Package]*pkgInfo // loaded packages
	bvals              map[ssa.Value]llssa.Expr    // block values
	vblks              map[ssa.Value]llssa.BasicBlock
	btails             map[*ssa.BasicBlock]llssa.BasicBlock
	vargs              map[*ssa.Alloc][]llssa.Expr // varargs
	recvTuples         map[ssa.Value]*recvTupleState
	stackClears        map[ssa.Instruction][]*ssa.Alloc
	stackEntryClears   map[*ssa.BasicBlock][]*ssa.Alloc
	hiddenPtrAllocs    map[*ssa.Alloc]bool
	paramClears        map[ssa.Instruction][]int
	paramValueClears   map[ssa.Instruction][]int
	paramSpillClobbers map[ssa.Instruction]bool
	valuePreClears     map[ssa.Instruction][]ssa.Value
	valuePostClears    map[ssa.Instruction][]ssa.Value
	valueSlots         map[ssa.Value]llssa.Expr
	valueRootSlots     map[ssa.Value]llssa.Expr
	hiddenValueSlots   map[ssa.Value]bool
	hiddenParamKeys    map[int]bool
	paramShadow        map[int]llssa.Expr
	paramSlots         map[int]llssa.Expr
	paramDIVars        map[*types.Var]llssa.DIVar

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

type staticCallSite struct {
	caller *ssa.Function
	call   *ssa.Call
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

type hiddenParamWrapperPlan struct {
	paramIdx   int
	hiddenSig  *types.Signature
	hiddenName string
}

type hiddenStaticCallShimPlan struct {
	paramIdx      int
	hiddenSig     *types.Signature
	hiddenName    string
	resultHidden  bool
	resultRawType types.Type
}

func isRuntimeMetadataPointer(t types.Type) bool {
	pt, ok := types.Unalias(t).Underlying().(*types.Pointer)
	if !ok || pt == nil {
		return false
	}
	named, ok := types.Unalias(pt.Elem()).(*types.Named)
	if !ok || named == nil || named.Obj() == nil || named.Obj().Pkg() == nil {
		return false
	}
	path := named.Obj().Pkg().Path()
	return path == "internal/abi" ||
		path == "internal/runtime/sys" ||
		strings.HasPrefix(path, "github.com/goplus/llgo/runtime/abi") ||
		strings.HasPrefix(path, "github.com/goplus/llgo/runtime/internal/runtime")
}

func shouldSkipHiddenPointerRewrite(fn *ssa.Function) bool {
	if fn == nil || fn.Pkg == nil || fn.Pkg.Pkg == nil {
		return false
	}
	switch fn.Pkg.Pkg.Path() {
	case "internal/reflectlite",
		"reflect",
		"github.com/goplus/llgo/runtime/internal/lib/internal/reflectlite",
		"github.com/goplus/llgo/runtime/internal/lib/reflect":
		switch fn.Name() {
		case "toType", "toRType", "TypeOf":
			return true
		}
	}
	return false
}

func isRuntimeSSAFunction(fn *ssa.Function) bool {
	if fn == nil || fn.Pkg == nil || fn.Pkg.Pkg == nil {
		return false
	}
	return isRuntimePackagePath(fn.Pkg.Pkg.Path())
}

func rewriteHiddenParamSignature(sig *types.Signature, hidden map[int]bool) *types.Signature {
	if sig == nil || len(hidden) == 0 {
		return sig
	}
	params := sig.Params()
	var recv *types.Var
	if sig.Recv() != nil {
		recv = types.NewParam(sig.Recv().Pos(), sig.Recv().Pkg(), sig.Recv().Name(), sig.Recv().Type())
	}
	newParams := make([]*types.Var, params.Len())
	for i := 0; i < params.Len(); i++ {
		param := params.At(i)
		typ := param.Type()
		if hidden[i] {
			typ = types.Typ[types.Uintptr]
		}
		newParams[i] = types.NewParam(param.Pos(), param.Pkg(), param.Name(), typ)
	}
	return types.NewSignatureType(recv, nil, nil, types.NewTuple(newParams...), sig.Results(), sig.Variadic())
}

func hiddenScalarStructField(t types.Type) (fieldIdx int, fieldType types.Type, ok bool) {
	st, ok := types.Unalias(t).Underlying().(*types.Struct)
	if !ok || st == nil || st.NumFields() != 1 {
		return 0, nil, false
	}
	fieldType = st.Field(0).Type()
	if _, ok := types.Unalias(fieldType).Underlying().(*types.Pointer); !ok {
		return 0, nil, false
	}
	if isRuntimeMetadataPointer(fieldType) || containsInstantiatedNamedType(fieldType, map[types.Type]bool{}) {
		return 0, nil, false
	}
	return 0, fieldType, true
}

func canUseHiddenScalarParamType(t types.Type) bool {
	if t == nil {
		return false
	}
	if _, ok := types.Unalias(t).Underlying().(*types.Pointer); ok {
		return !isRuntimeMetadataPointer(t) && !containsInstantiatedNamedType(t, map[types.Type]bool{})
	}
	_, _, ok := hiddenScalarStructField(t)
	return ok
}

func rewriteHiddenStaticCallSignature(sig *types.Signature, hiddenParamIdx int) *types.Signature {
	if sig == nil || hiddenParamIdx < 0 {
		return sig
	}
	params := sig.Params()
	newParams := make([]*types.Var, 0, params.Len()+1)
	if recv := sig.Recv(); recv != nil {
		typ := recv.Type()
		if hiddenParamIdx == 0 {
			typ = types.Typ[types.Uintptr]
		}
		newParams = append(newParams, types.NewParam(recv.Pos(), recv.Pkg(), recv.Name(), typ))
	}
	base := len(newParams)
	for i := 0; i < params.Len(); i++ {
		param := params.At(i)
		typ := param.Type()
		if hiddenParamIdx == i+base {
			typ = types.Typ[types.Uintptr]
		}
		newParams = append(newParams, types.NewParam(param.Pos(), param.Pkg(), param.Name(), typ))
	}
	return types.NewSignatureType(nil, nil, nil, types.NewTuple(newParams...), sig.Results(), sig.Variadic())
}

func rewriteHiddenPointerResultSignature(sig *types.Signature) (*types.Signature, types.Type, bool) {
	if sig == nil || sig.Results().Len() != 1 {
		return sig, nil, false
	}
	result := sig.Results().At(0)
	typ := result.Type()
	if _, ok := types.Unalias(typ).Underlying().(*types.Pointer); !ok {
		return sig, nil, false
	}
	if isRuntimeMetadataPointer(typ) || containsInstantiatedNamedType(typ, map[types.Type]bool{}) {
		return sig, nil, false
	}
	var recv *types.Var
	if sig.Recv() != nil {
		recv = types.NewParam(sig.Recv().Pos(), sig.Recv().Pkg(), sig.Recv().Name(), sig.Recv().Type())
	}
	params := make([]*types.Var, sig.Params().Len())
	for i := 0; i < sig.Params().Len(); i++ {
		param := sig.Params().At(i)
		params[i] = types.NewParam(param.Pos(), param.Pkg(), param.Name(), param.Type())
	}
	results := types.NewTuple(types.NewParam(result.Pos(), result.Pkg(), result.Name(), types.Typ[types.Uintptr]))
	return types.NewSignatureType(recv, nil, nil, types.NewTuple(params...), results, sig.Variadic()), typ, true
}

func hasSelfCall(fn *ssa.Function) bool {
	if fn == nil {
		return false
	}
	for _, blk := range fn.Blocks {
		for _, instr := range blk.Instrs {
			switch instr := instr.(type) {
			case *ssa.Call:
				if callee, ok := instr.Call.Value.(*ssa.Function); ok && callee == fn {
					return true
				}
			case *ssa.Defer:
				if callee, ok := instr.Call.Value.(*ssa.Function); ok && callee == fn {
					return true
				}
			case *ssa.Go:
				if callee, ok := instr.Call.Value.(*ssa.Function); ok && callee == fn {
					return true
				}
			}
		}
	}
	return false
}

func (p *context) hiddenParamWrapperPlanFor(name string, f *ssa.Function) *hiddenParamWrapperPlan {
	if f == nil || f.Parent() != nil || f.Synthetic != "" || len(f.FreeVars) != 0 || hasSelfCall(f) {
		return nil
	}
	if shouldSkipHiddenPointerRewrite(f) {
		return nil
	}
	if len(f.Blocks) == 0 {
		return nil
	}
	if f.Signature == nil || f.Signature.Recv() != nil || f.Signature.Variadic() {
		return nil
	}
	if isCgoExternSymbol(f) {
		return nil
	}
	obj, ok := f.Object().(*types.Func)
	if !ok || obj.Exported() {
		return nil
	}
	ptrIdx := -1
	for i, param := range f.Params {
		if canUseHiddenScalarParamType(param.Type()) {
			if ptrIdx >= 0 {
				return nil
			}
			ptrIdx = i
		}
	}
	if ptrIdx < 0 {
		return nil
	}
	callsites, ok := p.staticPointerParamCallsites(f)
	if !ok || len(callsites) == 0 {
		return nil
	}
	patchedSig := p.patchType(f.Signature).(*types.Signature)
	if !functionHasDefer(f) {
		if _, _, resultHidden := rewriteHiddenPointerResultSignature(patchedSig); resultHidden {
			return nil
		}
	}
	hidden := map[int]bool{ptrIdx: true}
	return &hiddenParamWrapperPlan{
		paramIdx:   ptrIdx,
		hiddenSig:  rewriteHiddenParamSignature(patchedSig, hidden),
		hiddenName: name + "$hiddenparam",
	}
}

func (p *context) hiddenStaticCallShimPlanFor(name string, f *ssa.Function) *hiddenStaticCallShimPlan {
	if f == nil || f.Parent() != nil || f.Synthetic != "" || len(f.FreeVars) != 0 || hasSelfCall(f) {
		return nil
	}
	if shouldSkipHiddenPointerRewrite(f) {
		return nil
	}
	if len(f.Blocks) == 0 {
		return nil
	}
	if f.Signature == nil || f.Signature.Variadic() {
		return nil
	}
	if functionHasDefer(f) || isCgoExternSymbol(f) {
		return nil
	}
	obj, ok := f.Object().(*types.Func)
	if !ok || obj.Exported() {
		return nil
	}
	ptrIdx := -1
	for i, param := range f.Params {
		if canUseHiddenScalarParamType(param.Type()) {
			if ptrIdx >= 0 {
				return nil
			}
			ptrIdx = i
		}
	}
	if ptrIdx < 0 {
		return nil
	}
	callsites, ok := p.staticPointerParamCallsites(f)
	if !ok || len(callsites) == 0 {
		return nil
	}
	hiddenSig := rewriteHiddenStaticCallSignature(p.patchType(f.Signature).(*types.Signature), ptrIdx)
	hiddenSig, resultRawType, resultHidden := rewriteHiddenPointerResultSignature(hiddenSig)
	return &hiddenStaticCallShimPlan{
		paramIdx:      ptrIdx,
		hiddenSig:     hiddenSig,
		hiddenName:    name + "$hiddencall",
		resultHidden:  resultHidden,
		resultRawType: resultRawType,
	}
}

func (p *context) enqueueCompileFuncBody(fn llssa.Function, f *ssa.Function, state pkgState, dbgEnabled, dbgSymsEnabled, isCgo bool, hiddenParamKeys map[int]bool) {
	p.inits = append(p.inits, func() {
		p.fn = fn
		p.goFn = f
		p.state = state
		p.hiddenParamKeys = hiddenParamKeys
		defer func() {
			p.fn = nil
			p.goFn = nil
			p.hiddenParamKeys = nil
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
			log.Println("==> FuncBody", fn.Name())
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
		p.stackClears = p.collectStackClearPlans(f)
		p.stackEntryClears = p.collectBranchStackClearPlans(f)
		p.hiddenPtrAllocs = p.collectHiddenPointerAllocs(f)
		p.paramClears = p.collectParamClearPlans(f)
		p.paramValueClears = p.collectParamValueClearPlans(f)
		p.paramSpillClobbers = p.collectParamSpillClobberPlans(f)
		p.valuePreClears, p.valuePostClears = p.collectPointerValueClearPlans(f)
		p.valueSlots = make(map[ssa.Value]llssa.Expr)
		p.valueRootSlots = make(map[ssa.Value]llssa.Expr)
		p.hiddenValueSlots = p.collectHiddenPointerValueSlots()
		if isRuntimeSSAFunction(f) {
			// Runtime metadata helpers such as findMethod/NewItab are extremely
			// sensitive to aggregate value lowering. Keep runtime internals on the
			// conservative path until the hidden-value pipeline is proven there.
			p.hiddenValueSlots = nil
		}
		p.paramShadow = make(map[int]llssa.Expr)
		p.paramSlots = make(map[int]llssa.Expr)
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
			doModInit := (i == 1 && f.Name() == "init" && f.Signature.Recv() == nil)
			p.compileBlock(b, block, off[i], doModInit)
			if isCgo {
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
}

func (p *context) enqueueHiddenParamWrapper(fn, hiddenFn llssa.Function, f *ssa.Function, hiddenParamKeys map[int]bool, dbgEnabled bool) {
	p.inits = append(p.inits, func() {
		b := fn.NewBuilder()
		if dbgEnabled {
			pos := p.goProg.Fset.Position(f.Pos())
			bodyPos := p.getFuncBodyPos(f)
			b.DebugFunction(fn, pos, bodyPos)
		}
		entry := fn.Block(0)
		b.SetBlock(entry)
		args := make([]llssa.Expr, len(f.Params))
		for i := range f.Params {
			arg := b.Param(i)
			if hiddenParamKeys[i] {
				arg = p.encodeHiddenStoredValue(b, arg, f.Params[i].Type())
			}
			args[i] = arg
		}
		call := b.Call(hiddenFn.Expr, args...)
		switch n := f.Signature.Results().Len(); n {
		case 0:
			b.Return()
		case 1:
			b.Return(call)
		default:
			results := make([]llssa.Expr, n)
			for i := 0; i < n; i++ {
				results[i] = b.Extract(call, i)
			}
			b.Return(results...)
		}
		b.EndBuild()
	})
}

func (p *context) enqueueHiddenStaticCallShim(fn, targetFn llssa.Function, f *ssa.Function, hiddenParamIdx int, resultHidden bool, dbgEnabled bool) {
	p.inits = append(p.inits, func() {
		b := fn.NewBuilder()
		if dbgEnabled {
			pos := p.goProg.Fset.Position(f.Pos())
			bodyPos := p.getFuncBodyPos(f)
			b.DebugFunction(fn, pos, bodyPos)
		}
		entry := fn.Block(0)
		b.SetBlock(entry)
		args := make([]llssa.Expr, len(f.Params))
		for i, param := range f.Params {
			arg := b.Param(i)
			if i == hiddenParamIdx {
				arg = p.decodeHiddenStoredValue(b, arg, param.Type())
			}
			args[i] = arg
		}
		call := b.Call(targetFn.Expr, args...)
		switch n := f.Signature.Results().Len(); n {
		case 0:
			b.Return()
		case 1:
			if resultHidden {
				b.Return(p.hiddenPointerKey(b, call))
				break
			}
			b.Return(call)
		default:
			results := make([]llssa.Expr, n)
			for i := 0; i < n; i++ {
				results[i] = b.Extract(call, i)
			}
			b.Return(results...)
		}
		b.EndBuild()
	})
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
	isCgo := isCgoExternSymbol(f)
	var hiddenPlan *hiddenParamWrapperPlan
	var hiddenShimPlan *hiddenStaticCallShimPlan
	var bodyFn llssa.Function
	var hiddenShimFn llssa.Function
	var hiddenParamKeys map[int]bool
	bodyFn = fn
	if !hasCtx && !isCgo {
		hiddenPlan = p.hiddenParamWrapperPlanFor(name, f)
		if hiddenPlan != nil {
			hiddenParamKeys = map[int]bool{hiddenPlan.paramIdx: true}
			bodyFn = pkg.FuncOf(hiddenPlan.hiddenName)
			if bodyFn == nil {
				bodyFn = pkg.NewFuncEx(hiddenPlan.hiddenName, hiddenPlan.hiddenSig, llssa.Background(ftype), false, isInstance(f))
				bodyFn.SetGenericTypeArgs(genericTypeArgsOf(f))
			} else if targs := genericTypeArgsOf(f); len(targs) != 0 {
				bodyFn.SetGenericTypeArgs(targs)
			}
			bodyFn.Inline(llssa.NoInline)
		} else {
			hiddenShimPlan = p.hiddenStaticCallShimPlanFor(name, f)
			if hiddenShimPlan != nil {
				hiddenShimFn = pkg.FuncOf(hiddenShimPlan.hiddenName)
				if hiddenShimFn == nil {
					hiddenShimFn = pkg.NewFuncEx(hiddenShimPlan.hiddenName, hiddenShimPlan.hiddenSig, llssa.Background(ftype), false, isInstance(f))
					hiddenShimFn.SetGenericTypeArgs(genericTypeArgsOf(f))
				} else if targs := genericTypeArgsOf(f); len(targs) != 0 {
					hiddenShimFn.SetGenericTypeArgs(targs)
				}
				hiddenShimFn.Inline(llssa.NoInline)
			}
		}
	}
	if sharedDeferFunc0Eligible(f) {
		bodyFn.SetSharedDeferFunc0(true)
	}
	if needsOptNone(f) {
		bodyFn.Inline(llssa.NoInline)
		bodyFn.Inline(llssa.OptNone)
		if hiddenPlan != nil {
			fn.Inline(llssa.NoInline)
			fn.Inline(llssa.OptNone)
		}
	}
	if nblk := len(f.Blocks); nblk > 0 {
		p.cgoCalled = false
		p.cgoArgs = nil
		p.cgoErrno = llssa.Nil
		if isCgo {
			fn.MakeBlocks(1)
		} else if hiddenPlan != nil {
			fn.MakeBlocks(1)
			bodyFn.MakeBlocks(nblk) // to set bodyFn.HasBody() = true
		} else {
			fn.MakeBlocks(nblk) // to set fn.HasBody() = true
			if hiddenShimPlan != nil {
				hiddenShimFn.MakeBlocks(1)
			}
		}
		if f.Recover != nil { // set recover block
			bodyFn.SetRecover(bodyFn.Block(f.Recover.Index))
		}
		dbgEnabled := enableDbg && (f == nil || f.Origin() == nil)
		dbgSymsEnabled := enableDbgSyms && (f == nil || f.Origin() == nil)
		if hiddenPlan != nil {
			p.enqueueHiddenParamWrapper(fn, bodyFn, f, hiddenParamKeys, dbgEnabled)
		}
		p.enqueueCompileFuncBody(bodyFn, f, state, dbgEnabled, dbgSymsEnabled, isCgo, hiddenParamKeys)
		if hiddenShimPlan != nil {
			p.enqueueHiddenStaticCallShim(hiddenShimFn, fn, f, hiddenShimPlan.paramIdx, hiddenShimPlan.resultHidden, dbgEnabled)
		}
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
	p.clearEntryStackAllocs(b, block)
	if block.Index == 0 {
		p.initValueSlots(b, block.Parent())
		p.initParamSlots(b, block.Parent())
		p.initKeepAliveParamShadows(b, block.Parent())
	}
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
		if p.paramSpillClobbers[instr] {
			p.clobberPointerRegs(b)
		}
		p.clearDeadStackAllocs(b, instr)
		p.clearDeadParams(b, instr)
		p.clearDeadParamValues(b, instr)
		p.clearDeadPointerValues(b, instr)
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

func isSetFinalizerFunc(fn *ssa.Function) bool {
	if fn == nil || fn.Pkg == nil || fn.Pkg.Pkg == nil || fn.Name() != "SetFinalizer" {
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

func isPointerKeepAliveCall(fn *ssa.Function, arg ssa.Value) bool {
	if !isKeepAliveFunc(fn) {
		return false
	}
	if mi, ok := arg.(*ssa.MakeInterface); ok {
		arg = mi.X
	}
	_, ok := arg.Type().Underlying().(*types.Pointer)
	return ok
}

func canSkipKeepAliveMakeInterface(v *ssa.MakeInterface) bool {
	refs := v.Referrers()
	if refs == nil || len(*refs) != 1 {
		return false
	}
	call, ok := (*refs)[0].(*ssa.Call)
	if !ok {
		return false
	}
	fn, ok := call.Call.Value.(*ssa.Function)
	if !ok {
		return false
	}
	return len(call.Call.Args) == 1 && call.Call.Args[0] == v && isPointerKeepAliveCall(fn, v)
}

func canSkipSetFinalizerObjectMakeInterface(v *ssa.MakeInterface) bool {
	refs := v.Referrers()
	if refs == nil || len(*refs) != 1 {
		return false
	}
	call, ok := (*refs)[0].(*ssa.Call)
	if !ok {
		return false
	}
	fn, ok := call.Call.Value.(*ssa.Function)
	if !ok || !isSetFinalizerFunc(fn) {
		return false
	}
	if len(call.Call.Args) != 2 || call.Call.Args[0] != v {
		return false
	}
	_, ok = v.X.Type().Underlying().(*types.Pointer)
	return ok
}

func isKeepAliveOnlyPointerParam(param *ssa.Parameter) bool {
	refs := param.Referrers()
	if refs == nil || len(*refs) != 1 {
		return false
	}
	switch ref := (*refs)[0].(type) {
	case *ssa.MakeInterface:
		return ref.X == param && canSkipKeepAliveMakeInterface(ref)
	case *ssa.Call:
		fn, ok := ref.Call.Value.(*ssa.Function)
		if !ok {
			return false
		}
		return len(ref.Call.Args) == 1 && ref.Call.Args[0] == param && isPointerKeepAliveCall(fn, param)
	default:
		return false
	}
}

func containsInstantiatedNamedType(t types.Type, seen map[types.Type]bool) bool {
	if t == nil {
		return false
	}
	if seen[t] {
		return false
	}
	seen[t] = true
	switch tt := t.(type) {
	case *types.Named:
		if args := tt.TypeArgs(); args != nil && args.Len() != 0 {
			return true
		}
		return containsInstantiatedNamedType(tt.Underlying(), seen)
	case *types.Pointer:
		return containsInstantiatedNamedType(tt.Elem(), seen)
	case *types.Slice:
		return containsInstantiatedNamedType(tt.Elem(), seen)
	case *types.Array:
		return containsInstantiatedNamedType(tt.Elem(), seen)
	case *types.Chan:
		return containsInstantiatedNamedType(tt.Elem(), seen)
	case *types.Map:
		return containsInstantiatedNamedType(tt.Key(), seen) || containsInstantiatedNamedType(tt.Elem(), seen)
	case *types.Struct:
		for i := 0; i < tt.NumFields(); i++ {
			if containsInstantiatedNamedType(tt.Field(i).Type(), seen) {
				return true
			}
		}
	case *types.Tuple:
		for i := 0; i < tt.Len(); i++ {
			if containsInstantiatedNamedType(tt.At(i).Type(), seen) {
				return true
			}
		}
	}
	return false
}

func hasConservativeGCPointers(t types.Type, seen map[types.Type]bool) bool {
	if t == nil {
		return false
	}
	if seen[t] {
		return false
	}
	seen[t] = true
	switch tt := types.Unalias(t).(type) {
	case *types.Named:
		return hasConservativeGCPointers(tt.Underlying(), seen)
	case *types.Tuple:
		for i := 0; i < tt.Len(); i++ {
			if hasConservativeGCPointers(tt.At(i).Type(), seen) {
				return true
			}
		}
		return false
	case *types.Basic:
		switch tt.Kind() {
		case types.String, types.UnsafePointer:
			return true
		default:
			return false
		}
	case *types.Pointer, *types.Signature, *types.Chan, *types.Map, *types.Interface, *types.Slice:
		return true
	case *types.Array:
		return tt.Len() != 0 && hasConservativeGCPointers(tt.Elem(), seen)
	case *types.Struct:
		for i := 0; i < tt.NumFields(); i++ {
			if hasConservativeGCPointers(tt.Field(i).Type(), seen) {
				return true
			}
		}
		return false
	default:
		return false
	}
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

func (p *context) singleUseBlock(v ssa.Value, seen map[ssa.Value]bool) (*ssa.BasicBlock, bool) {
	if v == nil || seen[v] {
		return nil, true
	}
	seen[v] = true
	refs := v.Referrers()
	if refs == nil {
		return nil, true
	}
	var blk *ssa.BasicBlock
	setBlock := func(refBlk *ssa.BasicBlock) bool {
		if refBlk == nil {
			return false
		}
		if blk == nil {
			blk = refBlk
			return true
		}
		return blk == refBlk
	}
	for _, ref := range *refs {
		switch ref := ref.(type) {
		case *ssa.DebugRef:
			continue
		case *ssa.Field:
			refBlk, ok := p.singleUseBlock(ref, seen)
			if !ok || (refBlk != nil && !setBlock(refBlk)) {
				return nil, false
			}
		case *ssa.Index:
			refBlk, ok := p.singleUseBlock(ref, seen)
			if !ok || (refBlk != nil && !setBlock(refBlk)) {
				return nil, false
			}
		case *ssa.Extract:
			refBlk, ok := p.singleUseBlock(ref, seen)
			if !ok || (refBlk != nil && !setBlock(refBlk)) {
				return nil, false
			}
		case *ssa.FieldAddr:
			refBlk, ok := p.singleUseBlock(ref, seen)
			if !ok || (refBlk != nil && !setBlock(refBlk)) {
				return nil, false
			}
		case *ssa.IndexAddr:
			refBlk, ok := p.singleUseBlock(ref, seen)
			if !ok || (refBlk != nil && !setBlock(refBlk)) {
				return nil, false
			}
		case *ssa.ChangeType:
			refBlk, ok := p.singleUseBlock(ref, seen)
			if !ok || (refBlk != nil && !setBlock(refBlk)) {
				return nil, false
			}
		case *ssa.Convert:
			refBlk, ok := p.singleUseBlock(ref, seen)
			if !ok || (refBlk != nil && !setBlock(refBlk)) {
				return nil, false
			}
		case *ssa.MakeInterface:
			refBlk, ok := p.singleUseBlock(ref, seen)
			if !ok || (refBlk != nil && !setBlock(refBlk)) {
				return nil, false
			}
		case *ssa.UnOp:
			if ref.Op != token.MUL || !setBlock(ref.Block()) {
				return nil, false
			}
		case *ssa.Store:
			if ref.Addr != v || !setBlock(ref.Block()) {
				return nil, false
			}
		case *ssa.Call:
			found := false
			for _, arg := range ref.Call.Args {
				if arg == v {
					found = true
					break
				}
			}
			if !found || !setBlock(ref.Block()) {
				return nil, false
			}
		case *ssa.Defer:
			found := false
			for _, arg := range ref.Call.Args {
				if arg == v {
					found = true
					break
				}
			}
			if !found || !setBlock(ref.Block()) {
				return nil, false
			}
		default:
			return nil, false
		}
	}
	return blk, true
}

func (p *context) shouldTrackStackClear(v *ssa.Alloc) bool {
	if v == nil || v.Comment == "varargs" {
		return false
	}
	if v.Comment == "makeslice" && skipMakeSliceAlloc(v) {
		return false
	}
	if !v.Heap {
		return true
	}
	return p.canPromoteHeapAllocToStack(v)
}

func (p *context) canHidePointerAlloc(v *ssa.Alloc) bool {
	if v == nil || v.Heap || v.Comment == "varargs" || v.Comment == "makeslice" {
		return false
	}
	ptr, ok := v.Type().Underlying().(*types.Pointer)
	if !ok || ptr == nil {
		return false
	}
	switch tt := types.Unalias(ptr.Elem()).Underlying().(type) {
	case *types.Pointer, *types.Slice, *types.Interface:
	case *types.Basic:
		if tt.Kind() != types.String {
			return false
		}
	default:
		return false
	}
	if containsInstantiatedNamedType(ptr.Elem(), map[types.Type]bool{}) {
		return false
	}
	refs := v.Referrers()
	if refs == nil || len(*refs) == 0 {
		return false
	}
	for _, ref := range *refs {
		switch ref := ref.(type) {
		case *ssa.DebugRef:
			continue
		case *ssa.Store:
			if ref.Addr != v {
				return false
			}
		case *ssa.UnOp:
			if ref.Op != token.MUL || ref.X != v {
				return false
			}
		default:
			return false
		}
	}
	return true
}

func (p *context) collectStackClearPlans(fn *ssa.Function) map[ssa.Instruction][]*ssa.Alloc {
	plans := make(map[ssa.Instruction][]*ssa.Alloc)
	loopBlock := p.loopBlocks(fn)
	for _, blk := range fn.Blocks {
		for _, instr := range blk.Instrs {
			alloc, ok := instr.(*ssa.Alloc)
			if !ok || !p.shouldTrackStackClear(alloc) {
				continue
			}
			useBlk, ok := p.valueLastUseBlock(alloc)
			if !ok || useBlk == nil {
				continue
			}
			order := make(map[ssa.Instruction]int, len(useBlk.Instrs))
			for i, useInstr := range useBlk.Instrs {
				order[useInstr] = i
			}
			last, ok := p.lastUseInBlock(alloc, useBlk, order, map[ssa.Value]bool{})
			if !ok || last == nil {
				continue
			}
			if loopBlock[useBlk] && alloc.Block() != useBlk {
				continue
			}
			plans[last] = append(plans[last], alloc)
		}
	}
	return plans
}

func (p *context) collectValueEdgeUseBlocks(v ssa.Value, blocks map[*ssa.BasicBlock]bool, seen map[ssa.Value]bool) bool {
	if v == nil || seen[v] {
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
		case *ssa.Phi:
			phiBlk := ref.Block()
			if phiBlk == nil {
				return false
			}
			for i, edge := range ref.Edges {
				if edge != v || i >= len(phiBlk.Preds) {
					continue
				}
				pred := phiBlk.Preds[i]
				if pred == nil {
					return false
				}
				blocks[pred] = true
			}
			continue
		default:
			if isDerivedValueUse(ref) {
				refVal, ok := ref.(ssa.Value)
				if !ok {
					return false
				}
				if !p.collectValueEdgeUseBlocks(refVal, blocks, seen) {
					return false
				}
				continue
			}
			if !isValueClearAnchor(ref) {
				return false
			}
			blk := ref.Block()
			if blk == nil || !operandUsesValue(ref, v) {
				return false
			}
			blocks[blk] = true
		}
	}
	return true
}

func (p *context) collectBranchStackClearPlans(fn *ssa.Function) map[*ssa.BasicBlock][]*ssa.Alloc {
	plans := make(map[*ssa.BasicBlock][]*ssa.Alloc)
	if fn == nil {
		return plans
	}
	for _, blk := range fn.Blocks {
		if blk == nil || len(blk.Succs) < 2 {
			continue
		}
		for _, instr := range blk.Instrs {
			alloc, ok := instr.(*ssa.Alloc)
			if !ok || !p.shouldTrackStackClear(alloc) {
				continue
			}
			ptr, ok := alloc.Type().Underlying().(*types.Pointer)
			if !ok || ptr == nil || !hasConservativeGCPointers(ptr.Elem(), map[types.Type]bool{}) {
				continue
			}
			useBlocks := make(map[*ssa.BasicBlock]bool)
			if !p.collectValueEdgeUseBlocks(alloc, useBlocks, map[ssa.Value]bool{}) {
				continue
			}
			if len(useBlocks) == 0 {
				continue
			}
			liveSucc := make(map[*ssa.BasicBlock]bool, len(blk.Succs))
			liveCount := 0
			for _, succ := range blk.Succs {
				live := false
				for useBlk := range useBlocks {
					if succ == useBlk || canReachBlockWithout(succ, useBlk, nil) {
						live = true
						break
					}
				}
				if live {
					liveSucc[succ] = true
					liveCount++
				}
			}
			if liveCount == 0 || liveCount == len(blk.Succs) {
				continue
			}
			for _, succ := range blk.Succs {
				if liveSucc[succ] {
					continue
				}
				plans[succ] = append(plans[succ], alloc)
			}
		}
	}
	return plans
}

func (p *context) collectHiddenPointerAllocs(fn *ssa.Function) map[*ssa.Alloc]bool {
	ret := make(map[*ssa.Alloc]bool)
	for _, blk := range fn.Blocks {
		for _, instr := range blk.Instrs {
			alloc, ok := instr.(*ssa.Alloc)
			if ok && p.canHidePointerAlloc(alloc) {
				ret[alloc] = true
			}
		}
	}
	return ret
}

func (p *context) loopBlocks(fn *ssa.Function) map[*ssa.BasicBlock]bool {
	ret := make(map[*ssa.BasicBlock]bool)
	if fn == nil {
		return ret
	}
	infos := blocks.Infos(fn.Blocks)
	for _, blk := range fn.Blocks {
		if infos[blk.Index].Kind == llssa.DeferInLoop {
			ret[blk] = true
		}
	}
	return ret
}

func (p *context) collectParamClearPlans(fn *ssa.Function) map[ssa.Instruction][]int {
	plans := make(map[ssa.Instruction][]int)
	callsites, ok := p.staticPointerParamCallsites(fn)
	if !ok {
		return plans
	}
	loopBlock := p.loopBlocks(fn)
	for idx, param := range fn.Params {
		if p.hiddenParamKeys[idx] && !isKeepAliveOnlyPointerParam(param) {
			continue
		}
		pt, ok := param.Type().Underlying().(*types.Pointer)
		if !ok || pt == nil {
			continue
		}
		elem := p.type_(pt.Elem(), llssa.InGo)
		if p.prog.SizeOf(elem) > 256 {
			continue
		}
		blk, ok := p.singleUseBlock(param, map[ssa.Value]bool{})
		if !ok || blk == nil {
			continue
		}
		order := make(map[ssa.Instruction]int, len(blk.Instrs))
		for i, instr := range blk.Instrs {
			order[instr] = i
		}
		last, ok := p.lastSameBlockStackUse(param, blk, order, map[ssa.Value]bool{})
		if !ok || last == nil {
			continue
		}
		if loopBlock[blk] {
			continue
		}
		if !p.allStaticCallArgsClearable(callsites, idx, pt.Elem()) {
			continue
		}
		plans[last] = append(plans[last], idx)
	}
	return plans
}

func (p *context) collectParamValueClearPlans(fn *ssa.Function) map[ssa.Instruction][]int {
	plans := make(map[ssa.Instruction][]int)
	loopBlock := p.loopBlocks(fn)
	for idx, param := range fn.Params {
		if containsInstantiatedNamedType(param.Type(), map[types.Type]bool{}) {
			continue
		}
		if !hasConservativeGCPointers(param.Type(), map[types.Type]bool{}) {
			continue
		}
		blk, ok := p.singleUseBlock(param, map[ssa.Value]bool{})
		if !ok || blk == nil {
			continue
		}
		order := make(map[ssa.Instruction]int, len(blk.Instrs))
		for i, instr := range blk.Instrs {
			order[instr] = i
		}
		last, ok := p.lastSameBlockStackUse(param, blk, order, map[ssa.Value]bool{})
		if !ok || last == nil {
			continue
		}
		if loopBlock[blk] {
			continue
		}
		plans[last] = append(plans[last], idx)
	}
	return plans
}

func (p *context) collectParamSpillClobberPlans(fn *ssa.Function) map[ssa.Instruction]bool {
	plans := make(map[ssa.Instruction]bool)
	if fn == nil {
		return plans
	}
	var spillBlock *ssa.BasicBlock
	var spillInstr ssa.Instruction
	var spillOrder map[ssa.Instruction]int
	for idx, param := range fn.Params {
		if p.hiddenParamKeys[idx] {
			continue
		}
		if !hasConservativeGCPointers(param.Type(), map[types.Type]bool{}) {
			continue
		}
		ref, ok := singleRef(param)
		if !ok {
			return plans
		}
		store, ok := ref.(*ssa.Store)
		if !ok || store.Val != param {
			return plans
		}
		alloc, ok := store.Addr.(*ssa.Alloc)
		if !ok || !p.shouldTrackStackClear(alloc) {
			return plans
		}
		blk := store.Block()
		if blk == nil {
			return plans
		}
		if spillBlock == nil {
			spillBlock = blk
			spillOrder = make(map[ssa.Instruction]int, len(blk.Instrs))
			for i, instr := range blk.Instrs {
				spillOrder[instr] = i
			}
		} else if spillBlock != blk {
			return plans
		}
		if spillInstr == nil || spillOrder[store] > spillOrder[spillInstr] {
			spillInstr = store
		}
	}
	if spillInstr != nil {
		plans[spillInstr] = true
	}
	return plans
}

func isCallLikeInstr(instr ssa.Instruction) bool {
	switch instr.(type) {
	case *ssa.Call, *ssa.Defer, *ssa.Go:
		return true
	default:
		return false
	}
}

func (p *context) isPointerValueClearCandidate(v ssa.Value) bool {
	if v == nil || containsInstantiatedNamedType(v.Type(), map[types.Type]bool{}) {
		return false
	}
	if !hasConservativeGCPointers(v.Type(), map[types.Type]bool{}) {
		return false
	}
	if alloc, ok := v.(*ssa.Alloc); ok && p.shouldTrackStackClear(alloc) {
		return false
	}
	switch v.(type) {
	case *ssa.Phi, *ssa.MakeInterface:
		return false
	}
	_, ok := v.(instrOrValue)
	return ok
}

func isDerivedValueUse(instr ssa.Instruction) bool {
	switch instr.(type) {
	case *ssa.Field, *ssa.FieldAddr, *ssa.Index, *ssa.IndexAddr,
		*ssa.Extract, *ssa.ChangeType, *ssa.Convert,
		*ssa.MakeInterface, *ssa.ChangeInterface, *ssa.Slice, *ssa.TypeAssert:
		return true
	default:
		return false
	}
}

func operandUsesValue(instr ssa.Instruction, v ssa.Value) bool {
	for _, op := range instr.Operands(nil) {
		if op != nil && *op == v {
			return true
		}
	}
	return false
}

func isValueClearAnchor(instr ssa.Instruction) bool {
	switch instr.(type) {
	case *ssa.Return, *ssa.If, *ssa.Jump, *ssa.Panic, *ssa.RunDefers:
		return false
	default:
		return true
	}
}

func (p *context) collectValueUseBlocks(v ssa.Value, blocks map[*ssa.BasicBlock]bool, seen map[ssa.Value]bool) bool {
	if v == nil || seen[v] {
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
		case *ssa.Phi:
			if !p.collectValueUseBlocks(ref, blocks, seen) {
				return false
			}
			continue
		default:
			if isDerivedValueUse(ref) {
				refVal, ok := ref.(ssa.Value)
				if !ok {
					return false
				}
				if !p.collectValueUseBlocks(refVal, blocks, seen) {
					return false
				}
				continue
			}
			if !isValueClearAnchor(ref) {
				return false
			}
			blk := ref.Block()
			if blk == nil || !operandUsesValue(ref, v) {
				return false
			}
			blocks[blk] = true
		}
	}
	return true
}

func deepestUseBlock(blocks map[*ssa.BasicBlock]bool) (*ssa.BasicBlock, bool) {
	var last *ssa.BasicBlock
	for blk := range blocks {
		if last == nil {
			last = blk
			continue
		}
		switch {
		case dominatesBlock(last, blk):
			last = blk
		case dominatesBlock(blk, last):
		default:
			return nil, false
		}
	}
	return last, true
}

func (p *context) valueLastUseBlock(v ssa.Value) (*ssa.BasicBlock, bool) {
	blocks := make(map[*ssa.BasicBlock]bool)
	if !p.collectValueUseBlocks(v, blocks, map[ssa.Value]bool{}) {
		return nil, false
	}
	if len(blocks) == 0 {
		return nil, true
	}
	return deepestUseBlock(blocks)
}

func (p *context) lastUseInBlock(v ssa.Value, blk *ssa.BasicBlock, order map[ssa.Instruction]int, seen map[ssa.Value]bool) (ssa.Instruction, bool) {
	if v == nil || seen[v] {
		return nil, true
	}
	seen[v] = true
	refs := v.Referrers()
	if refs == nil {
		return nil, true
	}
	var last ssa.Instruction
	updateLast := func(instr ssa.Instruction) {
		if instr == nil {
			return
		}
		if last == nil || order[instr] > order[last] {
			last = instr
		}
	}
	for _, ref := range *refs {
		switch ref := ref.(type) {
		case *ssa.DebugRef:
			continue
		case *ssa.Phi:
			use, ok := p.lastUseInBlock(ref, blk, order, seen)
			if !ok {
				return nil, false
			}
			updateLast(use)
			continue
		default:
			if isDerivedValueUse(ref) {
				refVal, ok := ref.(ssa.Value)
				if !ok {
					return nil, false
				}
				use, ok := p.lastUseInBlock(refVal, blk, order, seen)
				if !ok {
					return nil, false
				}
				updateLast(use)
				continue
			}
			if ref.Block() == blk && operandUsesValue(ref, v) {
				if !isValueClearAnchor(ref) {
					return nil, false
				}
				updateLast(ref)
			}
		}
	}
	return last, true
}

func (p *context) collectPointerValueClearPlans(fn *ssa.Function) (map[ssa.Instruction][]ssa.Value, map[ssa.Instruction][]ssa.Value) {
	pre := make(map[ssa.Instruction][]ssa.Value)
	post := make(map[ssa.Instruction][]ssa.Value)
	loopBlock := p.loopBlocks(fn)
	for _, blk := range fn.Blocks {
		for _, instr := range blk.Instrs {
			val, ok := instr.(ssa.Value)
			if !ok || !p.isPointerValueClearCandidate(val) {
				continue
			}
			useBlk, ok := p.valueLastUseBlock(val)
			if !ok || useBlk == nil {
				continue
			}
			order := make(map[ssa.Instruction]int, len(useBlk.Instrs))
			for i, useInstr := range useBlk.Instrs {
				order[useInstr] = i
			}
			last, ok := p.lastUseInBlock(val, useBlk, order, map[ssa.Value]bool{})
			if !ok || last == nil {
				continue
			}
			defInstr, _ := val.(ssa.Instruction)
			if loopBlock[useBlk] && defInstr != nil && defInstr.Block() != useBlk {
				// A block-local "last use" inside a loop is not a global last use
				// for values defined outside that loop block. Clearing the slot here
				// would nil out loop-carried invariants on the first iteration.
				continue
			}
			if isCallLikeInstr(last) {
				pre[last] = append(pre[last], val)
				continue
			}
			if last != instr {
				post[last] = append(post[last], val)
			}
		}
	}
	return pre, post
}

func (p *context) staticPointerParamCallsites(fn *ssa.Function) ([]staticCallSite, bool) {
	if fn == nil || fn.Pkg == nil || fn.Parent() != nil || fn.Synthetic != "" {
		return nil, false
	}
	obj, ok := fn.Object().(*types.Func)
	if !ok || obj.Exported() || fn.Signature.Recv() != nil {
		return nil, false
	}
	var sites []staticCallSite
	seen := make(map[*ssa.Function]bool)
	var scan func(*ssa.Function) bool
	scan = func(cur *ssa.Function) bool {
		if cur == nil || seen[cur] {
			return true
		}
		seen[cur] = true
		for _, blk := range cur.Blocks {
			for _, instr := range blk.Instrs {
				for _, op := range instr.Operands(nil) {
					if op == nil || *op != fn {
						continue
					}
					call, ok := instr.(*ssa.Call)
					if !ok || call.Call.Value != fn {
						return false
					}
					sites = append(sites, staticCallSite{caller: cur, call: call})
					break
				}
			}
		}
		for _, anon := range cur.AnonFuncs {
			if !scan(anon) {
				return false
			}
		}
		return true
	}
	for _, member := range fn.Pkg.Members {
		memberFn, ok := member.(*ssa.Function)
		if !ok {
			continue
		}
		if !scan(memberFn) {
			return nil, false
		}
	}
	if len(sites) == 0 {
		return nil, false
	}
	return sites, true
}

func (p *context) allStaticCallArgsClearable(callsites []staticCallSite, idx int, elem types.Type) bool {
	for _, site := range callsites {
		if site.call == nil || idx >= len(site.call.Call.Args) {
			return false
		}
		alloc, ok := site.call.Call.Args[idx].(*ssa.Alloc)
		if !ok || !p.shouldTrackStackClear(alloc) {
			return false
		}
		argPtr, ok := alloc.Type().Underlying().(*types.Pointer)
		if !ok || !types.Identical(argPtr.Elem(), elem) {
			return false
		}
		blk := site.call.Block()
		order := make(map[ssa.Instruction]int, len(blk.Instrs))
		for i, instr := range blk.Instrs {
			order[instr] = i
		}
		last, ok := p.lastSameBlockStackUse(alloc, blk, order, map[ssa.Value]bool{})
		if !ok || last != site.call {
			return false
		}
	}
	return true
}

func (p *context) lastSameBlockStackUse(v ssa.Value, blk *ssa.BasicBlock, order map[ssa.Instruction]int, seen map[ssa.Value]bool) (ssa.Instruction, bool) {
	if v == nil || seen[v] {
		return nil, true
	}
	seen[v] = true
	refs := v.Referrers()
	if refs == nil {
		return nil, true
	}
	var last ssa.Instruction
	updateLast := func(instr ssa.Instruction) {
		if instr == nil {
			return
		}
		if last == nil || order[instr] > order[last] {
			last = instr
		}
	}
	for _, ref := range *refs {
		switch ref := ref.(type) {
		case *ssa.DebugRef:
			continue
		case *ssa.Field:
			if ref.Block() != blk {
				return nil, false
			}
			use, ok := p.lastSameBlockStackUse(ref, blk, order, seen)
			if !ok {
				return nil, false
			}
			updateLast(use)
		case *ssa.Index:
			if ref.Block() != blk {
				return nil, false
			}
			use, ok := p.lastSameBlockStackUse(ref, blk, order, seen)
			if !ok {
				return nil, false
			}
			updateLast(use)
		case *ssa.Extract:
			if ref.Block() != blk {
				return nil, false
			}
			use, ok := p.lastSameBlockStackUse(ref, blk, order, seen)
			if !ok {
				return nil, false
			}
			updateLast(use)
		case *ssa.FieldAddr:
			if ref.Block() != blk {
				return nil, false
			}
			use, ok := p.lastSameBlockStackUse(ref, blk, order, seen)
			if !ok {
				return nil, false
			}
			updateLast(use)
		case *ssa.IndexAddr:
			if ref.Block() != blk {
				return nil, false
			}
			use, ok := p.lastSameBlockStackUse(ref, blk, order, seen)
			if !ok {
				return nil, false
			}
			updateLast(use)
		case *ssa.ChangeType:
			if ref.Block() != blk {
				return nil, false
			}
			use, ok := p.lastSameBlockStackUse(ref, blk, order, seen)
			if !ok {
				return nil, false
			}
			updateLast(use)
		case *ssa.Convert:
			if ref.Block() != blk {
				return nil, false
			}
			use, ok := p.lastSameBlockStackUse(ref, blk, order, seen)
			if !ok {
				return nil, false
			}
			updateLast(use)
		case *ssa.MakeInterface:
			if ref.Block() != blk {
				return nil, false
			}
			use, ok := p.lastSameBlockStackUse(ref, blk, order, seen)
			if !ok {
				return nil, false
			}
			updateLast(use)
		case *ssa.UnOp:
			if ref.Block() != blk || ref.Op != token.MUL {
				return nil, false
			}
			updateLast(ref)
		case *ssa.Store:
			if ref.Block() != blk || ref.Addr != v {
				return nil, false
			}
			updateLast(ref)
		case *ssa.Call:
			if ref.Block() != blk {
				return nil, false
			}
			found := false
			for _, arg := range ref.Call.Args {
				if arg == v {
					found = true
					break
				}
			}
			if !found {
				return nil, false
			}
			updateLast(ref)
		case *ssa.Defer:
			if ref.Block() != blk {
				return nil, false
			}
			found := false
			for _, arg := range ref.Call.Args {
				if arg == v {
					found = true
					break
				}
			}
			if !found {
				return nil, false
			}
			updateLast(ref)
		default:
			return nil, false
		}
	}
	return last, true
}

func (p *context) clearDeadStackAllocs(b llssa.Builder, instr ssa.Instruction) {
	for _, alloc := range p.stackClears[instr] {
		ptr := p.compileValue(b, alloc)
		if ptr.Type == nil {
			continue
		}
		if p.hiddenPtrAllocs[alloc] {
			elem := alloc.Type().(*types.Pointer).Elem()
			b.Store(ptr, p.hiddenZeroStoredValue(b, elem))
			continue
		}
		elem := p.type_(alloc.Type().(*types.Pointer).Elem(), llssa.InGo)
		if p.prog.SizeOf(elem) > 256 {
			continue
		}
		b.Store(ptr, p.prog.Zero(elem))
	}
}

func (p *context) clearEntryStackAllocs(b llssa.Builder, blk *ssa.BasicBlock) {
	if blk == nil {
		return
	}
	cleared := false
	for _, alloc := range p.stackEntryClears[blk] {
		ptr := p.compileValue(b, alloc)
		if ptr.Type == nil {
			continue
		}
		if p.hiddenPtrAllocs[alloc] {
			elem := alloc.Type().(*types.Pointer).Elem()
			b.Store(ptr, p.hiddenZeroStoredValue(b, elem))
			cleared = true
			continue
		}
		elem := p.type_(alloc.Type().(*types.Pointer).Elem(), llssa.InGo)
		if p.prog.SizeOf(elem) > 256 {
			continue
		}
		b.Store(ptr, p.prog.Zero(elem))
		cleared = true
	}
	if cleared {
		p.clobberPointerRegs(b)
	}
}

func (p *context) initValueSlots(b llssa.Builder, fn *ssa.Function) {
	if fn == nil || (len(p.valuePreClears) == 0 && len(p.valuePostClears) == 0) {
		return
	}
	values := make(map[ssa.Value]bool)
	for _, vals := range p.valuePreClears {
		for _, v := range vals {
			values[v] = true
		}
	}
	for _, vals := range p.valuePostClears {
		for _, v := range vals {
			values[v] = true
		}
	}
	for _, blk := range fn.Blocks {
		for _, instr := range blk.Instrs {
			val, ok := instr.(ssa.Value)
			if !ok || !values[val] {
				continue
			}
			if p.hiddenValueSlots[val] && p.hiddenValueUsesUintptrSlot(val.Type()) {
				p.valueSlots[val] = b.AllocaT(p.type_(types.Typ[types.Uintptr], llssa.InGo))
				p.valueRootSlots[val] = b.AllocaT(p.type_(val.Type(), llssa.InGo))
				b.Store(p.valueRootSlots[val], p.prog.Nil(p.type_(val.Type(), llssa.InGo)))
				continue
			}
			p.valueSlots[val] = b.AllocaT(p.type_(val.Type(), llssa.InGo))
		}
	}
}

func (p *context) hiddenValueUsesUintptrSlot(t types.Type) bool {
	if _, ok := types.Unalias(t).Underlying().(*types.Pointer); ok {
		return true
	}
	_, _, ok := hiddenScalarStructField(t)
	return ok
}

func (p *context) canClearHiddenAggregateSource(t types.Type) bool {
	if p.hiddenValueUsesUintptrSlot(t) {
		return false
	}
	switch tt := types.Unalias(t).Underlying().(type) {
	case *types.Basic:
		return tt.Kind() == types.String
	case *types.Slice, *types.Interface:
		return true
	default:
		return false
	}
}

func (p *context) encodeHiddenAggregateValue(b llssa.Builder, val llssa.Expr, t types.Type) llssa.Expr {
	switch tt := types.Unalias(t).Underlying().(type) {
	case *types.Basic:
		if tt.Kind() != types.String {
			return val
		}
		data := b.StringData(val)
		return b.SetStringData(val, b.Convert(data.Type, p.hiddenPointerKey(b, data)))
	case *types.Slice:
		data := b.SliceData(val)
		return b.SetSliceData(val, b.Convert(data.Type, p.hiddenPointerKey(b, data)))
	case *types.Interface:
		data := b.InterfaceData(val)
		return b.SetInterfaceData(val, b.Convert(data.Type, p.hiddenPointerKey(b, data)))
	default:
		return val
	}
}

func (p *context) decodeHiddenAggregateValue(b llssa.Builder, val llssa.Expr, t types.Type) llssa.Expr {
	switch tt := types.Unalias(t).Underlying().(type) {
	case *types.Basic:
		if tt.Kind() != types.String {
			return val
		}
		data := b.StringData(val)
		key := b.Convert(b.Prog.Uintptr(), data)
		return b.SetStringData(val, p.hiddenPointerDecode(b, key, data.RawType()))
	case *types.Slice:
		data := b.SliceData(val)
		key := b.Convert(b.Prog.Uintptr(), data)
		return b.SetSliceData(val, p.hiddenPointerDecode(b, key, data.RawType()))
	case *types.Interface:
		data := b.InterfaceData(val)
		key := b.Convert(b.Prog.Uintptr(), data)
		return b.SetInterfaceData(val, p.hiddenPointerDecode(b, key, data.RawType()))
	default:
		return val
	}
}

func (p *context) decodeHiddenAggregateData(b llssa.Builder, val llssa.Expr, t types.Type) (llssa.Expr, bool) {
	switch tt := types.Unalias(t).Underlying().(type) {
	case *types.Basic:
		if tt.Kind() != types.String {
			return llssa.Expr{}, false
		}
		data := b.StringData(val)
		key := b.Convert(b.Prog.Uintptr(), data)
		return p.hiddenPointerDecode(b, key, data.RawType()), true
	case *types.Slice:
		data := b.SliceData(val)
		key := b.Convert(b.Prog.Uintptr(), data)
		return p.hiddenPointerDecode(b, key, data.RawType()), true
	case *types.Interface:
		data := b.InterfaceData(val)
		key := b.Convert(b.Prog.Uintptr(), data)
		return p.hiddenPointerDecode(b, key, data.RawType()), true
	default:
		return llssa.Expr{}, false
	}
}

func (p *context) encodeHiddenStoredValue(b llssa.Builder, val llssa.Expr, t types.Type) llssa.Expr {
	if _, ok := types.Unalias(t).Underlying().(*types.Pointer); ok {
		return p.hiddenPointerKey(b, val)
	}
	if idx, _, ok := hiddenScalarStructField(t); ok {
		return p.hiddenPointerKey(b, b.Field(val, idx))
	}
	return p.encodeHiddenAggregateValue(b, val, t)
}

func (p *context) decodeHiddenStoredValue(b llssa.Builder, val llssa.Expr, t types.Type) llssa.Expr {
	if _, ok := types.Unalias(t).Underlying().(*types.Pointer); ok {
		return p.hiddenPointerDecode(b, val, t)
	}
	if idx, fieldType, ok := hiddenScalarStructField(t); ok {
		tt := p.type_(t, llssa.InGo)
		tmp := b.AllocaT(tt)
		b.Store(tmp, p.prog.Zero(tt))
		b.Store(b.FieldAddr(tmp, idx), p.hiddenPointerDecode(b, val, fieldType))
		ret := b.Load(tmp)
		b.Store(tmp, p.prog.Zero(tt))
		return ret
	}
	return p.decodeHiddenAggregateValue(b, val, t)
}

func (p *context) hiddenZeroStoredValue(b llssa.Builder, t types.Type) llssa.Expr {
	zero := p.prog.Zero(p.type_(t, llssa.InGo))
	return p.encodeHiddenStoredValue(b, zero, t)
}

func (p *context) hiddenPointerKeyForValue(b llssa.Builder, v ssa.Value) (llssa.Expr, bool) {
	if v == nil {
		return llssa.Expr{}, false
	}
	if param, ok := v.(*ssa.Parameter); ok {
		fn := param.Parent()
		for idx, candidate := range fn.Params {
			if candidate == param && p.hiddenParamKeys[idx] {
				return b.Param(idx), true
			}
		}
	}
	slot, ok := p.valueSlots[v]
	if !ok || slot.Type == nil || !p.hiddenValueSlots[v] || !p.hiddenValueUsesUintptrSlot(v.Type()) {
		return llssa.Expr{}, false
	}
	if _, compiled := p.bvals[v]; !compiled {
		iv, ok := v.(instrOrValue)
		if !ok {
			return llssa.Expr{}, false
		}
		p.compileInstrOrValue(b, iv, false)
	}
	return b.Load(slot), true
}

func (p *context) hiddenSliceArgKeyLen(b llssa.Builder, arg ssa.Value) (llssa.Expr, llssa.Expr, bool) {
	if _, ok := types.Unalias(arg.Type()).Underlying().(*types.Slice); !ok {
		return llssa.Expr{}, llssa.Expr{}, false
	}
	slot, ok := p.valueSlots[arg]
	if !ok || slot.Type == nil || !p.hiddenValueSlots[arg] {
		return llssa.Expr{}, llssa.Expr{}, false
	}
	if iv, ok := arg.(instrOrValue); ok {
		if _, compiled := p.bvals[arg]; !compiled {
			p.compileInstrOrValue(b, iv, false)
		}
	} else if _, ok := p.bvals[arg]; !ok {
		return llssa.Expr{}, llssa.Expr{}, false
	}
	val := b.Load(slot)
	return b.Convert(b.Prog.Uintptr(), b.SliceData(val)), b.SliceLen(val), true
}

func (p *context) compileHiddenPointerDeref(b llssa.Builder, key llssa.Expr, t types.Type) llssa.Expr {
	if basic, ok := types.Unalias(t).Underlying().(*types.Basic); ok && basic.Kind() == types.Uint8 {
		params := types.NewTuple(types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]))
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", types.Typ[types.Uint8]))
		helper := b.Pkg.NewFunc("runtime.LoadHiddenUint8",
			types.NewSignatureType(nil, nil, nil, params, results, false), llssa.InGo)
		return b.Call(helper.Expr, key)
	}
	dstType := p.type_(t, llssa.InGo)
	dst := b.AllocaT(dstType)
	params := types.NewTuple(
		types.NewParam(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
		types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
		types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
	)
	helper := b.Pkg.NewFunc("runtime.LoadHiddenPointee",
		types.NewSignatureType(nil, nil, nil, params, nil, false), llssa.InGo)
	voidPtr := b.Prog.VoidPtr()
	uintPtr := b.Prog.Uintptr()
	b.Call(helper.Expr,
		b.ChangeType(voidPtr, dst),
		key,
		p.prog.IntVal(uint64(p.prog.SizeOf(dstType)), uintPtr),
	)
	ret := b.Load(dst)
	b.ClearLoadSource(ret)
	return ret
}

func (p *context) compileHiddenPointerDerefKey(b llssa.Builder, key llssa.Expr) llssa.Expr {
	params := types.NewTuple(types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]))
	results := types.NewTuple(types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]))
	helper := b.Pkg.NewFunc("runtime.LoadHiddenPointerKey",
		types.NewSignatureType(nil, nil, nil, params, results, false), llssa.InGo)
	return b.Call(helper.Expr, key)
}

func (p *context) compileHiddenSliceIndexAddrKey(b llssa.Builder, key llssa.Expr, length llssa.Expr, idx llssa.Expr, idxType types.Type, elemSize uint64) llssa.Expr {
	checked := idx
	useUnsigned := false
	if basic, ok := types.Unalias(idxType).Underlying().(*types.Basic); ok {
		switch basic.Kind() {
		case types.Uint, types.Uint8, types.Uint16, types.Uint32, types.Uint64, types.Uintptr:
			useUnsigned = true
		}
	}
	checkIdxFn := func(name string) llssa.Function {
		params := types.NewTuple(
			types.NewParam(token.NoPos, nil, "", idxType),
			types.NewParam(token.NoPos, nil, "", types.Typ[types.Int]),
		)
		results := types.NewTuple(types.NewParam(token.NoPos, nil, "", idxType))
		return b.Pkg.NewFunc(llssa.PkgRuntime+"."+name,
			types.NewSignatureType(nil, nil, nil, params, results, false), llssa.InGo)
	}
	if useUnsigned {
		checked = b.InlineCall(checkIdxFn("CheckIndexUint").Expr, idx, length)
	} else {
		checked = b.InlineCall(checkIdxFn("CheckIndexInt").Expr, idx, length)
	}
	if p.prog.SizeOf(checked.Type) != p.prog.SizeOf(b.Prog.Uintptr()) {
		checked = b.Convert(b.Prog.Uintptr(), checked)
	}
	offset := checked
	if elemSize != 1 {
		offset = b.BinOp(token.MUL, checked, b.Prog.IntVal(elemSize, b.Prog.Uintptr()))
	}
	params := types.NewTuple(
		types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
		types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
	)
	helper := b.Pkg.NewFunc("runtime.AdvanceHiddenPointer",
		types.NewSignatureType(nil, nil, nil, params, types.NewTuple(types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr])), false), llssa.InGo)
	return b.Call(helper.Expr, key, offset)
}

func (p *context) canHidePointerValue(v ssa.Value) bool {
	if v == nil || containsInstantiatedNamedType(v.Type(), map[types.Type]bool{}) {
		return false
	}
	switch types.Unalias(v.Type()).Underlying().(type) {
	case *types.Pointer, *types.Slice, *types.Interface:
	case *types.Basic:
		if types.Unalias(v.Type()).Underlying().(*types.Basic).Kind() != types.String {
			return false
		}
	default:
		return false
	}
	switch v.(type) {
	case *ssa.Alloc, *ssa.Parameter:
		return false
	}
	return true
}

func (p *context) collectHiddenPointerValueSlots() map[ssa.Value]bool {
	ret := make(map[ssa.Value]bool)
	for _, vals := range p.valuePreClears {
		for _, v := range vals {
			if p.canHidePointerValue(v) {
				ret[v] = true
			}
		}
	}
	for _, vals := range p.valuePostClears {
		for _, v := range vals {
			if p.canHidePointerValue(v) {
				ret[v] = true
			}
		}
	}
	return ret
}

func (p *context) initParamSlots(b llssa.Builder, fn *ssa.Function) {
	if fn == nil || len(p.paramValueClears) == 0 {
		return
	}
	slotIdxs := make(map[int]bool)
	for _, idxs := range p.paramValueClears {
		for _, idx := range idxs {
			if idx < 0 || idx >= len(fn.Params) {
				continue
			}
			if p.hiddenParamKeys[idx] || p.paramShadow[idx].Type == nil {
				slotIdxs[idx] = true
			}
		}
	}
	if len(slotIdxs) == 0 {
		return
	}
	indices := make([]int, 0, len(slotIdxs))
	for idx := range slotIdxs {
		indices = append(indices, idx)
	}
	sort.Ints(indices)
	clobber := false
	for _, idx := range indices {
		var slot llssa.Expr
		if p.hiddenParamKeys[idx] {
			if _, ok := types.Unalias(fn.Params[idx].Type()).Underlying().(*types.Pointer); ok {
				slot = b.AllocaT(b.Param(idx).Type)
				b.Store(slot, b.Param(idx))
			} else {
				typ := p.type_(fn.Params[idx].Type(), llssa.InGo)
				slot = b.AllocaT(typ)
				b.Store(slot, p.prog.Zero(typ))
				params := types.NewTuple(
					types.NewParam(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
					types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
					types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
				)
				helper := b.Pkg.NewFunc("runtime.LoadHiddenPointee",
					types.NewSignatureType(nil, nil, nil, params, nil, false), llssa.InGo)
				b.Call(helper.Expr,
					b.ChangeType(b.Prog.VoidPtr(), slot),
					b.Param(idx),
					p.prog.IntVal(uint64(p.prog.SizeOf(typ)), b.Prog.Uintptr()),
				)
			}
		} else {
			param := fn.Params[idx]
			slot = b.AllocaT(p.type_(param.Type(), llssa.InGo))
			b.Store(slot, b.Param(idx))
		}
		p.paramSlots[idx] = slot
		if hasConservativeGCPointers(fn.Params[idx].Type(), map[types.Type]bool{}) {
			clobber = true
		}
	}
	if clobber {
		p.clobberPointerRegs(b)
	}
}

func (p *context) initKeepAliveParamShadows(b llssa.Builder, fn *ssa.Function) {
	if fn == nil || len(p.paramClears) == 0 {
		return
	}
	shadowable := make(map[int]bool)
	for _, idxs := range p.paramClears {
		for _, idx := range idxs {
			if idx >= 0 && idx < len(fn.Params) && isKeepAliveOnlyPointerParam(fn.Params[idx]) {
				shadowable[idx] = true
			}
		}
	}
	if len(shadowable) == 0 {
		return
	}
	indices := make([]int, 0, len(shadowable))
	for idx := range shadowable {
		indices = append(indices, idx)
	}
	sort.Ints(indices)
	voidPtr := b.Prog.VoidPtr()
	uintPtr := b.Prog.Uintptr()
	params := types.NewTuple(
		types.NewParam(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
		types.NewParam(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
		types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
	)
	helper := b.Pkg.NewFunc("runtime.ShadowCopyPointee",
		types.NewSignatureType(nil, nil, nil, params, nil, false), llssa.InGo)
	for _, idx := range indices {
		param := fn.Params[idx]
		pt, ok := param.Type().Underlying().(*types.Pointer)
		if !ok || pt == nil {
			continue
		}
		elem := p.type_(pt.Elem(), llssa.InGo)
		size := p.prog.SizeOf(elem)
		if size <= 0 || size > 256 {
			continue
		}
		shadow := b.AllocaT(elem)
		b.Store(shadow, p.prog.Zero(elem))
		dst := b.ChangeType(voidPtr, shadow)
		srcPtr := b.Param(idx)
		if p.hiddenParamKeys[idx] {
			if slot, ok := p.paramSlots[idx]; ok && slot.Type != nil {
				srcPtr = p.hiddenPointerDecode(b, b.Load(slot), param.Type())
			} else {
				srcPtr = p.hiddenPointerDecode(b, srcPtr, param.Type())
			}
		}
		src := b.ChangeType(voidPtr, srcPtr)
		b.Call(helper.Expr, dst, src, p.prog.IntVal(uint64(size), uintPtr))
		p.paramShadow[idx] = shadow
		p.bvals[param] = shadow
	}
}

func (p *context) clearDeadParams(b llssa.Builder, instr ssa.Instruction) {
	fn := instr.Parent()
	if fn == nil {
		return
	}
	for _, idx := range p.paramClears[instr] {
		if idx < 0 || idx >= len(fn.Params) {
			continue
		}
		pt, ok := fn.Params[idx].Type().Underlying().(*types.Pointer)
		if !ok || pt == nil {
			continue
		}
		elem := p.type_(pt.Elem(), llssa.InGo)
		if p.prog.SizeOf(elem) > 256 {
			continue
		}
		if shadow, ok := p.paramShadow[idx]; ok {
			b.Store(shadow, p.prog.Zero(elem))
			continue
		}
		if p.hiddenParamKeys[idx] {
			continue
		}
		b.Store(b.Param(idx), p.prog.Zero(elem))
	}
}

func (p *context) clearDeadParamValues(b llssa.Builder, instr ssa.Instruction) {
	fn := instr.Parent()
	if fn == nil {
		return
	}
	cleared := false
	for _, idx := range p.paramValueClears[instr] {
		if idx < 0 || idx >= len(fn.Params) {
			continue
		}
		slot, ok := p.paramSlots[idx]
		if !ok || slot.Type == nil {
			continue
		}
		if p.hiddenParamKeys[idx] {
			if types.Identical(b.Prog.Elem(slot.Type).RawType(), fn.Params[idx].Type()) {
				b.Store(slot, p.prog.Zero(b.Prog.Elem(slot.Type)))
			} else {
				b.Store(slot, p.hiddenZeroStoredValue(b, fn.Params[idx].Type()))
			}
			cleared = true
			continue
		}
		b.Store(slot, p.prog.Zero(b.Prog.Elem(slot.Type)))
		cleared = true
	}
	if cleared {
		p.clobberPointerRegs(b)
	}
}

func (p *context) clobberPointerRegs(b llssa.Builder) {
	helper := b.Pkg.NewFunc("runtime.ClobberPointerRegs",
		types.NewSignatureType(nil, nil, nil, nil, nil, false), llssa.InGo)
	b.Call(helper.Expr)
}

func (p *context) storeHiddenPointerRoot(b llssa.Builder, root, key llssa.Expr) {
	helper := b.Pkg.NewFunc("runtime.StoreHiddenPointerRoot",
		types.NewSignatureType(nil, nil, nil,
			types.NewTuple(
				types.NewParam(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
				types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
			),
			nil, false),
		llssa.InGo)
	b.Call(helper.Expr, b.ChangeType(b.Prog.VoidPtr(), root), key)
}

func (p *context) clearDeadPointerValues(b llssa.Builder, instr ssa.Instruction) {
	cleared := false
	for _, v := range p.valuePostClears[instr] {
		slot, ok := p.valueSlots[v]
		if !ok || slot.Type == nil {
			continue
		}
		if p.hiddenValueSlots[v] {
			b.Store(slot, p.hiddenZeroStoredValue(b, v.Type()))
			if root, ok := p.valueRootSlots[v]; ok && root.Type != nil {
				b.Store(root, p.prog.Nil(b.Prog.Elem(root.Type)))
			}
			cleared = true
			continue
		}
		b.Store(slot, p.prog.Zero(b.Prog.Elem(slot.Type)))
		cleared = true
	}
	if cleared {
		p.clobberPointerRegs(b)
	}
}

func isNilConstValue(v ssa.Value) bool {
	c, ok := v.(*ssa.Const)
	return ok && c.Value == nil
}

func storeClearsConservativePointerRoot(v *ssa.Store) bool {
	if v == nil || !isNilConstValue(v.Val) {
		return false
	}
	ptr, ok := types.Unalias(v.Addr.Type()).(*types.Pointer)
	if !ok || ptr == nil {
		return false
	}
	return hasConservativeGCPointers(ptr.Elem(), map[types.Type]bool{})
}

func isSendInstr(instr ssa.Instruction) bool {
	_, ok := instr.(*ssa.Send)
	return ok
}

func (p *context) hiddenPointerWordInfo() (seed, mul, invMul, mask, tag, rot uint64) {
	if p.prog.SizeOf(p.prog.Uintptr()) == 4 {
		return 0x85ebca6b, 0x9e3779b9, 0x144cbc89, 0, 0, 11
	}
	return 0x005a3c9d12e7b14f, 0, 0, 0x00ffffffffffffff, 0xa500000000000000, 17
}

func (p *context) rotateHiddenPointerLeft(b llssa.Builder, x llssa.Expr, rot uint64) llssa.Expr {
	bits := p.prog.SizeOf(b.Prog.Uintptr()) * 8
	if rot == 0 || rot == bits {
		return x
	}
	lhs := b.BinOp(token.SHL, x, b.Prog.IntVal(rot, b.Prog.Uintptr()))
	rhs := b.BinOp(token.SHR, x, b.Prog.IntVal(bits-rot, b.Prog.Uintptr()))
	return b.BinOp(token.OR, lhs, rhs)
}

func (p *context) rotateHiddenPointerRight(b llssa.Builder, x llssa.Expr, rot uint64) llssa.Expr {
	bits := p.prog.SizeOf(b.Prog.Uintptr()) * 8
	if rot == 0 || rot == bits {
		return x
	}
	lhs := b.BinOp(token.SHR, x, b.Prog.IntVal(rot, b.Prog.Uintptr()))
	rhs := b.BinOp(token.SHL, x, b.Prog.IntVal(bits-rot, b.Prog.Uintptr()))
	return b.BinOp(token.OR, lhs, rhs)
}

func (p *context) rotateHiddenPointerMaskedLeft(b llssa.Builder, x llssa.Expr, mask, bits, rot uint64) llssa.Expr {
	if rot == 0 || rot == bits {
		return b.BinOp(token.AND, x, b.Prog.IntVal(mask, b.Prog.Uintptr()))
	}
	lhs := b.BinOp(token.SHL, x, b.Prog.IntVal(rot, b.Prog.Uintptr()))
	rhs := b.BinOp(token.SHR, x, b.Prog.IntVal(bits-rot, b.Prog.Uintptr()))
	ret := b.BinOp(token.OR, lhs, rhs)
	return b.BinOp(token.AND, ret, b.Prog.IntVal(mask, b.Prog.Uintptr()))
}

func (p *context) rotateHiddenPointerMaskedRight(b llssa.Builder, x llssa.Expr, mask, bits, rot uint64) llssa.Expr {
	if rot == 0 || rot == bits {
		return b.BinOp(token.AND, x, b.Prog.IntVal(mask, b.Prog.Uintptr()))
	}
	lhs := b.BinOp(token.SHR, x, b.Prog.IntVal(rot, b.Prog.Uintptr()))
	rhs := b.BinOp(token.SHL, x, b.Prog.IntVal(bits-rot, b.Prog.Uintptr()))
	ret := b.BinOp(token.OR, lhs, rhs)
	return b.BinOp(token.AND, ret, b.Prog.IntVal(mask, b.Prog.Uintptr()))
}

func (p *context) hiddenPointerKey(b llssa.Builder, ptr llssa.Expr) llssa.Expr {
	key := b.Convert(b.Prog.Uintptr(), ptr)
	seed, mul, _, mask, tag, rot := p.hiddenPointerWordInfo()
	if mask != 0 {
		key = b.BinOp(token.AND, key, b.Prog.IntVal(mask, b.Prog.Uintptr()))
		key = b.BinOp(token.XOR, key, b.Prog.IntVal(seed, b.Prog.Uintptr()))
		key = p.rotateHiddenPointerMaskedLeft(b, key, mask, 56, rot)
		return b.BinOp(token.OR, key, b.Prog.IntVal(tag, b.Prog.Uintptr()))
	}
	key = b.BinOp(token.XOR, key, b.Prog.IntVal(seed, b.Prog.Uintptr()))
	key = b.BinOp(token.MUL, key, b.Prog.IntVal(mul, b.Prog.Uintptr()))
	return p.rotateHiddenPointerLeft(b, key, rot)
}

func (p *context) hiddenPointerDecode(b llssa.Builder, key llssa.Expr, t types.Type) llssa.Expr {
	seed, _, invMul, mask, _, rot := p.hiddenPointerWordInfo()
	if mask != 0 {
		raw := b.BinOp(token.AND, key, b.Prog.IntVal(mask, b.Prog.Uintptr()))
		raw = p.rotateHiddenPointerMaskedRight(b, raw, mask, 56, rot)
		raw = b.BinOp(token.XOR, raw, b.Prog.IntVal(seed, b.Prog.Uintptr()))
		return b.Convert(p.type_(t, llssa.InGo), raw)
	}
	raw := p.rotateHiddenPointerRight(b, key, rot)
	raw = b.BinOp(token.MUL, raw, b.Prog.IntVal(invMul, b.Prog.Uintptr()))
	raw = b.BinOp(token.XOR, raw, b.Prog.IntVal(seed, b.Prog.Uintptr()))
	return b.Convert(p.type_(t, llssa.InGo), raw)
}

func (p *context) compileHiddenMakeSliceValue(b llssa.Builder, slot llssa.Expr, t llssa.Type, out types.Type, nLen, nCap llssa.Expr, asValue bool) llssa.Expr {
	voidPtr := types.Typ[types.UnsafePointer]
	intTyp := types.Typ[types.Int]
	makeSliceToFn := b.Pkg.NewFunc(llssa.PkgRuntime+".MakeSliceTo",
		types.NewSignatureType(nil, nil, nil, types.NewTuple(
			types.NewParam(token.NoPos, nil, "", voidPtr),
			types.NewParam(token.NoPos, nil, "", intTyp),
			types.NewParam(token.NoPos, nil, "", intTyp),
			types.NewParam(token.NoPos, nil, "", intTyp),
		), nil, false), llssa.InGo)
	tmp := b.AllocaT(t)
	b.Call(makeSliceToFn.Expr,
		b.ChangeType(b.Prog.VoidPtr(), tmp),
		nLen,
		nCap,
		p.prog.IntVal(uint64(p.prog.SizeOf(p.prog.Index(t))), p.prog.Int()),
	)
	raw := b.Load(tmp)
	b.Store(slot, p.encodeHiddenStoredValue(b, raw, out))
	b.Store(tmp, p.prog.Zero(t))
	if !asValue {
		return p.prog.Zero(t)
	}
	return p.decodeHiddenStoredValue(b, b.Load(slot), out)
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
	var storedValueSlot bool
	if asValue {
		if slot, ok := p.valueSlots[iv]; ok && slot.Type != nil {
			if _, compiled := p.bvals[iv]; compiled {
				if p.hiddenValueSlots[iv] {
					return p.decodeHiddenStoredValue(b, b.Load(slot), iv.Type())
				}
				return b.Load(slot)
			}
		}
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
		ret = p.call(b, llssa.Call, v, &v.Call, asValue)
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
			if key, ok := p.hiddenPointerKeyForValue(b, v.X); ok {
				if slot, ok := p.valueSlots[v]; ok && slot.Type != nil && p.hiddenValueSlots[v] &&
					p.hiddenValueUsesUintptrSlot(v.Type()) {
					retKey := p.compileHiddenPointerDerefKey(b, key)
					b.Store(slot, retKey)
					if root, ok := p.valueRootSlots[v]; ok && root.Type != nil {
						p.storeHiddenPointerRoot(b, root, retKey)
					}
					storedValueSlot = true
					if asValue {
						ret = p.hiddenPointerDecode(b, retKey, v.Type())
					} else {
						ret = p.prog.Zero(p.type_(v.Type(), llssa.InGo))
					}
					break
				}
				ret = p.compileHiddenPointerDeref(b, key, v.Type())
				break
			}
			if alloc, ok := v.X.(*ssa.Alloc); ok && p.hiddenPtrAllocs[alloc] {
				slot := p.compileValue(b, v.X)
				ret = p.decodeHiddenStoredValue(b, b.Load(slot), v.Type())
				break
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
		if p.hiddenPtrAllocs[v] {
			if p.hiddenValueUsesUintptrSlot(t.Elem()) {
				ret = b.AllocaT(p.type_(types.Typ[types.Uintptr], llssa.InGo))
			} else {
				ret = b.AllocaT(elem)
			}
			break
		}
		ret = b.Alloc(elem, v.Heap && !p.canPromoteHeapAllocToStack(v))
	case *ssa.IndexAddr:
		vx := v.X
		if _, ok := p.isVArgs(vx); ok { // varargs: this is a varargs index
			return
		}
		if slot, ok := p.valueSlots[v]; ok && slot.Type != nil && p.hiddenValueSlots[v] && p.hiddenValueUsesUintptrSlot(v.Type()) {
			if key, length, ok := p.hiddenSliceArgKeyLen(b, vx); ok {
				idx := p.compileValue(b, v.Index)
				elemSize := p.prog.SizeOf(p.prog.Elem(p.type_(vx.Type(), llssa.InGo)))
				resKey := p.compileHiddenSliceIndexAddrKey(b, key, length, idx, v.Index.Type(), elemSize)
				b.Store(slot, resKey)
				if root, ok := p.valueRootSlots[v]; ok && root.Type != nil {
					p.storeHiddenPointerRoot(b, root, resKey)
				}
				if asValue {
					ret = p.hiddenPointerDecode(b, resKey, v.Type())
				} else {
					ret = p.prog.Nil(p.type_(v.Type(), llssa.InGo))
				}
				storedValueSlot = true
				break
			}
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
			if slot, ok := p.valueSlots[v]; ok && slot.Type != nil && p.hiddenValueSlots[v] && p.canClearHiddenAggregateSource(v.Type()) {
				ret = p.compileHiddenMakeSliceValue(b, slot, t, v.Type(), nLen, nCap, asValue)
				storedValueSlot = true
				break
			}
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
		if canSkipKeepAliveMakeInterface(v) || canSkipSetFinalizerObjectMakeInterface(v) {
			return
		}
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
		if slot, ok := p.valueSlots[v]; ok && slot.Type != nil && p.hiddenValueSlots[v] && p.canClearHiddenAggregateSource(v.Type()) {
			ret = p.compileHiddenMakeSliceValue(b, slot, t, v.Type(), nLen, nCap, asValue)
			storedValueSlot = true
			break
		}
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
	if slot, ok := p.valueSlots[iv]; !storedValueSlot && ok && slot.Type != nil && ret.Type != nil {
		if p.hiddenValueSlots[iv] {
			if p.hiddenValueUsesUintptrSlot(iv.Type()) && types.Identical(ret.Type.RawType(), types.Typ[types.Uintptr]) {
				b.Store(slot, ret)
				if root, ok := p.valueRootSlots[iv]; ok && root.Type != nil {
					p.storeHiddenPointerRoot(b, root, ret)
				}
			} else {
				b.Store(slot, p.encodeHiddenStoredValue(b, ret, iv.Type()))
				if p.canClearHiddenAggregateSource(iv.Type()) {
					b.ClearLoadSource(ret)
				}
				if root, ok := p.valueRootSlots[iv]; ok && root.Type != nil {
					b.Store(root, ret)
				}
			}
			if !asValue {
				ret = p.prog.Zero(p.type_(iv.Type(), llssa.InGo))
			}
		} else {
			b.Store(slot, ret)
		}
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
		if alloc, ok := va.(*ssa.Alloc); ok && p.hiddenPtrAllocs[alloc] {
			slot := p.compileValue(b, va)
			val := p.compileValue(b, v.Val)
			b.Store(slot, p.encodeHiddenStoredValue(b, val, alloc.Type().(*types.Pointer).Elem()))
			return
		}
		if key, ok := p.hiddenPointerArgKey(b, va); ok {
			val := p.compileValue(b, v.Val)
			typ := p.type_(v.Val.Type(), llssa.InGo)
			tmp := b.AllocaT(typ)
			b.Store(tmp, val)
			params := types.NewTuple(
				types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
				types.NewParam(token.NoPos, nil, "", types.Typ[types.UnsafePointer]),
				types.NewParam(token.NoPos, nil, "", types.Typ[types.Uintptr]),
			)
			helper := b.Pkg.NewFunc("runtime.StoreHiddenPointee",
				types.NewSignatureType(nil, nil, nil, params, nil, false), llssa.InGo)
			b.Call(helper.Expr,
				key,
				b.ChangeType(b.Prog.VoidPtr(), tmp),
				p.prog.IntVal(uint64(p.prog.SizeOf(typ)), b.Prog.Uintptr()),
			)
			b.Store(tmp, p.prog.Zero(typ))
			return
		}
		if key, ok := p.hiddenPointerKeyForValue(b, v.Val); ok {
			if ptr, ok := types.Unalias(v.Addr.Type()).(*types.Pointer); ok && ptr != nil &&
				types.Identical(ptr.Elem(), v.Val.Type()) && p.hiddenValueUsesUintptrSlot(v.Val.Type()) {
				root := p.compileValue(b, va)
				p.storeHiddenPointerRoot(b, root, key)
				return
			}
		}
		ptr := p.compileValue(b, va)
		val := p.compileValue(b, v.Val)
		b.Store(ptr, val)
		if storeClearsConservativePointerRoot(v) {
			p.clobberPointerRegs(b)
		}
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
		p.call(b, p.blkInfos[v.Block().Index].Kind, v, &v.Call, false)
	case *ssa.Go:
		p.call(b, llssa.Go, v, &v.Call, false)
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
	if slot, ok := p.valueSlots[v]; ok && slot.Type != nil {
		if _, compiled := p.bvals[v]; compiled {
			if p.hiddenValueSlots[v] {
				return p.decodeHiddenStoredValue(b, b.Load(slot), v.Type())
			}
			return b.Load(slot)
		}
	}
	if val, ok := p.bvals[v]; ok {
		return val
	}
	if iv, ok := v.(instrOrValue); ok {
		return p.compileInstrOrValue(b, iv, true)
	}
	switch v := v.(type) {
	case *ssa.Parameter:
		fn := v.Parent()
		for idx, param := range fn.Params {
			if param == v {
				if p.hiddenParamKeys[idx] {
					if slot, ok := p.paramSlots[idx]; ok && slot.Type != nil {
						if types.Identical(b.Prog.Elem(slot.Type).RawType(), v.Type()) {
							return b.Load(slot)
						}
						return p.decodeHiddenStoredValue(b, b.Load(slot), v.Type())
					}
					return p.decodeHiddenStoredValue(b, b.Param(idx), v.Type())
				}
				if shadow, ok := p.paramShadow[idx]; ok && shadow.Type != nil {
					return shadow
				}
				if slot, ok := p.paramSlots[idx]; ok && slot.Type != nil {
					return b.Load(slot)
				}
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

func (p *context) clearPreCallValues(b llssa.Builder, owner ssa.Instruction) {
	if owner == nil {
		return
	}
	cleared := make(map[ssa.Value]bool)
	for _, v := range p.valuePreClears[owner] {
		if cleared[v] {
			continue
		}
		slot, ok := p.valueSlots[v]
		if !ok || slot.Type == nil {
			continue
		}
		if p.hiddenValueSlots[v] {
			b.Store(slot, p.hiddenZeroStoredValue(b, v.Type()))
			if root, ok := p.valueRootSlots[v]; ok && root.Type != nil {
				b.Store(root, p.prog.Nil(b.Prog.Elem(root.Type)))
			}
			cleared[v] = true
			continue
		}
		b.Store(slot, p.prog.Zero(b.Prog.Elem(slot.Type)))
		cleared[v] = true
	}
}

func (p *context) compileValuesForInstr(b llssa.Builder, owner ssa.Instruction, vals []ssa.Value, hasVArg int) []llssa.Expr {
	ret := p.compileValues(b, vals, hasVArg)
	p.clearPreCallValues(b, owner)
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
