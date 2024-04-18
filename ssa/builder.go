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
/*
type BasicBlock struct {
	impl llvm.BasicBlock
}
*/
// -----------------------------------------------------------------------------

type aBuilder struct {
	impl llvm.Builder
	prog Program
}

type Builder = *aBuilder

func (b Builder) Return(results ...Expr) Builder {
	switch n := len(results); n {
	case 0:
		b.impl.CreateRetVoid()
	case 1:
		b.impl.CreateRet(results[0].impl)
	default:
		b.impl.CreateAggregateRet(llvmValues(results))
	}
	return b
}

// -----------------------------------------------------------------------------
