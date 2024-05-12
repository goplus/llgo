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
//go:linkname FromCStr C.PyBytes_FromString
func FromCStr(s *c.Char) *Object

// FromString returns a new bytes object from a Go string.
func FromString(s string) *Object {
	return stringFromStringAndSize(c.GoStringData(s), uintptr(len(s)))
}

//go:linkname stringFromStringAndSize C.PyBytes_FromStringAndSize
func stringFromStringAndSize(s *c.Char, size uintptr) *Object

// CStr returns the content of a bytes object as a C string.
//
// llgo:link (*Object).CStr C.PyBytes_AsString
func (o *Object) CStr() *c.Char { return nil }

// llgo:link (*Object).Strlen C.PyBytes_Size
func (o *Object) Strlen() uintptr { return 0 }
