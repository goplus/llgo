package watchdog

import (
	"unsafe"
	_ "unsafe"
)

//go:linkname StoreUint32 llgo.atomicStore
func StoreUint32(addr *uint32, val uint32)

func Disable() {
	StoreUint32((*uint32)(unsafe.Pointer(uintptr(0x3ff480A4))), 0x50D83AA1)

	StoreUint32((*uint32)(unsafe.Pointer(uintptr(0x3ff4808C))), 0)
	StoreUint32((*uint32)(unsafe.Pointer(uintptr(0x3ff5f048))), 0)
}
