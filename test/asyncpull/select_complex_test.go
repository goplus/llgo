//go:build llgo
// +build llgo

package asyncpull

import (
	"testing"

	"github.com/goplus/llgo/async"
)

// SelectSendAwait chooses a ready send case and awaits before sending.
func SelectSendAwait() async.Future[int] {
	chSend := make(chan int, 1)
	chRecv := make(chan int)
	var sent int
	select {
	case chSend <- Compute(5).Await():
		sent = <-chSend
	case v := <-chRecv:
		sent = v
	default:
		sent = -1
	}
	return async.Return(sent)
}

func TestSelectSendAwait(t *testing.T) {
	got := pollReady(t, SelectSendAwait())
	if got != 10 {
		t.Fatalf("SelectSendAwait = %d, want 10", got)
	}
}

// SelectDefaultAwaitInner hits default and awaits inside the default branch.
func SelectDefaultAwaitInner() async.Future[int] {
	ch := make(chan int)
	out := 0
	select {
	case v := <-ch:
		out = v
	default:
		out = Compute(7).Await()
	}
	return async.Return(out)
}

func TestSelectDefaultAwaitInner(t *testing.T) {
	got := pollReady(t, SelectDefaultAwaitInner())
	if got != 14 {
		t.Fatalf("SelectDefaultAwaitInner = %d, want 14", got)
	}
}

// SelectClosedAwaitWithAwait awaits inside the select case after ok=false.
func SelectClosedAwaitWithAwait() async.Future[int] {
	ch := make(chan int)
	close(ch)
	out := 0
	select {
	case v, ok := <-ch:
		if ok {
			out = Compute(v).Await()
		} else {
			out = Compute(3).Await()
		}
	}
	return async.Return(out)
}

func TestSelectClosedAwaitWithAwait(t *testing.T) {
	got := pollReady(t, SelectClosedAwaitWithAwait())
	if got != 6 {
		t.Fatalf("SelectClosedAwaitWithAwait = %d, want 6", got)
	}
}
