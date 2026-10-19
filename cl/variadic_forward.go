package cl

import (
	"fmt"
	"go/token"
	"go/types"
	"sort"

	llssa "github.com/xgo-dev/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

func (p *context) cVariadicForwardingError(fn *ssa.Function, reason string) error {
	target := p.prog.Target()
	return fmt.Errorf("cannot forward C variadic arguments in %s on %s/%s: %s",
		fn, target.GOOS, target.GOARCH, reason)
}

func (p *context) cVariadicWrapperError(fn *ssa.Function) error {
	if fn == nil || fn.Synthetic == "" || !llssa.HasNameValist(fn.Signature) {
		return nil
	}
	if err := p.variadicErrors[fn]; err != nil {
		return err
	}
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			call, ok := instr.(ssa.CallInstruction)
			if !ok || !isCVariadicWrapperForwarding(fn, call.Common()) {
				continue
			}
			if reason := p.cVariadicWrapperForwardingReason(fn, call.Common()); reason != "" {
				return p.cVariadicForwardingError(fn, reason)
			}
			callee := call.Common().StaticCallee()
			if callee == nil {
				return p.cVariadicForwardingError(fn, "indirect variadic forwarding is not supported")
			}
			if err := p.cVariadicWrapperError(callee); err != nil {
				return err
			}
		}
	}
	return nil
}

// compileType eagerly emits both value and pointer method sets, including
// wrappers that are never selected by the source. Diagnose uses instead of
// rejecting an unused value wrapper beside a supported pointer wrapper.
// Explicit C calls already supply their ellipsis and need no forwarding.
func (p *context) validateCVariadicWrapperUses() error {
	functions := make([]*ssa.Function, 0, len(p.funcs))
	for fn := range p.funcs {
		if fn.Synthetic == "" || !isRecoverTransparentWrapper(fn) {
			functions = append(functions, fn)
		}
	}
	sort.Slice(functions, func(i, j int) bool { return functions[i].String() < functions[j].String() })
	positioned := func(err error, pos token.Pos, fn *ssa.Function) error {
		if !pos.IsValid() {
			pos = fn.Pos()
		}
		if pos.IsValid() {
			return fmt.Errorf("%s: %w", p.fset.Position(pos), err)
		}
		return err
	}
	for _, fn := range functions {
		for _, block := range fn.Blocks {
			for _, instr := range block.Instrs {
				if conversion, ok := instr.(*ssa.MakeInterface); ok {
					typ := conversion.X.Type()
					methods := p.goProg.MethodSets.MethodSet(typ)
					for i := 0; i < methods.Len(); i++ {
						selection := methods.At(i)
						if !llssa.HasNameValist(selection.Type().(*types.Signature)) {
							continue
						}
						if !isPointerGoType(typ) {
							// Only methods in the value's method set are exposed,
							// but interface dispatch selects their pointer entries.
							pointerMethods := p.goProg.MethodSets.MethodSet(types.NewPointer(typ))
							selection = pointerMethods.Lookup(selection.Obj().Pkg(), selection.Obj().Name())
						}
						if wrapper := p.methodValue(selection); wrapper != nil {
							if err := p.cVariadicWrapperError(wrapper); err != nil {
								return positioned(err, instr.Pos(), fn)
							}
						}
					}
				}
				for _, operand := range instr.Operands(nil) {
					wrapper, ok := (*operand).(*ssa.Function)
					if !ok || wrapper.Synthetic == "" {
						continue
					}
					if err := p.cVariadicWrapperError(wrapper); err != nil {
						return positioned(err, instr.Pos(), fn)
					}
				}
			}
		}
	}
	return nil
}
