package cl

import (
	"fmt"
	"go/ast"
	"go/token"
	"go/types"
	"os"
	"strings"
	"unsafe"

	"golang.org/x/tools/go/ssa"

	"github.com/goplus/llgo/cl/ssahack"
)

type Rewriter = *rewriter

type rewriter struct {
	releaseFuncs      map[string]*ssa.Function // release functions
	retainFuncs       map[string]*ssa.Function // retain functions
	releaseFuncsCache map[types.Type]*ssa.Function
	retainFuncsCache  map[types.Type]*ssa.Function
}

func NewRewriter() *rewriter {
	return &rewriter{
		releaseFuncs:      make(map[string]*ssa.Function),
		retainFuncs:       make(map[string]*ssa.Function),
		releaseFuncsCache: make(map[types.Type]*ssa.Function),
		retainFuncsCache:  make(map[types.Type]*ssa.Function),
	}
}

func (ctx *rewriter) RegAutoPtrFuncs(pkg *ssa.Package) {
	for _, m := range pkg.Members {
		if ty, ok := m.(*ssa.Type); ok {
			tn := ty.Object().(*types.TypeName)
			typ := tn.Type()
			ctx.regAutoPtrMthds(pkg.Prog, pkg.Pkg, typ)
			ctx.regAutoPtrMthds(pkg.Prog, pkg.Pkg, types.NewPointer(typ))
		}
	}
}

func (ctx *rewriter) regAutoPtrMthds(prog *ssa.Program, pkgTypes *types.Package, typ types.Type) {
	methods := prog.MethodSets.MethodSet(typ)
	for i := 0; i < methods.Len(); i++ {
		method := methods.At(i)
		if ssaMthd := prog.MethodValue(method); ssaMthd != nil {
			n := ssaMthd.Syntax()
			if n == nil {
				continue
			}
			if fnDecl, ok := n.(*ast.FuncDecl); ok {
				if fnDecl.Doc == nil {
					continue
				}
				docList := fnDecl.Doc.List
				for i := len(docList) - 1; i >= 0; i-- {
					doc := docList[i].Text
					if strings.HasPrefix(doc, "//go:") || strings.HasPrefix(doc, "// go:") {
						continue
					}
					directive := ""
					if strings.HasPrefix(doc, "//llgo:") {
						directive = strings.TrimSpace(doc[7:])
					} else if strings.HasPrefix(doc, "// llgo:") {
						directive = strings.TrimSpace(doc[8:])
					} else {
						break
					}

					toks := strings.SplitN(directive, " ", 2)
					autotype, _ := toks[0], toks[1]
					switch autotype {
					case "autorelease":
						ctx.initDirective(ctx.releaseFuncs, pkgTypes, typ, ssaMthd)
					case "autoretain":
						ctx.initDirective(ctx.retainFuncs, pkgTypes, typ, ssaMthd)
					}
				}
			}
		}
	}
}

func (ctx *rewriter) initDirective(funcs map[string]*ssa.Function, pkg *types.Package, typ types.Type, fn *ssa.Function) {
	fnName := funcName(pkg, fn)
	if debugGoSSA {
		fmt.Fprintf(os.Stderr, "initDirective: %s, %p %s\n", fnName, typ, typ.String())
	}
	funcs[typ.String()] = fn
}

func (ctx *rewriter) getAutoReleaseFunc(typ types.Type) (fn *ssa.Function, ok bool) {
	if fn, ok = ctx.releaseFuncsCache[typ]; ok {
		if fn == nil {
			ok = false
		}
		return
	}
	if fn, ok = ctx.releaseFuncs[typ.String()]; ok {
		ctx.releaseFuncsCache[typ] = fn
	} else {
		ctx.releaseFuncsCache[typ] = nil
	}
	return fn, ok
}

func (ctx *rewriter) getAutoRetainFunc(typ types.Type) (fn *ssa.Function, ok bool) {
	if fn, ok = ctx.retainFuncsCache[typ]; ok {
		if fn == nil {
			ok = false
		}
		return
	}
	if fn, ok = ctx.retainFuncs[typ.String()]; ok {
		ctx.retainFuncsCache[typ] = fn
	} else {
		ctx.retainFuncsCache[typ] = nil
	}
	return fn, ok
}

