//go:build !nogc
// +build !nogc

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

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/bdwgc"
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
)

const (
	deferSlotRegistered = 1 << iota
)

type deferSlot struct {
	head  *Defer
	state uintptr
}

var deferSlotKey pthread.Key

func init() {
	deferSlotKey.Create(deferSlotDestructor)
}

// SetThreadDefer associates the current thread with the given defer chain and
// ensures it stays visible to the Boehm GC.
func SetThreadDefer(head *Defer) {
	slot := ensureDeferSlot()
	slot.head = head
}

// ClearThreadDefer clears the defer chain for the current thread.
func ClearThreadDefer() {
	if slot := getDeferSlot(); slot != nil {
		slot.head = nil
	}
}

// FreeDeferNode releases a defer argument node allocated from the Boehm heap.
func FreeDeferNode(ptr unsafe.Pointer) {
	if ptr != nil {
		bdwgc.Free(c.Pointer(ptr))
	}
}

func ensureDeferSlot() *deferSlot {
	if ptr := deferSlotKey.Get(); ptr != nil {
		return (*deferSlot)(ptr)
	}
	size := unsafe.Sizeof(deferSlot{})
	mem := c.Malloc(size)
	if mem == nil {
		fatal("failed to allocate defer TLS slot")
	}
	c.Memset(mem, 0, size)
	slot := (*deferSlot)(mem)
	registerSlot(slot)
	if existing := deferSlotKey.Get(); existing != nil {
		deregisterSlot(slot)
		c.Free(mem)
		return (*deferSlot)(existing)
	}
	deferSlotKey.Set(mem)
	return slot
}

func getDeferSlot() *deferSlot {
	if ptr := deferSlotKey.Get(); ptr != nil {
		return (*deferSlot)(ptr)
	}
	return nil
}

func registerSlot(slot *deferSlot) {
	if slot.state&deferSlotRegistered != 0 {
		return
	}
	start, end := slot.rootRange()
	bdwgc.AddRoots(start, end)
	slot.state |= deferSlotRegistered
}

func deregisterSlot(slot *deferSlot) {
	if slot == nil || slot.state&deferSlotRegistered == 0 {
		return
	}
	start, end := slot.rootRange()
	bdwgc.RemoveRoots(start, end)
	slot.state &^= deferSlotRegistered
}

func deferSlotDestructor(ptr c.Pointer) {
	slot := (*deferSlot)(ptr)
	if slot == nil {
		return
	}
	deregisterSlot(slot)
	slot.head = nil
	c.Free(ptr)
}

func (slot *deferSlot) rootRange() (start, end c.Pointer) {
	head := unsafe.Pointer(&slot.head)
	endPtr := unsafe.Pointer(uintptr(head) + unsafe.Sizeof(slot.head))
	return c.Pointer(head), c.Pointer(endPtr)
}
