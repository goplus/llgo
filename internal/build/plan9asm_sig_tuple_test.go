//go:build !llgo
// +build !llgo

package build

import (
	"go/token"
	"go/types"
	"reflect"
	"testing"

	"github.com/goplus/plan9asm"
)

func TestLLVMArgsAndFrameSlotsForTupleSliceParam(t *testing.T) {
	tup := types.NewTuple(types.NewVar(token.NoPos, nil, "b", types.NewSlice(types.Typ[types.Byte])))
	sz := types.SizesFor("gc", "amd64")
	args, slots, nextOff, err := llvmArgsAndFrameSlotsForTuple(tup, "amd64", sz, 0, false)
	if err != nil {
		t.Fatal(err)
	}
	if !reflect.DeepEqual(args, []plan9asm.LLVMType{"{ ptr, i64, i64 }"}) {
		t.Fatalf("args mismatch: %#v", args)
	}
	wantSlots := []plan9asm.FrameSlot{
		{Offset: 0, Type: plan9asm.Ptr, Index: 0, Field: 0},
		{Offset: 8, Type: plan9asm.I64, Index: 0, Field: 1},
		{Offset: 16, Type: plan9asm.I64, Index: 0, Field: 2},
	}
	if !reflect.DeepEqual(slots, wantSlots) {
		t.Fatalf("slots mismatch: got=%#v want=%#v", slots, wantSlots)
	}
	if nextOff != 24 {
		t.Fatalf("nextOff mismatch: got=%d want=24", nextOff)
	}
}

func TestLLVMArgsAndFrameSlotsForTupleSliceResultFlatten(t *testing.T) {
	tup := types.NewTuple(types.NewVar(token.NoPos, nil, "r", types.NewSlice(types.Typ[types.Byte])))
	sz := types.SizesFor("gc", "amd64")
	args, slots, nextOff, err := llvmArgsAndFrameSlotsForTuple(tup, "amd64", sz, 0, true)
	if err != nil {
		t.Fatal(err)
	}
	if !reflect.DeepEqual(args, []plan9asm.LLVMType{plan9asm.Ptr, plan9asm.I64, plan9asm.I64}) {
		t.Fatalf("args mismatch: %#v", args)
	}
	wantSlots := []plan9asm.FrameSlot{
		{Offset: 0, Type: plan9asm.Ptr, Index: 0, Field: -1},
		{Offset: 8, Type: plan9asm.I64, Index: 1, Field: -1},
		{Offset: 16, Type: plan9asm.I64, Index: 2, Field: -1},
	}
	if !reflect.DeepEqual(slots, wantSlots) {
		t.Fatalf("slots mismatch: got=%#v want=%#v", slots, wantSlots)
	}
	if nextOff != 24 {
		t.Fatalf("nextOff mismatch: got=%d want=24", nextOff)
	}
}

func TestLLVMArgsAndFrameSlotsForTupleInterfaceParam(t *testing.T) {
	iface := types.NewInterfaceType(nil, nil)
	iface.Complete()
	tup := types.NewTuple(types.NewVar(token.NoPos, nil, "v", iface))
	sz := types.SizesFor("gc", "amd64")
	args, slots, nextOff, err := llvmArgsAndFrameSlotsForTuple(tup, "amd64", sz, 0, false)
	if err != nil {
		t.Fatal(err)
	}
	if !reflect.DeepEqual(args, []plan9asm.LLVMType{"{ ptr, ptr }"}) {
		t.Fatalf("args mismatch: %#v", args)
	}
	wantSlots := []plan9asm.FrameSlot{
		{Offset: 0, Type: plan9asm.Ptr, Index: 0, Field: 0},
		{Offset: 8, Type: plan9asm.Ptr, Index: 0, Field: 1},
	}
	if !reflect.DeepEqual(slots, wantSlots) {
		t.Fatalf("slots mismatch: got=%#v want=%#v", slots, wantSlots)
	}
	if nextOff != 16 {
		t.Fatalf("nextOff mismatch: got=%d want=16", nextOff)
	}
}
