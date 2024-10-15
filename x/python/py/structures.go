package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int Py_Is(PyObject *x, PyObject *y)
// Test if the *x* object is the *y* object, the same as “x is y“ in Python.
//
//go:linkname Is C.Py_Is
func Is(x *Object, y *Object) Int

// int Py_IsNone(PyObject *x)
// Test if an object is the “None“ singleton,
// the same as “x is None“ in Python.
//
//go:linkname IsNone C.Py_IsNone
func IsNone(x *Object) Int

// int Py_IsTrue(PyObject *x)
// Test if an object is the “True“ singleton,
// the same as “x is True“ in Python.
//
//go:linkname IsTrue C.Py_IsTrue
func IsTrue(x *Object) Int

// int Py_IsFalse(PyObject *x)
// Test if an object is the “False“ singleton,
// the same as “x is False“ in Python.
//
//go:linkname IsFalse C.Py_IsFalse
func IsFalse(x *Object) Int

// PyTypeObject* Py_TYPE(PyObject *o)
// Get the type of the Python object *o*.
//
// Return a :term:`borrowed reference`.
//
// Use the :c:func:`Py_SET_TYPE` function to set an object type.
//
// :c:func:`Py_TYPE()` is changed to an inline static function.
// The parameter type is no longer :c:expr:`const PyObject*`.
//
//go:linkname TYPE_ C.Py_TYPE
func TYPE_(o *Object) *TypeObject

// int Py_IS_TYPE(PyObject *o, PyTypeObject *type)
// Return non-zero if the object *o* type is *type*. Return zero otherwise.
// Equivalent to: “Py_TYPE(o) == type“.
//
//go:linkname ISTYPE C.Py_IS_TYPE
func ISTYPE(o *Object, type_ *TypeObject) Int

// void Py_SET_TYPE(PyObject *o, PyTypeObject *type)
// Set the object *o* type to *type*.
//
//go:linkname SETTYPE C.Py_SET_TYPE
func SETTYPE(o *Object, type_ *TypeObject)

// Py_ssize_t Py_SIZE(PyVarObject *o)
// Get the size of the Python object *o*.
//
// Use the :c:func:`Py_SET_SIZE` function to set an object size.
//
// :c:func:`Py_SIZE()` is changed to an inline static function.
// The parameter type is no longer :c:expr:`const PyVarObject*`.
//
//go:linkname SIZE C.Py_SIZE
func SIZE(o *VarObject) SSizeT

// void Py_SET_SIZE(PyVarObject *o, Py_ssize_t size)
// Set the object *o* size to *size*.
//
//go:linkname SETSIZE C.Py_SET_SIZE
func SETSIZE(o *VarObject, size SSizeT)

// PyObject * PyCMethod_New(PyMethodDef *ml, PyObject *self, PyObject *module, PyTypeObject *cls)
// Turn *ml* into a Python :term:`callable` object.
// The caller must ensure that *ml* outlives the :term:`callable`.
// Typically, *ml* is defined as a static variable.
//
// The *self* parameter will be passed as the *self* argument
// to the C function in “ml->ml_meth“ when invoked.
// *self* can be “NULL“.
//
// The :term:`callable` object's “__module__“ attribute
// can be set from the given *module* argument.
// *module* should be a Python string,
// which will be used as name of the module the function is defined in.
// If unavailable, it can be set to :const:`None` or “NULL“.
//
// .. seealso:: :attr:`function.__module__`
//
// The *cls* parameter will be passed as the *defining_class*
// argument to the C function.
// Must be set if :c:macro:`METH_METHOD` is set on “ml->ml_flags“.
//
//go:linkname CMethodNew C.PyCMethod_New
func CMethodNew(ml *MethodDef, self *Object, module *Object, cls *TypeObject) *Object

// PyObject * PyCFunction_NewEx(PyMethodDef *ml, PyObject *self, PyObject *module)
// Equivalent to “PyCMethod_New(ml, self, module, NULL)“.
//
//go:linkname CFunctionNewEx C.PyCFunction_NewEx
func CFunctionNewEx(ml *MethodDef, self *Object, module *Object) *Object

// PyObject * PyCFunction_New(PyMethodDef *ml, PyObject *self)
// Equivalent to “PyCMethod_New(ml, self, NULL, NULL)“.
//
// Accessing attributes of extension types
// ---------------------------------------
//
//go:linkname CFunctionNew C.PyCFunction_New
func CFunctionNew(ml *MethodDef, self *Object) *Object

// PyObject* PyMember_GetOne(const char *obj_addr, struct PyMemberDef *m)
// Get an attribute belonging to the object at address *obj_addr*.  The
// attribute is described by “PyMemberDef“ *m*.  Returns “NULL“
// on error.
//
// “PyMember_GetOne“ is always available.
// Previously, it required including “"structmember.h"“.
//
//go:linkname MemberGetOne C.PyMember_GetOne
func MemberGetOne(objAddr *Char, m *MemberDef) *Object

// int PyMember_SetOne(char *obj_addr, struct PyMemberDef *m, PyObject *o)
// Set an attribute belonging to the object at address *obj_addr* to object *o*.
// The attribute to set is described by “PyMemberDef“ *m*.  Returns “0“
// if successful and a negative value on failure.
//
// “PyMember_SetOne“ is always available.
// Previously, it required including “"structmember.h"“.
//
// .. _PyMemberDef-flags:
//
// Member flags
// ^^^^^^^^^^^^
//
// The following flags can be used with :c:member:`PyMemberDef.flags`:
//
//go:linkname MemberSetOne C.PyMember_SetOne
func MemberSetOne(objAddr *Char, m *MemberDef, o *Object) Int

// PyCFunctionWithKeywords
// Type of the functions used to implement Python callables in C
// with signature :ref:`METH_VARARGS | METH_KEYWORDS <METH_VARARGS-METH_KEYWORDS>`.
// The function signature is::
//
// PyObject *PyCFunctionWithKeywords(PyObject *self,
// PyObject *args,
// PyObject *kwargs);
type CFunctionWithKeywords = C.PyCFunctionWithKeywords

// PyCMethod
// Type of the functions used to implement Python callables in C
// with signature :ref:`METH_METHOD | METH_FASTCALL | METH_KEYWORDS <METH_METHOD-METH_FASTCALL-METH_KEYWORDS>`.
// The function signature is::
//
// PyObject *PyCMethod(PyObject *self,
// PyTypeObject *defining_class,
// PyObject *const *args,
// Py_ssize_t nargs,
// PyObject *kwnames)
type CMethod = C.PyCMethod

// PyObject *(*getter)(PyObject *, void *)
// The “get“ function takes one :c:expr:`PyObject*` parameter (the
// instance) and a user data pointer (the associated “closure“):
//
// It should return a new reference on success or “NULL“ with a set exception
// on failure.
// llgo:type C
type Getter func(*Object, Pointer) *Object

// int (*setter)(PyObject *, PyObject *, void *)
// “set“ functions take two :c:expr:`PyObject*` parameters (the instance and
// the value to be set) and a user data pointer (the associated “closure“):
//
// In case the attribute should be deleted the second parameter is “NULL“.
// Should return “0“ on success or “-1“ with a set exception on failure.
// llgo:type C
type Setter func(*Object, *Object, Pointer) Int
