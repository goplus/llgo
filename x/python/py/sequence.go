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

// int PySequence_Check(PyObject *o)
// Return “1“ if the object provides the sequence protocol, and “0“ otherwise.
// Note that it returns “1“ for Python classes with a :meth:`~object.__getitem__`
// method, unless they are :class:`dict` subclasses, since in general it
// is impossible to determine what type of keys the class supports.  This
// function always succeeds.
//
//go:linkname SequenceCheck C.PySequence_Check
func SequenceCheck(o *Object) c.Int

// Py_ssize_t PySequence_Size(PyObject *o)
// Py_ssize_t PySequence_Length(PyObject *o)
//
// .. index:: pair: built-in function; len
//
// Returns the number of objects in sequence *o* on success, and “-1“ on
// failure.  This is equivalent to the Python expression “len(o)“.
//
//go:linkname SequenceSize C.PySequence_Size
func SequenceSize(o *Object) SSizeT

// PyObject* PySequence_Concat(PyObject *o1, PyObject *o2)
// Return the concatenation of *o1* and *o2* on success, and “NULL“ on failure.
// This is the equivalent of the Python expression “o1 + o2“.
//
//go:linkname SequenceConcat C.PySequence_Concat
func SequenceConcat(o1 *Object, o2 *Object) *Object

// PyObject* PySequence_Repeat(PyObject *o, Py_ssize_t count)
// Return the result of repeating sequence object *o* *count* times, or “NULL“ on
// failure.  This is the equivalent of the Python expression “o * count“.
//
//go:linkname SequenceRepeat C.PySequence_Repeat
func SequenceRepeat(o *Object, count SSizeT) *Object

// PyObject* PySequence_InPlaceConcat(PyObject *o1, PyObject *o2)
// Return the concatenation of *o1* and *o2* on success, and “NULL“ on failure.
// The operation is done *in-place* when *o1* supports it.  This is the equivalent
// of the Python expression “o1 += o2“.
//
//go:linkname SequenceInPlaceConcat C.PySequence_InPlaceConcat
func SequenceInPlaceConcat(o1 *Object, o2 *Object) *Object

// PyObject* PySequence_InPlaceRepeat(PyObject *o, Py_ssize_t count)
// Return the result of repeating sequence object *o* *count* times, or “NULL“ on
// failure.  The operation is done *in-place* when *o* supports it.  This is the
// equivalent of the Python expression “o *= count“.
//
//go:linkname SequenceInPlaceRepeat C.PySequence_InPlaceRepeat
func SequenceInPlaceRepeat(o *Object, count SSizeT) *Object

// PyObject* PySequence_GetItem(PyObject *o, Py_ssize_t i)
// Return the *i*\ th element of *o*, or “NULL“ on failure. This is the equivalent of
// the Python expression “o[i]“.
//
//go:linkname SequenceGetItem C.PySequence_GetItem
func SequenceGetItem(o *Object, i SSizeT) *Object

// PyObject* PySequence_GetSlice(PyObject *o, Py_ssize_t i1, Py_ssize_t i2)
// Return the slice of sequence object *o* between *i1* and *i2*, or “NULL“ on
// failure. This is the equivalent of the Python expression “o[i1:i2]“.
//
//go:linkname SequenceGetSlice C.PySequence_GetSlice
func SequenceGetSlice(o *Object, i1 SSizeT, i2 SSizeT) *Object

// int PySequence_SetItem(PyObject *o, Py_ssize_t i, PyObject *v)
// Assign object *v* to the *i*\ th element of *o*.  Raise an exception
// and return “-1“ on failure; return “0“ on success.  This
// is the equivalent of the Python statement “o[i] = v“.  This function *does
// not* steal a reference to *v*.
//
// If *v* is “NULL“, the element is deleted, but this feature is
// deprecated in favour of using :c:func:`PySequence_DelItem`.
//
//go:linkname SequenceSetItem C.PySequence_SetItem
func SequenceSetItem(o *Object, i SSizeT, v *Object) c.Int

// int PySequence_DelItem(PyObject *o, Py_ssize_t i)
// Delete the *i*\ th element of object *o*.  Returns “-1“ on failure.  This is the
// equivalent of the Python statement “del o[i]“.
//
//go:linkname SequenceDelItem C.PySequence_DelItem
func SequenceDelItem(o *Object, i SSizeT) c.Int

// int PySequence_SetSlice(PyObject *o, Py_ssize_t i1, Py_ssize_t i2, PyObject *v)
// Assign the sequence object *v* to the slice in sequence object *o* from *i1* to
// *i2*.  This is the equivalent of the Python statement “o[i1:i2] = v“.
//
//go:linkname SequenceSetSlice C.PySequence_SetSlice
func SequenceSetSlice(o *Object, i1 SSizeT, i2 SSizeT, v *Object) c.Int

