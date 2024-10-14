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

// int PyIter_Check(PyObject *o)
// Return non-zero if the object *o* can be safely passed to
// :c:func:`PyIter_NextItem` and “0“ otherwise.
// This function always succeeds.
//
//go:linkname IterCheck C.PyIter_Check
func IterCheck(o *Object) c.Int

// int PyAIter_Check(PyObject *o)
// Return non-zero if the object *o* provides the :class:`AsyncIterator`
// protocol, and “0“ otherwise.  This function always succeeds.
//
//go:linkname AIterCheck C.PyAIter_Check
func AIterCheck(o *Object) c.Int

// PyObject* PyIter_Next(PyObject *o)
// This is an older version of :c:func:`!PyIter_NextItem`,
// which is retained for backwards compatibility.
// Prefer :c:func:`PyIter_NextItem`.
//
// Return the next value from the iterator *o*.  The object must be an iterator
// according to :c:func:`PyIter_Check` (it is up to the caller to check this).
// If there are no remaining values, returns “NULL“ with no exception set.
// If an error occurs while retrieving the item, returns “NULL“ and passes
// along the exception.
//
//go:linkname IterNext C.PyIter_Next
func IterNext(o *Object) *Object

// PySendResult PyIter_Send(PyObject *iter, PyObject *arg, PyObject **presult)
// Sends the *arg* value into the iterator *iter*. Returns:
//
// - “PYGEN_RETURN“ if iterator returns. Return value is returned via *presult*.
// - “PYGEN_NEXT“ if iterator yields. Yielded value is returned via *presult*.
// - “PYGEN_ERROR“ if iterator has raised and exception. *presult* is set to “NULL“.
//
//go:linkname IterSend C.PyIter_Send
func IterSend(iter *Object, arg *Object, presult **Object) SendResult

// PySendResult
// The enum value used to represent different results of :c:func:`PyIter_Send`.
type SendResult = C.PySendResult
