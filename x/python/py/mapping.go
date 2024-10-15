package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyMapping_Check(PyObject *o)
// Return “1“ if the object provides the mapping protocol or supports slicing,
// and “0“ otherwise.  Note that it returns “1“ for Python classes with
// a :meth:`~object.__getitem__` method, since in general it is impossible to
// determine what type of keys the class supports. This function always succeeds.
//
//go:linkname MappingCheck PyMapping_Check
func MappingCheck(o *Object) Int

// Py_ssize_t PyMapping_Size(PyObject *o)
// Py_ssize_t PyMapping_Length(PyObject *o)
//
// .. index:: pair: built-in function; len
//
// Returns the number of keys in object *o* on success, and “-1“ on failure.
// This is equivalent to the Python expression “len(o)“.
//
//go:linkname MappingSize PyMapping_Size
func MappingSize(o *Object) SSizeT

// PyObject* PyMapping_GetItemString(PyObject *o, const char *key)
// This is the same as :c:func:`PyObject_GetItem`, but *key* is
// specified as a :c:expr:`const char*` UTF-8 encoded bytes string,
// rather than a :c:expr:`PyObject*`.
//
//go:linkname MappingGetItemString PyMapping_GetItemString
func MappingGetItemString(o *Object, key *Char) *Object

// int PyMapping_SetItemString(PyObject *o, const char *key, PyObject *v)
// This is the same as :c:func:`PyObject_SetItem`, but *key* is
// specified as a :c:expr:`const char*` UTF-8 encoded bytes string,
// rather than a :c:expr:`PyObject*`.
//
//go:linkname MappingSetItemString PyMapping_SetItemString
func MappingSetItemString(o *Object, key *Char, v *Object) Int

// int PyMapping_DelItem(PyObject *o, PyObject *key)
// This is an alias of :c:func:`PyObject_DelItem`.
//
//go:linkname MappingDelItem PyMapping_DelItem
func MappingDelItem(o *Object, key *Object) Int

// int PyMapping_DelItemString(PyObject *o, const char *key)
// This is the same as :c:func:`PyObject_DelItem`, but *key* is
// specified as a :c:expr:`const char*` UTF-8 encoded bytes string,
// rather than a :c:expr:`PyObject*`.
//
//go:linkname MappingDelItemString PyMapping_DelItemString
func MappingDelItemString(o *Object, key *Char) Int

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
//go:linkname MappingHasKey PyMapping_HasKey
func MappingHasKey(o *Object, key *Object) Int

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
//go:linkname MappingHasKeyString PyMapping_HasKeyString
func MappingHasKeyString(o *Object, key *Char) Int

// PyObject* PyMapping_Keys(PyObject *o)
// On success, return a list of the keys in object *o*.  On failure, return
// “NULL“.
//
// Previously, the function returned a list or a tuple.
//
//go:linkname MappingKeys PyMapping_Keys
func MappingKeys(o *Object) *Object

// PyObject* PyMapping_Values(PyObject *o)
// On success, return a list of the values in object *o*.  On failure, return
// “NULL“.
//
// Previously, the function returned a list or a tuple.
//
//go:linkname MappingValues PyMapping_Values
func MappingValues(o *Object) *Object

// PyObject* PyMapping_Items(PyObject *o)
// On success, return a list of the items in object *o*, where each item is a
// tuple containing a key-value pair.  On failure, return “NULL“.
//
// Previously, the function returned a list or a tuple.
//
//go:linkname MappingItems PyMapping_Items
func MappingItems(o *Object) *Object
