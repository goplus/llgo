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

package math

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

// https://docs.python.org/3/library/math.html

//go:linkname Pi py.pi
var Pi *py.Object

// Unlike the built-in ** operator, math.pow() converts both its arguments to type
// float. Use ** or the built-in pow() function for computing exact integer powers.
//
//go:linkname Pow py.pow
func Pow(x, y *py.Object) *py.Object

// Return the sine of x radians.
//
//go:linkname Sin py.sin
func Sin(x *py.Object) *py.Object

// Return the hyperbolic sine of x.
//
//go:linkname Sinh py.sinh
func Sinh(x *py.Object) *py.Object

// With one argument, return the natural logarithm of x (to base e).
//
//go:linkname Log py.log
func Log(x *py.Object) *py.Object

// With two arguments, return the logarithm of x to the given base, calculated
// as log(x)/log(base).
//
//go:linkname LogOf py.log
func LogOf(x, base *py.Object) *py.Object

// Return the natural logarithm of 1+x (base e). The result is calculated in
// a way which is accurate for x near zero.
//
//go:linkname Log1p py.log1p
func Log1p(x *py.Object) *py.Object

// Return the base-2 logarithm of x. This is usually more accurate than log(x, 2).
//
//go:linkname Log2 py.log2
func Log2(x *py.Object) *py.Object

// Return the base-10 logarithm of x. This is usually more accurate than log(x, 10).
//
//go:linkname Log10 py.log10
func Log10(x *py.Object) *py.Object

// Return the fractional and integer parts of x. Both results carry the sign of
// x and are floats.
//
//go:linkname Modf py.modf
func Modf(x *py.Object) *py.Object

// Return the Euclidean norm, sqrt(sum(x**2 for x in coordinates)). This is the
// length of the vector from the origin to the point given by the coordinates.
//
//go:linkname Hypot py.hypot
func Hypot(coordinates ...*py.Object) *py.Object
