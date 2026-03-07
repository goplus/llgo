//go:build !llgo
// +build !llgo

package plan9asm

import (
	"reflect"
	"testing"

	extplan9asm "github.com/goplus/plan9asm"
)

func TestFilterPlan9AsmFuncsSkipsDarwinRawSyscallDuplicates(t *testing.T) {
	funcs := []extplan9asm.Func{
		{Sym: "·RawSyscall"},
		{Sym: "·RawSyscall6"},
		{Sym: "·Syscall"},
	}
	got := FilterFuncs("syscall", "darwin", "arm64", funcs, ResolveSymFunc("syscall"))
	want := []extplan9asm.Func{
		{Sym: "·Syscall"},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("FilterFuncs = %#v, want %#v", got, want)
	}
}
