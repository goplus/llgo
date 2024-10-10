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

// https://docs.python.org/3/c-api/call.html

// Determine if the object o is callable. Return 1 if the object is callable and
// 0 otherwise. This function always succeeds.
//
// llgo:link (*Object).Callable C.PyCallable_Check
func (o *Object) Callable() c.Int { return 0 }

// Call a callable Python object o, with arguments given by the tuple args, and
// named arguments given by the dictionary kwargs.
//
// args must not be nil; use an empty tuple if no arguments are needed. If no named
// arguments are needed, kwargs can be nil.
//
// Return the result of the call on success, or raise an exception and return nil
// on failure.
//
// This is the equivalent of the Python expression: o(*args, **kwargs).
//
// llgo:link (*Object).Call C.PyObject_Call
func (o *Object) Call(args, kwargs *Object) *Object { return nil }

// Call a callable Python object callable without any arguments. It is the most
// efficient way to call a callable Python object without any argument.
//
// Return the result of the call on success, or raise an exception and return nil
// on failure.
//
// llgo:link (*Object).CallNoArgs C.PyObject_CallNoArgs
func (o *Object) CallNoArgs() *Object { return nil }

// Call a callable Python object callable with exactly 1 positional argument arg
// and no keyword arguments.
//
// Return the result of the call on success, or raise an exception and return nil
// on failure.
//
// llgo:link (*Object).CallOneArg C.PyObject_CallOneArg
func (o *Object) CallOneArg(arg *Object) *Object { return nil }

// Call a callable Python object o, with arguments given by the tuple args. If no
// arguments are needed, then args can be nil.
//
// Return the result of the call on success, or raise an exception and return nil
// on failure.
//
// This is the equivalent of the Python expression: o(*args).
//
// llgo:link (*Object).CallObject C.PyObject_CallObject
func (o *Object) CallObject(args *Object) *Object { return nil }

// Call a callable Python object o, with a variable number of C arguments. The C
// arguments are described using a py.BuildValue style format string. The format
// can be nil, indicating that no arguments are provided.
//
// Return the result of the call on success, or raise an exception and return nil
// on failure.
//
// This is the equivalent of the Python expression: o(*args).
//
// Note that if you only pass PyObject* args, (*Object).CallFunctionObjArgs is a
// faster alternative.
//
// llgo:link (*Object).CallFunction C.PyObject_CallFunction
func (o *Object) CallFunction(format *c.Char, __llgo_va_list ...any) *Object { return nil }

// Call a callable Python object o, with a variable number of PyObject* arguments.
// The arguments are provided as a variable number of parameters followed by nil.
//
// Return the result of the call on success, or raise an exception and return nil
// on failure.
//
// This is the equivalent of the Python expression: o(arg1, arg2, ...).
//
// llgo:link (*Object).CallFunctionObjArgs C.PyObject_CallFunctionObjArgs
func (o *Object) CallFunctionObjArgs(__llgo_va_list ...any) *Object { return nil }

// llgo:link (*Object).CallMethod C.PyObject_CallMethod
func (o *Object) CallMethod(name *c.Char, format *c.Char, __llgo_va_list ...any) *Object {
	return nil
}

// llgo:link (*Object).CallMethodObjArgs C.PyObject_CallMethodObjArgs
func (o *Object) CallMethodObjArgs(name *Object, __llgo_va_list ...any) *Object { return nil }

// llgo:link (*Object).Vectorcall C.PyObject_Vectorcall
func (o *Object) Vectorcall(args **Object, nargs uintptr, kwnames *Object) *Object {
	return nil
}

// llgo:link (*Object).VectorcallDict C.PyObject_VectorcallDict
func (o *Object) VectorcallDict(args **Object, nargs uintptr, kwdict *Object) *Object {
	return nil
}

// llgo:link (*Object).VectorcallMethod C.PyObject_VectorcallMethod
func (o *Object) VectorcallMethod(name *Object, args **Object, nargs uintptr, kwnames *Object) *Object {
	return nil
}

// -----------------------------------------------------------------------------
