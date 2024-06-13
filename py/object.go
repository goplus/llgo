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
	"unsafe"
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// https://docs.python.org/3/c-api/object.html

// Object represents a Python object.
type Object struct {
	Unused [8]byte
}

// llgo:autorelease (*Object).DecRef
// llgo:link (*Object).DecRef C.Py_DecRef
func (o *Object) DecRef() {}

// llgo:autoretain (*Object).IncRef
// llgo:link (*Object).IncRef C.Py_IncRef
func (o *Object) IncRef() {}

func (o *Object) RefCnt() c.Int {
	return *(*c.Int)(unsafe.Pointer(o))
}

// llgo:link (*Object).Type C.PyObject_Type
func (o *Object) Type() *Object { return nil }

// Compute a string representation of object o. Returns the string representation on
// success, nil on failure. This is the equivalent of the Python expression str(o).
// Called by the str() built-in function and, therefore, by the print() function.
//
// llgo:link (*Object).Str C.PyObject_Str
func (o *Object) Str() *Object { return nil }

// Returns 1 if the object o is considered to be true, and 0 otherwise. This is equivalent
// to the Python expression not not o. On failure, return -1.
//
// llgo:link (*Object).IsTrue C.PyObject_IsTrue
func (o *Object) IsTrue() c.Int { return -1 }

// Returns 0 if the object o is considered to be true, and 1 otherwise. This is equivalent
// to the Python expression not o. On failure, return -1.
//
// llgo:link (*Object).NotTrue C.PyObject_Not
func (o *Object) NotTrue() c.Int { return -1 }

// -----------------------------------------------------------------------------

// Retrieve an attribute named attrName from object o. Returns the attribute value on success,
// or nil on failure. This is the equivalent of the Python expression o.attrName.
//
// llgo:link (*Object).GetAttr C.PyObject_GetAttr
func (o *Object) GetAttr(attrName *Object) *Object { return nil }

// llgo:link (*Object).GetAttrString C.PyObject_GetAttrString
func (o *Object) GetAttrString(attrName *c.Char) *Object { return nil }

// -----------------------------------------------------------------------------
