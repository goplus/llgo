package runtime

// Align a pointer.
// Note that some amd64 instructions (like movaps) expect 16-byte aligned
// memory, thus the result must be 16-byte aligned.
func align(ptr uintptr) uintptr {
	return (ptr + 15) &^ 15
}
