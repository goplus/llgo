package py

/*
#cgo pkg-config: python-3.12-embed
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// const unsigned long Py_Version
// The Python runtime version number encoded in a single constant integer, with
// the same format as the :c:macro:`PY_VERSION_HEX` macro.
// This contains the Python version used at run time.
//
// All the given macros are defined in :source:`Include/patchlevel.h`.
func Version() c.Ulong {
	return c.Ulong(C.Py_Version)
}
