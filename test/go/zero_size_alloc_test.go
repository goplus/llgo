package gotest

import "testing"

var zeroSizeGlobalX, zeroSizeGlobalY [0]int
var zeroSizeHeapP, zeroSizeHeapQ = new([0]int), new([0]int)

func TestZeroSizedGlobalsAndHeapAllocsShareBase(t *testing.T) {
	if zeroSizeHeapP != zeroSizeHeapQ {
		t.Fatalf("new([0]int) returned different addresses: %p != %p", zeroSizeHeapP, zeroSizeHeapQ)
	}
	if &zeroSizeGlobalX != zeroSizeHeapP {
		t.Fatalf("&global zero-sized array = %p, want heap zero base %p", &zeroSizeGlobalX, zeroSizeHeapP)
	}
	if &zeroSizeGlobalY != zeroSizeHeapP {
		t.Fatalf("&second global zero-sized array = %p, want heap zero base %p", &zeroSizeGlobalY, zeroSizeHeapP)
	}
}
