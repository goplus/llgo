package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyWeakref_Check(PyObject *ob)
// Return non-zero if *ob* is either a reference or proxy object.  This function
// always succeeds.
//
//go:linkname WeakrefCheck C.PyWeakref_Check
func WeakrefCheck(ob *Object) Int

// int PyWeakref_CheckRef(PyObject *ob)
// Return non-zero if *ob* is a reference object.  This function always succeeds.
//
//go:linkname WeakrefCheckRef C.PyWeakref_CheckRef
func WeakrefCheckRef(ob *Object) Int

// int PyWeakref_CheckProxy(PyObject *ob)
// Return non-zero if *ob* is a proxy object.  This function always succeeds.
//
//go:linkname WeakrefCheckProxy C.PyWeakref_CheckProxy
func WeakrefCheckProxy(ob *Object) Int

// PyObject* PyWeakref_NewRef(PyObject *ob, PyObject *callback)
// Return a weak reference object for the object *ob*.  This will always return
// a new reference, but is not guaranteed to create a new object; an existing
// reference object may be returned.  The second parameter, *callback*, can be a
// callable object that receives notification when *ob* is garbage collected; it
// should accept a single parameter, which will be the weak reference object
// itself. *callback* may also be “None“ or “NULL“.  If *ob* is not a
// weakly referenceable object, or if *callback* is not callable, “None“, or
// “NULL“, this will return “NULL“ and raise :exc:`TypeError`.
//
//go:linkname WeakrefNewRef C.PyWeakref_NewRef
func WeakrefNewRef(ob *Object, callback *Object) *Object

// PyObject* PyWeakref_NewProxy(PyObject *ob, PyObject *callback)
// Return a weak reference proxy object for the object *ob*.  This will always
// return a new reference, but is not guaranteed to create a new object; an
// existing proxy object may be returned.  The second parameter, *callback*, can
// be a callable object that receives notification when *ob* is garbage
// collected; it should accept a single parameter, which will be the weak
// reference object itself. *callback* may also be “None“ or “NULL“.  If *ob*
// is not a weakly referenceable object, or if *callback* is not callable,
// “None“, or “NULL“, this will return “NULL“ and raise :exc:`TypeError`.
//
//go:linkname WeakrefNewProxy C.PyWeakref_NewProxy
func WeakrefNewProxy(ob *Object, callback *Object) *Object

// PyObject* PyWeakref_GetObject(PyObject *ref)
// Return a :term:`borrowed reference` to the referenced object from a weak
// reference, *ref*.  If the referent is no longer live, returns “Py_None“.
//
// .. note::
//
// This function returns a :term:`borrowed reference` to the referenced object.
// This means that you should always call :c:func:`Py_INCREF` on the object
// except when it cannot be destroyed before the last usage of the borrowed
// reference.
//
// .. deprecated-removed:: 3.13 3.15
// Use :c:func:`PyWeakref_GetRef` instead.
//
//go:linkname WeakrefGetObject C.PyWeakref_GetObject
func WeakrefGetObject(ref *Object) *Object

// PyObject* PyWeakref_GET_OBJECT(PyObject *ref)
// Similar to :c:func:`PyWeakref_GetObject`, but does no error checking.
//
// .. deprecated-removed:: 3.13 3.15
// Use :c:func:`PyWeakref_GetRef` instead.
//
//go:linkname WeakrefGETOBJECT C.PyWeakref_GET_OBJECT
func WeakrefGETOBJECT(ref *Object) *Object

// void PyObject_ClearWeakRefs(PyObject *object)
// This function is called by the :c:member:`~PyTypeObject.tp_dealloc` handler
// to clear weak references.
//
// This iterates through the weak references for *object* and calls callbacks
// for those references which have one. It returns when all callbacks have
// been attempted.
//
//go:linkname ObjectClearWeakRefs C.PyObject_ClearWeakRefs
func ObjectClearWeakRefs(object *Object)
