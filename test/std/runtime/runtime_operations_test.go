package runtime_test

import (
	"runtime"
	"strings"
	"testing"
)

func TestGoexitRunsDeferredCalls(t *testing.T) {
	done := make(chan struct{})
	go func() {
		defer close(done)
		runtime.Goexit()
	}()
	<-done
}

func TestRuntimeFunctionInformation(t *testing.T) {
	pc, _, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("Caller failed")
	}
	fn := runtime.FuncForPC(pc)
	if fn == nil || fn.Entry() == 0 || fn.Name() == "" {
		t.Fatal("FuncForPC returned incomplete information")
	}
	if file, line := fn.FileLine(pc); file == "" || line == 0 {
		t.Fatal("FileLine returned incomplete information")
	}
}

var callerFunctionPC uintptr

func callerFunctionOuter(skip int)  { callerFunctionMiddle(skip) }
func callerFunctionMiddle(skip int) { callerFunctionInner(skip) }
func callerFunctionInner(skip int) {
	callerFunctionPC, _, _, _ = runtime.Caller(skip)
}

func TestCallerFunctionNames(t *testing.T) {
	for skip, want := range []string{"callerFunctionInner", "callerFunctionMiddle", "callerFunctionOuter"} {
		callerFunctionOuter(skip)
		fn := runtime.FuncForPC(callerFunctionPC)
		if fn == nil || !strings.HasSuffix(fn.Name(), "."+want) {
			t.Fatalf("Caller(%d) function = %v, want %s", skip, fn, want)
		}
	}
}

func TestRuntimeRecordMethods(t *testing.T) {
	mem := runtime.MemProfileRecord{
		AllocBytes:   1024,
		FreeBytes:    256,
		AllocObjects: 8,
		FreeObjects:  3,
		Stack0:       [32]uintptr{11, 22},
	}
	if got := mem.InUseBytes(); got != 768 {
		t.Fatalf("InUseBytes = %d, want 768", got)
	}
	if got := mem.InUseObjects(); got != 5 {
		t.Fatalf("InUseObjects = %d, want 5", got)
	}
	if stack := mem.Stack(); len(stack) != 2 || stack[0] != 11 || stack[1] != 22 {
		t.Fatalf("MemProfileRecord.Stack = %v", stack)
	}

	record := runtime.StackRecord{Stack0: [32]uintptr{33, 44}}
	if stack := record.Stack(); len(stack) != 2 || stack[0] != 33 || stack[1] != 44 {
		t.Fatalf("StackRecord.Stack = %v", stack)
	}
}

func TestRuntimeErrorMethods(t *testing.T) {
	panicNil := new(runtime.PanicNilError)
	if got := panicNil.Error(); got != wantPanicNilError {
		t.Fatalf("PanicNilError.Error = %q", got)
	}
}