// int PySequence_DelSlice(PyObject *o, Py_ssize_t i1, Py_ssize_t i2)
// Delete the slice in sequence object *o* from *i1* to *i2*.  Returns “-1“ on
// failure.  This is the equivalent of the Python statement “del o[i1:i2]“.
//
//go:linkname SequenceDelSlice C.PySequence_DelSlice
func SequenceDelSlice(o *Object, i1 SSizeT, i2 SSizeT) c.Int

// Py_ssize_t PySequence_Count(PyObject *o, PyObject *value)
// Return the number of occurrences of *value* in *o*, that is, return the number
// of keys for which “o[key] == value“.  On failure, return “-1“.  This is
// equivalent to the Python expression “o.count(value)“.
//
//go:linkname SequenceCount C.PySequence_Count
func SequenceCount(o *Object, value *Object) SSizeT

// int PySequence_Contains(PyObject *o, PyObject *value)
// Determine if *o* contains *value*.  If an item in *o* is equal to *value*,
// return “1“, otherwise return “0“. On error, return “-1“.  This is
// equivalent to the Python expression “value in o“.
//
//go:linkname SequenceContains C.PySequence_Contains
func SequenceContains(o *Object, value *Object) c.Int

// Py_ssize_t PySequence_Index(PyObject *o, PyObject *value)
// Return the first index *i* for which “o[i] == value“.  On error, return
// “-1“.    This is equivalent to the Python expression “o.index(value)“.
//
//go:linkname SequenceIndex C.PySequence_Index
func SequenceIndex(o *Object, value *Object) SSizeT

// PyObject* PySequence_List(PyObject *o)
// Return a list object with the same contents as the sequence or iterable *o*,
// or “NULL“ on failure.  The returned list is guaranteed to be new.  This is
// equivalent to the Python expression “list(o)“.
//
//go:linkname SequenceList C.PySequence_List
func SequenceList(o *Object) *Object

// PyObject* PySequence_Tuple(PyObject *o)
// .. index:: pair: built-in function; tuple
//
// Return a tuple object with the same contents as the sequence or iterable *o*,
// or “NULL“ on failure.  If *o* is a tuple, a new reference will be returned,
// otherwise a tuple will be constructed with the appropriate contents.  This is
// equivalent to the Python expression “tuple(o)“.
//
//go:linkname SequenceTuple C.PySequence_Tuple
func SequenceTuple(o *Object) *Object

// PyObject* PySequence_Fast(PyObject *o, const char *m)
// Return the sequence or iterable *o* as an object usable by the other
// “PySequence_Fast*“ family of functions. If the object is not a sequence or
// iterable, raises :exc:`TypeError` with *m* as the message text. Returns
// “NULL“ on failure.
//
// The “PySequence_Fast*“ functions are thus named because they assume
// *o* is a :c:type:`PyTupleObject` or a :c:type:`PyListObject` and access
// the data fields of *o* directly.
//
// As a CPython implementation detail, if *o* is already a sequence or list, it
// will be returned.
//
//go:linkname SequenceFast C.PySequence_Fast
func SequenceFast(o *Object, m *c.Char) *Object

// Py_ssize_t PySequence_Fast_GET_SIZE(PyObject *o)
// Returns the length of *o*, assuming that *o* was returned by
// :c:func:`PySequence_Fast` and that *o* is not “NULL“.  The size can also be
// retrieved by calling :c:func:`PySequence_Size` on *o*, but
// :c:func:`PySequence_Fast_GET_SIZE` is faster because it can assume *o* is a
// list or tuple.
//
//go:linkname SequenceFastGETSIZE C.PySequence_Fast_GET_SIZE
func SequenceFastGETSIZE(o *Object) SSizeT

// PyObject* PySequence_Fast_GET_ITEM(PyObject *o, Py_ssize_t i)
// Return the *i*\ th element of *o*, assuming that *o* was returned by
// :c:func:`PySequence_Fast`, *o* is not “NULL“, and that *i* is within bounds.
//
//go:linkname SequenceFastGETITEM C.PySequence_Fast_GET_ITEM
func SequenceFastGETITEM(o *Object, i SSizeT) *Object

// PyObject** PySequence_Fast_ITEMS(PyObject *o)
// Return the underlying array of PyObject pointers.  Assumes that *o* was returned
// by :c:func:`PySequence_Fast` and *o* is not “NULL“.
//
// Note, if a list gets resized, the reallocation may relocate the items array.
// So, only use the underlying array pointer in contexts where the sequence
// cannot change.
//
//go:linkname SequenceFastITEMS C.PySequence_Fast_ITEMS
func SequenceFastITEMS(o *Object) **Object

// PyObject* PySequence_ITEM(PyObject *o, Py_ssize_t i)
// Return the *i*\ th element of *o* or “NULL“ on failure. Faster form of
// :c:func:`PySequence_GetItem` but without checking that
// :c:func:`PySequence_Check` on *o* is true and without adjustment for negative
// indices.
//
//go:linkname SequenceITEM C.PySequence_ITEM
func SequenceITEM(o *Object, i SSizeT) *Object
