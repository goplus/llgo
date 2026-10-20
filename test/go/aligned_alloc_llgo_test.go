//go:build llgo && (amd64 || arm64 || wasm)

package gotest

import (
	"runtime"
	"testing"
	"unsafe"
)

//go:linkname alignedAllocation github.com/xgo-dev/llgo/runtime/internal/runtime.AllocZAligned
func alignedAllocation(size, alignment uintptr) unsafe.Pointer

var alignedRoots []unsafe.Pointer

func TestRuntimeAlignedAllocationGC(t *testing.T) {
	// Exercise over-alignment beyond malloc's baseline, including allocations
	// whose only live root may point inside the collector-owned block.
	alignedRoots = nil
	for i := 0; i < 160; i++ {
		alignment := uintptr(16) << uint(i%3)
		p := alignedAllocation(37, alignment)
		if uintptr(p)&(alignment-1) != 0 {
			t.Fatal("aligned allocation", alignment)
		}
		data := unsafe.Slice((*byte)(p), 37)
		for j, b := range data {
			if b != 0 {
				t.Fatal("nonzero allocation")
			}
			data[j] = byte(i + j)
		}
		alignedRoots = append(alignedRoots, p)
	}
	runtime.GC()
	for i, p := range alignedRoots {
		for j, b := range unsafe.Slice((*byte)(p), 37) {
			if b != byte(i+j) {
				t.Fatal("aligned allocation did not survive GC", i, j)
			}
		}
	}
	if p := alignedAllocation(0, 64); p == nil || uintptr(p)&63 != 0 {
		t.Fatal("aligned zero-sized allocation")
	}
	for _, bad := range [][2]uintptr{{1, 0}, {1, 3}, {^uintptr(0), 16}} {
		func() {
			defer func() {
				if recover() == nil {
					t.Error("invalid aligned allocation accepted", bad)
				}
			}()
			alignedAllocation(bad[0], bad[1])
		}()
	}
}
