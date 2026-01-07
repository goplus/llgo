package types

import "github.com/goplus/llgo/async"

// StepInt returns an async int future
func StepInt(x int) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(x)
	})
}

// === Non-Primitive Type Tests ===

// StringParam tests string parameter across await
func StringParam(s string) async.Future[int] {
	length := StepInt(len(s)).Await()
	return async.Return(length)
}

// SliceParam tests slice parameter across await
func SliceParam(arr []int) async.Future[int] {
	sum := 0
	for _, v := range arr {
		val := StepInt(v).Await()
		sum += val
	}
	return async.Return(sum)
}

// PointerParam tests pointer parameter across await
func PointerParam(p *int) async.Future[int] {
	if p == nil {
		return async.Return(-1)
	}
	val := StepInt(*p).Await()
	return async.Return(val)
}

// MapParam tests map parameter across await
func MapParam(m map[string]int, key string) async.Future[int] {
	v, ok := m[key]
	if !ok {
		return async.Return(-1)
	}
	val := StepInt(v).Await()
	return async.Return(val)
}

// StructField tests struct with field access across await
type Point struct {
	X, Y int
}

func StructFieldAccess(pt Point) async.Future[int] {
	px := StepInt(pt.X).Await()
	py := StepInt(pt.Y).Await()
	return async.Return(px + py)
}
