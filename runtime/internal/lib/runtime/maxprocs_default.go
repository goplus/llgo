//go:build !baremetal

package runtime

import (
	_ "unsafe"
)

const (
	LLGoPackage = "link"
	LLGoFiles   = "_wrap/runtime.c"
)

//go:linkname c_maxprocs C.llgo_maxprocs
func c_maxprocs() int32
