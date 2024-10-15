package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyList_Check(PyObject *p)
// Return true if *p* is a list object or an instance of a subtype of the list
// type.  This function always succeeds.
//
//go:linkname ListCheck C.PyList_Check
func ListCheck(p *Object) Int

// int PyList_CheckExact(PyObject *p)
// Return true if *p* is a list object, but not an instance of a subtype of
// the list type.  This function always succeeds.
//
//go:linkname ListCheckExact C.PyList_CheckExact
func ListCheckExact(p *Object) Int

// PyObject* PyList_New(Py_ssize_t len)
// Return a new list of length *len* on success, or “NULL“ on failure.
//
// .. note::
//
// If *len* is greater than zero, the returned list object's items are
// set to “NULL“. Thus you cannot use abstract API functions such as
// :c:func:`PySequence_SetItem` or expose the object to Python code before
// setting all items to a real object with :c:func:`PyList_SetItem` or
// :c:func:`PyList_SET_ITEM()`. The following APIs are safe APIs before
// the list is fully initialized: :c:func:`PyList_SetItem()` and :c:func:`PyList_SET_ITEM()`.
//
//go:linkname ListNew C.PyList_New
func ListNew(len SSizeT) *Object

// Py_ssize_t PyList_Size(PyObject *list)
// .. index:: pair: built-in function; len
//
// Return the length of the list object in *list*; this is equivalent to
// “len(list)“ on a list object.
//
//go:linkname ListSize C.PyList_Size
func ListSize(list *Object) SSizeT

// Py_ssize_t PyList_GET_SIZE(PyObject *list)
// Similar to :c:func:`PyList_Size`, but without error checking.
//
//go:linkname ListGETSIZE C.PyList_GET_SIZE
func ListGETSIZE(list *Object) SSizeT

// PyObject* PyList_GetItem(PyObject *list, Py_ssize_t index)
// Like :c:func:`PyList_GetItemRef`, but returns a
// :term:`borrowed reference` instead of a :term:`strong reference`.
//
//go:linkname ListGetItem C.PyList_GetItem
func ListGetItem(list *Object, index SSizeT) *Object

// PyObject* PyList_GET_ITEM(PyObject *list, Py_ssize_t i)
// Similar to :c:func:`PyList_GetItem`, but without error checking.
//
//go:linkname ListGETITEM C.PyList_GET_ITEM
func ListGETITEM(list *Object, i SSizeT) *Object

// int PyList_SetItem(PyObject *list, Py_ssize_t index, PyObject *item)
// Set the item at index *index* in list to *item*.  Return “0“ on success.
// If *index* is out of bounds, return “-1“ and set an :exc:`IndexError`
// exception.
//
// .. note::
//
// This function "steals" a reference to *item* and discards a reference to
// an item already in the list at the affected position.
//
//go:linkname ListSetItem C.PyList_SetItem
func ListSetItem(list *Object, index SSizeT, item *Object) Int

// void PyList_SET_ITEM(PyObject *list, Py_ssize_t i, PyObject *o)
// Macro form of :c:func:`PyList_SetItem` without error checking. This is
// normally only used to fill in new lists where there is no previous content.
//
// Bounds checking is performed as an assertion if Python is built in
// :ref:`debug mode <debug-build>` or :option:`with assertions
// <--with-assertions>`.
//
// .. note::
//
// This macro "steals" a reference to *item*, and, unlike
// :c:func:`PyList_SetItem`, does *not* discard a reference to any item that
// is being replaced; any reference in *list* at position *i* will be
// leaked.
//
//go:linkname ListSETITEM C.PyList_SET_ITEM
func ListSETITEM(list *Object, i SSizeT, o *Object)

// int PyList_Insert(PyObject *list, Py_ssize_t index, PyObject *item)
// Insert the item *item* into list *list* in front of index *index*.  Return
// “0“ if successful; return “-1“ and set an exception if unsuccessful.
// Analogous to “list.insert(index, item)“.
//
//go:linkname ListInsert C.PyList_Insert
func ListInsert(list *Object, index SSizeT, item *Object) Int

// int PyList_Append(PyObject *list, PyObject *item)
// Append the object *item* at the end of list *list*. Return “0“ if
// successful; return “-1“ and set an exception if unsuccessful.  Analogous
// to “list.append(item)“.
//
//go:linkname ListAppend C.PyList_Append
func ListAppend(list *Object, item *Object) Int

// PyObject* PyList_GetSlice(PyObject *list, Py_ssize_t low, Py_ssize_t high)
// Return a list of the objects in *list* containing the objects *between* *low*
// and *high*.  Return “NULL“ and set an exception if unsuccessful.  Analogous
// to “list[low:high]“.  Indexing from the end of the list is not supported.
//
//go:linkname ListGetSlice C.PyList_GetSlice
func ListGetSlice(list *Object, low SSizeT, high SSizeT) *Object

// int PyList_SetSlice(PyObject *list, Py_ssize_t low, Py_ssize_t high, PyObject *itemlist)
// Set the slice of *list* between *low* and *high* to the contents of
// *itemlist*.  Analogous to “list[low:high] = itemlist“. The *itemlist* may
// be “NULL“, indicating the assignment of an empty list (slice deletion).
// Return “0“ on success, “-1“ on failure.  Indexing from the end of the
// list is not supported.
//
//go:linkname ListSetSlice C.PyList_SetSlice
func ListSetSlice(list *Object, low SSizeT, high SSizeT, itemlist *Object) Int

// int PyList_Sort(PyObject *list)
// Sort the items of *list* in place.  Return “0“ on success, “-1“ on
// failure.  This is equivalent to “list.sort()“.
//
//go:linkname ListSort C.PyList_Sort
func ListSort(list *Object) Int

// int PyList_Reverse(PyObject *list)
// Reverse the items of *list* in place.  Return “0“ on success, “-1“ on
// failure.  This is the equivalent of “list.reverse()“.
//
//go:linkname ListReverse C.PyList_Reverse
func ListReverse(list *Object) Int

// PyObject* PyList_AsTuple(PyObject *list)
// .. index:: pair: built-in function; tuple
//
// Return a new tuple object containing the contents of *list*; equivalent to
// “tuple(list)“.
//
//go:linkname ListAsTuple C.PyList_AsTuple
func ListAsTuple(list *Object) *Object

// PyListObject
// This subtype of :c:type:`PyObject` represents a Python list object.
type ListObject = C.PyListObject

// PyTypeObject PyList_Type
// This instance of :c:type:`PyTypeObject` represents the Python list type.
// This is the same object as :class:`list` in the Python layer.
func ListType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyList_Type))
}
