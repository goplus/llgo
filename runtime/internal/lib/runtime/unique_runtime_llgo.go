//go:build darwin || linux

package runtime

import (
	"sync"
	_ "unsafe"
)

var (
	uniqueMapCleanup   chan struct{}
	uniqueMapCleanupMu sync.Mutex
	uniqueMapCleanupOK bool
)

//go:linkname unique_runtime_registerUniqueMapCleanup unique.runtime_registerUniqueMapCleanup
func unique_runtime_registerUniqueMapCleanup(cleanup func()) {
	uniqueMapCleanupMu.Lock()
	if !uniqueMapCleanupOK {
		uniqueMapCleanup = make(chan struct{}, 1)
		uniqueMapCleanupOK = true
		go func() {
			for range uniqueMapCleanup {
				cleanup()
			}
		}()
	}
	uniqueMapCleanupMu.Unlock()
}

func unique_runtime_notifyMapCleanup() {
	if uniqueMapCleanup == nil {
		return
	}
	select {
	case uniqueMapCleanup <- struct{}{}:
	default:
	}
}
