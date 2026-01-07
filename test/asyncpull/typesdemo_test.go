//go:build llgo
// +build llgo

package asyncpull

import (
	"fmt"
	"testing"

	"github.com/goplus/llgo/async"
)

func immediate(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

func weightedLoop(nums []int, bias int) async.Future[int] {
	total := bias
	for i, v := range nums {
		step := immediate(v).Await()
		if i%2 == 0 {
			total += step
		} else {
			total += step * 2
		}
	}
	return async.Return(total)
}

func branchingTuple(a, b int, flip bool) async.Future[async.Tuple2[int, int]] {
	base := immediate(a + b).Await()
	if flip {
		delta := immediate(base - b).Await()
		return async.Return(async.Tuple2[int, int]{V1: delta, V2: base})
	}
	boost := immediate(base + a).Await()
	return async.Return(async.Tuple2[int, int]{V1: base, V2: boost})
}

func scanForKey(keys []string, data map[string]int) async.Future[async.Result[int]] {
	sum := 0
	for i, key := range keys {
		val, ok := data[key]
		if !ok {
			continue
		}
		fetched := immediate(val + i).Await()
		sum += fetched
		if sum >= 15 {
			return async.Return(async.Ok(sum))
		}
	}
	return async.Return(async.Err[int](fmt.Errorf("no matching keys")))
}

func pollReady[T any](t *testing.T, fut async.Future[T]) T {
	t.Helper()
	ctx := &async.Context{}
	for i := 0; i < 4; i++ {
		poll := fut.Poll(ctx)
		if poll.IsReady() {
			if poll.HasError() {
				t.Fatalf("future error: %v", poll.Error())
			}
			return poll.Value()
		}
	}
	t.Fatalf("future never resolved")
	var zero T
	return zero
}

func TestWeightedLoopCrossVar(t *testing.T) {
	got := pollReady(t, weightedLoop([]int{3, 4, 5, 6}, 1))
	want := 1 + 3 + 8 + 5 + 12 // odd indices doubled
	if got != want {
		t.Fatalf("weightedLoop = %d, want %d", got, want)
	}
}

func TestBranchingTuplePaths(t *testing.T) {
	flipped := pollReady(t, branchingTuple(7, 4, true))
	if flipped.V1 != 3 || flipped.V2 != 11 {
		t.Fatalf("flip tuple = %+v, want (3,11)", flipped)
	}

	straight := pollReady(t, branchingTuple(2, 5, false))
	if straight.V1 != 7 || straight.V2 != 9 {
		t.Fatalf("straight tuple = %+v, want (7,9)", straight)
	}
}

func TestScanForKeyResult(t *testing.T) {
	data := map[string]int{"alpha": 6, "beta": 9, "gamma": 4}
	keys := []string{"noop", "beta", "alpha", "zz"}
	okRes := pollReady(t, scanForKey(keys, data))
	if !okRes.IsOk() || okRes.Value != 18 { // beta then alpha contributions
		t.Fatalf("expected ok result with accumulated sum, got %+v", okRes)
	}

	miss := pollReady(t, scanForKey([]string{"missing"}, data))
	if !miss.IsErr() {
		t.Fatalf("expected Err result on missing keys, got %+v", miss)
	}
}
