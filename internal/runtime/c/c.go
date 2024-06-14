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

package c

import "C"
import "unsafe"

const (
	LLGoPackage = "decl"
)

type (
	Char    = int8
	Int     = C.int
	Pointer = unsafe.Pointer
	FilePtr = unsafe.Pointer
)

type integer interface {
	~int | ~uint | ~uintptr | ~int32 | ~uint32 | ~int64 | ~uint64
}

//go:linkname Str llgo.cstr
func Str(string) *Char

// llgo:link Advance llgo.advance
func Advance[PtrT any, I integer](ptr PtrT, offset I) PtrT { return ptr }

//go:linkname Alloca llgo.alloca
func Alloca(size uintptr) Pointer

//go:linkname AllocaCStr llgo.allocaCStr
func AllocaCStr(s string) *Char

//go:linkname GoDeferData llgo.deferData
func GoDeferData() Pointer

//go:linkname Unreachable llgo.unreachable
func Unreachable()

//go:linkname Exit C.exit
func Exit(Int)

//go:linkname AllocaSigjmpBuf llgo.sigjmpbuf
func AllocaSigjmpBuf() Pointer

//go:linkname Sigsetjmp llgo.sigsetjmp
func Sigsetjmp(jb Pointer, savemask Int) Int

//go:linkname Siglongjmp llgo.siglongjmp
func Siglongjmp(jb Pointer, retval Int)

//go:linkname Rand C.rand
func Rand() Int

//go:linkname Malloc C.malloc
func Malloc(size uintptr) Pointer

//go:linkname Free C.free
func Free(ptr Pointer)

//go:linkname Memcpy C.memcpy
func Memcpy(dst, src Pointer, n uintptr) Pointer

//go:linkname Memmove C.memmove
func Memmove(dst, src Pointer, n uintptr) Pointer

//go:linkname Memset C.memset
func Memset(s Pointer, c Int, n uintptr) Pointer

//go:linkname Printf C.printf
func Printf(format *Char, __llgo_va_list ...any) Int

//go:linkname Fprintf C.fprintf
func Fprintf(fp FilePtr, format *Char, __llgo_va_list ...any) Int

//go:linkname Fwrite C.fwrite
func Fwrite(data Pointer, size, count uintptr, fp FilePtr) uintptr

//go:linkname Fputc C.fputc
func Fputc(c Int, fp FilePtr) Int
