package runtime

// It appears that MIPS has a maximum alignment of 8 bytes.
func align(ptr uintptr) uintptr {
	return (ptr + 7) &^ 7
}
