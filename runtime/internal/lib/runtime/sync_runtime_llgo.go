//go:build darwin || linux

package runtime

import _ "unsafe"

var poolCleanup func()

//go:linkname sync_runtime_registerPoolCleanup sync.runtime_registerPoolCleanup
func sync_runtime_registerPoolCleanup(cleanup func()) {
	poolCleanup = cleanup
}

//go:linkname sync_runtime_procPin sync.runtime_procPin
func sync_runtime_procPin() int {
	return 0
}

//go:linkname sync_runtime_procUnpin sync.runtime_procUnpin
func sync_runtime_procUnpin() {}

// sync/atomic.Value expects these package-local runtime hooks.
// In llgo they can share the same no-op pin/unpin behavior as sync.
//
//go:linkname atomic_runtime_procPin sync/atomic.runtime_procPin
func atomic_runtime_procPin() int {
	return 0
}

//go:linkname atomic_runtime_procUnpin sync/atomic.runtime_procUnpin
func atomic_runtime_procUnpin() {}
