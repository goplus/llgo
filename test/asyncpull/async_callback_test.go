//go:build llgo
// +build llgo

package asyncpull

import (
	"testing"

	"github.com/goplus/llgo/async"
)

// visitNumbers invokes the async visitor for each index and returns the loop sum.
func visitNumbers(n int, visitor func(int) async.Future[async.Void]) async.Future[int] {
	total := 0
	for i := 0; i < n; i++ {
		visitor(i).Await()
		total += i
	}
	return async.Return(total)
}

func TestAwaitInVisitorClosure(t *testing.T) {
	sum := 0
	fut := visitNumbers(3, func(i int) async.Future[async.Void] {
		sum += Compute(i).Await() // captures outer sum; exercises freevars in async closure
		return async.Return(async.Void{})
	})

	got := pollReady(t, fut)
	if got != 3 {
		t.Fatalf("visitNumbers result = %d, want 3", got)
	}
	if sum != 6 { // Compute doubles i => 0,2,4
		t.Fatalf("sum = %d, want 6", sum)
	}
}
