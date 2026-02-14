package build

import (
	"go/token"

	"golang.org/x/tools/go/ssa"
)

// fixSSAOrder applies small SSA fixups for stdlib compatibility.
//
// go/ssa follows the spec's operand evaluation rules (only calls/receives/logical
// ops are ordered). Some stdlib code relies on the Go compiler's de-facto choice
// of delaying non-call operands, e.g. patterns like:
//
//	var o T
//	return o, o.mutate()
//
// where mutate has a pointer receiver and sets fields in o. go/ssa may materialize
// the first return value as a load before the call, which makes o appear unchanged
// to the return value in our backend.
//
// This pass moves loads of local allocs used only for the final Return results
// to after any intervening calls that use the same alloc pointer, matching the
// behavior of the Go compiler for the stdlib cases we rely on (e.g. crypto/x509.ParseOID).
func fixSSAOrder(pkg *ssa.Package) {
	for _, mem := range pkg.Members {
		fn, ok := mem.(*ssa.Function)
		if !ok {
			continue
		}
		fixSSAOrderFunc(fn)
	}
}

func fixSSAOrderFunc(fn *ssa.Function) {
	if fn == nil || len(fn.Blocks) == 0 {
		return
	}
	for _, b := range fn.Blocks {
		fixSSAOrderBlock(b)
	}
	for _, anon := range fn.AnonFuncs {
		fixSSAOrderFunc(anon)
	}
}

func fixSSAOrderBlock(b *ssa.BasicBlock) {
	if b == nil || len(b.Instrs) == 0 {
		return
	}
	// Find the (only) Return; by construction it's a terminating instruction.
	retIdx := -1
	var ret *ssa.Return
	for i := len(b.Instrs) - 1; i >= 0; i-- {
		if r, ok := b.Instrs[i].(*ssa.Return); ok {
			retIdx = i
			ret = r
			break
		}
	}
	if retIdx < 0 || ret == nil {
		return
	}

	// For each return result that is a load from a local alloc, try to move the
	// load after any intervening calls that use the alloc pointer.
	for _, rv := range ret.Results {
		u, ok := rv.(*ssa.UnOp)
		if !ok || u.Op != token.MUL {
			continue
		}
		alloc, ok := u.X.(*ssa.Alloc)
		if !ok {
			continue
		}

		loadIdx := indexOfInstr(b.Instrs, u)
		if loadIdx < 0 || loadIdx >= retIdx {
			continue
		}

		// Find the last call between load and return that uses the alloc pointer.
		lastCallIdx := -1
		for i := loadIdx + 1; i < retIdx; i++ {
			ci, ok := b.Instrs[i].(ssa.CallInstruction)
			if !ok {
				continue
			}
			if callUsesValue(ci, alloc) {
				lastCallIdx = i
			}
		}
		if lastCallIdx < 0 {
			continue
		}

		// If the loaded value is used by any instruction before lastCallIdx, we
		// can't move it.
		usedBeforeCall := false
		for i := loadIdx + 1; i <= lastCallIdx; i++ {
			if instrUsesValue(b.Instrs[i], u) {
				usedBeforeCall = true
				break
			}
		}
		if usedBeforeCall {
			continue
		}

		// Move the load right after the last call (but before Return).
		b.Instrs = moveInstr(b.Instrs, loadIdx, lastCallIdx+1)
		// Adjust retIdx for subsequent moves in this block.
		retIdx = indexOfInstr(b.Instrs, ret)
	}
}

func indexOfInstr(instrs []ssa.Instruction, target ssa.Instruction) int {
	for i, ins := range instrs {
		if ins == target {
			return i
		}
	}
	return -1
}

func instrUsesValue(ins ssa.Instruction, v ssa.Value) bool {
	if ins == nil || v == nil {
		return false
	}
	for _, op := range ins.Operands(nil) {
		if op != nil && *op == v {
			return true
		}
	}
	return false
}

func callUsesValue(ci ssa.CallInstruction, v ssa.Value) bool {
	c := ci.Common()
	if c == nil {
		return false
	}
	for _, a := range c.Args {
		if a == v {
			return true
		}
	}
	return false
}

// moveInstr moves instrs[from] to position to (like inserting before to),
// preserving relative order of other elements.
func moveInstr(instrs []ssa.Instruction, from, to int) []ssa.Instruction {
	if from < 0 || from >= len(instrs) {
		return instrs
	}
	if to < 0 {
		to = 0
	}
	if to > len(instrs) {
		to = len(instrs)
	}
	if from == to || from+1 == to {
		return instrs
	}

	ins := instrs[from]
	// Remove.
	copy(instrs[from:], instrs[from+1:])
	instrs = instrs[:len(instrs)-1]

	// Recompute insertion index after removal.
	if to > from {
		to--
	}
	if to < 0 {
		to = 0
	}
	if to > len(instrs) {
		to = len(instrs)
	}

	// Insert.
	instrs = append(instrs, nil)
	copy(instrs[to+1:], instrs[to:])
	instrs[to] = ins
	return instrs
}
