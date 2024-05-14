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

package numpy

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

// https://numpy.org/doc/stable/reference/index.html#reference

// Return evenly spaced values within a given interval.
//
//	numpy.arange([start, ]stop, [step, ]dtype=None, *, like=None)
//
// See https://numpy.org/doc/stable/reference/generated/numpy.arange.html#numpy-arange
//
//go:linkname Arange py.arange
func Arange(start, stop, step, dtype *py.Object) *py.Object

// Return a new array of given shape and type, without initializing entries.
//
//	numpy.empty(shape, dtype=float, order='C', *, like=None)
//
// See https://numpy.org/doc/stable/reference/generated/numpy.empty.html#numpy-empty
//
//go:linkname Empty py.empty
func Empty(shape, dtype, order *py.Object) *py.Object

// Return a 2-D array with ones on the diagonal and zeros elsewhere.
//
//	numpy.eye(N, M=None, k=0, dtype=<class 'float'>, order='C', *, like=None)
//
// See https://numpy.org/doc/stable/reference/generated/numpy.eye.html#numpy-eye
//
//go:linkname Eye py.eye
func Eye(N, M, k, dtype, order *py.Object) *py.Object

// Return a new array of given shape and type, filled with zeros.
//
//	numpy.zeros(shape, dtype=float, order='C', *, like=None)
//
// See https://numpy.org/doc/stable/reference/generated/numpy.zeros.html#numpy-zeros
//
//go:linkname Zeros py.zeros
func Zeros(shape, dtype, order *py.Object) *py.Object

// Create an array.
//
//	numpy.array(object, dtype=None, *, copy=True, order='K', subok=False, ndmin=0, like=None)
//
// See https://numpy.org/doc/stable/reference/generated/numpy.array.html#numpy-array
//
//go:linkname Array py.array
func Array(object, dtype *py.Object) *py.Object

// Convert the input to an array.
//
//	numpy.asarray(a, dtype=None, order=None, *, like=None)
//
// See https://numpy.org/doc/stable/reference/generated/numpy.asarray.html#numpy-asarray
//
//go:linkname AsArray py.asarray
func AsArray(a, dtype, order *py.Object) *py.Object
