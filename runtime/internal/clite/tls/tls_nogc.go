//go:build nogc
// +build nogc

package tls

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
)

type descriptor[T any] struct {
	destructor func(*T)
}

type slot[T any] struct {
	value T
	desc  *descriptor[T]
}

type Handle[T any] struct {
	key  pthread.Key
	desc *descriptor[T]
}

func Alloc[T any](destructor func(*T)) Handle[T] {
	d := &descriptor[T]{destructor: destructor}
	var key pthread.Key
	key.Create(slotDestructor[T])
	return Handle[T]{key: key, desc: d}
}

func (h Handle[T]) Get() T {
	if ptr := h.key.Get(); ptr != nil {
		return (*slot[T])(ptr).value
	}
	var zero T
	return zero
}

func (h Handle[T]) Set(v T) {
	s := h.ensureSlot()
	s.value = v
}

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
	if existing := h.key.Get(); existing != nil {
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
	if s.desc != nil && s.desc.destructor != nil {
		s.desc.destructor(&s.value)
	}
	var zero T
	s.value = zero
	s.desc = nil
	c.Free(ptr)
}
