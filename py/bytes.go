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
	return stringFromStringAndSize(c.GoStringData(s), uintptr(len(s)))
}

//go:linkname stringFromStringAndSize C.PyBytes_FromStringAndSize
func stringFromStringAndSize(s *c.Char, size uintptr) *Object

// CStr returns the content of a bytes object as a C string.
//
// llgo:link (*Object).BytesAsCStr C.PyBytes_AsString
func (o *Object) BytesAsCStr() *c.Char { return nil }

// llgo:link (*Object).BytesSize C.PyBytes_Size
func (o *Object) BytesSize() uintptr { return 0 }
