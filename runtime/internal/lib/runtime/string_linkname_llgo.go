package runtime

import (
	"unsafe"
	_ "unsafe"
)

//go:linkname internal_syscall_gostring internal/syscall/unix.gostring
func internal_syscall_gostring(p *byte) string {
	if p == nil {
		return ""
	}
	n := 0
	for *(*byte)(unsafe.Add(unsafe.Pointer(p), uintptr(n))) != 0 {
		n++
	}
	return string(unsafe.Slice(p, n))
}
