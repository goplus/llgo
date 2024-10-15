package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// Py_ssize_t PyVectorcall_NARGS(size_t nargsf)
// Given a vectorcall *nargsf* argument, return the actual number of
// arguments.
// Currently equivalent to::
//
// (Py_ssize_t)(nargsf & ~PY_VECTORCALL_ARGUMENTS_OFFSET)
//
// However, the function “PyVectorcall_NARGS“ should be used to allow
// for future extensions.
//
//go:linkname VectorcallNARGS C.PyVectorcall_NARGS
func VectorcallNARGS(nargsf Ulong) SSizeT

// vectorcallfunc PyVectorcall_Function(PyObject *op)
// If *op* does not support the vectorcall protocol (either because the type
// does not or because the specific instance does not), return *NULL*.
// Otherwise, return the vectorcall function pointer stored in *op*.
// This function never raises an exception.
//
// This is mostly useful to check whether or not *op* supports vectorcall,
// which can be done by checking “PyVectorcall_Function(op) != NULL“.
//
//go:linkname VectorcallFunction C.PyVectorcall_Function
func VectorcallFunction(op *Object) Vectorcallfunc

// PyObject* PyVectorcall_Call(PyObject *callable, PyObject *tuple, PyObject *dict)
// Call *callable*'s :c:type:`vectorcallfunc` with positional and keyword
// arguments given in a tuple and dict, respectively.
//
// This is a specialized function, intended to be put in the
// :c:member:`~PyTypeObject.tp_call` slot or be used in an implementation of “tp_call“.
// It does not check the :c:macro:`Py_TPFLAGS_HAVE_VECTORCALL` flag
// and it does not fall back to “tp_call“.
//
// .. _capi-call:
//
// Object Calling API
// ------------------
//
// Various functions are available for calling a Python object.
// Each converts its arguments to a convention supported by the called object –
// either *tp_call* or vectorcall.
// In order to do as little conversion as possible, pick one that best fits
// the format of data you have available.
//
// The following table summarizes the available functions;
// please see individual documentation for details.
//
// +------------------------------------------+------------------+--------------------+---------------+
// | Function                                 | callable         | args               | kwargs        |
// +==========================================+==================+====================+===============+
// | :c:func:`PyObject_Call`                  | “PyObject *“   | tuple              | dict/“NULL“ |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_CallNoArgs`            | “PyObject *“   | ---                | ---           |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_CallOneArg`            | “PyObject *“   | 1 object           | ---           |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_CallObject`            | “PyObject *“   | tuple/“NULL“     | ---           |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_CallFunction`          | “PyObject *“   | format             | ---           |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_CallMethod`            | obj + “char*“  | format             | ---           |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_CallFunctionObjArgs`   | “PyObject *“   | variadic           | ---           |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_CallMethodObjArgs`     | obj + name       | variadic           | ---           |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_CallMethodNoArgs`      | obj + name       | ---                | ---           |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_CallMethodOneArg`      | obj + name       | 1 object           | ---           |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_Vectorcall`            | “PyObject *“   | vectorcall         | vectorcall    |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_VectorcallDict`        | “PyObject *“   | vectorcall         | dict/“NULL“ |
// +------------------------------------------+------------------+--------------------+---------------+
// | :c:func:`PyObject_VectorcallMethod`      | arg + name       | vectorcall         | vectorcall    |
// +------------------------------------------+------------------+--------------------+---------------+
//
//go:linkname VectorcallCall C.PyVectorcall_Call
func VectorcallCall(callable *Object, tuple *Object, dict *Object) *Object

// PyObject* PyObject_Call(PyObject *callable, PyObject *args, PyObject *kwargs)
// Call a callable Python object *callable*, with arguments given by the
// tuple *args*, and named arguments given by the dictionary *kwargs*.
//
// *args* must not be *NULL*; use an empty tuple if no arguments are needed.
// If no named arguments are needed, *kwargs* can be *NULL*.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
// This is the equivalent of the Python expression:
// “callable(*args, **kwargs)“.
//
//go:linkname ObjectCall C.PyObject_Call
func ObjectCall(callable *Object, args *Object, kwargs *Object) *Object

