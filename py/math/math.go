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

// Return the Euclidean norm, sqrt(sum(x**2 for x in coordinates)). This is the
// length of the vector from the origin to the point given by the coordinates.
//
//go:linkname Hypot py.hypot
func Hypot(coordinates ...*py.Object) *py.Object
