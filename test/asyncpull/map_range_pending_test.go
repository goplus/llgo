//go:build llgo
// +build llgo

package asyncpull

import (
	"testing"

	"github.com/goplus/llgo/async"
)

// MapRangeAwait demonstrates the current limitation: map iterator cannot be
// persisted across await, so compilation should fail or be diagnosed.
// For now we just document expected behavior; this test is skipped until
// compiler emits a diagnostic.
func MapRangeAwait(m map[string]int) async.Future[int] {
	sum := 0
	for _, v := range m { // iterator state not persisted today
		sum += Compute(v).Await()
	}
	return async.Return(sum)
}

func TestMapRangeAwait_Skip(t *testing.T) {
	t.Skip("map range + await should be diagnosed; iterator not yet persisted")
}
