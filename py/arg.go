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

	"github.com/goplus/llgo/c"
)

// https://docs.python.org/3/c-api/arg.html

// Create a new value based on a format string similar to those accepted by the
// PyArg_Parse* family of functions and a sequence of values. Returns the value or
// nil in the case of an error; an exception will be raised if nil is returned.
// See https://docs.python.org/3/c-api/arg.html#c.Py_BuildValue
//
//go:linkname BuildValue C.Py_BuildValue
func BuildValue(format *c.Char, __llgo_va_list ...any) *Object

// int PyArg_ParseTuple(PyObject *args, const char *format, ...)
// Part of the Stable ABI.
// Parse the parameters of a function that takes only positional parameters
// into local variables. Returns true on success; on failure, it returns false
// and raises the appropriate exception.
//
//go:linkname ParseTuple C.PyArg_ParseTuple
func ParseTuple(args *Object, format *c.Char, __llgo_va_list ...any) bool
