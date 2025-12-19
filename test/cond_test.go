package test

import (
	"sync"
	"testing"
	"time"
)

func TestCondLNilComparisons(t *testing.T) {
	type pipe struct {
		mu sync.Mutex
		c  sync.Cond
	}

	var p pipe
	if p.c.L == nil {
	} else {
		t.Fatal("Cond.L should be nil in zero value")
	}
	if nil == p.c.L {
	} else {
		t.Fatal("nil == Cond.L should be true in zero value")
	}

	p.c.L = &p.mu
	if p.c.L == nil {
		t.Fatal("Cond.L should be non-nil after assignment")
	}
	if nil == p.c.L {
		t.Fatal("nil == Cond.L should be false after assignment")
	}
}

func TestCondSignalWait(t *testing.T) {
	var mu sync.Mutex
	cond := sync.NewCond(&mu)

	started := make(chan struct{})
	done := make(chan struct{})

	go func() {
		cond.L.Lock()
		close(started)
		cond.Wait()
		cond.L.Unlock()
		close(done)
	}()

	select {
	case <-started:
	case <-time.After(500 * time.Millisecond):
		t.Fatal("waiter did not start")
	}

	cond.L.Lock()
	cond.Signal()
	cond.L.Unlock()

	select {
	case <-done:
	case <-time.After(500 * time.Millisecond):
		t.Fatal("cond.Wait did not return after Signal")
	}
}
