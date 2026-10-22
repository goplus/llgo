package main

import "os"

//go:noinline
func explicitPanic() {
	panic("native debugger panic") // LLDB_STOP: explicit_panic
}

// Keep the generated-check operation on the declaration line: debuggers may
// attribute the caller return PC to either side of the runtime helper call.
//
//go:noinline
func divideByZero(divisor int) int { return 42 / divisor } // LLDB_STOP: divide_by_zero

//go:noinline
func invalidMemory(pointer *int) int { return *pointer } // LLDB_STOP: invalid_memory

func main() {
	if len(os.Args) != 2 {
		panic("expected one debug scenario")
	}
	switch os.Args[1] {
	case "panic":
		explicitPanic()
	case "divide":
		println(divideByZero(len(os.Args) - 2))
	case "invalid-memory":
		println(invalidMemory(nil))
	case "inline":
		if got := optimizedInlineCaller(len(os.Args) * 10); got != 46 {
			panic("bad optimized inline result")
		}
	case "aggregate":
		if got := optimizedAggregate([3]int{1, 2, 3}); got != 24 {
			panic("bad optimized aggregate result")
		}
	default:
		panic("unknown debug scenario")
	}
}
