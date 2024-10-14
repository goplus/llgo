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

// int PyMapping_Check(PyObject *o)
// Return “1“ if the object provides the mapping protocol or supports slicing,
// and “0“ otherwise.  Note that it returns “1“ for Python classes with
// a :meth:`~object.__getitem__` method, since in general it is impossible to
// determine what type of keys the class supports. This function always succeeds.
//
//go:linkname MappingCheck C.PyMapping_Check
func MappingCheck(o *Object) c.Int

// Py_ssize_t PyMapping_Size(PyObject *o)
// Py_ssize_t PyMapping_Length(PyObject *o)
//
// .. index:: pair: built-in function; len
//
// Returns the number of keys in object *o* on success, and “-1“ on failure.
// This is equivalent to the Python expression “len(o)“.
//
//go:linkname MappingSize C.PyMapping_Size
func MappingSize(o *Object) SSizeT

// PyObject* PyMapping_GetItemString(PyObject *o, const char *key)
// This is the same as :c:func:`PyObject_GetItem`, but *key* is
// specified as a :c:expr:`const char*` UTF-8 encoded bytes string,
// rather than a :c:expr:`PyObject*`.
//
//go:linkname MappingGetItemString C.PyMapping_GetItemString
func MappingGetItemString(o *Object, key *c.Char) *Object

// int PyMapping_SetItemString(PyObject *o, const char *key, PyObject *v)
// This is the same as :c:func:`PyObject_SetItem`, but *key* is
// specified as a :c:expr:`const char*` UTF-8 encoded bytes string,
// rather than a :c:expr:`PyObject*`.
//
//go:linkname MappingSetItemString C.PyMapping_SetItemString
func MappingSetItemString(o *Object, key *c.Char, v *Object) c.Int

// int PyMapping_DelItem(PyObject *o, PyObject *key)
// This is an alias of :c:func:`PyObject_DelItem`.
//
//go:linkname MappingDelItem C.PyMapping_DelItem
func MappingDelItem(o *Object, key *Object) c.Int

// int PyMapping_DelItemString(PyObject *o, const char *key)
// This is the same as :c:func:`PyObject_DelItem`, but *key* is
// specified as a :c:expr:`const char*` UTF-8 encoded bytes string,
// rather than a :c:expr:`PyObject*`.
//
//go:linkname MappingDelItemString C.PyMapping_DelItemString
func MappingDelItemString(o *Object, key *c.Char) c.Int

// int PyMapping_HasKey(PyObject *o, PyObject *key)
// Return “1“ if the mapping object has the key *key* and “0“ otherwise.
// This is equivalent to the Python expression “key in o“.
// This function always succeeds.
//
// .. note::
//
// Exceptions which occur when this calls :meth:`~object.__getitem__`
// method are silently ignored.
// For proper error handling, use :c:func:`PyMapping_HasKeyWithError`,
// :c:func:`PyMapping_GetOptionalItem` or :c:func:`PyObject_GetItem()` instead.
//
//go:linkname MappingHasKey C.PyMapping_HasKey
func MappingHasKey(o *Object, key *Object) c.Int

// int PyMapping_HasKeyString(PyObject *o, const char *key)
// This is the same as :c:func:`PyMapping_HasKey`, but *key* is
// specified as a :c:expr:`const char*` UTF-8 encoded bytes string,
// rather than a :c:expr:`PyObject*`.
//
// .. note::
//
// Exceptions that occur when this calls :meth:`~object.__getitem__`
// method or while creating the temporary :class:`str`
// object are silently ignored.
// For proper error handling, use :c:func:`PyMapping_HasKeyStringWithError`,
// :c:func:`PyMapping_GetOptionalItemString` or
// :c:func:`PyMapping_GetItemString` instead.
//
//go:linkname MappingHasKeyString C.PyMapping_HasKeyString
func MappingHasKeyString(o *Object, key *c.Char) c.Int

// PyObject* PyMapping_Keys(PyObject *o)
// On success, return a list of the keys in object *o*.  On failure, return
// “NULL“.
//
// Previously, the function returned a list or a tuple.
//
//go:linkname MappingKeys C.PyMapping_Keys
func MappingKeys(o *Object) *Object

// PyObject* PyMapping_Values(PyObject *o)
// On success, return a list of the values in object *o*.  On failure, return
// “NULL“.
//
// Previously, the function returned a list or a tuple.
//
//go:linkname MappingValues C.PyMapping_Values
func MappingValues(o *Object) *Object

// PyObject* PyMapping_Items(PyObject *o)
// On success, return a list of the items in object *o*, where each item is a
// tuple containing a key-value pair.  On failure, return “NULL“.
//
// Previously, the function returned a list or a tuple.
//
//go:linkname MappingItems C.PyMapping_Items
func MappingItems(o *Object) *Object
