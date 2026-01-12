//go:build llgo
// +build llgo

package asyncpull

import (
	"os"
	"testing"
	"time"

	"github.com/goplus/llgo/async"
)

type recordingWaker struct {
	ch chan struct{}
}

func (w *recordingWaker) Wake() {
	select {
	case w.ch <- struct{}{}:
	default:
	}
}

func waitForWake(t *testing.T, ch <-chan struct{}) {
	t.Helper()
	for i := 0; i < 1000; i++ {
		select {
		case <-ch:
			return
		default:
			time.Sleep(time.Millisecond)
		}
	}
	t.Fatalf("waker was not invoked")
}

// RecvAwait waits on an unbuffered channel and should pend until a sender arrives.
func RecvAwait(ch <-chan int) async.Future[int] {
	_ = Compute(0).Await() // force async transformation and suspend point
	v := <-ch
	return async.Return(v)
}

// SendAwait sends on an unbuffered channel and should pend until a receiver arrives.
func SendAwait(ch chan<- int, v int) async.Future[async.Void] {
	_ = Compute(0).Await() // force async transformation and suspend point
	ch <- v
	return async.Return(async.Void{})
}

func TestChanRecvRegistersWaker(t *testing.T) {
	if os.Getenv("LLGO_PULL_IR") != "1" {
		t.Skip("pull IR backend disabled")
		return
	}
	ch := make(chan int)
	w := &recordingWaker{ch: make(chan struct{}, 1)}
	ctx := async.NewContext(w)

	fut := RecvAwait(ch)
	if poll := fut.Poll(ctx); poll.IsReady() {
		t.Fatalf("recv should be pending without sender")
	}

	startSend := make(chan struct{})
	go func() {
		<-startSend
		ch <- 42
	}()
	close(startSend)

	waitForWake(t, w.ch)

	poll := fut.Poll(ctx)
	if !poll.IsReady() {
		t.Fatalf("recv still pending after wake")
	}
	if poll.Value() != 42 {
		t.Fatalf("recv value=%d want 42", poll.Value())
	}
}

func TestChanSendRegistersWaker(t *testing.T) {
	if os.Getenv("LLGO_PULL_IR") != "1" {
		t.Skip("pull IR backend disabled")
		return
	}
	ch := make(chan int)
	w := &recordingWaker{ch: make(chan struct{}, 1)}
	ctx := async.NewContext(w)

	fut := SendAwait(ch, 7)
	if poll := fut.Poll(ctx); poll.IsReady() {
		t.Fatalf("send should be pending without receiver")
	}

	recvDone := make(chan int, 1)
	startRecv := make(chan struct{})
	go func() {
		<-startRecv
		recvDone <- <-ch
	}()

	close(startRecv)
	waitForWake(t, w.ch)

	poll := fut.Poll(ctx)
	if !poll.IsReady() {
		t.Fatalf("send still pending after wake")
	}

	for i := 0; i < 1000; i++ {
		select {
		case v := <-recvDone:
			if v != 7 {
				t.Fatalf("recv value=%d want 7", v)
			}
			return
		default:
			time.Sleep(time.Millisecond)
		}
	}
	t.Fatalf("receiver did not get value")
}
