package main

import (
	"runtime"
	"syscall"
	"time"
	"unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	nativesync "github.com/xgo-dev/llgo/runtime/internal/sync"
	// The smoke package lives below the LLGo runtime root, whose packages are
	// excluded from the ordinary need-runtime signal. Import the core runtime
	// explicitly so its global state is initialized before the low-level test.
	_ "github.com/xgo-dev/llgo/runtime/internal/runtime"
)

const LLGoFiles = "_wrap/runtime.c; _wrap/fault.c"

//go:linkname currentThreadID C.llgo_windows_current_thread_id
func currentThreadID() uint32

//go:linkname traceClockNow runtime.traceClockNow
func traceClockNow() uint64

//go:linkname traceClockUnitsPerSecond runtime/trace.runtime_traceClockUnitsPerSecond
func traceClockUnitsPerSecond() uint64

//go:linkname cMaxprocs C.llgo_maxprocs
func cMaxprocs() int32

//go:linkname windowsInvalidAddress C.llgo_windows_invalid_address
func windowsInvalidAddress() uintptr

//go:linkname windowsUnrecoveredFault C.llgo_windows_unrecovered_fault
func windowsUnrecoveredFault() int32

//go:linkname windowsForeignFaultOnGoThread C.llgo_windows_foreign_fault_on_go_thread
func windowsForeignFaultOnGoThread() int32

//go:linkname windowsForeignFaultOnNativeThread C.llgo_windows_foreign_fault_on_native_thread
func windowsForeignFaultOnNativeThread() int32

//go:linkname panicWindowsException github.com/xgo-dev/llgo/runtime/internal/runtime.panicWindowsException
func panicWindowsException(code uint32, address uintptr)

//go:linkname runtimeRand runtime.rand
func runtimeRand() uint64

//go:linkname windowsRandom github.com/xgo-dev/llgo/runtime/internal/runtime.windowsRandom
func windowsRandom(data unsafe.Pointer, size uintptr) bool

//go:noinline
func windowsNilFault() byte {
	return *(*byte)(unsafe.Pointer(windowsInvalidAddress()))
}

// Keep two distinct fault sites so concurrent captures cannot accidentally
// satisfy each other's traceback checks.
//
//go:noinline
func windowsNilFaultA() byte {
	return *(*byte)(unsafe.Pointer(windowsInvalidAddress())) + 1
}

//go:noinline
func windowsNilFaultB() byte {
	return *(*byte)(unsafe.Pointer(windowsInvalidAddress())) + 2
}

func hasSuffix(value, suffix string) bool {
	return len(value) >= len(suffix) && value[len(value)-len(suffix):] == suffix
}

func checkNilFault() {
	for attempt := 0; attempt < 2; attempt++ {
		deferred := false
		recovered := false
		func() {
			defer func() {
				value := recover()
				if value == nil {
					panic("Windows nil fault was not recoverable")
				}
				err, ok := value.(error)
				if !ok || err.Error() != "runtime error: invalid memory address or nil pointer dereference" {
					panic("Windows nil fault returned the wrong panic value")
				}
				if !deferred {
					panic("Windows nil fault skipped an earlier defer")
				}

				var pcs [32]uintptr
				n := runtime.Callers(0, pcs[:])
				frames := runtime.CallersFrames(pcs[:n])
				found := false
				seenGoexit := false
				for {
					frame, more := frames.Next()
					if seenGoexit {
						panic("Windows nil fault traceback continued past runtime.goexit")
					}
					if hasSuffix(frame.Function, ".windowsNilFault") {
						found = true
					}
					if frame.Function == "runtime.goexit" {
						seenGoexit = true
					}
					if !more {
						break
					}
				}
				if !found {
					panic("Windows nil fault traceback lost the faulting frame")
				}
				if !seenGoexit {
					panic("Windows nil fault traceback lost runtime.goexit")
				}
				recovered = true
			}()
			defer func() { deferred = true }()
			_ = windowsNilFault()
		}()
		if !recovered || !deferred {
			panic("Windows nil fault did not complete recovery")
		}
	}
}

func checkConcurrentNilFault() {
	start := make(chan struct{})
	ready := make(chan struct{}, 2)
	done := make(chan struct{}, 2)

	run := func(fault func() byte, functionSuffix string) {
		ready <- struct{}{}
		<-start
		for attempt := 0; attempt < 32; attempt++ {
			func() {
				defer func() {
					if recover() == nil {
						panic("concurrent Windows nil fault was not recoverable")
					}
					var pcs [32]uintptr
					n := runtime.Callers(0, pcs[:])
					frames := runtime.CallersFrames(pcs[:n])
					for {
						frame, more := frames.Next()
						if hasSuffix(frame.Function, functionSuffix) {
							return
						}
						if !more {
							break
						}
					}
					panic("concurrent Windows fault traceback used another goroutine's snapshot")
				}()
				_ = fault()
			}()
		}
		done <- struct{}{}
	}

	go run(windowsNilFaultA, ".windowsNilFaultA")
	go run(windowsNilFaultB, ".windowsNilFaultB")
	<-ready
	<-ready
	close(start)
	<-done
	<-done
}

func checkForeignFaultOnGoThread() {
	if got := windowsForeignFaultOnGoThread(); got != 1 {
		panic("native Windows fault did not continue through the handler chain")
	}
}

func checkForeignFaultOnNativeThread() {
	if got := windowsForeignFaultOnNativeThread(); got != 1 {
		panic("native-thread Windows fault did not continue through the handler chain")
	}
}

