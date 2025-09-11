//go:build avr

package runtime

// Align on a word boundary.
func align(ptr uintptr) uintptr {
	// No alignment necessary on the AVR.
	return ptr
}
