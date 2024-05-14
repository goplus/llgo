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
