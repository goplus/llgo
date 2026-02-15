package sync_test

import (
	"sync"
	"testing"
	"time"
)

func TestCondBasic(t *testing.T) {
	var mu sync.Mutex
	cond := sync.NewCond(&mu)

	// Test basic Cond operations
	cond.Signal()
	cond.Broadcast()

	// Test with waiting goroutine
	signaled := false
	go func() {
		mu.Lock()
		for !signaled {
			cond.Wait()
		}
		mu.Unlock()
	}()

	time.Sleep(10 * time.Millisecond)
	mu.Lock()
	signaled = true
	cond.Signal()
	mu.Unlock()

	// Wait for goroutine to complete
	time.Sleep(50 * time.Millisecond)
	if !signaled {
		t.Fatal("Cond.Signal failed to wake up waiting goroutine")
	}
}

func TestCondBroadcast(t *testing.T) {
	var mu sync.Mutex
	cond := sync.NewCond(&mu)

	// Start multiple waiting goroutines
	wokenUp := 0
	for i := 0; i < 3; i++ {
		go func(id int) {
			mu.Lock()
			cond.Wait()
			wokenUp++
			mu.Unlock()
		}(i)
	}

	// Wait for goroutines to start waiting
	time.Sleep(10 * time.Millisecond)

	// Broadcast to wake all
	mu.Lock()
	cond.Broadcast()
	mu.Unlock()

	// Wait for all goroutines to wake up
	time.Sleep(100 * time.Millisecond)

	mu.Lock()
	finalWoken := wokenUp
	mu.Unlock()

	if finalWoken != 3 {
		t.Fatalf("Expected all 3 goroutines to be awakened, but only %d woke up", finalWoken)
	}
}

func TestCondWait(t *testing.T) {
	var mu sync.Mutex
	cond := sync.NewCond(&mu)

	// Test basic Wait functionality
	woken := false
	go func() {
		mu.Lock()
		woken = true
		cond.Signal()
		mu.Unlock()
	}()

	mu.Lock()
	cond.Wait()
	mu.Unlock()

	if !woken {
		t.Fatal("Wait should have returned after Signal")
	}
}
