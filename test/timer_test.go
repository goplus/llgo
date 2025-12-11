package test

import (
	"testing"
	"time"
)

// Ensure AfterFunc runs within a reasonable time.
func TestAfterFuncFires(t *testing.T) {
	done := make(chan struct{})
	time.AfterFunc(50*time.Millisecond, func() { close(done) })

	select {
	case <-done:
	case <-time.After(1 * time.Second):
		t.Fatalf("AfterFunc timeout")
	}
}

// Verify Stop/Reset on Timer still fire after reset.
func TestTimerResetFires(t *testing.T) {
	timer := time.NewTimer(200 * time.Millisecond)
	active := timer.Stop()
	if !active {
		// Drain if it already fired
		select {
		case <-timer.C:
		default:
		}
	}
	// Reset returns whether timer was active before reset; both true/false are acceptable.
	timer.Reset(100 * time.Millisecond)

	select {
	case <-timer.C:
	case <-time.After(1 * time.Second):
		t.Fatalf("timer did not fire after Reset")
	}
}
