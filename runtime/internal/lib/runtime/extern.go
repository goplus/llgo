// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

import (
	"github.com/goplus/llgo/runtime/internal/clite/debug"
)

func Caller(skip int) (pc uintptr, file string, line int, ok bool) {
	found := false
	debug.StackTrace(skip+1, func(fr *debug.Frame) bool {
		pc = fr.PC
		file = fr.Name
		line = 0 // Line number not available from current debug info
		ok = true
		found = true
		return false // Stop after first frame
	})
	return pc, file, line, found
}

func Callers(skip int, pc []uintptr) int {
	if len(pc) == 0 {
		return 0
	}
	n := 0
	debug.StackTrace(skip, func(fr *debug.Frame) bool {
		if n >= len(pc) {
			return false
		}
		pc[n] = fr.PC
		n++
		return true
	})
	return n
}
