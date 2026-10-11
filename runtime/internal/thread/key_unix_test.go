//go:build llgo && !windows && !baremetal && !wasm

package thread_test

import (
	"testing"
	"unsafe"

	"github.com/xgo-dev/llgo/runtime/internal/thread"
)

const LLGoFiles = "_testdata/key.c"

//go:linkname pthreadKeySize C.llgo_test_pthread_key_size
func pthreadKeySize() uintptr

func TestKeyNativeLayout(t *testing.T) {
	if got, want := unsafe.Sizeof(thread.Key(0)), pthreadKeySize(); got != want {
		t.Errorf("Key size = %d, native pthread_key_t size = %d", got, want)
	}
	const sentinel = 0xa5
	var storage struct {
		before uint64
		key    thread.Key
		after  [8]byte
	}
	storage.before = 0x1122334455667788
	for i := range storage.after {
		storage.after[i] = sentinel
	}
	if ret := storage.key.Create(nil); ret != 0 {
		t.Fatalf("create TLS key: %d", ret)
	}
	defer storage.key.Delete()
	if storage.before != 0x1122334455667788 {
		t.Error("pthread_key_create modified storage before Key")
	}
	for i, value := range storage.after {
		if value != sentinel {
			t.Fatalf("pthread_key_create modified byte %d after Key: %#x", i, value)
		}
	}
	value := 42
	if ret := storage.key.Set(unsafe.Pointer(&value)); ret != 0 {
		t.Fatalf("set TLS value: %d", ret)
	}
	if got := storage.key.Get(); got != unsafe.Pointer(&value) {
		t.Fatalf("TLS value = %p, want %p", got, &value)
	}
}
