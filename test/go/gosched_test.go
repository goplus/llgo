package gotest

import (
	"runtime"
	"sync/atomic"
	"testing"
)

func TestRuntimeGoschedHandoff(t *testing.T) {
	const workers, rounds = 8, 32
	var turn int32
	done := make(chan struct{}, workers)
	for id := range workers {
		go func(id int) {
			for round := range rounds {
				want := int32(round*workers + id)
				for atomic.LoadInt32(&turn) != want {
					runtime.Gosched()
				}
				atomic.AddInt32(&turn, 1)
			}
			done <- struct{}{}
		}(id)
	}
	for range workers {
		<-done
	}
	if got := atomic.LoadInt32(&turn); got != workers*rounds {
		t.Fatalf("completed %d handoffs, want %d", got, workers*rounds)
	}
}
