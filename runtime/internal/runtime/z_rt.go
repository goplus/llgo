/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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

package runtime

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	clitedebug "github.com/goplus/llgo/runtime/internal/clite/debug"
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
	"github.com/goplus/llgo/runtime/internal/clite/setjmp"
)

// -----------------------------------------------------------------------------

// Defer presents defer statements in a function.
type Defer struct {
	Addr unsafe.Pointer // sigjmpbuf
	Bits uintptr
	Link *Defer
	Pan  unsafe.Pointer // current panic record being unwound in this frame
	Reth unsafe.Pointer // block address after Rethrow
	Rund unsafe.Pointer // block address after RunDefers
	Args unsafe.Pointer // defer func and args links
}

type panicRecord struct {
	link  unsafe.Pointer
	pan   unsafe.Pointer
	val   any
	nstk  int32
	stack [32]uintptr
}

type panicTrace struct {
	nstk  int32
	stack [32]uintptr
}

// Recover recovers a panic.
func Recover(tok unsafe.Pointer) (ret any) {
	if tok == nil || recoverKey.Get() == nil {
		return nil
	}
	ptr := recoverPan.Get()
	if ptr == nil || ptr != excepKey.Get() {
		return nil
	}
	recoverPan.Set(nil)
	rec := (*panicRecord)(ptr)
	excepKey.Set(rec.link)
	storePanicTrace(rec.stack[:], int(rec.nstk))
	if cur := (*Defer)(c.GoDeferData()); cur != nil && cur.Pan == ptr {
		cur.Pan = rec.pan
	}
	ret = rec.val
	c.Free(ptr)
	return
}

// Panic panics with a value.
func Panic(v any) {
	ptr := c.Malloc(unsafe.Sizeof(panicRecord{}))
	rec := (*panicRecord)(ptr)
	rec.link = excepKey.Get()
	rec.val = v
	rec.nstk = int32(clitedebug.StackTracePCs(0, rec.stack[:]))
	if cur := (*Defer)(c.GoDeferData()); cur != nil {
		rec.pan = cur.Pan
		excepKey.Set(ptr)
		cur.Pan = ptr
		throwCurrent(cur)
		return
	}
	excepKey.Set(ptr)
	Rethrow(nil)
}

var (
	excepKey      pthread.Key
	goexitKey     pthread.Key
	recoverKey    pthread.Key
	recoverPan    pthread.Key
	panicTraceKey pthread.Key
	mainThread    pthread.Thread
)

func SetRecoverToken(tok unsafe.Pointer) (prev unsafe.Pointer) {
	prev = recoverKey.Get()
	recoverKey.Set(tok)
	recoverPan.Set(excepKey.Get())
	return
}

func storePanicTrace(stack []uintptr, n int) {
	if old := panicTraceKey.Get(); old != nil {
		c.Free(old)
		panicTraceKey.Set(nil)
	}
	if n <= 0 {
		return
	}
	trace := (*panicTrace)(c.Malloc(unsafe.Sizeof(panicTrace{})))
	trace.nstk = int32(copy(trace.stack[:], stack[:n]))
	panicTraceKey.Set(unsafe.Pointer(trace))
}

func PanicTrace(dst []uintptr) int {
	ptr := panicTraceKey.Get()
	if ptr == nil {
		return 0
	}
	trace := (*panicTrace)(ptr)
	n := int(trace.nstk)
	if n > len(dst) {
		n = len(dst)
	}
	return copy(dst, trace.stack[:n])
}

func Goexit() {
	goexitKey.Set(unsafe.Pointer(&goexitKey))
	Rethrow((*Defer)(c.GoDeferData()))
}

func init() {
	excepKey.Create(nil)
	goexitKey.Create(nil)
	recoverKey.Create(nil)
	recoverPan.Create(nil)
	panicTraceKey.Create(nil)
	mainThread = pthread.Self()
}

// -----------------------------------------------------------------------------

// TracePanic prints panic message.
func TracePanic(v any) {
	print("panic: ")
	printany(v)
	println("\n")
}

/*
func stringTracef(fp c.FilePtr, format *c.Char, s String) {
	cs := c.Alloca(uintptr(s.len) + 1)
	c.Fprintf(fp, format, CStrCopy(cs, s))
}
*/

// -----------------------------------------------------------------------------

// New allocates memory and initializes it to zero.
func New(t *Type) unsafe.Pointer {
	return AllocZ(t.Size_)
}

// NewArray allocates memory for an array and initializes it to zero.
func NewArray(t *Type, n int) unsafe.Pointer {
	return AllocZ(uintptr(n) * t.Size_)
}

// -----------------------------------------------------------------------------

// TODO(xsw): check this
// must match declarations in runtime/map.go.
const MaxZero = 1024

var ZeroVal [MaxZero]byte

// -----------------------------------------------------------------------------

type SigjmpBuf struct {
	Unused [setjmp.SigjmpBufSize]byte
}

// -----------------------------------------------------------------------------
