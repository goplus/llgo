package py

/*
#cgo pkg-config: python-3.12-embed
#include <Python.h>
*/
import "C"
import (
	"unsafe"
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $LLGO_LIB_PYTHON; $(pkg-config --libs python-3.12-embed)"
)

//	struct _object {
//	    union {
//	       Py_ssize_t ob_refcnt;
//	       uint32_t ob_refcnt_split[2];
//	    };
//	    PyTypeObject *ob_type;
//	};
type Object struct {
	ObRefcnt c.Int
	_padding c.Int
	ObType   c.Pointer
}

type SizeT = uint
type SSizeT = int
type UCS1 = uint8
type UCS2 = uint16

type InputType c.Int

const (
	SingleInput InputType = 256 // read code from i/o
	FileInput   InputType = 257 // read code from filename
	EvalInput   InputType = 258 // read code from string
)

type GILStateSTATE = C.PyGILState_STATE

func None() *Object {
	return (*Object)(unsafe.Pointer(&C._Py_NoneStruct))
}

func True() *Object {
	return (*Object)(unsafe.Pointer(&C._Py_TrueStruct))
}

func False() *Object {
	return (*Object)(unsafe.Pointer(&C._Py_FalseStruct))
}
