//go:build linux && !baremetal

package sync

import (
	_ "unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
)

const LLGoFiles = "_wrap/sync_linux.c"

//go:linkname linuxWaitUint32 C.llgo_linux_wait_uint32
func linuxWaitUint32(addr *uint32, value uint32) c.Int

//go:linkname linuxWakeUint32 C.llgo_linux_wake_uint32
func linuxWakeUint32(addr *uint32)

// WaitUint32 atomically checks addr and sleeps while it contains value.
// The caller rechecks after wakeups, signals, or a mismatched value.
func WaitUint32(addr *uint32, value uint32) c.Int {
	return linuxWaitUint32(addr, value)
}

// WakeUint32 wakes one thread waiting for addr.
func WakeUint32(addr *uint32) {
	linuxWakeUint32(addr)
}
