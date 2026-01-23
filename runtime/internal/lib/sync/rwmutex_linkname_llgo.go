//go:build llgo && linux

package sync

import _ "unsafe"

//go:linkname syscall_hasWaitingReaders syscall.hasWaitingReaders
func syscall_hasWaitingReaders(rw *RWMutex) bool {
	return false
}
