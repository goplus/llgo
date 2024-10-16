package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyTuple_Check(PyObject *p)
// Return true if *p* is a tuple object or an instance of a subtype of the
// tuple type.  This function always succeeds.
//
//go:linkname TupleCheck PyTuple_Check
func TupleCheck(p *Object) Int

// int PyTuple_CheckExact(PyObject *p)
// Return true if *p* is a tuple object, but not an instance of a subtype of the
// tuple type.  This function always succeeds.
//
//go:linkname TupleCheckExact PyTuple_CheckExact
func TupleCheckExact(p *Object) Int

// PyObject* PyTuple_New(Py_ssize_t len)
// Return a new tuple object of size *len*,
// or “NULL“ with an exception set on failure.
//
//go:linkname TupleNew PyTuple_New
func TupleNew(len SSizeT) *Object

// PyObject* PyTuple_Pack(Py_ssize_t n, ...)
// Return a new tuple object of size *n*,
// or “NULL“ with an exception set on failure. The tuple values
// are initialized to the subsequent *n* C arguments pointing to Python objects.
// “PyTuple_Pack(2, a, b)“ is equivalent to “Py_BuildValue("(OO)", a, b)“.
//
//go:linkname TuplePack PyTuple_Pack
func TuplePack(n SSizeT, __llgo_va_list ...any) *Object

// Py_ssize_t PyTuple_Size(PyObject *p)
// Take a pointer to a tuple object, and return the size of that tuple.
// On error, return “-1“ and with an exception set.
//
//go:linkname TupleSize PyTuple_Size
func TupleSize(p *Object) SSizeT

// Py_ssize_t PyTuple_GET_SIZE(PyObject *p)
// Like :c:func:`PyTuple_Size`, but without error checking.
//
//go:linkname TupleGETSIZE PyTuple_GET_SIZE
func TupleGETSIZE(p *Object) SSizeT

// PyObject* PyTuple_GetItem(PyObject *p, Py_ssize_t pos)
// Return the object at position *pos* in the tuple pointed to by *p*.  If *pos* is
// negative or out of bounds, return “NULL“ and set an :exc:`IndexError` exception.
//
// The returned reference is borrowed from the tuple *p*
// (that is: it is only valid as long as you hold a reference to *p*).
// To get a :term:`strong reference`, use
// :c:func:`Py_NewRef(PyTuple_GetItem(...)) <Py_NewRef>`
// or :c:func:`PySequence_GetItem`.
//
//go:linkname TupleGetItem PyTuple_GetItem
func TupleGetItem(p *Object, pos SSizeT) *Object

// PyObject* PyTuple_GET_ITEM(PyObject *p, Py_ssize_t pos)
// Like :c:func:`PyTuple_GetItem`, but does no checking of its arguments.
//
//go:linkname TupleGETITEM PyTuple_GET_ITEM
func TupleGETITEM(p *Object, pos SSizeT) *Object

// PyObject* PyTuple_GetSlice(PyObject *p, Py_ssize_t low, Py_ssize_t high)
// Return the slice of the tuple pointed to by *p* between *low* and *high*,
// or “NULL“ with an exception set on failure.
//
// This is the equivalent of the Python expression “p[low:high]“.
// Indexing from the end of the tuple is not supported.
//
//go:linkname TupleGetSlice PyTuple_GetSlice
func TupleGetSlice(p *Object, low SSizeT, high SSizeT) *Object

// int PyTuple_SetItem(PyObject *p, Py_ssize_t pos, PyObject *o)
// Insert a reference to object *o* at position *pos* of the tuple pointed to by
// *p*.  Return “0“ on success.  If *pos* is out of bounds, return “-1“
// and set an :exc:`IndexError` exception.
//
// .. note::
//
// This function "steals" a reference to *o* and discards a reference to
// an item already in the tuple at the affected position.
//
//go:linkname TupleSetItem PyTuple_SetItem
func TupleSetItem(p *Object, pos SSizeT, o *Object) Int

// void PyTuple_SET_ITEM(PyObject *p, Py_ssize_t pos, PyObject *o)
// Like :c:func:`PyTuple_SetItem`, but does no error checking, and should *only* be
// used to fill in brand new tuples.
//
// .. note::
//
// This function "steals" a reference to *o*, and, unlike
// :c:func:`PyTuple_SetItem`, does *not* discard a reference to any item that
// is being replaced; any reference in the tuple at position *pos* will be
// leaked.
//
//go:linkname TupleSETITEM PyTuple_SET_ITEM
func TupleSETITEM(p *Object, pos SSizeT, o *Object)

