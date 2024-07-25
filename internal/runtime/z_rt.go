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

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/pthread"
)

// -----------------------------------------------------------------------------

// Defer presents defer statements in a function.
type Defer struct {
	Addr unsafe.Pointer // sigjmpbuf
	Bits uintptr
	Link *Defer
	Rund unsafe.Pointer // block address after RunDefers
	Stmt int
}

// Recover recovers a panic.
func Recover() (ret any) {
	if p := getPanic(); !p.isNil() {
		p.recovered = true
		ret = p.arg
	}
	return
}

type stringer interface {
	String() string
}

// Panic panics with a value.
func Panic(v any) {
	var p _panic
	switch e := v.(type) {
	case error:
		v = e.Error()
	case stringer:
		v = e.String()
	}
	p.arg = v
	if link := getPanic(); link != nil {
		p.link = link
	}
	setPanic(&p)
	Rethrow(getDefer())
}

type _panic struct {
	arg       any     // argument to panic
	link      *_panic // link to earlier panic
	recovered bool    // whether this panic is over
	aborted   bool    // the panic was aborted
	goexit    bool
}

func (p *_panic) isNil() bool {
	return p == nil || p.recovered == true
}

func getPanic() *_panic {
	return (*_panic)(excepKey.Get())
}

func setPanic(link *_panic) {
	excepKey.Set(unsafe.Pointer(link))
}

func getDefer() *Defer {
	return (*Defer)(c.GoDeferData())
}

//go:linkname setDeferData llgo.setDeferData
func setDeferData(link *Defer)

// Rethrow rethrows a panic.
func Rethrow(link *Defer) {
	p := getPanic()
	if !p.isNil() {
		if link != nil {
			// TODO link.Stmt
			// if link.Stmt > 0 {
			// 	c.Siglongjmp(link.Addr, 0)
			// 	return
			// }
			setDeferData(link.Link)
			c.Siglongjmp(link.Addr, 1)
			return
		}
		printpanics(p)
		c.Exit(2)
	}
}

var (
	excepKey pthread.Key
)

func init() {
	excepKey.Create(nil)
}

// Print all currently active panics. Used when crashing.
// Should only be called after preprintpanics.
func printpanics(p *_panic) {
	if p.link != nil {
		printpanics(p.link)
		if !p.link.goexit {
			print("\t")
		}
	}
	if p.goexit {
		return
	}
	print("panic: ")
	printany(p.arg)
	if p.recovered {
		print(" [recovered]")
	}
	print("\n")
}

// -----------------------------------------------------------------------------

func unpackEface(i any) *eface {
	return (*eface)(unsafe.Pointer(&i))
}

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

// Zeroinit initializes memory to zero.
func Zeroinit(p unsafe.Pointer, size uintptr) unsafe.Pointer {
	return c.Memset(p, 0, size)
}

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
