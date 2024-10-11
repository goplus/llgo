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

// https://docs.python.org/3/c-api/bytes.html

// String returns a new bytes object from a C string.
//
//go:linkname BytesFromCStr C.PyBytes_FromString
func BytesFromCStr(s *c.Char) *Object

// FromString returns a new bytes object from a Go string.
func BytesFromString(s string) *Object {
	return BytesFromStringAndSize(c.GoStringData(s), uintptr(len(s)))
}

//go:linkname BytesFromStringAndSize C.PyBytes_FromStringAndSize
func BytesFromStringAndSize(s *c.Char, size uintptr) *Object

// CStr returns the content of a bytes object as a C string.
//
// llgo:link (*Object).BytesAsCStr C.PyBytes_AsString
func (o *Object) BytesAsCStr() *c.Char { return nil }

// llgo:link (*Object).BytesSize C.PyBytes_Size
func (o *Object) BytesSize() uintptr { return 0 }

// int PyBytes_AsStringAndSize(PyObject *obj, char **buffer, Py_ssize_t *length)
// Part of the Stable ABI.
// Return the null-terminated contents of the object obj through the output variables buffer and length. Returns 0 on success.
// If length is NULL, the bytes object may not contain embedded null bytes; if it does, the function returns -1 and a ValueError is raised.
// The buffer refers to an internal buffer of obj, which includes an additional null byte at the end (not counted in length). The data must not be modified in any way, unless the object was just created using PyBytes_FromStringAndSize(NULL, size). It must not be deallocated. If obj is not a bytes object at all, PyBytes_AsStringAndSize() returns -1 and raises TypeError.
// llgo:link (*Object).BytesAsCStrAndSize C.PyBytes_AsStringAndSize
func (o *Object) BytesAsCStrAndSize(**c.Char, *uintptr)
