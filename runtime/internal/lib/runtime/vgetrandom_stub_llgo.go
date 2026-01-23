//go:build linux

package runtime

// vgetrandom is referenced via //go:linkname in internal/syscall/unix.
// Return supported=false to fall back to the syscall path.
func vgetrandom(p []byte, flags uint32) (ret int, supported bool) {
	return 0, false
}