// PyObject* PyObject_CallNoArgs(PyObject *callable)
// Call a callable Python object *callable* without any arguments. It is the
// most efficient way to call a callable Python object without any argument.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
//go:linkname ObjectCallNoArgs C.PyObject_CallNoArgs
func ObjectCallNoArgs(callable *Object) *Object

// PyObject* PyObject_CallOneArg(PyObject *callable, PyObject *arg)
// Call a callable Python object *callable* with exactly 1 positional argument
// *arg* and no keyword arguments.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
//go:linkname ObjectCallOneArg C.PyObject_CallOneArg
func ObjectCallOneArg(callable *Object, arg *Object) *Object

// PyObject* PyObject_CallObject(PyObject *callable, PyObject *args)
// Call a callable Python object *callable*, with arguments given by the
// tuple *args*.  If no arguments are needed, then *args* can be *NULL*.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
// This is the equivalent of the Python expression: “callable(*args)“.
//
//go:linkname ObjectCallObject C.PyObject_CallObject
func ObjectCallObject(callable *Object, args *Object) *Object

// PyObject* PyObject_CallFunction(PyObject *callable, const char *format, ...)
// Call a callable Python object *callable*, with a variable number of C arguments.
// The C arguments are described using a :c:func:`Py_BuildValue` style format
// string.  The format can be *NULL*, indicating that no arguments are provided.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
// This is the equivalent of the Python expression: “callable(*args)“.
//
// Note that if you only pass :c:expr:`PyObject *` args,
// :c:func:`PyObject_CallFunctionObjArgs` is a faster alternative.
//
// The type of *format* was changed from “char *“.
//
//go:linkname ObjectCallFunction C.PyObject_CallFunction
func ObjectCallFunction(callable *Object, format *Char, __llgo_va_list ...any) *Object

// PyObject* PyObject_CallMethod(PyObject *obj, const char *name, const char *format, ...)
// Call the method named *name* of object *obj* with a variable number of C
// arguments.  The C arguments are described by a :c:func:`Py_BuildValue` format
// string that should produce a tuple.
//
// The format can be *NULL*, indicating that no arguments are provided.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
// This is the equivalent of the Python expression:
// “obj.name(arg1, arg2, ...)“.
//
// Note that if you only pass :c:expr:`PyObject *` args,
// :c:func:`PyObject_CallMethodObjArgs` is a faster alternative.
//
// The types of *name* and *format* were changed from “char *“.
//
//go:linkname ObjectCallMethod C.PyObject_CallMethod
func ObjectCallMethod(obj *Object, name *Char, format *Char, __llgo_va_list ...any) *Object

// PyObject* PyObject_CallFunctionObjArgs(PyObject *callable, ...)
// Call a callable Python object *callable*, with a variable number of
// :c:expr:`PyObject *` arguments.  The arguments are provided as a variable number
// of parameters followed by *NULL*.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
// This is the equivalent of the Python expression:
// “callable(arg1, arg2, ...)“.
//
//go:linkname ObjectCallFunctionObjArgs C.PyObject_CallFunctionObjArgs
func ObjectCallFunctionObjArgs(callable *Object, __llgo_va_list ...any) *Object

// PyObject* PyObject_CallMethodObjArgs(PyObject *obj, PyObject *name, ...)
// Call a method of the Python object *obj*, where the name of the method is given as a
// Python string object in *name*.  It is called with a variable number of
// :c:expr:`PyObject *` arguments.  The arguments are provided as a variable number
// of parameters followed by *NULL*.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
//go:linkname ObjectCallMethodObjArgs C.PyObject_CallMethodObjArgs
func ObjectCallMethodObjArgs(obj *Object, name *Object, __llgo_va_list ...any) *Object

// PyObject* PyObject_CallMethodNoArgs(PyObject *obj, PyObject *name)
// Call a method of the Python object *obj* without arguments,
// where the name of the method is given as a Python string object in *name*.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
//go:linkname ObjectCallMethodNoArgs C.PyObject_CallMethodNoArgs
func ObjectCallMethodNoArgs(obj *Object, name *Object) *Object

