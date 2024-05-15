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

// https://docs.python.org/3/c-api/long.html

//go:linkname Long C.PyLong_FromLong
func Long(v c.Long) *Object

//go:linkname LongLong C.PyLong_FromLongLong
func LongLong(v c.LongLong) *Object

//go:linkname Ulong C.PyLong_FromUnsignedLong
func Ulong(v c.Ulong) *Object

//go:linkname UlongLong C.PyLong_FromUnsignedLongLong
func UlongLong(v c.UlongLong) *Object

//go:linkname Uintptr C.PyLong_FromSize_t
func Uintptr(v uintptr) *Object

//go:linkname LongFromFloat64 C.PyLong_FromDouble
func LongFromFloat64(v float64) *Object

//go:linkname LongFromVoidPtr C.PyLong_FromVoidPtr
func LongFromVoidPtr(v c.Pointer) *Object

//go:linkname LongFromCStr C.PyLong_FromString
func LongFromCStr(v *c.Char, pend **c.Char, base c.Int) *Object

//go:linkname LongFromUnicode C.PyLong_FromUnicodeObject
func LongFromUnicode(v *Object, base c.Int) *Object

// llgo:link (*Object).Long C.PyLong_AsLong
func (l *Object) Long() c.Long { return 0 }

// llgo:link (*Object).LongLong C.PyLong_AsLongLong
func (l *Object) LongLong() c.LongLong { return 0 }

// llgo:link (*Object).Ulong C.PyLong_AsUnsignedLong
func (l *Object) Ulong() c.Ulong { return 0 }

// llgo:link (*Object).UlongLong C.PyLong_AsUnsignedLongLong
func (l *Object) UlongLong() c.UlongLong { return 0 }

// llgo:link (*Object).Uintptr C.PyLong_AsSize_t
func (l *Object) Uintptr() uintptr { return 0 }

// llgo:link (*Object).LongAsFloat64 C.PyLong_AsDouble
func (l *Object) LongAsFloat64() float64 { return 0 }

// llgo:link (*Object).LongAsVoidPtr C.PyLong_AsVoidPtr
func (l *Object) LongAsVoidPtr() c.Pointer { return nil }
