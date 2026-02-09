package runtime

import _ "unsafe"

// Minimal hook for unique.registerCleanup.
// The full Go runtime drives this from GC cycles; llgo keeps the callback
// reachable and lets package-level logic invoke explicit cleanups as needed.
var uniqueMapCleanup func()

//go:linkname unique_runtime_registerUniqueMapCleanup unique.runtime_registerUniqueMapCleanup
func unique_runtime_registerUniqueMapCleanup(cleanup func()) {
	uniqueMapCleanup = cleanup
}