// PyObject* PyObject_CallMethodOneArg(PyObject *obj, PyObject *name, PyObject *arg)
// Call a method of the Python object *obj* with a single positional argument
// *arg*, where the name of the method is given as a Python string object in
// *name*.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
//go:linkname ObjectCallMethodOneArg C.PyObject_CallMethodOneArg
func ObjectCallMethodOneArg(obj *Object, name *Object, arg *Object) *Object

// PyObject* PyObject_Vectorcall(PyObject *callable, PyObject *const *args, size_t nargsf, PyObject *kwnames)
// Call a callable Python object *callable*.
// The arguments are the same as for :c:type:`vectorcallfunc`.
// If *callable* supports vectorcall_, this directly calls
// the vectorcall function stored in *callable*.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
//go:linkname ObjectVectorcall C.PyObject_Vectorcall
func ObjectVectorcall(callable *Object, args **Object, nargsf Ulong, kwnames *Object) *Object

// PyObject* PyObject_VectorcallDict(PyObject *callable, PyObject *const *args, size_t nargsf, PyObject *kwdict)
// Call *callable* with positional arguments passed exactly as in the vectorcall_ protocol,
// but with keyword arguments passed as a dictionary *kwdict*.
// The *args* array contains only the positional arguments.
//
// Regardless of which protocol is used internally,
// a conversion of arguments needs to be done.
// Therefore, this function should only be used if the caller
// already has a dictionary ready to use for the keyword arguments,
// but not a tuple for the positional arguments.
//
//go:linkname ObjectVectorcallDict C.PyObject_VectorcallDict
func ObjectVectorcallDict(callable *Object, args **Object, nargsf Ulong, kwdict *Object) *Object

// PyObject* PyObject_VectorcallMethod(PyObject *name, PyObject *const *args, size_t nargsf, PyObject *kwnames)
// Call a method using the vectorcall calling convention. The name of the method
// is given as a Python string *name*. The object whose method is called is
// *args[0]*, and the *args* array starting at *args[1]* represents the arguments
// of the call. There must be at least one positional argument.
// *nargsf* is the number of positional arguments including *args[0]*,
// plus :c:macro:`PY_VECTORCALL_ARGUMENTS_OFFSET` if the value of “args[0]“ may
// temporarily be changed. Keyword arguments can be passed just like in
// :c:func:`PyObject_Vectorcall`.
//
// If the object has the :c:macro:`Py_TPFLAGS_METHOD_DESCRIPTOR` feature,
// this will call the unbound method object with the full
// *args* vector as arguments.
//
// Return the result of the call on success, or raise an exception and return
// *NULL* on failure.
//
// Call Support API
// ----------------
//
//go:linkname ObjectVectorcallMethod C.PyObject_VectorcallMethod
func ObjectVectorcallMethod(name *Object, args **Object, nargsf Ulong, kwnames *Object) *Object

// int PyCallable_Check(PyObject *o)
// Determine if the object *o* is callable.  Return “1“ if the object is callable
// and “0“ otherwise.  This function always succeeds.
//
//go:linkname CallableCheck C.PyCallable_Check
func CallableCheck(o *Object) Int

// PyObject *(*vectorcallfunc)(PyObject *callable, PyObject *const *args, size_t nargsf, PyObject *kwnames)
// - *callable* is the object being called.
// - *args* is a C array consisting of the positional arguments followed by the
// values of the keyword arguments.
// This can be *NULL* if there are no arguments.
// - *nargsf* is the number of positional arguments plus possibly the
// :c:macro:`PY_VECTORCALL_ARGUMENTS_OFFSET` flag.
// To get the actual number of positional arguments from *nargsf*,
// use :c:func:`PyVectorcall_NARGS`.
// - *kwnames* is a tuple containing the names of the keyword arguments;
// in other words, the keys of the kwargs dict.
// These names must be strings (instances of “str“ or a subclass)
// and they must be unique.
// If there are no keyword arguments, then *kwnames* can instead be *NULL*.
// llgo:type C
type Vectorcallfunc func(callable *Object, args **Object, nargsf Ulong, kwnames *Object) *Object
