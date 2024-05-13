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

package inspect

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const (
	LLGoPackage = "py.inspect"
)

// https://docs.python.org/3/library/inspect.html

// Return a signature object for the given callable.
//
//go:linkname Signature py.signature
func Signature(callable *py.Object) *py.Object

// Get the names and default values of a Python function’s parameters. A named
// tuple is returned:
//
// FullArgSpec(args, varargs, varkw, defaults, kwonlyargs, kwonlydefaults, annotations)
//
//go:linkname Getfullargspec py.getfullargspec
func Getfullargspec(f *py.Object) *py.Object