func checkIntegerOverflowFault() {
	var got any
	func() {
		defer func() { got = recover() }()
		panicWindowsException(0xc0000095, 0)
	}()
	err, ok := got.(error)
	if !ok || err.Error() != "runtime error: integer overflow" {
		panic("Windows integer overflow returned the wrong panic value")
	}
}

func checkRecover() {
	defer func() {
		if value := recover(); value != "windows panic smoke" {
			panic("wrong recovered value")
		}
	}()
	panic("windows panic smoke")
}

func checkThreadSemantics() {
	if runtime.GOMAXPROCS(0) < 1 {
		panic("Windows GOMAXPROCS returned an invalid processor count")
	}
	runtime.LockOSThread()
	defer runtime.UnlockOSThread()
	threadID := currentThreadID()
	for i := 0; i < 64; i++ {
		runtime.Gosched()
		if currentThreadID() != threadID {
			panic("Windows LockOSThread allowed thread migration")
		}
	}
}

func checkProcessAffinityCPUCount() {
	kernel32 := syscall.NewLazyDLL("kernel32.dll")
	process, _, _ := kernel32.NewProc("GetCurrentProcess").Call()
	var processMask, systemMask uintptr
	result, _, _ := kernel32.NewProc("GetProcessAffinityMask").Call(
		process,
		uintptr(unsafe.Pointer(&processMask)),
		uintptr(unsafe.Pointer(&systemMask)),
	)
	if result == 0 || processMask == 0 {
		panic("GetProcessAffinityMask failed")
	}
	singleCPU := processMask & -processMask
	result, _, _ = kernel32.NewProc("SetProcessAffinityMask").Call(process, singleCPU)
	if result == 0 {
		panic("SetProcessAffinityMask(single CPU) failed")
	}
	got := cMaxprocs()
	result, _, _ = kernel32.NewProc("SetProcessAffinityMask").Call(process, processMask)
	if result == 0 {
		panic("restoring the process affinity mask failed")
	}
	if got != 1 {
		panic("Windows CPU count ignored the process affinity mask")
	}
}

func checkTraceClock() {
	if traceClockUnitsPerSecond() != 1_000_000_000/64 {
		panic("Windows trace clock reports the wrong frequency")
	}
	start := traceClockNow()
	for attempt := 0; attempt < 1_000_000; attempt++ {
		if traceClockNow() > start {
			return
		}
	}
	panic("Windows trace clock did not advance")
}

func checkWallClock() {
	now := time.Now()
	if now.Unix() < 1_500_000_000 {
		panic("Windows wall clock returned an invalid timestamp")
	}
}

func checkRuntimeRandStreams() {
	const workers = 8
	start := make(chan struct{})
	values := make(chan uint64, workers)
	for i := 0; i < workers; i++ {
		go func() {
			<-start
			values <- runtimeRand()
		}()
	}
	close(start)

	first := <-values
	allEqual := true
	for i := 1; i < workers; i++ {
		if <-values != first {
			allEqual = false
		}
	}
	// UCRT rand has per-thread state and starts every unseeded thread from
	// seed 1. Because LLGo currently runs each goroutine on its own native
	// thread, using rand directly made all workers emit the same sequence.
	// That breaks callers such as os.CreateTemp under normal concurrency.
	if allEqual {
		panic("Windows goroutines share identical runtime random streams")
	}
}

func checkWindowsRandomSource() {
	var first, second [32]byte
	if !windowsRandom(unsafe.Pointer(&first[0]), unsafe.Sizeof(first)) ||
		!windowsRandom(unsafe.Pointer(&second[0]), unsafe.Sizeof(second)) {
		panic("Windows system random source failed")
	}
	if first == second {
		panic("Windows system random source repeated a 256-bit block")
	}
}

var nativeOnceValue int

func initializeNativeOnceValue() {
	nativeOnceValue = 7
}

func main() {
	values := make(chan int)
	go func() {
		values <- 42
	}()
	if value := <-values; value != 42 {
		panic("wrong channel value")
	}

	var once nativesync.Once
	done := make(chan struct{}, 4)
	nativeOnceValue = 0
	for i := 0; i < 4; i++ {
		go func() {
			if result := once.Do(initializeNativeOnceValue); result != 0 {
				panic("native once failed")
			}
			done <- struct{}{}
		}()
	}
	for i := 0; i < 4; i++ {
		<-done
	}
	if nativeOnceValue != 7 {
		panic("native once ran incorrectly")
	}

	checkRecover()
	checkForeignFaultOnGoThread()
	checkForeignFaultOnNativeThread()
	checkIntegerOverflowFault()
	checkNilFunctionFaultOrigin()
	checkWindowsRandomSource()
	checkRuntimeRandStreams()
	checkCoreMapRandStreams()
	checkUnicodeConsolePrint()
	checkNilFault()
	checkStoreNilFaultLine()
	checkConcurrentNilFault()
	if windowsUnrecoveredFault() != 0 {
		_ = windowsNilFault()
		panic("unrecovered Windows fault returned")
	}
	checkThreadSemantics()
	checkProcessAffinityCPUCount()
	checkTraceClock()
	checkWallClock()
	checkGC()
	// Returning from main must terminate the process even while another
	// goroutine is blocked. This is observable on Windows because goroutines
	// are currently backed by host threads.
	lingeringStarted := make(chan struct{})
	go func() {
		close(lingeringStarted)
		select {}
	}()
	<-lingeringStarted
	println("windows runtime smoke: ok")
	// The parent redirects stdout, so this remains buffered until main returns.
	c.Printf(c.Str("windows C stdio smoke: ok\n"))
}
