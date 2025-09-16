package tinygogc

import "github.com/goplus/llgo/runtime/internal/runtime"

const LLGoPackage = "noinit"

func GC() {
	runtime.GC()
}
