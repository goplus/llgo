// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

import (
	clitedebug "github.com/goplus/llgo/runtime/internal/clite/debug"
)

func Caller(skip int) (pc uintptr, file string, line int, ok bool) {
	// llgo currently doesn't have reliable source file/line mapping from PC.
	// Return a stable placeholder location so stdlib log/testing can proceed.
	var pcs [1]uintptr
	if Callers(skip+1, pcs[:]) < 1 {
		return 0, "", 0, false
	}
	return pcs[0], "???", 1, true
}

func Callers(skip int, pc []uintptr) int {
	if len(pc) == 0 {
		return 0
	}
	n := 0
	clitedebug.StackTrace(skip, func(fr *clitedebug.Frame) bool {
		if n >= len(pc) {
			return false
		}
		pc[n] = fr.PC
		n++
		return true
	})
	return n
}
