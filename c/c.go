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

// typedef unsigned int uint;
import "C"
import "unsafe"

const (
	LLGoPackage = "decl"
)

type (
	Char      = int8
	Int       = C.int
	Uint      = C.uint
	Long      = int32
	Ulong     = uint32
	LongLong  = int64
	UlongLong = uint64
	Float     = float32
	Double    = float64
	Pointer   = unsafe.Pointer
	FilePtr   = unsafe.Pointer
)

type integer interface {
	~int | ~uint | ~uintptr | ~int32 | ~uint32 | ~int64 | ~uint64
}

//go:linkname Str llgo.cstr
func Str(string) *Char

// llgo:link Advance llgo.advance
func Advance[PtrT any](ptr PtrT, offset int) PtrT { return ptr }

// llgo:link Index llgo.index
func Index[T any, I integer](ptr *T, offset I) T { return *ptr }

//go:linkname Alloca llgo.alloca
func Alloca(size uintptr) Pointer

//go:linkname AllocaCStr llgo.allocaCStr
func AllocaCStr(s string) *Char

//go:linkname Malloc C.malloc
func Malloc(size uintptr) Pointer

//go:linkname Free C.free
func Free(ptr Pointer)

//go:linkname Memcpy C.memcpy
func Memcpy(dst, src Pointer, n uintptr) Pointer

//go:linkname Memset C.memset
func Memset(s Pointer, c Int, n uintptr) Pointer

// -----------------------------------------------------------------------------

//go:linkname GoStringData llgo.stringData
func GoStringData(string) *Char

// -----------------------------------------------------------------------------

//go:linkname AllocaSigjmpBuf llgo.sigjmpbuf
func AllocaSigjmpBuf() Pointer

//go:linkname Sigsetjmp llgo.sigsetjmp
func Sigsetjmp(jb Pointer, savemask Int) Int

//go:linkname Siglongjmp llgo.siglongjmp
func Siglongjmp(jb Pointer, retval Int)

//go:linkname Unreachable llgo.unreachable
func Unreachable()

// -----------------------------------------------------------------------------

//go:linkname Exit C.exit
func Exit(Int)

// -----------------------------------------------------------------------------

//go:linkname Rand C.rand
func Rand() Int

//go:linkname Qsort C.qsort
func Qsort(base Pointer, count, elem uintptr, compar func(a, b Pointer) Int)

// -----------------------------------------------------------------------------

//go:linkname Atoi C.atoi
func Atoi(s *Char) Int

// -----------------------------------------------------------------------------

//go:linkname Printf C.printf
func Printf(format *Char, __llgo_va_list ...any) Int

//go:linkname Fprintf C.fprintf
func Fprintf(fp FilePtr, format *Char, __llgo_va_list ...any) Int

//go:linkname Fwrite C.fwrite
func Fwrite(data Pointer, size, count uintptr, fp FilePtr) uintptr

//go:linkname Fputc C.fputc
func Fputc(c Int, fp FilePtr) Int

//go:linkname Fputs C.fputs
func Fputs(s *Char, fp FilePtr) Int

//go:linkname Fflush C.fflush
func Fflush(fp FilePtr) Int

// -----------------------------------------------------------------------------

//go:linkname Remove C.remove
func Remove(path *Char) Int

// -----------------------------------------------------------------------------

//go:linkname Time C.time
func Time(*int32) int32

//go:linkname Usleep C.usleep
func Usleep(useconds Uint) Int

// -----------------------------------------------------------------------------

type Option struct {
	Name   *Char
	HasArg Int
	Flag   *Int
	Val    Int
}

//go:linkname Argc __llgo_argc
var Argc Int

//go:linkname Argv __llgo_argv
var Argv **Char

//go:linkname Optarg optarg
var Optarg *Char

//go:linkname Optind optind
var Optind Int

//go:linkname Opterr opterr
var Opterr Int

//go:linkname Optopt optopt
var Optopt Int

//go:linkname Getopt C.getopt
func Getopt(argc Int, argv **Char, optstring *Char) Int

//go:linkname GetoptLong C.getopt_long
func GetoptLong(argc Int, argv **Char, optstring *Char, longopts *Option, longindex *Int) Int

//go:linkname GetoptLongOnly C.getopt_long_only
func GetoptLongOnly(argc Int, argv **Char, optstring *Char, longopts *Option, longindex *Int) Int

// -----------------------------------------------------------------------------
