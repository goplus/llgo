package runtime

import (
	"testing"
	"unsafe"
)

func TestChanSendClosedPanics(t *testing.T) {
	ch := NewChan(8, 1)
	ChanClose(ch)

	defer func() {
		if recover() == nil {
			t.Fatal("expected panic")
		}
	}()

	var v int
	ChanSend(ch, unsafe.Pointer(&v), 8)
}

func TestChanTrySendClosedPanics(t *testing.T) {
	ch := NewChan(8, 1)
	ChanClose(ch)

	defer func() {
		if recover() == nil {
			t.Fatal("expected panic")
		}
	}()

	var v int
	ChanTrySend(ch, unsafe.Pointer(&v), 8)
}

func TestChanCloseClosedPanics(t *testing.T) {
	ch := NewChan(8, 1)
	ChanClose(ch)

	defer func() {
		if recover() == nil {
			t.Fatal("expected panic")
		}
	}()

	ChanClose(ch)
}

func TestChanRecvLastValueBeforeClose(t *testing.T) {
	ch := NewChan(8, 0)
	done := make(chan struct{})
	go func() {
		var v int
		ChanSend(ch, unsafe.Pointer(&v), 8)
		ChanClose(ch)
		close(done)
	}()

	var got int
	if ok := ChanRecv(ch, unsafe.Pointer(&got), 8); !ok {
		t.Fatal("recvOK=false, want true for the final value")
	}
	if got != 0 {
		t.Fatalf("got=%d, want 0", got)
	}
	<-done
	if ok := ChanRecv(ch, unsafe.Pointer(&got), 8); ok {
		t.Fatal("recvOK=true, want false after channel is drained and closed")
	}
}
