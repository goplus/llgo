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

// https://docs.python.org/3/c-api/code.html

// Equivalent to the Python code getattr(co, 'co_code'). Returns a strong
// reference to a BytesObject representing the bytecode in a code object.
// On error, nil is returned and an exception is raised.
//
// This BytesObject may be created on-demand by the interpreter and does
// not necessarily represent the bytecode actually executed by CPython.
// The primary use case for this function is debuggers and profilers.
//
// llgo:link (*Object).CodeBytes C.PyCode_GetCode
func (o *Object) CodeBytes() *Object { return nil }

// Equivalent to the Python code getattr(co, 'co_varnames'). Returns a new
// reference to a TupleObject containing the names of the local variables.
// On error, nil is returned and an exception is raised.
//
// llgo:link (*Object).CodeVarnames C.PyCode_GetVarnames
func (o *Object) CodeVarnames() *Object { return nil }
