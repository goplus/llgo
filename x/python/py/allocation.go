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

// PyObject* _PyObject_New(PyTypeObject *type)

//
//go:linkname ObjectNew C._PyObject_New
func ObjectNew(type_ *TypeObject) *Object

// PyVarObject* _PyObject_NewVar(PyTypeObject *type, Py_ssize_t size)

//
//go:linkname ObjectNewVar C._PyObject_NewVar
func ObjectNewVar(type_ *TypeObject, size SSizeT) *VarObject

// PyObject* PyObject_Init(PyObject *op, PyTypeObject *type)
// Initialize a newly allocated object *op* with its type and initial
// reference.  Returns the initialized object.  If *type* indicates that the
// object participates in the cyclic garbage detector, it is added to the
// detector's set of observed objects. Other fields of the object are not
// affected.
//
//go:linkname ObjectInit C.PyObject_Init
func ObjectInit(op *Object, type_ *TypeObject) *Object

// PyVarObject* PyObject_InitVar(PyVarObject *op, PyTypeObject *type, Py_ssize_t size)
// This does everything :c:func:`PyObject_Init` does, and also initializes the
// length information for a variable-size object.
//
//go:linkname ObjectInitVar C.PyObject_InitVar
func ObjectInitVar(op *VarObject, type_ *TypeObject, size SSizeT) *VarObject

// void PyObject_Del(void *op)
// Same as :c:func:`PyObject_Free`.
//
//go:linkname ObjectDel C.PyObject_Del
func ObjectDel(op c.Pointer)
