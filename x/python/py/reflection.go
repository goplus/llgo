package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// PyObject* PyEval_GetBuiltins(void)
// Return a dictionary of the builtins in the current execution frame,
// or the interpreter of the thread state if no frame is currently executing.
//
//go:linkname EvalGetBuiltins PyEval_GetBuiltins
func EvalGetBuiltins() *Object

// PyObject* PyEval_GetLocals(void)
// Return a dictionary of the local variables in the current execution frame,
// or “NULL“ if no frame is currently executing.
//
//go:linkname EvalGetLocals PyEval_GetLocals
func EvalGetLocals() *Object

// PyObject* PyEval_GetGlobals(void)
// Return a dictionary of the global variables in the current execution frame,
// or “NULL“ if no frame is currently executing.
//
//go:linkname EvalGetGlobals PyEval_GetGlobals
func EvalGetGlobals() *Object

// PyFrameObject* PyEval_GetFrame(void)
// Return the current thread state's frame, which is “NULL“ if no frame is
// currently executing.
//
// See also :c:func:`PyThreadState_GetFrame`.
//
//go:linkname EvalGetFrame PyEval_GetFrame
func EvalGetFrame() *FrameObject

// const char* PyEval_GetFuncName(PyObject *func)
// Return the name of *func* if it is a function, class or instance object, else the
// name of *func*\s type.
//
//go:linkname EvalGetFuncName PyEval_GetFuncName
func EvalGetFuncName(func_ *Object) *Char

// const char* PyEval_GetFuncDesc(PyObject *func)
// Return a description string, depending on the type of *func*.
// Return values include "()" for functions and methods, " constructor",
// " instance", and " object".  Concatenated with the result of
// :c:func:`PyEval_GetFuncName`, the result will be a description of
// *func*.
//
//go:linkname EvalGetFuncDesc PyEval_GetFuncDesc
func EvalGetFuncDesc(func_ *Object) *Char
