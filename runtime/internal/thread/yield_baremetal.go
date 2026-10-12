//go:build baremetal && !windows

package thread

// Yield preserves the single-context bare-metal backend's behavior.
func Yield() {}