func (ctx *rewriter) rewriteAutoPtrs(pkg *ssa.Package) {
	for _, m := range pkg.Members {
		if fn, ok := m.(*ssa.Function); ok {
			ctx.rewriteAutoPtrsInFunc(fn)
		}
	}
}

func (ctx *rewriter) rewriteAutoPtrsInFunc(fn *ssa.Function) {
	if fn.Blocks == nil {
		return
	}

	for _, anonFunc := range fn.AnonFuncs {
		ctx.rewriteAutoPtrsInFunc(anonFunc)
	}

	if debugGoSSA {
		fmt.Fprintf(os.Stderr, "Rewrite func %s:\n", fn.Name())
		_, _ = fn.WriteTo(os.Stderr)
	}

	escaped := make(map[ssa.Value]bool)
	runDefers := false
	hasDefers := false
	for _, b := range fn.Blocks {
		for _, instr := range b.Instrs {
			switch v := instr.(type) {
			case *ssa.Defer:
				hasDefers = true
			case *ssa.Return:
				for _, r := range v.Results {
					escaped[r] = true
				}
			case *ssa.RunDefers:
				runDefers = true
			}
		}
	}

	for _, b := range fn.Blocks {
		for i := 0; i < len(b.Instrs); i++ {
			instr := b.Instrs[i]
			if debugGoSSA {
				fmt.Fprintf(os.Stderr, "try rewrite instr: %T, %s\n", instr, instr.String())
			}
			switch v := instr.(type) {
			case *ssa.Call:
				typ := v.Type()
				switch typ := typ.(type) {
				case *types.Tuple:
					for i := 0; i < typ.Len(); i++ {
						typ := typ.At(i).Type()
						if relFn, ok := ctx.getAutoReleaseFunc(typ); ok {
							if debugGoSSA {
								fmt.Fprintf(os.Stderr, "INSERT AutoRelease for %s.%s in func: %s\n", typ.String(), relFn.Name(), fn.Name())
							}

							// TODO(lijie): find or insert extract instruction, add defer instruction
						}
					}
				default:
					if escaped[v.Value()] {
						continue
					}
					hasDefer := ctx.tryInsertAutoRelease(b, &i, v.Value(), false)
					hasDefers = hasDefers || hasDefer
				}
			case *ssa.Alloc:
				hasDefer := ctx.tryInsertAutoRelease(b, &i, v, true)
				hasDefers = hasDefers || hasDefer
			case *ssa.Store:
				switch v.Addr.(type) {
				case *ssa.FreeVar:
					ctx.tryInsertAutoRetain(b, &i, v.Val)
				}
			case *ssa.Phi:
				ctx.tryInsertAutoRetain(b, &i, v)
			}
		}
	}

	var rtn *ssa.Return
	if !runDefers && hasDefers {
		for _, b := range fn.Blocks {
			for i := 0; i < len(b.Instrs); i++ {
				instr := b.Instrs[i]
				switch instr := instr.(type) {
				case *ssa.Return:
					rtn = instr
					// insert runDefers before return
					runDefersInstr := (*ssahack.RunDefers)(unsafe.Pointer(&ssa.RunDefers{}))
					runDefersInstr.SetBlock(b)
					b.Instrs = append(b.Instrs, nil)
					copy(b.Instrs[i+1:], b.Instrs[i:])
					b.Instrs[i] = (*ssa.RunDefers)(unsafe.Pointer(runDefersInstr))
					i++ // skip the newly inserted runDefers instruction
				}
			}
		}

		if fn.Recover == nil {
			// defers need recover block
			b := &ssa.BasicBlock{Comment: "recover"}
			rb := (*ssahack.BasicBlock)(unsafe.Pointer(b))
			rb.SetParent(fn)
			rb.Index = len(fn.Blocks)
			fn.Recover = b
			fn.Blocks = append(fn.Blocks, b)

			// TODO(lijie): fix return instruction insertion
			rtInstr := &ssa.Return{}
			results := make([]ssa.Value, len(rtn.Results))
			copy(results, rtn.Results)
			rtInstr.Results = results
			rt := (*ssahack.Return)(unsafe.Pointer(rtInstr))
			rt.SetBlock(b)
			rb.Instrs = append(rb.Instrs, rtInstr)
		}
	}

	if debugGoSSA {
		fmt.Fprintf(os.Stderr, "After rewrite func %s:\n", fn.Name())
		_, _ = fn.WriteTo(os.Stderr)
	}
}

