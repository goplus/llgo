package runtime

import (
	"testing"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
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

func TestChanBufferedRecvClearsSlot(t *testing.T) {
	type payload struct {
		p *int
	}

	ch := NewChan(int(unsafe.Sizeof(payload{})), 1)
	v := 42
	in := payload{p: &v}
	if !ChanSend(ch, unsafe.Pointer(&in), int(unsafe.Sizeof(in))) {
		t.Fatal("send failed")
	}

	var out payload
	if ok := ChanRecv(ch, unsafe.Pointer(&out), int(unsafe.Sizeof(out))); !ok {
		t.Fatal("recvOK=false, want true")
	}
	if out.p != &v {
		t.Fatalf("got %p, want %p", out.p, &v)
	}
	if ch.len != 0 {
		t.Fatalf("len=%d, want 0", ch.len)
	}
	slot := (*payload)(c.Advance(ch.data, 0))
	if slot.p != nil {
		t.Fatalf("buffer slot still holds %p, want nil", slot.p)
	}
}

func TestChanSendWakesSelectRecv(t *testing.T) {
	ch := NewChan(8, 0)
	done := make(chan struct{})

	go func() {
		defer close(done)
		var got int
		if _, ok := Select(
			ChanOp{C: ch, Val: unsafe.Pointer(&got), Size: 8},
		); !ok {
			t.Error("recvOK=false, want true")
			return
		}
		if got != 7 {
			t.Errorf("got=%d, want 7", got)
		}
	}()

	want := 7
	ChanSend(ch, unsafe.Pointer(&want), 8)
	<-done
}
