package main

import (
	"os"
	_ "unsafe"
)

const LLGoFiles = "_wrap/mixed.c"

//go:linkname lldbMixedCall C.llgo_lldb_mixed_call
func lldbMixedCall(value int32) int32

//go:linkname lldbMixedFaultCall C.llgo_lldb_mixed_fault_call
func lldbMixedFaultCall()

//go:linkname lldbCFault C.llgo_lldb_c_fault
func lldbCFault()

//go:noinline
//export llgo_lldb_go_callback
func llgo_lldb_go_callback(value int32) int32 {
	callbackValue := value + 2
	println(callbackValue) // LLDB_BREAK: mixed_go_c_callback
	return callbackValue
}

//go:noinline
//export llgo_lldb_go_fault_callback
func llgo_lldb_go_fault_callback() {
	lldbCFault()
}

func main() {
	if got := lldbMixedCall(39); got != 45 {
		panic("mixed Go/C callback returned the wrong value")
	}
	if os.Getenv("LLGO_LLDB_FAULT_TEST") != "" {
		lldbMixedFaultCall()
	}
}
