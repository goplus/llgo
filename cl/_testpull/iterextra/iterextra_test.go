//go:build llgo
// +build llgo

package iterextra

import (
	"testing"

	"github.com/goplus/llgo/async"
)

// Tests mirror asyncpull versions but at _testpull level for llgen/ll analysis.

func TestHigherOrderVisitor(t *testing.T) {
	sum := 0
	iter := MakeVisitor(4)
	iter(func(v int) {
		sum += Compute(v).Await()
	})
	if sum != 12 {
		t.Fatalf("sum=%d want 12", sum)
	}
}

func TestGoroutineChannel(t *testing.T) {
	got := pollReady(t, GoroutineChannel(4))
	if got != 12 {
		t.Fatalf("got=%d want 12", got)
	}
}

// pollReady copied from asyncpull tests.
func pollReady[T any](t *testing.T, fut async.Future[T]) T {
	t.Helper()
	ctx := &async.Context{}
	p := fut.Poll(ctx)
	if !p.IsReady() {
		t.Fatalf("future not ready")
	}
	return p.Value()
}
