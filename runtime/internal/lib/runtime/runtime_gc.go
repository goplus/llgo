//go:build !nogc

package runtime

import _ "unsafe"

//go:linkname _tinygoGC _tinygoGC
func _tinygoGC()

func GC() {
	_tinygoGC()
}
