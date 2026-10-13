package bdwgc

import (
	"unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
)

// RegisterDestructorThread restores collector participation when a host TLS
// destructor runs after the collector's thread-exit cleanup. The caller must
// unregister only if this function returns true, after its last Go operation.
func RegisterDestructorThread() bool {
	if ThreadIsRegistered() != 0 {
		return false
	}
	// An address-taken Go local can allocate before registration. Keep the
	// collector's descriptor on the native stack until registration completes.
	base := (*StackBase)(c.Alloca(unsafe.Sizeof(StackBase{})))
	if GetStackBase(base) == Success {
		switch RegisterMyThread(base) {
		case Success:
			return true
		case Duplicate:
			return false
		}
	}
	c.Fputs(c.Str("runtime: failed to register TLS destructor thread\n"), c.Stderr)
	c.Exit(2)
	return false
}
