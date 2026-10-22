//go:build llgo && !baremetal && !wasm && !nogc

/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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

package tls

import (
	"sync/atomic"
	"testing"
	"time"
	"unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	"github.com/xgo-dev/llgo/runtime/internal/clite/bdwgc"
)

//go:linkname gcBase C.GC_base
func gcBase(ptr unsafe.Pointer) unsafe.Pointer

//go:linkname gcKindAndSize C.GC_get_kind_and_size
func gcKindAndSize(ptr unsafe.Pointer, size *uintptr) c.Int

func TestSlotGCAllocation(t *testing.T) {
	var destroyed, wantDestroyed uint64
	h := Alloc[*[8]uint64](func(value **[8]uint64) {
		if value != nil && *value != nil {
			destroyed = (*value)[0]
		}
	})
	s := h.ensureSlot()
	t.Cleanup(func() {
		// Remove the FLS sidecar first so manual destruction cannot run twice.
		if ret := h.key.Set(nil); ret != 0 {
			t.Errorf("clear TLS slot: %d", ret)
			return
		}
		slotDestructor[*[8]uint64](unsafe.Pointer(s))
		if bdwgc.ThreadIsRegistered() == 0 {
			t.Error("manual slot destruction removed the caller's GC registration")
		}
		if destroyed != wantDestroyed {
			t.Errorf("destructor value = %#x, want %#x", destroyed, wantDestroyed)
		}
		if ret := h.key.Delete(); ret != 0 {
			t.Errorf("delete TLS key: %d", ret)
		}
	})
	if base := gcBase(unsafe.Pointer(s)); base != unsafe.Pointer(s) {
		t.Fatalf("slot base = %p, want GC-managed allocation %p", base, s)
	}
	// Compare with the collector's own scanned-uncollectable allocation kind,
	// rather than depending on private numeric kind constants.
	reference := bdwgc.MallocUncollectable(unsafe.Sizeof(*s))
	if reference == nil {
		t.Fatal("failed to allocate reference object")
	}
	defer bdwgc.Free(reference)
	var size uintptr
	if got, want := gcKindAndSize(unsafe.Pointer(s), &size), gcKindAndSize(reference, nil); got != want {
		t.Fatalf("slot allocation kind = %d, want scanned-uncollectable %d", got, want)
	}
	if size < unsafe.Sizeof(*s) {
		t.Fatalf("slot allocation size = %d, need %d", size, unsafe.Sizeof(*s))
	}
	if s.value != nil || h.Get() != nil {
		t.Fatal("new slot value is not zero-initialized")
	}
	if h.ensureSlot() != s {
		t.Fatal("ensureSlot replaced an installed slot")
	}
	value := new([8]uint64)
	value[0] = 0x12345678
	h.Set(value)
	wantDestroyed = value[0]
	value = nil
	bdwgc.Gcollect()
	if got := h.Get(); got == nil || got[0] != 0x12345678 {
		t.Fatalf("slot value after GC = %v", got)
	}
	if destroyed != 0 {
		t.Error("slot destructor ran before release")
	}
}

func TestSlotDestructorGCRegistration(t *testing.T) {
	var state atomic.Int32
	var result atomic.Pointer[[8]int]
	h := Alloc[int](func(value *int) {
		if bdwgc.ThreadIsRegistered() == 0 {
			state.Store(-1)
			return
		}
		// The callback may allocate, defer, collect, and publish Go pointers.
		// A defer also lazily creates a G on this already-exiting thread;
		// its later lifecycle destructor must keep participating in GC.
		result.Store(slotDestructorValueAfterGC(*value))
		state.Store(1)
	})
	go func() { h.Set(42) }()
	deadline := time.Now().Add(2 * time.Second)
	for state.Load() == 0 && time.Now().Before(deadline) {
		time.Sleep(time.Millisecond)
	}
	if got := state.Load(); got != 1 {
		t.Fatalf("TLS destructor GC registration state = %d, want 1", got)
	}
	if got := result.Load(); got == nil || got[0] != 42 || got[1] != 42 {
		t.Fatalf("TLS destructor result = %v, want [42 42 ...]", got)
	}
}

func slotDestructorValueAfterGC(value int) *[8]int {
	result := new([8]int)
	result[0] = value
	defer func() { result[1] = result[0] }()
	bdwgc.Gcollect()
	return result
}
