package gotest

import (
	"fmt"
	"runtime"
	"testing"
)

type channelWaiterSync struct {
	beforeWait   func()
	beforeNotify func()
	afterWait    func()
}

// The native lifetime probe replaces this factory to force a spurious wake
// before signaling completes. The same channel cases also run with Go and LLGo
// using ordinary synchronization here.
var newChannelWaiterSync = func() channelWaiterSync {
	started := make(chan struct{})
	return channelWaiterSync{
		beforeWait: func() { close(started) },
		beforeNotify: func() {
			<-started
			// Give the waiting goroutine a chance to enter its channel operation.
			runtime.Gosched()
		},
		afterWait: func() {},
	}
}

func TestChannelWaiterCompletion(t *testing.T) {
	for _, scenario := range []string{"recv", "send", "close-recv"} {
		t.Run(scenario, func(t *testing.T) {
			testChannelWaiterCompletion(t, scenario)
		})
	}
}

func testChannelWaiterCompletion(t *testing.T, scenario string) {
	t.Helper()
	s := newChannelWaiterSync()
	ch := make(chan int)
	done := make(chan struct{})
	go func() {
		defer close(done)
		s.beforeNotify()
		switch scenario {
		case "recv":
			ch <- 42
		case "send":
			if value := <-ch; value != 42 {
				t.Errorf("sent value = %d, want 42", value)
			}
		default:
			close(ch)
		}
	}()
	s.beforeWait()
	switch scenario {
	case "recv":
		if value := <-ch; value != 42 {
			t.Errorf("received value = %d, want 42", value)
		}
	case "send":
		ch <- 42
	case "close-recv":
		if value, ok := <-ch; value != 0 || ok {
			t.Errorf("closed receive = %d, %v; want 0, false", value, ok)
		}
	case "close-send":
		func() {
			defer func() {
				if got := recover(); fmt.Sprint(got) != "send on closed channel" {
					t.Errorf("closed send panic = %v, want send on closed channel", got)
				}
			}()
			ch <- 42
		}()
	}
	s.afterWait()
	<-done
}
