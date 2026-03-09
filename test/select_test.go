package test

import (
	"testing"
	"time"
)

func TestSelectRecvWakesForBlockedUnbufferedSend(t *testing.T) {
	for i := 0; i < 50; i++ {
		res := make(chan struct{})
		done := make(chan struct{})
		started := make(chan struct{})
		received := make(chan struct{})
		sendDone := make(chan struct{})

		go func() {
			close(started)
			select {
			case <-res:
				close(received)
			case <-done:
			}
		}()

		<-started
		time.Sleep(time.Millisecond)

		go func() {
			res <- struct{}{}
			close(sendDone)
		}()

		select {
		case <-sendDone:
		case <-time.After(200 * time.Millisecond):
			close(done)
			t.Fatalf("iteration %d: unbuffered send did not wake select receiver", i)
		}

		select {
		case <-received:
		case <-time.After(200 * time.Millisecond):
			close(done)
			t.Fatalf("iteration %d: select receiver did not receive sent value", i)
		}

		close(done)
	}
}
