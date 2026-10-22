package dep

/*
#cgo !windows LDFLAGS: -pthread
typedef int (*callback_t)(int);
extern int GoDepCallback(int);
int invoke_threads(int main_callback);
int invoke_callback_threads(callback_t callback);
int invoke_nested(int value, int depth);
int invoke_nested_threads(void);
*/
import "C"

import (
	"runtime"
	"sync/atomic"
)

var payload = []int32{22}
var calls int32
var nestedCalls, nestedDefers int32

func Result(value int32) int32 {
	copy := append([]int32(nil), payload...)
	runtime.GC()
	atomic.AddInt32(&calls, 1)
	return value + copy[0]
}

//export GoDepCallback
func GoDepCallback(value C.int) C.int { return C.int(Result(int32(value))) }

//export GoDepNestedCallback
func GoDepNestedCallback(value, depth C.int) C.int {
	return C.int(Nested(int32(value), int32(depth)))
}

// Nested keeps outer Go allocations and defers alive across repeated C -> Go
// entries. Collection after the inner callback returns catches early thread
// unregistration or loss of the outer Go context.
func Nested(value, depth int32) int32 {
	data := append([]int32(nil), value, depth, payload[0])
	defer func() {
		runtime.GC()
		if data[0] != value || data[1] != depth || data[2] != 22 {
			panic("nested callback lost deferred Go data")
		}
		atomic.AddInt32(&nestedDefers, 1)
	}()
	atomic.AddInt32(&nestedCalls, 1)
	runtime.GC()
	result := value
	if depth > 0 {
		result = int32(C.invoke_nested(C.int(value+1), C.int(depth-1)))
	}
	runtime.GC()
	if data[0] != value || data[1] != depth {
		panic("nested callback lost outer Go data")
	}
	return result + data[2]
}

func Run(mainCallback int) int { return int(C.invoke_threads(C.int(mainCallback))) }
func Count() int32             { return atomic.LoadInt32(&calls) }
func RunPointer() int          { return int(C.invoke_callback_threads((C.callback_t)(C.GoDepCallback))) }
func RunNested() int           { return int(C.invoke_nested(20, 3)) }
func RunNestedThreads() int    { return int(C.invoke_nested_threads()) }
func NestedCounts() (int32, int32) {
	return atomic.LoadInt32(&nestedCalls), atomic.LoadInt32(&nestedDefers)
}
