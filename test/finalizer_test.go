package test

import (
	"runtime"
	"sync"
	"sync/atomic"
	"testing"
	"time"
)

var finalizerSink func()

func runDeferredFinalizers(n int) int32 {
	count := int32(n)
	var wg sync.WaitGroup
	wg.Add(n)
	for i := 0; i < n; i++ {
		go func() {
			defer wg.Done()
			v := new(string)
			f := func() {
				if *v != "" {
					panic("oops")
				}
			}
			if *v != "" {
				// Keep the deferred closure escape behavior aligned with goroot's
				// deferfin.go regression test.
				finalizerSink = f
			}
			runtime.SetFinalizer(v, func(*string) {
				atomic.AddInt32(&count, -1)
			})
			defer f()
		}()
	}
	wg.Wait()

	deadline := time.Now().Add(2 * time.Second)
	for atomic.LoadInt32(&count) != 0 && time.Now().Before(deadline) {
		runtime.GC()
		time.Sleep(10 * time.Millisecond)
	}
	return atomic.LoadInt32(&count)
}

func TestDeferredClosureDoesNotKeepFinalizerAlive(t *testing.T) {
	if runtime.Compiler == "gccgo" {
		t.Skip("gccgo finalizers are conservatively retained")
	}
	if got := runDeferredFinalizers(10); got != 0 {
		t.Fatalf("finalizers still pending after GC: %d", got)
	}
}
