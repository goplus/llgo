//go:build nogc

package tls

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
)

type slot[T any] struct {
	value      T
	destructor func(*T)
}

type Handle[T any] struct {
	key        pthread.Key
	destructor func(*T)
}

func Alloc[T any](destructor func(*T)) Handle[T] {
	var key pthread.Key
	if ret := key.Create(slotDestructor[T]); ret != 0 {
		c.Fprintf(c.Stderr, c.Str("tls: pthread_key_create failed (errno=%d)\n"), ret)
		panic("tls: failed to create thread local storage key")
	}
	return Handle[T]{key: key, destructor: destructor}
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
	mem := c.Calloc(1, size)
	if mem == nil {
		panic("tls: failed to allocate thread slot")
	}
	s := (*slot[T])(mem)
	s.destructor = h.destructor
	if existing := h.key.Get(); existing != nil {
		c.Free(mem)
		return (*slot[T])(existing)
	}
	if ret := h.key.Set(mem); ret != 0 {
		c.Free(mem)
		c.Fprintf(c.Stderr, c.Str("tls: pthread_setspecific failed (errno=%d)\n"), ret)
		panic("tls: failed to set thread local storage value")
	}
	return s
}

func slotDestructor[T any](ptr c.Pointer) {
	s := (*slot[T])(ptr)
	if s == nil {
		return
	}
	if s.destructor != nil {
		s.destructor(&s.value)
	}
	var zero T
	s.value = zero
	s.destructor = nil
	c.Free(ptr)
}
