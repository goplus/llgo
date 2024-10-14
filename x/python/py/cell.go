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

// int PyCell_Check(PyObject *ob)
// Return true if *ob* is a cell object; *ob* must not be “NULL“.  This
// function always succeeds.
//
//go:linkname CellCheck C.PyCell_Check
func CellCheck(ob *Object) c.Int

// PyObject* PyCell_New(PyObject *ob)
// Create and return a new cell object containing the value *ob*. The parameter may
// be “NULL“.
//
//go:linkname CellNew C.PyCell_New
func CellNew(ob *Object) *Object

// PyObject* PyCell_Get(PyObject *cell)
// Return the contents of the cell *cell*, which can be “NULL“.
// If *cell* is not a cell object, returns “NULL“ with an exception set.
//
//go:linkname CellGet C.PyCell_Get
func CellGet(cell *Object) *Object

// PyObject* PyCell_GET(PyObject *cell)
// Return the contents of the cell *cell*, but without checking that *cell* is
// non-“NULL“ and a cell object.
//
//go:linkname CellGET C.PyCell_GET
func CellGET(cell *Object) *Object

// int PyCell_Set(PyObject *cell, PyObject *value)
// Set the contents of the cell object *cell* to *value*.  This releases the
// reference to any current content of the cell. *value* may be “NULL“.  *cell*
// must be non-“NULL“.
//
// On success, return “0“.
// If *cell* is not a cell object, set an exception and return “-1“.
//
//go:linkname CellSet C.PyCell_Set
func CellSet(cell *Object, value *Object) c.Int

// void PyCell_SET(PyObject *cell, PyObject *value)
// Sets the value of the cell object *cell* to *value*.  No reference counts are
// adjusted, and no checks are made for safety; *cell* must be non-“NULL“ and must
// be a cell object.
//
//go:linkname CellSET C.PyCell_SET
func CellSET(cell *Object, value *Object)

// PyCellObject
// The C structure used for cell objects.
type CellObject = C.PyCellObject

// PyTypeObject PyCell_Type
// The type object corresponding to cell objects.
func CellType() TypeObject {
	return *(*TypeObject)(c.Pointer(&C.PyCell_Type))
}
