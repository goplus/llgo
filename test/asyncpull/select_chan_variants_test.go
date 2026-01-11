//go:build llgo
// +build llgo

package asyncpull

import (
	"github.com/goplus/llgo/async"
	"testing"
)

// SelectDefaultAwait hits default branch when no channel ready.
func SelectDefaultAwait() async.Future[int] {
	ch := make(chan int)
	var out int
	select {
	case v := <-ch:
		out = Compute(v).Await()
	default:
		out = -1
	}
	return async.Return(out)
}

func TestSelectDefaultAwait(t *testing.T) {
	got := pollReady(t, SelectDefaultAwait())
	if got != -1 {
		t.Fatalf("SelectDefaultAwait = %d, want -1", got)
	}
}

// SelectClosedAwait handles closed channel recv with ok=false.
func SelectClosedAwait() async.Future[int] {
	ch := make(chan int)
	close(ch)
	var out int
	select {
	case v, ok := <-ch:
		if !ok {
			out = 0
			break
		}
		out = Compute(v).Await()
	}
	return async.Return(out)
}

func TestSelectClosedAwait(t *testing.T) {
	got := pollReady(t, SelectClosedAwait())
	if got != 0 {
		t.Fatalf("SelectClosedAwait = %d, want 0", got)
	}
}
