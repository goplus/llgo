//go:build llgo
// +build llgo

package asyncpull

import (
	"fmt"
	"testing"

	"github.com/goplus/llgo/async"
)

// pollError polls a future until it returns an error (panic propagated as PollError).
func pollError[T any](t *testing.T, fut async.Future[T]) any {
	t.Helper()
	ctx := &async.Context{}
	for i := 0; i < 4; i++ {
		poll := fut.Poll(ctx)
		if poll.IsReady() {
			if !poll.HasError() {
				t.Fatalf("expected error poll, got value %v", poll.Value())
			}
			return poll.Error()
		}
	}
	t.Fatalf("future never resolved with error")
	return nil
}

func TestPanicPlain(t *testing.T) {
	fut := PanicPlain()
	err1 := pollError(t, fut)
	err2 := pollError(t, fut) // second poll should return same error
	if fmt.Sprint(err1) != "plain panic" || fmt.Sprint(err2) != "plain panic" {
		t.Fatalf("unexpected panic values: %v / %v", err1, err2)
	}
}

func TestPanicWithRecover(t *testing.T) {
	got := pollReady(t, PanicWithRecover())
	if got != 0 {
		t.Fatalf("recover result = %d, want 0", got)
	}
}

func TestChildPanicPropagate(t *testing.T) {
	errVal := pollError(t, ParentPropagateChildPanic())
	if fmt.Sprint(errVal) != "child panic" {
		t.Fatalf("propagated panic = %v, want child panic", errVal)
	}
}

func TestChildPanicRecover(t *testing.T) {
	got := pollReady(t, ParentRecoverChildPanic())
	if got != 0 {
		t.Fatalf("recovered child panic result = %d, want 0", got)
	}
}

func TestPanicDeferAfterAwait(t *testing.T) {
	errVal := pollError(t, PanicDeferAfterAwait())
	if fmt.Sprint(errVal) != "defer boom" {
		t.Fatalf("panic from defer after await = %v, want defer boom", errVal)
	}
}
