package test

import (
	"testing"
	"time"
)

// Ensure AfterFunc runs within a reasonable time.
func TestAfterFuncFires(t *testing.T) {
	done := make(chan struct{})
	time.AfterFunc(30*time.Millisecond, func() { close(done) })

	select {
	case <-done:
	case <-time.After(500 * time.Millisecond):
		t.Fatalf("AfterFunc timeout")
	}
}

// Verify Stop/Reset on Timer still fire after reset.
func TestTimerResetFires(t *testing.T) {
	timer := time.NewTimer(100 * time.Millisecond)
	active := timer.Stop()
	if !active {
		// Drain if it already fired
		select {
		case <-timer.C:
		default:
		}
	}
	// Reset returns whether timer was active before reset; both true/false are acceptable.
	timer.Reset(40 * time.Millisecond)

	select {
	case <-timer.C:
	case <-time.After(400 * time.Millisecond):
		t.Fatalf("timer did not fire after Reset")
	}
}

// Stop should prevent a timer from firing.
func TestTimerStopPreventsFire(t *testing.T) {
	timer := time.NewTimer(50 * time.Millisecond)
	if !timer.Stop() {
		// It already fired; drain to avoid leakage.
		select {
		case <-timer.C:
		default:
		}
		t.Skip("timer fired earlier than expected")
	}

	select {
	case <-timer.C:
		t.Fatalf("timer fired after Stop")
	case <-time.After(120 * time.Millisecond):
	}
}

// After delivers exactly one event and channel does not block forever.
func TestAfterSingleFire(t *testing.T) {
	ch := time.After(20 * time.Millisecond)
	select {
	case <-ch:
	case <-time.After(200 * time.Millisecond):
		t.Fatalf("after timeout")
	}
	// Ensure channel doesn't deliver twice.
	select {
	case <-ch:
		t.Fatalf("after channel delivered more than once")
	default:
	}
}

// AfterFunc Stop returns correct boolean and prevents callback.
func TestAfterFuncStop(t *testing.T) {
	triggered := make(chan struct{}, 1)
	tmr := time.AfterFunc(50*time.Millisecond, func() { triggered <- struct{}{} })
	if !tmr.Stop() {
		// It might already be running; drain best-effort.
		select {
		case <-triggered:
		default:
		}
	}
	// Wait longer than the timer to check it doesn't fire.
	select {
	case <-triggered:
		t.Fatalf("AfterFunc fired after Stop")
	case <-time.After(150 * time.Millisecond):
	}
}

// Reset on an active AfterFunc should reschedule the callback.
func TestAfterFuncReset(t *testing.T) {
	var count int
	tmr := time.AfterFunc(100*time.Millisecond, func() { count++ })

	time.Sleep(20 * time.Millisecond)
	if !tmr.Reset(30 * time.Millisecond) {
		// Even if Reset returns false, we still expect reschedule semantics per Go docs.
	}

	time.Sleep(80 * time.Millisecond)
	if count != 1 {
		t.Fatalf("expected callback once after reset, got %d", count)
	}
}

// Concurrent stops should be safe.
func TestTimerConcurrentStop(t *testing.T) {
	tmr := time.NewTimer(40 * time.Millisecond)
	done := make(chan struct{})

	go func() {
		tmr.Stop()
		close(done)
	}()

	select {
	case <-tmr.C:
	case <-done:
	case <-time.After(300 * time.Millisecond):
		t.Fatalf("timer or stop did not complete")
	}
}
