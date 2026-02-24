//go:build darwin || linux

package runtime

import (
	"sync"
	_ "unsafe"
)

var (
	uniqueMapCleanup     chan struct{}
	uniqueMapCleanupOnce sync.Once
)

//go:linkname unique_runtime_registerUniqueMapCleanup unique.runtime_registerUniqueMapCleanup
func unique_runtime_registerUniqueMapCleanup(cleanup func()) {
	uniqueMapCleanupOnce.Do(func() {
		uniqueMapCleanup = make(chan struct{}, 1)
		go func() {
			for range uniqueMapCleanup {
				cleanup()
			}
		}()
	})
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
