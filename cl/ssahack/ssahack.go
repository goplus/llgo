package ssahack

import (
	"go/token"
	"go/types"
	_ "unsafe"

	"golang.org/x/tools/go/ssa"
)

type register struct {
	anInstruction
	num       int        // "name" of virtual register, e.g. "t0".  Not guaranteed unique.
	typ       types.Type // type of virtual register
	pos       token.Pos  // position of source expression, or NoPos
	referrers []ssa.Instruction
}

type anInstruction struct {
	block *ssa.BasicBlock // the basic block of this instruction
}

func (i *anInstruction) SetBlock(b *ssa.BasicBlock) {
	i.block = b
}

type CallCommon struct {
	Value  ssa.Value   // receiver (invoke mode) or func value (call mode)
	Method *types.Func // interface method (invoke mode)
	Args   []ssa.Value // actual parameters (in static method call, includes receiver)
	pos    token.Pos   // position of CallExpr.Lparen, iff explicit in source
}

type Call struct {
	register
	Call CallCommon
}

type Extract struct {
	register
	Tuple ssa.Value
	Index int
}

type Store struct {
	anInstruction
	Addr ssa.Value
	Val  ssa.Value
	pos  token.Pos
}

type Defer struct {
	anInstruction
	Call CallCommon
	pos  token.Pos
}

type RunDefers struct {
	anInstruction
}

type Return struct {
	anInstruction
	Results []ssa.Value
	pos     token.Pos
}

type UnOp struct {
	register
	Op      token.Token // One of: NOT SUB ARROW MUL XOR ! - <- * ^
	X       ssa.Value
	CommaOk bool
}

type BasicBlock struct {
	Index        int               // index of this block within Parent().Blocks
	Comment      string            // optional label; no semantic significance
	parent       *ssa.Function     // parent function
	Instrs       []ssa.Instruction // instructions in order
	Preds, Succs []*BasicBlock     // predecessors and successors
	succs2       [2]*BasicBlock    // initial space for Succs
	dom          domInfo           // dominator tree info
	gaps         int               // number of nil Instrs (transient)
	rundefers    int               // number of rundefers (transient)
}

func (b *BasicBlock) SetParent(f *ssa.Function) {
	b.parent = f
}

// domInfo contains a BasicBlock's dominance information.
type domInfo struct {
	idom      *ssa.BasicBlock   // immediate dominator (parent in domtree)
	children  []*ssa.BasicBlock // nodes immediately dominated by this one
	pre, post int32             // pre- and post-order numbering within domtree
}
