//go:build llgo
// +build llgo

package asyncpull

import (
	"testing"

	"github.com/goplus/llgo/async"
)

// MapRangeAwait ranges over a map while awaiting in the loop body.
func MapRangeAwait(m map[string]int) async.Future[int] {
	sum := 0
	for _, v := range m {
		sum += Compute(v).Await() // suspend inside map range
	}
	return async.Return(sum)
}

func TestMapRangeAwait(t *testing.T) {
	m := map[string]int{"a": 1, "b": 2, "c": 3}
	got := pollReady(t, MapRangeAwait(m))
	want := (1 * 2) + (2 * 2) + (3 * 2) // Compute doubles
	if got != want {
		t.Fatalf("MapRangeAwait = %d, want %d", got, want)
	}
}
