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

package std

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/bdwgc"
)

// -----------------------------------------------------------------------------

// StringView represents a C++ std::string_view object.
type StringView = string

// -----------------------------------------------------------------------------

// String represents a C++ std::string object.
type String struct {
	Unused [24]byte
}

// llgo:link (*String).InitEmpty C.stdStringInitEmpty
func (s *String) InitEmpty() {}

// llgo:link (*String).InitFrom C.stdStringInitFrom
func (s *String) InitFrom(v *String) {}

// llgo:link (*String).InitFromCStr C.stdStringInitFromCStr
func (s *String) InitFromCStr(cstr *c.Char) {}

// llgo:link (*String).InitFromCStrLen C.stdStringInitFromCStrLen
func (s *String) InitFromCStrLen(cstr *c.Char, n uintptr) {}

// llgo:link (*String).Dispose C.stdStringDispose
func (s *String) Dispose() {}

// -----------------------------------------------------------------------------

func allocString() *String {
	ptr := bdwgc.Malloc(unsafe.Sizeof(String{}))
	bdwgc.RegisterFinalizer(ptr, func(obj, data c.Pointer) {
		(*String)(obj).Dispose()
	}, nil, nil, nil)
	return (*String)(ptr)
}

// NewString creates a C++ std::string object.
func NewString(v string) *String {
	ret := allocString()
	ret.InitFromCStrLen(c.GoStringData(v), uintptr(len(v)))
	return ret
}

// NewStringEmpty creates an empty std::string object.
func NewStringEmpty() *String {
	ret := allocString()
	ret.InitEmpty()
	return ret
}

// NewStringFrom creates a copy of a C++ std::string object.
func NewStringFrom(v *String) *String {
	ret := allocString()
	ret.InitFrom(v)
	return ret
}

// NewStringFromCStr creates a C++ std::string object.
func NewStringFromCStr(cstr *c.Char) *String {
	ret := allocString()
	ret.InitFromCStr(cstr)
	return ret
}

// NewStringFromCStrLen creates a C++ std::string object.
func NewStringFromCStrLen(cstr *c.Char, n uintptr) *String {
	ret := allocString()
	ret.InitFromCStrLen(cstr, n)
	return ret
}

// -----------------------------------------------------------------------------

// Str returns a Go string (it doesn't clone data of the C++ std::string object).
func (s *String) Str() string {
	return unsafe.String((*byte)(unsafe.Pointer(s.Data())), s.Size())
}

// llgo:link (*String).CStr C.stdStringCStr
func (s *String) CStr() *c.Char { return nil }

// llgo:link (*String).Data C.stdStringData
func (s *String) Data() *c.Char { return nil }

// llgo:link (*String).Size C.stdStringSize
func (s *String) Size() uintptr { return 0 }

// -----------------------------------------------------------------------------

// GoString converts a C++ std::string object to a Go string.
func GoString(v *String) string {
	return c.GoString(v.Data(), v.Size())
}

// Str creates a constant C++ std::string object.
func Str(v string) *String {
	return NewString(v) // TODO(xsw): optimize it
}

// -----------------------------------------------------------------------------
