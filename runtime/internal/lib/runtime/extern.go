// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

import (
	clitedebug "github.com/goplus/llgo/runtime/internal/clite/debug"
)

func Caller(skip int) (pc uintptr, file string, line int, ok bool) {
	panic("todo: runtime.Caller")
}

//go:noinline
func Callers(skip int, pc []uintptr) int {
	println("runtime.Callers: enter", skip, len(pc))
	if len(pc) == 0 {
		println("runtime.Callers: len(pc) == 0")
		return 0
	}
	n := 0
	println("runtime.Callers: StackTrace begin", skip)
	clitedebug.StackTrace(skip, func(fr *clitedebug.Frame) bool {
		if n >= len(pc) {
			println("runtime.Callers: buffer full", n, len(pc))
			return false
		}
		println("runtime.Callers: frame", n, fr.PC)
		pc[n] = fr.PC
		n++
		return true
	})
	println("runtime.Callers: return", n)
	return n
}
