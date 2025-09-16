//go:build baremetal && !testGC

package tinygogc

import "unsafe"

const LLGoPackage = "link: --wrap=malloc --wrap=realloc --wrap=calloc"

//export __wrap_malloc
func __wrap_malloc(size uintptr) unsafe.Pointer {
	return Alloc(size)
}

//export __wrap_calloc
func __wrap_calloc(size uintptr) unsafe.Pointer {
	return Alloc(size)
}

//export __wrap_realloc
func __wrap_realloc(ptr unsafe.Pointer, size uintptr) unsafe.Pointer {
	return Realloc(ptr, size)
}
