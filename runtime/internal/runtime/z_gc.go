//go:build !nogc && !baremetal

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
	"github.com/goplus/llgo/runtime/internal/clite/bdwgc"
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
	psync "github.com/goplus/llgo/runtime/internal/clite/pthread/sync"
	"github.com/goplus/llgo/runtime/internal/clite/sync/atomic"
)

// AllocU allocates uninitialized memory.
func AllocU(size uintptr) unsafe.Pointer {
	if size == 0 {
		return zeroAlloc()
	}
	p := bdwgc.Malloc(size)
	afterAlloc(size)
	return p
}

// AllocZ allocates zero-initialized memory.
func AllocZ(size uintptr) unsafe.Pointer {
	if size == 0 {
		return zeroAlloc()
	}
	ret := bdwgc.Malloc(size)
	afterAlloc(size)
	return c.Memset(ret, 0, size)
}

func FreeAllocU(ptr unsafe.Pointer) {
	if ptr != nil {
		bdwgc.Free(c.Pointer(ptr))
	}
}

type entry struct {
	fn       func()
	valueFn  func(unsafe.Pointer)
	copySize uintptr
	obj      unsafe.Pointer
	prev     unsafe.Pointer
	next     *entry
	stop     int32
}

var cleanupState struct {
	once    syncOnce
	mu      psync.Mutex
	cond    psync.Cond
	head    *entry
	tail    *entry
	started int32
	pending int
}

type syncOnce = psync.Once

func ensureCleanupRunner() {
	cleanupState.once.Do(func() {
		cleanupState.mu.Init(nil)
		cleanupState.cond.Init(nil)
		atomic.Store(&cleanupState.started, 1)
		var th pthread.Thread
		if rc := CreateThread(&th, nil, cleanupThread, nil); rc != 0 {
			fatal("failed to create cleanup thread")
		}
		// Match the Go runtime: the dedicated finalizer worker is not a user
		// goroutine that should skew runtime.NumGoroutine().
		finishGoroutine()
	})
}

func cleanupThread(c.Pointer) c.Pointer {
	for {
		cleanupState.mu.Lock()
		for cleanupState.head == nil {
			cleanupState.cond.Wait(&cleanupState.mu)
		}
		e := cleanupState.head
		cleanupState.head = e.next
		if cleanupState.head == nil {
			cleanupState.tail = nil
		}
		e.next = nil
		cleanupState.mu.Unlock()

		runCleanupEntry(e)
		e.obj = nil

		cleanupState.mu.Lock()
		cleanupState.pending--
		if cleanupState.pending == 0 {
			cleanupState.cond.Broadcast()
		}
		cleanupState.mu.Unlock()
	}
}

func runCleanupEntry(e *entry) {
	if atomic.Load(&e.stop) == 1 {
		return
	}
	defer func() {
		if r := recover(); r != nil {
			print("panic: cleanup function: ")
			printany(r)
			print("\n")
		}
	}()
	if e.valueFn != nil {
		e.valueFn(e.obj)
		return
	}
	e.fn()
}

func enqueueCleanup(e *entry) {
	cleanupState.mu.Lock()
	cleanupState.pending++
	e.next = nil
	if cleanupState.tail == nil {
		cleanupState.head = e
	} else {
		cleanupState.tail.next = e
	}
	cleanupState.tail = e
	cleanupState.cond.Signal()
	cleanupState.mu.Unlock()
}

func WaitCleanupDrain() {
	if atomic.Load(&cleanupState.started) == 0 {
		return
	}
	cleanupState.mu.Lock()
	for cleanupState.pending != 0 {
		cleanupState.cond.Wait(&cleanupState.mu)
	}
	cleanupState.mu.Unlock()
}

func finalizer(ptr unsafe.Pointer, cb unsafe.Pointer) {
	e := (*entry)(cb)
	if prev := atomic.Load(&e.prev); prev != nil {
		(*(*func())(prev))()
	}
	if atomic.Load(&e.stop) == 1 {
		return
	}
	if e.valueFn == nil {
		e.fn()
		return
	}
	if e.copySize == 0 {
		e.obj = zeroAlloc()
	} else {
		snap := bdwgc.Malloc(e.copySize)
		c.Memmove(snap, ptr, e.copySize)
		e.obj = snap
	}
	enqueueCleanup(e)
}

// AddCleanupPtr attaches a cleanup function to ptr. Some time after ptr is no longer
// reachable, the runtime will call cleanup().
func AddCleanupPtr(ptr unsafe.Pointer, cleanup func()) (cancel func()) {
	e := &entry{fn: cleanup}
	var oldFn bdwgc.FinalizerFunc
	var oldCb unsafe.Pointer
	bdwgc.RegisterFinalizer(ptr, finalizer, unsafe.Pointer(e), &oldFn, &oldCb)
	if oldCb != nil {
		n := uintptr(ptr) ^ 0xffff // hides the pointer from escape analysis
		fn := func() {
			oldFn((unsafe.Pointer)(n^0xffff), oldCb)
		}
		atomic.Store(&e.prev, unsafe.Pointer(&fn))
	}
	return func() {
		atomic.Store(&e.stop, 1)
	}
}

func AddCleanupValuePtr(ptr unsafe.Pointer, size uintptr, cleanup func(unsafe.Pointer)) (cancel func()) {
	ensureCleanupRunner()
	e := &entry{valueFn: cleanup, copySize: size}
	var oldFn bdwgc.FinalizerFunc
	var oldCb unsafe.Pointer
	bdwgc.RegisterFinalizer(ptr, finalizer, unsafe.Pointer(e), &oldFn, &oldCb)
	if oldCb != nil {
		n := uintptr(ptr) ^ 0xffff
		fn := func() {
			oldFn((unsafe.Pointer)(n^0xffff), oldCb)
		}
		atomic.Store(&e.prev, unsafe.Pointer(&fn))
	}
	return func() {
		atomic.Store(&e.stop, 1)
	}
}
