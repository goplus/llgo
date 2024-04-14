/*
 * Copyright (c) 2023 The GoPlus Authors (goplus.org). All rights reserved.
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

/*
// Define unimplemented intrinsic functions.
//
// Some functions are either normally implemented in Go assembly (like
// sync/atomic functions) or intentionally left undefined to be implemented
// directly in the compiler (like runtime/volatile functions). Either way, look
// for these and implement them if this is the case.
func (b *builder) defineIntrinsicFunction() {
	panic("todo")
}

var mathToLLVMMapping = map[string]string{
	"math.Ceil":  "llvm.ceil.f64",
	"math.Exp":   "llvm.exp.f64",
	"math.Exp2":  "llvm.exp2.f64",
	"math.Floor": "llvm.floor.f64",
	"math.Log":   "llvm.log.f64",
	"math.Sqrt":  "llvm.sqrt.f64",
	"math.Trunc": "llvm.trunc.f64",
}

// defineMathOp defines a math function body as a call to a LLVM intrinsic,
// instead of the regular Go implementation. This allows LLVM to reason about
// the math operation and (depending on the architecture) allows it to lower the
// operation to very fast floating point instructions. If this is not possible,
// LLVM will emit a call to a libm function that implements the same operation.
//
// One example of an optimization that LLVM can do is to convert
// float32(math.Sqrt(float64(v))) to a 32-bit floating point operation, which is
// beneficial on architectures where 64-bit floating point operations are (much)
// more expensive than 32-bit ones.
func (b *builder) defineMathOp() {
	panic("todo")
}

// Implement most math/bits functions.
//
// This implements all the functions that operate on bits. It does not yet
// implement the arithmetic functions (like bits.Add), which also have LLVM
// intrinsics.
func (b *builder) defineMathBitsIntrinsic() bool {
	panic("todo")
}
*/
