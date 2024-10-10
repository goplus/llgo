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

// https://docs.python.org/3/c-api/object.html

//	struct _object {
//	    union {
//	       Py_ssize_t ob_refcnt;
//	       uint32_t ob_refcnt_split[2];
//	    };
//	    PyTypeObject *ob_type;
//	};
type Object struct {
	ObRefcnt c.Int
	_padding c.Int
	ObType   c.Pointer
}

// llgo:link (*Object).IncRef C.Py_IncRef
func (o *Object) IncRef() {}

// llgo:link (*Object).DecRef C.Py_DecRef
func (o *Object) DecRef() {}

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

// PyObject *PyObject_Repr(PyObject *o)
// Return value: New reference. Part of the Stable ABI.
// Compute a string representation of object o. Returns the string representation on success, NULL on failure. This is the equivalent of the Python expression repr(o). Called by the repr() built-in function.
// llgo:link (*Object).Repr C.PyObject_Repr
func (o *Object) Repr() *Object { return nil }

// int PyObject_Print(PyObject *o, FILE *fp, int flags)
// Print an object o, on file fp. Returns -1 on error. The flags argument is used to enable certain printing options. The only option currently supported is Py_PRINT_RAW; if given, the str() of the object is written instead of the repr().
// llgo:link (*Object).Print C.PyObject_Print
func (o *Object) Print(fp c.FilePtr, flags c.Int) c.Int { return -1 }
