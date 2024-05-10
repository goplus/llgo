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

package py

import (
	_ "unsafe"
)

// https://docs.python.org/3/c-api/float.html

//go:linkname Float C.PyFloat_FromDouble
func Float(v float64) *Object

//go:linkname FloatFromSring C.PyFloat_FromString
func FloatFromSring(v *Object) *Object

// llgo:link (*Object).Float64 C.PyFloat_AsDouble
func (o *Object) Float64() float64 { panic("unreachable") }
