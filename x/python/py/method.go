package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyInstanceMethod_Check(PyObject *o)
// Return true if *o* is an instance method object (has type
// :c:data:`PyInstanceMethod_Type`).  The parameter must not be “NULL“.
// This function always succeeds.
//
//go:linkname InstanceMethodCheck C.PyInstanceMethod_Check
func InstanceMethodCheck(o *Object) Int

// PyObject* PyInstanceMethod_New(PyObject *func)
// Return a new instance method object, with *func* being any callable object.
// *func* is the function that will be called when the instance method is
// called.
//
//go:linkname InstanceMethodNew C.PyInstanceMethod_New
func InstanceMethodNew(func_ *Object) *Object

// PyObject* PyInstanceMethod_Function(PyObject *im)
// Return the function object associated with the instance method *im*.
//
//go:linkname InstanceMethodFunction C.PyInstanceMethod_Function
func InstanceMethodFunction(im *Object) *Object

// PyObject* PyInstanceMethod_GET_FUNCTION(PyObject *im)
// Macro version of :c:func:`PyInstanceMethod_Function` which avoids error checking.
//
// .. _method-objects:
//
// Method Objects
// --------------
//
// .. index:: pair: object; method
//
// Methods are bound function objects. Methods are always bound to an instance of
// a user-defined class. Unbound methods (methods bound to a class object) are
// no longer available.
//
//go:linkname InstanceMethodGETFUNCTION C.PyInstanceMethod_GET_FUNCTION
func InstanceMethodGETFUNCTION(im *Object) *Object

// int PyMethod_Check(PyObject *o)
// Return true if *o* is a method object (has type :c:data:`PyMethod_Type`).  The
// parameter must not be “NULL“.  This function always succeeds.
//
//go:linkname MethodCheck C.PyMethod_Check
func MethodCheck(o *Object) Int

// PyObject* PyMethod_New(PyObject *func, PyObject *self)
// Return a new method object, with *func* being any callable object and *self*
// the instance the method should be bound. *func* is the function that will
// be called when the method is called. *self* must not be “NULL“.
//
//go:linkname MethodNew C.PyMethod_New
func MethodNew(func_ *Object, self *Object) *Object

// PyObject* PyMethod_Function(PyObject *meth)
// Return the function object associated with the method *meth*.
//
//go:linkname MethodFunction C.PyMethod_Function
func MethodFunction(meth *Object) *Object

// PyObject* PyMethod_GET_FUNCTION(PyObject *meth)
// Macro version of :c:func:`PyMethod_Function` which avoids error checking.
//
//go:linkname MethodGETFUNCTION C.PyMethod_GET_FUNCTION
func MethodGETFUNCTION(meth *Object) *Object

// PyObject* PyMethod_Self(PyObject *meth)
// Return the instance associated with the method *meth*.
//
//go:linkname MethodSelf C.PyMethod_Self
func MethodSelf(meth *Object) *Object

// PyObject* PyMethod_GET_SELF(PyObject *meth)
// Macro version of :c:func:`PyMethod_Self` which avoids error checking.
//
//go:linkname MethodGETSELF C.PyMethod_GET_SELF
func MethodGETSELF(meth *Object) *Object

// PyTypeObject PyInstanceMethod_Type
// This instance of :c:type:`PyTypeObject` represents the Python instance
// method type. It is not exposed to Python programs.
func InstanceMethodType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyInstanceMethod_Type))
}

// PyTypeObject PyMethod_Type
// .. index:: single: MethodType (in module types)
//
// This instance of :c:type:`PyTypeObject` represents the Python method type.  This
// is exposed to Python programs as “types.MethodType“.
func MethodType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyMethod_Type))
}
