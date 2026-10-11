//go:build llgo && darwin

package gotest

import (
	"sync/atomic"
	"testing"
	"time"
	_ "unsafe"
)

//go:linkname acquireRuntimeSemaphore sync.runtime_Semacquire
func acquireRuntimeSemaphore(addr *uint32)

//go:linkname releaseRuntimeSemaphore sync.runtime_Semrelease
func releaseRuntimeSemaphore(addr *uint32, handoff bool, skipframes int)

func TestRuntimeSemaphoreCompetingAcquirers(t *testing.T) {
	const workers, credits, iterations = 128, 8, 2000
	sema := uint32(credits)
	start := make(chan struct{})
	done := make(chan struct{}, workers)
	for range workers {
		go func() {
			<-start
			for range iterations {
				acquireRuntimeSemaphore(&sema)
				releaseRuntimeSemaphore(&sema, false, 0)
			}
			done <- struct{}{}
		}()
	}
	close(start)
	deadline := time.After(5 * time.Second)
	for range workers {
		select {
		case <-done:
		case <-deadline:
			t.Fatalf("semaphore waiters stalled with %d available credits", atomic.LoadUint32(&sema))
		}
	}
	if got := atomic.LoadUint32(&sema); got != credits {
		t.Fatalf("semaphore credits = %d, want %d", got, credits)
	}
}
