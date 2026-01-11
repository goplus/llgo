//go:build llgo
// +build llgo

package asyncpull

import (
	"github.com/goplus/llgo/async"
	"testing"
)

// SelectAwait covers select case containing await on a ready channel path.
func SelectAwait(ch1, ch2 chan int) async.Future[int] {
	var out int
	select {
	case v := <-ch1:
		out = Compute(v).Await()
	case v := <-ch2:
		out = Compute(v * 2).Await()
	default:
		out = -1
	}
	return async.Return(out)
}

func TestSelectAwait(t *testing.T) {
	ch1 := make(chan int, 1)
	ch2 := make(chan int, 1)
	ch1 <- 3
	got := pollReady(t, SelectAwait(ch1, ch2))
	if got != 6 { // Compute doubles 3 -> 6
		t.Fatalf("SelectAwait = %d, want 6", got)
	}
}

// GoroutineAwaitForbidden demonstrates expected rejection: goroutine inside async.
func GoroutineAwaitForbidden() async.Future[int] {
	go func() { Compute(1).Await() }() // should be diagnosed by Transform
	return async.Return(0)
}

func TestGoroutineAwaitForbidden_Skip(t *testing.T) {
	t.Skip("goroutine+await should be rejected at compile time")
}
