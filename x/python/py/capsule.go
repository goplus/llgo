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

// int PyCapsule_CheckExact(PyObject *p)
// Return true if its argument is a :c:type:`PyCapsule`.  This function always
// succeeds.
//
//go:linkname CapsuleCheckExact C.PyCapsule_CheckExact
func CapsuleCheckExact(p *Object) c.Int

// PyObject* PyCapsule_New(void *pointer, const char *name, PyCapsule_Destructor destructor)
// Create a :c:type:`PyCapsule` encapsulating the *pointer*.  The *pointer*
// argument may not be “NULL“.
//
// On failure, set an exception and return “NULL“.
//
// The *name* string may either be “NULL“ or a pointer to a valid C string.  If
// non-“NULL“, this string must outlive the capsule.  (Though it is permitted to
// free it inside the *destructor*.)
//
// If the *destructor* argument is not “NULL“, it will be called with the
// capsule as its argument when it is destroyed.
//
// If this capsule will be stored as an attribute of a module, the *name* should
// be specified as “modulename.attributename“.  This will enable other modules
// to import the capsule using :c:func:`PyCapsule_Import`.
//
//go:linkname CapsuleNew C.PyCapsule_New
func CapsuleNew(pointer c.Pointer, name *c.Char, destructor CapsuleDestructor) *Object

// void* PyCapsule_GetPointer(PyObject *capsule, const char *name)
// Retrieve the *pointer* stored in the capsule.  On failure, set an exception
// and return “NULL“.
//
// The *name* parameter must compare exactly to the name stored in the capsule.
// If the name stored in the capsule is “NULL“, the *name* passed in must also
// be “NULL“.  Python uses the C function :c:func:`!strcmp` to compare capsule
// names.
//
//go:linkname CapsuleGetPointer C.PyCapsule_GetPointer
func CapsuleGetPointer(capsule *Object, name *c.Char) c.Pointer

// PyCapsule_Destructor PyCapsule_GetDestructor(PyObject *capsule)
// Return the current destructor stored in the capsule.  On failure, set an
// exception and return “NULL“.
//
// It is legal for a capsule to have a “NULL“ destructor.  This makes a “NULL“
// return code somewhat ambiguous; use :c:func:`PyCapsule_IsValid` or
// :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname CapsuleGetDestructor C.PyCapsule_GetDestructor
func CapsuleGetDestructor(capsule *Object) CapsuleDestructor

// void* PyCapsule_GetContext(PyObject *capsule)
// Return the current context stored in the capsule.  On failure, set an
// exception and return “NULL“.
//
// It is legal for a capsule to have a “NULL“ context.  This makes a “NULL“
// return code somewhat ambiguous; use :c:func:`PyCapsule_IsValid` or
// :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname CapsuleGetContext C.PyCapsule_GetContext
func CapsuleGetContext(capsule *Object) c.Pointer

// const char* PyCapsule_GetName(PyObject *capsule)
// Return the current name stored in the capsule.  On failure, set an exception
// and return “NULL“.
//
// It is legal for a capsule to have a “NULL“ name.  This makes a “NULL“ return
// code somewhat ambiguous; use :c:func:`PyCapsule_IsValid` or
// :c:func:`PyErr_Occurred` to disambiguate.
//
//go:linkname CapsuleGetName C.PyCapsule_GetName
func CapsuleGetName(capsule *Object) *c.Char

// void* PyCapsule_Import(const char *name, int no_block)
// Import a pointer to a C object from a capsule attribute in a module.  The
// *name* parameter should specify the full name to the attribute, as in
// “module.attribute“.  The *name* stored in the capsule must match this
// string exactly.
//
// Return the capsule's internal *pointer* on success.  On failure, set an
// exception and return “NULL“.
//
// *no_block* has no effect anymore.
//
//go:linkname CapsuleImport C.PyCapsule_Import
func CapsuleImport(name *c.Char, noBlock c.Int) c.Pointer

// int PyCapsule_IsValid(PyObject *capsule, const char *name)
// Determines whether or not *capsule* is a valid capsule.  A valid capsule is
// non-“NULL“, passes :c:func:`PyCapsule_CheckExact`, has a non-“NULL“ pointer
// stored in it, and its internal name matches the *name* parameter.  (See
// :c:func:`PyCapsule_GetPointer` for information on how capsule names are
// compared.)
//
// In other words, if :c:func:`PyCapsule_IsValid` returns a true value, calls to
// any of the accessors (any function starting with “PyCapsule_Get“) are
// guaranteed to succeed.
//
// Return a nonzero value if the object is valid and matches the name passed in.
// Return “0“ otherwise.  This function will not fail.
//
//go:linkname CapsuleIsValid C.PyCapsule_IsValid
func CapsuleIsValid(capsule *Object, name *c.Char) c.Int

// int PyCapsule_SetContext(PyObject *capsule, void *context)
// Set the context pointer inside *capsule* to *context*.
//
// Return “0“ on success.  Return nonzero and set an exception on failure.
//
//go:linkname CapsuleSetContext C.PyCapsule_SetContext
func CapsuleSetContext(capsule *Object, context c.Pointer) c.Int

// int PyCapsule_SetDestructor(PyObject *capsule, PyCapsule_Destructor destructor)
// Set the destructor inside *capsule* to *destructor*.
//
// Return “0“ on success.  Return nonzero and set an exception on failure.
//
//go:linkname CapsuleSetDestructor C.PyCapsule_SetDestructor
func CapsuleSetDestructor(capsule *Object, destructor CapsuleDestructor) c.Int

// int PyCapsule_SetName(PyObject *capsule, const char *name)
// Set the name inside *capsule* to *name*.  If non-“NULL“, the name must
// outlive the capsule.  If the previous *name* stored in the capsule was not
// “NULL“, no attempt is made to free it.
//
// Return “0“ on success.  Return nonzero and set an exception on failure.
//
//go:linkname CapsuleSetName C.PyCapsule_SetName
func CapsuleSetName(capsule *Object, name *c.Char) c.Int

// int PyCapsule_SetPointer(PyObject *capsule, void *pointer)
// Set the void pointer inside *capsule* to *pointer*.  The pointer may not be
// “NULL“.
//
// Return “0“ on success.  Return nonzero and set an exception on failure.
//
//go:linkname CapsuleSetPointer C.PyCapsule_SetPointer
func CapsuleSetPointer(capsule *Object, pointer c.Pointer) c.Int

// PyCapsule_Destructor
// The type of a destructor callback for a capsule.  Defined as::
//
// typedef void (*PyCapsule_Destructor)(PyObject *);
//
// See :c:func:`PyCapsule_New` for the semantics of PyCapsule_Destructor
// callbacks.
type CapsuleDestructor = C.PyCapsule_Destructor
