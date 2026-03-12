package test

import (
	"reflect"
	"runtime"
	"strings"
	"testing"
)

func funcForPCTestTarget() {}

func TestRuntimeFuncForPC(t *testing.T) {
	pc := reflect.ValueOf(funcForPCTestTarget).Pointer()
	fn := runtime.FuncForPC(pc)
	if fn == nil {
		t.Fatal("runtime.FuncForPC returned nil")
	}
	if got := fn.Name(); !strings.Contains(got, "funcForPCTestTarget") {
		t.Fatalf("runtime.FuncForPC Name = %q, want substring %q", got, "funcForPCTestTarget")
	}
	if got := fn.Entry(); got == 0 {
		t.Fatal("runtime.FuncForPC Entry = 0")
	}
	_, _ = fn.FileLine(pc)
}
