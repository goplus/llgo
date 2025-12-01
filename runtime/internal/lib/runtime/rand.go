package runtime

import "github.com/goplus/llgo/runtime/internal/runtime"

func rand() uint64 {
	return runtime.Rand()
}
