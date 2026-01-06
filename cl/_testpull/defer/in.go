package foo

import "github.com/goplus/llgo/async"

// Resource simulates a resource that needs cleanup
type Resource struct {
	id int
}

func (r *Resource) Close() {
	// Cleanup logic
}

// OpenResource is a mock async function
func OpenResource(id int) *async.AsyncFuture[*Resource] {
	return async.Async(func(resolve func(*Resource)) {
		resolve(&Resource{id: id})
	})
}

// ProcessResource is a mock async function
func ProcessResource(r *Resource) *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(r.id * 10)
	})
}

// SimpleDefer tests basic defer with async
func SimpleDefer() async.Future[int] {
	r := OpenResource(1).Await()
	defer r.Close()
	result := ProcessResource(r).Await()
	return async.Return(result)
}

// ConditionalDefer tests defer in conditional branches
func ConditionalDefer(cond bool) async.Future[int] {
	if cond {
		r := OpenResource(1).Await()
		defer r.Close()
		result := ProcessResource(r).Await()
		return async.Return(result)
	}
	return async.Return(0)
}

// LoopDefer tests defer in loops
func LoopDefer(n int) async.Future[int] {
	sum := 0
	for i := 0; i < n; i++ {
		r := OpenResource(i).Await()
		defer r.Close()
		x := ProcessResource(r).Await()
		sum += x
	}
	return async.Return(sum)
}

// MultipleDefer tests multiple defer statements
func MultipleDefer() async.Future[int] {
	r1 := OpenResource(1).Await()
	defer r1.Close()

	r2 := OpenResource(2).Await()
	defer r2.Close()

	x := ProcessResource(r1).Await()
	y := ProcessResource(r2).Await()

	return async.Return(x + y)
}
