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

// int PySet_Check(PyObject *p)
// Return true if *p* is a :class:`set` object or an instance of a subtype.
// This function always succeeds.
//
//go:linkname SetCheck C.PySet_Check
func SetCheck(p *Object) c.Int

// int PyFrozenSet_Check(PyObject *p)
// Return true if *p* is a :class:`frozenset` object or an instance of a
// subtype.  This function always succeeds.
//
//go:linkname FrozenSetCheck C.PyFrozenSet_Check
func FrozenSetCheck(p *Object) c.Int

// int PyAnySet_Check(PyObject *p)
// Return true if *p* is a :class:`set` object, a :class:`frozenset` object, or an
// instance of a subtype.  This function always succeeds.
//
//go:linkname AnySetCheck C.PyAnySet_Check
func AnySetCheck(p *Object) c.Int

// int PySet_CheckExact(PyObject *p)
// Return true if *p* is a :class:`set` object but not an instance of a
// subtype.  This function always succeeds.
//
//go:linkname SetCheckExact C.PySet_CheckExact
func SetCheckExact(p *Object) c.Int

// int PyAnySet_CheckExact(PyObject *p)
// Return true if *p* is a :class:`set` object or a :class:`frozenset` object but
// not an instance of a subtype.  This function always succeeds.
//
//go:linkname AnySetCheckExact C.PyAnySet_CheckExact
func AnySetCheckExact(p *Object) c.Int

// int PyFrozenSet_CheckExact(PyObject *p)
// Return true if *p* is a :class:`frozenset` object but not an instance of a
// subtype.  This function always succeeds.
//
//go:linkname FrozenSetCheckExact C.PyFrozenSet_CheckExact
func FrozenSetCheckExact(p *Object) c.Int

// PyObject* PySet_New(PyObject *iterable)
// Return a new :class:`set` containing objects returned by the *iterable*.  The
// *iterable* may be “NULL“ to create a new empty set.  Return the new set on
// success or “NULL“ on failure.  Raise :exc:`TypeError` if *iterable* is not
// actually iterable.  The constructor is also useful for copying a set
// (“c=set(s)“).
//
//go:linkname SetNew C.PySet_New
func SetNew(iterable *Object) *Object

// PyObject* PyFrozenSet_New(PyObject *iterable)
// Return a new :class:`frozenset` containing objects returned by the *iterable*.
// The *iterable* may be “NULL“ to create a new empty frozenset.  Return the new
// set on success or “NULL“ on failure.  Raise :exc:`TypeError` if *iterable* is
// not actually iterable.
//
// The following functions and macros are available for instances of :class:`set`
// or :class:`frozenset` or instances of their subtypes.
//
//go:linkname FrozenSetNew C.PyFrozenSet_New
func FrozenSetNew(iterable *Object) *Object

// Py_ssize_t PySet_Size(PyObject *anyset)
// .. index:: pair: built-in function; len
//
// Return the length of a :class:`set` or :class:`frozenset` object. Equivalent to
// “len(anyset)“.  Raises a :exc:`SystemError` if *anyset* is not a
// :class:`set`, :class:`frozenset`, or an instance of a subtype.
//
//go:linkname SetSize C.PySet_Size
func SetSize(anyset *Object) SSizeT

// Py_ssize_t PySet_GET_SIZE(PyObject *anyset)
// Macro form of :c:func:`PySet_Size` without error checking.
//
//go:linkname SetGETSIZE C.PySet_GET_SIZE
func SetGETSIZE(anyset *Object) SSizeT

// int PySet_Contains(PyObject *anyset, PyObject *key)
// Return “1“ if found, “0“ if not found, and “-1“ if an error is encountered.  Unlike
// the Python :meth:`~object.__contains__` method, this function does not automatically
// convert unhashable sets into temporary frozensets.  Raise a :exc:`TypeError` if
// the *key* is unhashable. Raise :exc:`SystemError` if *anyset* is not a
// :class:`set`, :class:`frozenset`, or an instance of a subtype.
//
//go:linkname SetContains C.PySet_Contains
func SetContains(anyset *Object, key *Object) c.Int

// int PySet_Add(PyObject *set, PyObject *key)
// Add *key* to a :class:`set` instance.  Also works with :class:`frozenset`
// instances (like :c:func:`PyTuple_SetItem` it can be used to fill in the values
// of brand new frozensets before they are exposed to other code).  Return “0“ on
// success or “-1“ on failure. Raise a :exc:`TypeError` if the *key* is
// unhashable. Raise a :exc:`MemoryError` if there is no room to grow.  Raise a
// :exc:`SystemError` if *set* is not an instance of :class:`set` or its
// subtype.
//
// The following functions are available for instances of :class:`set` or its
// subtypes but not for instances of :class:`frozenset` or its subtypes.
//
//go:linkname SetAdd C.PySet_Add
func SetAdd(set *Object, key *Object) c.Int

// int PySet_Discard(PyObject *set, PyObject *key)
// Return “1“ if found and removed, “0“ if not found (no action taken), and “-1“ if an
// error is encountered.  Does not raise :exc:`KeyError` for missing keys.  Raise a
// :exc:`TypeError` if the *key* is unhashable.  Unlike the Python :meth:`~frozenset.discard`
// method, this function does not automatically convert unhashable sets into
// temporary frozensets. Raise :exc:`SystemError` if *set* is not an
// instance of :class:`set` or its subtype.
//
//go:linkname SetDiscard C.PySet_Discard
func SetDiscard(set *Object, key *Object) c.Int

// PyObject* PySet_Pop(PyObject *set)
// Return a new reference to an arbitrary object in the *set*, and removes the
// object from the *set*.  Return “NULL“ on failure.  Raise :exc:`KeyError` if the
// set is empty. Raise a :exc:`SystemError` if *set* is not an instance of
// :class:`set` or its subtype.
//
//go:linkname SetPop C.PySet_Pop
func SetPop(set *Object) *Object

// int PySet_Clear(PyObject *set)
// Empty an existing set of all elements. Return “0“ on
// success. Return “-1“ and raise :exc:`SystemError` if *set* is not an instance of
// :class:`set` or its subtype.
//
//go:linkname SetClear C.PySet_Clear
func SetClear(set *Object) c.Int

// PySetObject
// This subtype of :c:type:`PyObject` is used to hold the internal data for both
// :class:`set` and :class:`frozenset` objects.  It is like a :c:type:`PyDictObject`
// in that it is a fixed size for small sets (much like tuple storage) and will
// point to a separate, variable sized block of memory for medium and large sized
// sets (much like list storage). None of the fields of this structure should be
// considered public and all are subject to change.  All access should be done through
// the documented API rather than by manipulating the values in the structure.
type SetObject = C.PySetObject

// PyTypeObject PySet_Type
// This is an instance of :c:type:`PyTypeObject` representing the Python
// :class:`set` type.
func SetType() TypeObject {
	return *(*TypeObject)(c.Pointer(&C.PySet_Type))
}

// PyTypeObject PyFrozenSet_Type
// This is an instance of :c:type:`PyTypeObject` representing the Python
// :class:`frozenset` type.
//
// The following type check macros work on pointers to any Python object. Likewise,
// the constructor functions work with any iterable Python object.
func FrozenSetType() TypeObject {
	return *(*TypeObject)(c.Pointer(&C.PyFrozenSet_Type))
}
