//go:build llgo
// +build llgo

package asyncpull

import (
	"testing"

	"github.com/goplus/llgo/async"
)

func TestDeferOrder(t *testing.T) {
	out := []string{}
	fut := DeferOrderAsync(&out)
	poll := fut.Poll(&async.Context{})
	if !poll.IsReady() || poll.Value() != 123 {
		t.Fatalf("poll not ready or value mismatch: ready=%v value=%d", poll.IsReady(), poll.Value())
	}
	if len(out) != 2 || out[0] != "second" || out[1] != "first" {
		t.Fatalf("defer order mismatch: %v", out)
	}
}

func TestDeferArgCapture(t *testing.T) {
	out := []int{}
	poll := DeferArgCaptureAsync(&out).Poll(&async.Context{})
	if !poll.IsReady() || poll.Value() != 2 {
		t.Fatalf("poll not ready or value mismatch: ready=%v value=%d", poll.IsReady(), poll.Value())
	}
	if len(out) != 1 || out[0] != 1 {
		t.Fatalf("defer arg capture mismatch: %v", out)
	}
}

func TestDeferClosureCapture(t *testing.T) {
	out := []int{}
	poll := DeferClosureCaptureAsync(&out).Poll(&async.Context{})
	if !poll.IsReady() || poll.Value() != 2 {
		t.Fatalf("poll not ready or value mismatch: ready=%v value=%d", poll.IsReady(), poll.Value())
	}
	if len(out) != 1 || out[0] != 2 {
		t.Fatalf("defer closure capture mismatch: %v", out)
	}
}

func TestDeferLoop(t *testing.T) {
	out := []int{}
	poll := DeferLoopAsync(3, &out).Poll(&async.Context{})
	if !poll.IsReady() || poll.Value() != 3 {
		t.Fatalf("poll not ready or value mismatch: ready=%v value=%d", poll.IsReady(), poll.Value())
	}
	if len(out) != 3 || out[0] != 2 || out[1] != 1 || out[2] != 0 {
		t.Fatalf("defer loop order mismatch: %v", out)
	}
}
