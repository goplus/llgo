//go:build !llgo

package sync_test

import (
	"sync"
	"testing"
	"time"
)

func TestMutexTryLock(t *testing.T) {
	var mu sync.Mutex

	// Test successful TryLock when unlocked
	if !mu.TryLock() {
		t.Fatalf("TryLock on unlocked mutex should return true")
	}

	// Test TryLock when already locked
	if mu.TryLock() {
		t.Fatalf("TryLock on already locked mutex should return false")
	}

	// Unlock and try again
	mu.Unlock()
	if !mu.TryLock() {
		t.Fatalf("TryLock on unlocked mutex (after unlock) should return true")
	}

	mu.Unlock()
}

func TestRWMutexTryLock(t *testing.T) {
	var rwMu sync.RWMutex

	// Test TryLock on unlocked RWMutex
	if !rwMu.TryLock() {
		t.Fatalf("TryLock on unlocked RWMutex should return true")
	}

	// TryLock should fail when already write-locked
	if rwMu.TryLock() {
		t.Fatalf("TryLock on already write-locked RWMutex should return false")
	}

	rwMu.Unlock()

	// Test TryRLock when unlocked
	if !rwMu.TryRLock() {
		t.Fatalf("TryRLock on unlocked RWMutex should return true")
	}

	// TryRLock should succeed multiple times when only read-locked
	if !rwMu.TryRLock() {
		t.Fatalf("Second TryRLock on read-locked RWMutex should return true")
	}

	// TryLock should fail when read-locked
	if rwMu.TryLock() {
		t.Fatalf("TryLock on read-locked RWMutex should return false")
	}

	// Unlock both read locks
	rwMu.RUnlock()
	rwMu.RUnlock()

	// Now TryLock should work again
	if !rwMu.TryLock() {
		t.Fatalf("TryLock on unlocked RWMutex (after read unlocks) should return true")
	}

	rwMu.Unlock()
}

func TestRWMutexRLocker(t *testing.T) {
	var rwMu sync.RWMutex

	// Test RLocker
	rl := rwMu.RLocker()
	if rl == nil {
		t.Fatalf("RLocker should return a non-nil Locker")
	}

	// Test that RLocker implements Locker interface
	rl.Lock()
	rl.Unlock()

	// Test that RLocker behaves correctly with TryLock
	rwMu.Lock()
	if rwMu.TryLock() {
		t.Fatalf("TryLock on write-locked RWMutex should return false")
	}

	// RLocker should fail to lock when write-locked
	locked := make(chan bool, 1)
	go func() {
		rl.Lock()
		locked <- true
		rl.Unlock()
	}()

	// Wait a bit to see if lock succeeds
	select {
	case <-locked:
		t.Fatal("RLocker.Lock should not succeed when RWMutex is write-locked")
	case <-time.After(50 * time.Millisecond):
		// This is expected - lock should not succeed
	}

	rwMu.Unlock()

	// Now RLocker should be able to lock
	select {
	case <-locked:
		// Good - lock succeeded
	case <-time.After(100 * time.Millisecond):
		t.Fatal("RLocker.Lock should succeed after RWMutex.Unlock")
	}
}

func TestOnceFunc(t *testing.T) {
	var calls int
	f := func() {
		calls++
	}

	// Create OnceFunc
	of := sync.OnceFunc(f)

	// Call multiple times
	of()
	of()
	of()

	if calls != 1 {
		t.Fatalf("OnceFunc should call function exactly once, got %d", calls)
	}

	// Create another OnceFunc with different function
	var calls2 int
	f2 := func() {
		calls2++
	}
	of2 := sync.OnceFunc(f2)

	of2()
	of2()

	if calls2 != 1 {
		t.Fatalf("Second OnceFunc should call function exactly once, got %d", calls2)
	}

	// Original should still be called only once
	if calls != 1 {
		t.Fatalf("Original OnceFunc should still be called only once, got %d", calls)
	}
}

func TestOnceValue(t *testing.T) {
	calls := 0
	f := func() int {
		calls++
		return 42
	}

	// Create OnceValue
	ov := sync.OnceValue(f)

	// Call multiple times
	result1 := ov()
	result2 := ov()
	result3 := ov()

	if calls != 1 {
		t.Fatalf("OnceValue should call function exactly once, got %d", calls)
	}

	if result1 != 42 {
		t.Fatalf("Expected 42, got %d", result1)
	}

	if result2 != 42 {
		t.Fatalf("Expected 42, got %d", result2)
	}

	if result3 != 42 {
		t.Fatalf("Expected 42, got %d", result3)
	}
}

func TestOnceValues(t *testing.T) {
	calls := 0
	f := func() (string, int) {
		calls++
		return "answer", 42
	}

	// Create OnceValues
	ov := sync.OnceValues(f)

	// Call multiple times
	s1, i1 := ov()
	s2, i2 := ov()
	s3, i3 := ov()

	if calls != 1 {
		t.Fatalf("OnceValues should call function exactly once, got %d", calls)
	}

	if s1 != "answer" || i1 != 42 {
		t.Fatalf("Expected ('answer', 42), got ('%s', %d)", s1, i1)
	}

	if s2 != "answer" || i2 != 42 {
		t.Fatalf("Expected ('answer', 42), got ('%s', %d)", s2, i2)
	}

	if s3 != "answer" || i3 != 42 {
		t.Fatalf("Expected ('answer', 42), got ('%s', %d)", s3, i3)
	}
}
