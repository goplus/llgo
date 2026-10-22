package runtime_test

import (
	"runtime"
	"strings"
	"testing"
)

//go:noinline
func callerPanicSite() {
	panic("caller panic site")
}

func TestCallerDuringPanicAndRecovery(t *testing.T) {
	defer func() {
		for phase := 0; phase < 2; phase++ {
			if phase == 1 {
				if got := recover(); got != "caller panic site" {
					t.Fatalf("recover() = %v", got)
				}
			}
			pc, _, _, ok := runtime.Caller(2)
			fn := runtime.FuncForPC(pc)
			if !ok || fn == nil || !strings.HasSuffix(fn.Name(), ".callerPanicSite") {
				t.Fatalf("phase %d Caller(2) = %v, %v; want callerPanicSite", phase, fn, ok)
			}
			var pcs [16]uintptr
			n := runtime.Callers(1, pcs[:])
			frames := runtime.CallersFrames(pcs[:n])
			// Deferred function, runtime panic dispatcher, then the panic site.
			frames.Next()
			frames.Next()
			frame, _ := frames.Next()
			if !strings.HasSuffix(frame.Function, ".callerPanicSite") {
				t.Fatalf("phase %d Callers frame 2 = %s; want callerPanicSite", phase, frame.Function)
			}
		}
	}()
	callerPanicSite()
}

var callerFaultPointer *struct{ c chan int }
var callerFaultSink chan int

//go:noinline
func callerFaultSite() {
	callerFaultSink = callerFaultPointer.c
}

func TestCallerAfterHardwareFaultRecovery(t *testing.T) {
	func() {
		defer func() {
			if recover() == nil {
				t.Fatal("nil dereference did not panic")
			}
			if !callerStackContains(".callerFaultSite") {
				t.Fatal("recovered fault stack lost its panic site")
			}
		}()
		callerFaultSite()
	}()
	if callerStackContains(".callerFaultSite") {
		t.Fatal("fault stack survived the recovering deferred activation")
	}
}

//go:noinline
func callerStackContains(suffix string) bool {
	var pcs [32]uintptr
	n := runtime.Callers(1, pcs[:])
	frames := runtime.CallersFrames(pcs[:n])
	for {
		frame, more := frames.Next()
		if strings.HasSuffix(frame.Function, suffix) {
			return true
		}
		if !more {
			return false
		}
	}
}
