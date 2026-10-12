//go:build llgo && !wasm && !baremetal && !nogc

package gotest

import (
	"runtime"
	"testing"
)

var blockedGCRootScratch *[256]uintptr

func TestRuntimeBlockedGoroutineKeepsRoots(t *testing.T) {
	const workers = 16
	ready := make(chan struct{}, workers)
	release := make(chan struct{})
	done := make(chan bool, workers)
	for worker := range workers {
		go func() {
			// Only this goroutine retains p while it is blocked in the native
			// condition wait. The startup record cannot retain this allocation.
			p := new([256]uintptr)
			for i := range p {
				p[i] = uintptr(worker*len(p) + i + 1)
			}
			ready <- struct{}{}
			<-release
			ok := true
			for i, value := range p {
				ok = ok && value == uintptr(worker*len(p)+i+1)
			}
			done <- ok
		}()
	}
	for range workers {
		<-ready
	}
	for range 10 {
		runtime.GC()
		// Reuse the same size class so premature collection corrupts p rather
		// than silently leaving its old contents intact.
		for range 128 {
			blockedGCRootScratch = new([256]uintptr)
			for i := range blockedGCRootScratch {
				blockedGCRootScratch[i] = ^uintptr(0)
			}
		}
	}
	blockedGCRootScratch = nil
	close(release)
	for range workers {
		if !<-done {
			t.Fatal("GC lost a root held by a blocked goroutine")
		}
	}
}
