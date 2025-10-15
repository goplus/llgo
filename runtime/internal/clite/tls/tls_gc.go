//go:build llgo && !nogc

package tls

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/bdwgc"
)

const slotRegistered = 1 << iota

const maxSlotSize = 1 << 20 // 1 MiB sanity cap

type slot[T any] struct {
	value      T
	state      uintptr
	destructor func(*T)
}

func registerSlot[T any](s *slot[T]) {
	if s.state&slotRegistered != 0 {
		return
	}
	start, end := s.rootRange()
	size := uintptr(end) - uintptr(start)
	if size == 0 {
		return
	}
	if size > maxSlotSize {
		panic("tls: slot size exceeds maximum")
	}
	bdwgc.AddRoots(start, end)
	s.state |= slotRegistered
}

func deregisterSlot[T any](s *slot[T]) {
	if s == nil || s.state&slotRegistered == 0 {
		return
	}
	s.state &^= slotRegistered
	start, end := s.rootRange()
	if uintptr(end) > uintptr(start) {
		bdwgc.RemoveRoots(start, end)
	}
}

func (s *slot[T]) rootRange() (start, end c.Pointer) {
	begin := unsafe.Pointer(s)
	endPtr := unsafe.Pointer(uintptr(begin) + unsafe.Sizeof(*s))
	return c.Pointer(begin), c.Pointer(endPtr)
}
