//go:build llgo

package tls_test

import (
	"sync"
	"testing"

	"github.com/goplus/llgo/runtime/internal/clite/tls"
)

// slotValue is the type stored in the TLS tests.
type slotValue struct {
	calls int
}

func TestAllocSetGetClear(t *testing.T) {
	var mu sync.Mutex
	var destructCount int
	handle := tls.Alloc[*slotValue](func(v **slotValue) {
		mu.Lock()
		defer mu.Unlock()
		destructCount++
		if v != nil && *v != nil {
			(*v).calls = -1
		}
	})

	if v := handle.Get(); v != nil {
		t.Fatalf("unexpected initial value: %v", v)
	}

	val := &slotValue{calls: 1}
	handle.Set(val)
	if got := handle.Get(); got != val {
		t.Fatalf("Get() returned %p; want %p", got, val)
	}

	handle.Clear()
	if got := handle.Get(); got != nil {
		t.Fatalf("expected nil after Clear, got %p", got)
	}

	// Ensure destructor runs when the goroutine exits.
	done := make(chan struct{})
	go func() {
		defer close(done)
		tmp := &slotValue{calls: 42}
		handle.Set(tmp)
		if got := handle.Get(); got != tmp {
			t.Errorf("nested goroutine Get = %p; want %p", got, tmp)
		}
	}()
	<-done

	mu.Lock()
	deferCount := destructCount
	mu.Unlock()
	if deferCount == 0 {
		t.Fatalf("expected destructor to run for goroutine TLS slot")
	}
}

func TestAllocIsThreadLocal(t *testing.T) {
	handle := tls.Alloc[int](nil)
	handle.Set(7)
	if got := handle.Get(); got != 7 {
		t.Fatalf("main goroutine value = %d; want 7", got)
	}

	const want = 99
	done := make(chan struct{})
	go func() {
		defer close(done)
		if got := handle.Get(); got != 0 {
			t.Errorf("new goroutine initial value = %d; want 0", got)
		}
		handle.Set(want)
		if got := handle.Get(); got != want {
			t.Errorf("new goroutine value = %d; want %d", got, want)
		}
	}()
	<-done

	if got := handle.Get(); got != 7 {
		t.Fatalf("main goroutine value changed to %d", got)
	}
}