// int _PyTuple_Resize(PyObject **p, Py_ssize_t newsize)
// Can be used to resize a tuple.  *newsize* will be the new length of the tuple.
// Because tuples are *supposed* to be immutable, this should only be used if there
// is only one reference to the object.  Do *not* use this if the tuple may already
// be known to some other part of the code.  The tuple will always grow or shrink
// at the end.  Think of this as destroying the old tuple and creating a new one,
// only more efficiently.  Returns “0“ on success. Client code should never
// assume that the resulting value of “*p“ will be the same as before calling
// this function. If the object referenced by “*p“ is replaced, the original
// “*p“ is destroyed.  On failure, returns “-1“ and sets “*p“ to “NULL“, and
// raises :exc:`MemoryError` or :exc:`SystemError`.
//
// .. _struct-sequence-objects:
//
// Struct Sequence Objects
// -----------------------
//
// Struct sequence objects are the C equivalent of :func:`~collections.namedtuple`
// objects, i.e. a sequence whose items can also be accessed through attributes.
// To create a struct sequence, you first have to create a specific struct sequence
// type.
//
//go:linkname TupleResize _PyTuple_Resize
func TupleResize(p **Object, newsize SSizeT) Int

// PyTypeObject* PyStructSequence_NewType(PyStructSequence_Desc *desc)
// Create a new struct sequence type from the data in *desc*, described below. Instances
// of the resulting type can be created with :c:func:`PyStructSequence_New`.
//
// Return “NULL“ with an exception set on failure.
//
//go:linkname StructSequenceNewType PyStructSequence_NewType
func StructSequenceNewType(desc *StructSequenceDesc) *TypeObject

// void PyStructSequence_InitType(PyTypeObject *type, PyStructSequence_Desc *desc)
// Initializes a struct sequence type *type* from *desc* in place.
//
//go:linkname StructSequenceInitType PyStructSequence_InitType
func StructSequenceInitType(type_ *TypeObject, desc *StructSequenceDesc)

// int PyStructSequence_InitType2(PyTypeObject *type, PyStructSequence_Desc *desc)
// Like :c:func:`PyStructSequence_InitType`, but returns “0“ on success
// and “-1“ with an exception set on failure.
//
//go:linkname StructSequenceInitType2 PyStructSequence_InitType2
func StructSequenceInitType2(type_ *TypeObject, desc *StructSequenceDesc) Int

// PyObject* PyStructSequence_New(PyTypeObject *type)
// Creates an instance of *type*, which must have been created with
// :c:func:`PyStructSequence_NewType`.
//
// Return “NULL“ with an exception set on failure.
//
//go:linkname StructSequenceNew PyStructSequence_New
func StructSequenceNew(type_ *TypeObject) *Object

// PyObject* PyStructSequence_GetItem(PyObject *p, Py_ssize_t pos)
// Return the object at position *pos* in the struct sequence pointed to by *p*.
// No bounds checking is performed.
//
//go:linkname StructSequenceGetItem PyStructSequence_GetItem
func StructSequenceGetItem(p *Object, pos SSizeT) *Object

// PyObject* PyStructSequence_GET_ITEM(PyObject *p, Py_ssize_t pos)
// Macro equivalent of :c:func:`PyStructSequence_GetItem`.
//
//go:linkname StructSequenceGETITEM PyStructSequence_GET_ITEM
func StructSequenceGETITEM(p *Object, pos SSizeT) *Object

// void PyStructSequence_SetItem(PyObject *p, Py_ssize_t pos, PyObject *o)
// Sets the field at index *pos* of the struct sequence *p* to value *o*.  Like
// :c:func:`PyTuple_SET_ITEM`, this should only be used to fill in brand new
// instances.
//
// .. note::
//
// This function "steals" a reference to *o*.
//
//go:linkname StructSequenceSetItem PyStructSequence_SetItem
func StructSequenceSetItem(p *Object, pos SSizeT, o *Object)

// void PyStructSequence_SET_ITEM(PyObject *p, Py_ssize_t *pos, PyObject *o)
// Similar to :c:func:`PyStructSequence_SetItem`, but implemented as a static
// inlined function.
//
// .. note::
//
// This function "steals" a reference to *o*.
//
//go:linkname StructSequenceSETITEM PyStructSequence_SET_ITEM
func StructSequenceSETITEM(p *Object, pos *SSizeT, o *Object)

// PyTupleObject
// This subtype of :c:type:`PyObject` represents a Python tuple object.
type TupleObject = C.PyTupleObject

// PyStructSequence_Desc
// Contains the meta information of a struct sequence type to create.
type StructSequenceDesc = C.PyStructSequence_Desc

// PyStructSequence_Field
// Describes a field of a struct sequence. As a struct sequence is modeled as a
// tuple, all fields are typed as :c:expr:`PyObject*`.  The index in the
// :c:member:`~PyStructSequence_Desc.fields` array of
// the :c:type:`PyStructSequence_Desc` determines which
// field of the struct sequence is described.
type StructSequenceField = C.PyStructSequence_Field

// PyTypeObject PyTuple_Type
// This instance of :c:type:`PyTypeObject` represents the Python tuple type; it
// is the same object as :class:`tuple` in the Python layer.
func TupleType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyTuple_Type))
}

// const char * const PyStructSequence_UnnamedField
// Special value for a field name to leave it unnamed.
//
// The type was changed from “char *“.
func StructSequenceUnnamedField() *Char {
	return *(**Char)(Pointer(&C.PyStructSequence_UnnamedField))
}
