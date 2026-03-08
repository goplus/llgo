//go:build !llgo
// +build !llgo

package plan9asm

import (
	"reflect"
	"testing"

	extplan9asm "github.com/goplus/plan9asm"
)

func TestFilterPlan9AsmFuncsKeepsLinuxRawVforkAsm(t *testing.T) {
	funcs := []extplan9asm.Func{
		{Sym: "·rawVforkSyscall"},
		{Sym: "·Keep"},
	}
	got := FilterFuncs("syscall", "linux", "amd64", funcs, resolveSymFuncForTarget("syscall", "linux", "amd64"))
	if !reflect.DeepEqual(got, funcs) {
		t.Fatalf("FilterFuncs = %#v, want %#v", got, funcs)
	}
}
