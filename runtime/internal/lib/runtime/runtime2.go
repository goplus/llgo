// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package runtime

// Layout of in-memory per-function information prepared by linker
// See https://golang.org/s/go12symtab.
// Keep in sync with linker (../cmd/link/internal/ld/pcln.go:/pclntab)
// and with package debug/gosym and with symtab.go in package runtime.
type _func struct {
	unused [8]byte
}

func Stack(buf []byte, all bool) int {
	return 0
}

func StartTrace() error {
	panic("todo: runtime.StartTrace")
}

func ReadTrace() []byte {
	panic("todo: runtime.ReadTrace")
}

func StopTrace() {
	panic("todo: runtime.StopTrace")
}

func SetMutexProfileFraction(rate int) int {
	return 0
}

func SetBlockProfileRate(rate int) {
}

var MemProfileRate int = 512 * 1024
