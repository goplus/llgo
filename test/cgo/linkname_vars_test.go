//go:build llgo && !wasm

package cgo

import "testing"

func TestLinknameCVariables(t *testing.T) {
	if !linkedVarAddressesMatch() || &linkedScalarAlias != &linkedScalar {
		t.Fatal("C-prefixed bindings do not share the native variables' addresses")
	}
	if linkedScalar != 42 || linkedScalarAlias != 42 {
		t.Fatalf("native scalar initializer lost: %d, %d", linkedScalar, linkedScalarAlias)
	}
	if linkedArray != [3]int32{3, 5, 7} {
		t.Fatalf("native array initializer lost: %v", linkedArray)
	}
	if linkedPointer != &linkedScalar {
		t.Fatal("native pointer does not point to the bound scalar")
	}
	t.Cleanup(func() {
		linkedScalar = 42
		linkedArray[1] = 5
	})
	*linkedPointer = 91
	if linkedScalarAlias != 91 || linkedVarReadScalar() != 91 {
		t.Fatal("Go writes are not visible through the alias and C")
	}
	linkedVarWriteArray(11)
	if linkedArray[1] != 11 {
		t.Fatal("C writes are not visible through the array binding")
	}
	if linkedCallback == nil {
		t.Fatal("native callback initializer lost")
	}
	if got := linkedCallback(21); got != 42 {
		t.Fatalf("native function pointer returned %d, want 42", got)
	}
	callback := linkedCallback
	linkedCallback = nil
	if linkedCallback != nil {
		t.Fatal("native function pointer could not be cleared")
	}
	linkedCallback = callback
	if got := linkedVarCall(23); got != 46 {
		t.Fatalf("restored function pointer returned %d through C, want 46", got)
	}
}
