package runtime

import (
	"github.com/goplus/llgo/runtime/internal/clite/tls"
)

var deferTLS = tls.Alloc[*Defer](func(head **Defer) {
	if head != nil {
		*head = nil
	}
})

// SetThreadDefer associates the current thread with the given defer chain.
func SetThreadDefer(head *Defer) {
	deferTLS.Set(head)
}

// ClearThreadDefer resets the current thread's defer chain to nil.
func ClearThreadDefer() {
	deferTLS.Clear()
}
