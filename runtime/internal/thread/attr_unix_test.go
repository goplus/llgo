//go:build llgo && !windows && !baremetal && !wasm

package thread

import (
	"testing"
	_ "unsafe"

	c "github.com/xgo-dev/llgo/runtime/internal/clite"
)

const LLGoFiles = "_testdata/attr.c"

//go:linkname nativeDetachedState C.llgo_test_pthread_create_detached
func nativeDetachedState() c.Int

func TestDetachedStateNativeValue(t *testing.T) {
	if got, want := c.Int(pthreadCreateDetached), nativeDetachedState(); got != want {
		t.Errorf("detached state = %d, native PTHREAD_CREATE_DETACHED = %d", got, want)
	}
}
