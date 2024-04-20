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

package ssa

import (
	"github.com/goplus/llvm"
)

// -----------------------------------------------------------------------------

type aBasicBlock struct {
	impl llvm.BasicBlock
	fn   Function
	idx  int
}

// BasicBlock represents a basic block in a function.
type BasicBlock = *aBasicBlock

// Parent returns the function to which the basic block belongs.
func (p BasicBlock) Parent() Function {
	return p.fn
}

// Index returns the index of the basic block in the parent function.
func (p BasicBlock) Index() int {
	return p.idx
}

// -----------------------------------------------------------------------------

type aBuilder struct {
	impl llvm.Builder
	fn   Function
	prog Program
}

// Builder represents a builder for creating instructions in a function.
type Builder = *aBuilder

// SetBlock sets the current block to the specified basic block.
func (b Builder) SetBlock(blk BasicBlock) Builder {
	if b.fn != blk.fn {
		panic("mismatched function")
	}
	b.impl.SetInsertPointAtEnd(blk.impl)
	return b
}

// Return emits a return instruction.
func (b Builder) Return(results ...Expr) {
	switch n := len(results); n {
	case 0:
		b.impl.CreateRetVoid()
	case 1:
		b.impl.CreateRet(results[0].impl)
	default:
		b.impl.CreateAggregateRet(llvmValues(results))
	}
}

// If emits an if instruction.
func (b Builder) If(cond Expr, thenb, elseb BasicBlock) {
	if b.fn != thenb.fn || b.fn != elseb.fn {
		panic("mismatched function")
	}
	b.impl.CreateCondBr(cond.impl, thenb.impl, elseb.impl)
}

// -----------------------------------------------------------------------------
