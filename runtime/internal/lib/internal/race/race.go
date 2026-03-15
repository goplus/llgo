package race

import "unsafe"

const Enabled = false

func Acquire(addr unsafe.Pointer) {}

func Release(addr unsafe.Pointer) {}
