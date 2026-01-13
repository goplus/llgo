//go:build llgo
// +build llgo

package asyncpull

import (
	"testing"

	"github.com/goplus/llgo/async"
)

// AwaitSync bridges async.Future to sync code, panicking on PollError.
func AwaitSync[T any](f async.Future[T]) T {
	ctx := &async.Context{}
	for {
		poll := f.Poll(ctx)
		if poll.IsReady() {
			if poll.HasError() {
				panic(poll.Error())
			}
			return poll.Value()
		}
	}
}

func TestAwaitSyncPropagatesPanicAndRunsSyncDefer(t *testing.T) {
	out := []string{}
	defer func() {
		if r := recover(); r == nil || r.(string) != "child panic" {
			t.Fatalf("sync recover panic = %v, want child panic", r)
		}
		if len(out) != 1 || out[0] != "sync defer" {
			t.Fatalf("sync defer not run: %v", out)
		}
	}()

	func() {
		defer func() { out = append(out, "sync defer") }()
		AwaitSync(ParentPropagateChildPanic())
	}()
	t.Fatalf("should have panicked")
}
