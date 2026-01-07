//go:build llgo
// +build llgo

// complexdemo exercises more varied async control flow than typesdemo.
// It mixes tuple/result returns, nested loops, pointer/map parameters,
// and string building. Each scenario panics if the async output deviates
// from the deterministic reference implementation.
package main

import (
	"fmt"

	"github.com/goplus/llgo/async"
)

type Operation struct {
	Kind   string
	Value  int
	Repeat int
}

type Matrix struct {
	Rows [][]int
}

func StepInt(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

func StepString(s string) *async.AsyncFuture[string] {
	return async.Async(func(resolve func(string)) {
		resolve(s)
	})
}

func RangeAggregator(ops []Operation, bias int) async.Future[int] {
	total := bias
	adjust := 0
	for idx, op := range ops {
		awaited := StepInt(op.Value + idx + adjust).Await()
		switch op.Kind {
		case "mul":
			total *= awaited
		case "neg":
			total -= awaited
		default:
			total += awaited
		}
		for r := 0; r < op.Repeat; r++ {
			bump := StepInt(r + idx + adjust).Await()
			total += bump % 3
		}
		if total%5 == 0 {
			adjust += StepInt(op.Value % 4).Await()
		} else {
			adjust--
		}
	}
	return async.Return(total + adjust)
}

func RangeAggregatorRef(ops []Operation, bias int) int {
	total := bias
	adjust := 0
	for idx, op := range ops {
		awaited := op.Value + idx + adjust
		switch op.Kind {
		case "mul":
			total *= awaited
		case "neg":
			total -= awaited
		default:
			total += awaited
		}
		for r := 0; r < op.Repeat; r++ {
			bump := r + idx + adjust
			total += bump % 3
		}
		if total%5 == 0 {
			adjust += op.Value % 4
		} else {
			adjust--
		}
	}
	return total + adjust
}

func InterleaveWords(words []string, salt string) async.Future[string] {
	acc := ""
	for idx, w := range words {
		awaited := StepString(fmt.Sprintf("%s|%d|%s", w, idx, salt)).Await()
		if idx%2 == 0 {
			acc += awaited
		} else {
			acc = awaited + acc
		}
		boost := StepInt(len(w) + idx).Await()
		if boost%2 == 1 {
			acc += "#"
		}
	}
	return async.Return(acc)
}

func InterleaveWordsRef(words []string, salt string) string {
	acc := ""
	for idx, w := range words {
		awaited := fmt.Sprintf("%s|%d|%s", w, idx, salt)
		if idx%2 == 0 {
			acc += awaited
		} else {
			acc = awaited + acc
		}
		boost := len(w) + idx
		if boost%2 == 1 {
			acc += "#"
		}
	}
	return acc
}

func MatrixSummary(mat Matrix) async.Future[async.Tuple2[int, int]] {
	diag := 0
	anti := 0
	for rowIdx := range mat.Rows {
		row := mat.Rows[rowIdx]
		if len(row) == 0 {
			continue
		}
		dIdx := rowIdx % len(row)
		diag += StepInt(row[dIdx] + rowIdx).Await()
		antiIdx := len(row) - 1 - dIdx
		if antiIdx < 0 {
			antiIdx = 0
		}
		anti += StepInt(row[antiIdx] - rowIdx).Await()
	}
	return async.Return(async.Tuple2[int, int]{V1: diag, V2: anti})
}

func MatrixSummaryRef(mat Matrix) (int, int) {
	diag := 0
	anti := 0
	for rowIdx := range mat.Rows {
		row := mat.Rows[rowIdx]
		if len(row) == 0 {
			continue
		}
		dIdx := rowIdx % len(row)
		diag += row[dIdx] + rowIdx
		antiIdx := len(row) - 1 - dIdx
		if antiIdx < 0 {
			antiIdx = 0
		}
		anti += row[antiIdx] - rowIdx
	}
	return diag, anti
}

type Routes map[string][]int

func EvaluateRoutes(routes Routes, order []string, bonus *int) async.Future[async.Result[int]] {
	seed := 0
	if bonus != nil {
		seed = *bonus
	}
	best := -1
	visits := 0
	for _, key := range order {
		seq, ok := routes[key]
		if !ok || len(seq) == 0 {
			continue
		}
		for idx, val := range seq {
			sample := StepInt(val + seed + idx + visits).Await()
			if sample > best {
				best = sample
			}
			if sample%4 == 0 {
				goto done
			}
		}
		visits++
	}

done:
	if best < 0 {
		return async.Return(async.Err[int](fmt.Errorf("no viable routes")))
	}
	return async.Return(async.Ok(best))
}

func EvaluateRoutesRef(routes Routes, order []string, bonus *int) (int, error) {
	seed := 0
	if bonus != nil {
		seed = *bonus
	}
	best := -1
	visits := 0
	for _, key := range order {
		seq, ok := routes[key]
		if !ok || len(seq) == 0 {
			continue
		}
		for idx, val := range seq {
			sample := val + seed + idx + visits
			if sample > best {
				best = sample
			}
			if sample%4 == 0 {
				goto done
			}
		}
		visits++
	}

done:
	if best < 0 {
		return -1, fmt.Errorf("no viable routes")
	}
	return best, nil
}

func resolveFuture[T any](name string, fut async.Future[T]) T {
	ctx := &async.Context{}
	for attempt := 1; attempt <= 6; attempt++ {
		poll := fut.Poll(ctx)
		if poll.HasError() {
			panic(fmt.Sprintf("%s panic: %v", name, poll.Error()))
		}
		if poll.IsReady() {
			return poll.Value()
		}
	}
	panic(fmt.Sprintf("%s never resolved", name))
}

func mustEqual[T comparable](label string, got, want T) {
	if got != want {
		panic(fmt.Sprintf("%s mismatch: got %v want %v", label, got, want))
	}
}

func main() {
	fmt.Println("=== Advanced Async Demo ===")

	ops := []Operation{
		{Kind: "add", Value: 3, Repeat: 1},
		{Kind: "mul", Value: 2, Repeat: 2},
		{Kind: "neg", Value: 5, Repeat: 0},
		{Kind: "add", Value: 4, Repeat: 3},
	}
	aggAsync := resolveFuture("RangeAggregator", RangeAggregator(ops, 2))
	aggRef := RangeAggregatorRef(ops, 2)
	mustEqual("RangeAggregator", aggAsync, aggRef)
	fmt.Printf("[RangeAggregator] result=%d\n", aggAsync)

	words := []string{"orion", "vega", "lyra", "cygnus"}
	interAsync := resolveFuture("InterleaveWords", InterleaveWords(words, "salt"))
	interRef := InterleaveWordsRef(words, "salt")
	mustEqual("InterleaveWords", interAsync, interRef)
	fmt.Printf("[InterleaveWords] result=%s\n", interAsync)

	matrix := Matrix{Rows: [][]int{{2, 5, 7}, {4, 1, 9, 3}, {8, 6}, {10}}}
	tupleAsync := resolveFuture("MatrixSummary", MatrixSummary(matrix))
	d, a := MatrixSummaryRef(matrix)
	mustEqual("MatrixSummary diag", tupleAsync.V1, d)
	mustEqual("MatrixSummary anti", tupleAsync.V2, a)
	fmt.Printf("[MatrixSummary] diag=%d anti=%d\n", tupleAsync.V1, tupleAsync.V2)

	routes := Routes{
		"north": {3, 8},
		"east":  {4, 1, 7},
		"west":  {5},
	}
	order := []string{"east", "north", "south", "west"}
	bonus := 2
	resAsync := resolveFuture("EvaluateRoutes", EvaluateRoutes(routes, order, &bonus))
	if resAsync.Err != nil {
		panic(fmt.Sprintf("EvaluateRoutes unexpected error: %v", resAsync.Err))
	}
	okVal, err := EvaluateRoutesRef(routes, order, &bonus)
	if err != nil {
		panic(err)
	}
	mustEqual("EvaluateRoutes value", resAsync.Value, okVal)
	fmt.Printf("[EvaluateRoutes] best=%d\n", resAsync.Value)

	missAsync := resolveFuture("EvaluateRoutes#miss", EvaluateRoutes(routes, []string{"south"}, nil))
	if missAsync.Err == nil {
		panic("EvaluateRoutes#miss expected error")
	}
	fmt.Println("[EvaluateRoutes] missing routes produced error as expected")

	fmt.Println("=== Advanced Async Demo complete ===")
}
