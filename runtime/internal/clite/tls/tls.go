//go:build !nogc

package tls

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/bdwgc"
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
)

const slotRegistered = 1 << iota

type descriptor[T any] struct {
	destructor func(*T)
}

type slot[T any] struct {
	value T
	state uintptr
	desc  *descriptor[T]
}

type Handle[T any] struct {
	key  pthread.Key
	desc *descriptor[T]
}

// Alloc creates a TLS handle whose storage is visible to the Boehm GC.
func Alloc[T any](destructor func(*T)) Handle[T] {
	d := &descriptor[T]{destructor: destructor}
	var key pthread.Key
	key.Create(slotDestructor[T])
	return Handle[T]{key: key, desc: d}
}

// Get returns the value stored in the current thread's slot.
func (h Handle[T]) Get() T {
	if ptr := h.key.Get(); ptr != nil {
		return (*slot[T])(ptr).value
	}
	var zero T
	return zero
}

// Set stores v in the current thread's slot, creating it if necessary.
func (h Handle[T]) Set(v T) {
	s := h.ensureSlot()
	s.value = v
}

// Clear zeroes the current thread's slot value without freeing the slot.
func (h Handle[T]) Clear() {
	if ptr := h.key.Get(); ptr != nil {
		s := (*slot[T])(ptr)
		var zero T
		s.value = zero
	}
}

func (h Handle[T]) ensureSlot() *slot[T] {
	if ptr := h.key.Get(); ptr != nil {
		return (*slot[T])(ptr)
	}
	size := unsafe.Sizeof(slot[T]{})
	mem := c.Malloc(size)
	if mem == nil {
		panic("tls: failed to allocate thread slot")
	}
	c.Memset(mem, 0, size)
	s := (*slot[T])(mem)
	s.desc = h.desc
	registerSlot(s)
	if existing := h.key.Get(); existing != nil {
		deregisterSlot(s)
		c.Free(mem)
		return (*slot[T])(existing)
	}
	h.key.Set(mem)
	return s
}

func slotDestructor[T any](ptr c.Pointer) {
	s := (*slot[T])(ptr)
	if s == nil {
		return
	}
	deregisterSlot(s)
	if s.desc != nil && s.desc.destructor != nil {
		s.desc.destructor(&s.value)
	}
	var zero T
	s.value = zero
	s.desc = nil
	c.Free(ptr)
}

func registerSlot[T any](s *slot[T]) {
	if s.state&slotRegistered != 0 {
		return
	}
	start, end := s.rootRange()
	bdwgc.AddRoots(start, end)
	s.state |= slotRegistered
}

func deregisterSlot[T any](s *slot[T]) {
	if s == nil || s.state&slotRegistered == 0 {
		return
	}
	start, end := s.rootRange()
	bdwgc.RemoveRoots(start, end)
	s.state &^= slotRegistered
}

func (s *slot[T]) rootRange() (start, end c.Pointer) {
	head := unsafe.Pointer(&s.value)
	endPtr := unsafe.Pointer(uintptr(head) + unsafe.Sizeof(s.value))
	return c.Pointer(head), c.Pointer(endPtr)
}
