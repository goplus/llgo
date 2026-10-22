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

func TestRuntimeSemaphoreCompetingAcquirers(t *testing.T) {
	const workers, iterations = 128, 2000
	const credits = workers * iterations
	// There is a credit for every acquire and no future release to rescue a
	// thread that mistakenly sleeps after losing a CAS to a fast-path caller.
	sema := uint32(credits)
	start := make(chan struct{})
	done := make(chan struct{}, workers)
	for range workers {
		go func() {
			<-start
			for range iterations {
				acquireRuntimeSemaphore(&sema)
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
	if got := atomic.LoadUint32(&sema); got != 0 {
		t.Fatalf("semaphore credits = %d, want 0", got)
	}
}
