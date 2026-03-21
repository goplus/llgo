//go:build linux && baremetal

package syscall

const enosys = 38

// Baremetal targets do not provide a usable Linux syscall ABI here.
// Keep the package linkable for code paths that are compiled in but never used.
func Syscall6(num, a1, a2, a3, a4, a5, a6 uintptr) (r1, r2, errno uintptr) {
	return ^uintptr(0), 0, enosys
}
