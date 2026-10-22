package main

/*
#include <stdint.h>
int32_t Double(int32_t);
int32_t add(int32_t, int32_t);
*/
import "C"

import (
	_ "example.com/foreigncallback/capi"
	"example.com/foreigncallback/dep"
)

//export GoMainCallback
func GoMainCallback(value C.int) C.int { return C.int(dep.Result(int32(value))) }

//export GoMainNestedCallback
func GoMainNestedCallback(value, depth C.int) C.int {
	return C.int(dep.Nested(int32(value), int32(depth)))
}

func main() {
	if C.Double(21) != 42 || C.add(20, 22) != 42 {
		panic("package C direct exports failed")
	}
	if dep.RunPointer() != 504 || dep.Run(0) != 504 || dep.Run(1) != 504 || dep.Count() != 36 {
		panic("foreign callback allocation/GC or result failed")
	}
	// Go -> C -> Go export -> Go -> C -> Go export -> Go, on a runtime thread.
	if dep.RunNested() != 111 {
		panic("nested callback on Go thread failed")
	}
	if calls, defers := dep.NestedCounts(); calls != 4 || defers != 4 {
		panic("nested callback on Go thread lost calls or defers")
	}
	println("Go-thread reentry: ok")
	// C -> Go export -> Go -> C -> Go export -> Go, on C-created worker threads.
	if dep.RunNestedThreads() != 1332 {
		panic("nested callback on C threads failed")
	}
	if calls, defers := dep.NestedCounts(); calls != 52 || defers != 52 {
		panic("nested callback on C threads lost calls or defers")
	}
	println("C-thread reentry: ok")
	println("ok")
}