func (r *rewriter) insertUnOp(b *ssa.BasicBlock, instrIdx *int, v ssa.Value) ssa.Value {
	i := *instrIdx
	ty := v.Type().(*types.Pointer).Elem()
	if debugGoSSA {
		fmt.Fprintf(os.Stderr, "addUnOp in func %s: value type %T, %s\n", b.Parent().Name(), v, ty.String())
	}
	unopInstr := &ssa.UnOp{
		Op: token.MUL,
		X:  v,
	}
	unop := (*ssahack.UnOp)(unsafe.Pointer(unopInstr))
	unop.SetBlock(b)
	unop.SetType(ty)
	// TODO(lijie): find next available register number
	num := b.Index*1000 + *instrIdx
	unop.SetNum(num)
	b.Instrs = append(b.Instrs, nil)
	copy(b.Instrs[i+2:], b.Instrs[i+1:])
	b.Instrs[i+1] = (*ssa.UnOp)(unsafe.Pointer(unopInstr))
	*instrIdx++ // skip the newly inserted unop instruction
	return unopInstr
}

func (r *rewriter) tryInsertAutoRelease(b *ssa.BasicBlock, instrIdx *int, v ssa.Value, deref bool) bool {
	ty := v.Type()
	if deref {
		ty = ty.(*types.Pointer).Elem()
	}
	if debugGoSSA {
		fmt.Fprintf(os.Stderr, "tryInsertAutoRelease in func %s: value type %T, %s\n", b.Parent().Name(), v, ty.String())
	}
	if relFn, ok := r.getAutoReleaseFunc(ty); ok {
		if debugGoSSA {
			fmt.Fprintf(os.Stderr, "INSERT AutoRelease for %s.%s in func: %s\n", ty.String(), relFn.Name(), b.Parent().Name())
		}
		if deref {
			// TODO(lijie): generate code
			// defer (){
			//   v.DecRef()
			// }()

			// v = r.insertUnOp(b, instrIdx, v)
			return false
		}

		deferInstr := (*ssahack.Defer)(unsafe.Pointer(&ssa.Defer{
			Call: ssa.CallCommon{
				Value: relFn,
				Args:  []ssa.Value{v},
			},
		}))
		deferInstr.SetBlock(b)
		b.Instrs = append(b.Instrs, nil)
		i := *instrIdx
		copy(b.Instrs[i+2:], b.Instrs[i+1:])
		b.Instrs[i+1] = (*ssa.Defer)(unsafe.Pointer(deferInstr))
		*instrIdx++ // skip the newly inserted defer instruction
		return true
	}
	return false
}

func (r *rewriter) tryInsertAutoRetain(b *ssa.BasicBlock, instrIdx *int, v ssa.Value) bool {
	i := *instrIdx
	ty := v.Type()
	if debugGoSSA {
		fmt.Fprintf(os.Stderr, "tryInsertAutoRetain in func %s: value type %T, %s\n", b.Parent().Name(), v, ty.String())
	}
	if relFn, ok := r.getAutoRetainFunc(ty); ok {
		if debugGoSSA {
			fmt.Fprintf(os.Stderr, "INSERT AutoRetain for %s.%s in func: %s\n", ty.String(), relFn.Name(), b.Parent().Name())
		}
		retainInstr := (*ssahack.Call)(unsafe.Pointer(&ssa.Call{
			Call: ssa.CallCommon{
				Value: relFn,
				Args:  []ssa.Value{v},
			},
		}))
		retainInstr.SetBlock(b)
		b.Instrs = append(b.Instrs, nil)
		copy(b.Instrs[i+2:], b.Instrs[i+1:])
		b.Instrs[i+1] = (*ssa.Call)(unsafe.Pointer(retainInstr))
		*instrIdx++ // skip the newly inserted retain instruction
		return true
	}
	return false
}
