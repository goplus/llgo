//go:build (arm && !baremetal && !wasm) || (arm && arm7tdmi)

package runtime

// Align on the maximum alignment for this platform (double).
func align(ptr uintptr) uintptr {
	return (ptr + 7) &^ 7
}
