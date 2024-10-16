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

const (
	LLGoPackage = "link: $LLGO_LIB_PYTHON; $(pkg-config --libs python-3.12-embed)"
)

type Char = c.Char
type Uchar = c.Uchar
type Int = c.Int
type Uint = c.Uint
type Long = c.Long
type Ulong = c.Ulong
type UlongLong = c.UlongLong
type LongLong = c.LongLong
type Double = c.Double
type Float = c.Float
type Wchar = c.Wchar
type Pointer = c.Pointer
type FilePtr = c.FilePtr

//	struct _object {
//	    union {
//	       Py_ssize_t ob_refcnt;
//	       uint32_t ob_refcnt_split[2];
//	    };
//	    PyTypeObject *ob_type;
//	};
type Object struct {
	ObRefcnt Int
	_padding Int
	ObType   Pointer
}

type SizeT = uint
type SSizeT = int
type UCS1 = uint8
type UCS2 = uint16

type InputType Int

const (
	SingleInput InputType = 256 // read code from i/o
	FileInput   InputType = 257 // read code from filename
	EvalInput   InputType = 258 // read code from string
)

type GILStateSTATE = C.PyGILState_STATE
