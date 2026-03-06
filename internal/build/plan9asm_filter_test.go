//go:build !llgo
// +build !llgo

package build

import (
	"reflect"
	"testing"

	"github.com/goplus/plan9asm"
)

func TestFilterPlan9AsmFuncsSkipsDarwinRawSyscallDuplicates(t *testing.T) {
	funcs := []plan9asm.Func{
		{Sym: "·RawSyscall"},
		{Sym: "·RawSyscall6"},
		{Sym: "·Syscall"},
	}
	got := filterPlan9AsmFuncs("syscall", "darwin", "arm64", funcs, plan9asmResolveSymFunc("syscall"))
	want := []plan9asm.Func{
		{Sym: "·Syscall"},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("filterPlan9AsmFuncs = %#v, want %#v", got, want)
	}
}
