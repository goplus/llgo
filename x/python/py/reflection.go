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

// PyObject* PyEval_GetBuiltins(void)
// .. deprecated:: 3.13
//
// Use :c:func:`PyEval_GetFrameBuiltins` instead.
//
// Return a dictionary of the builtins in the current execution frame,
// or the interpreter of the thread state if no frame is currently executing.
//
//go:linkname EvalGetBuiltins C.PyEval_GetBuiltins
func EvalGetBuiltins() *Object

// PyObject* PyEval_GetLocals(void)
// .. deprecated:: 3.13
//
// Use either :c:func:`PyEval_GetFrameLocals` to obtain the same behaviour as calling
// :func:`locals` in Python code, or else call :c:func:`PyFrame_GetLocals` on the result
// of :c:func:`PyEval_GetFrame` to access the :attr:`~frame.f_locals` attribute of the
// currently executing frame.
//
// Return a mapping providing access to the local variables in the current execution frame,
// or “NULL“ if no frame is currently executing.
//
// Refer to :func:`locals` for details of the mapping returned at different scopes.
//
// As this function returns a :term:`borrowed reference`, the dictionary returned for
// :term:`optimized scopes <optimized scope>` is cached on the frame object and will remain
// alive as long as the frame object does. Unlike :c:func:`PyEval_GetFrameLocals` and
// :func:`locals`, subsequent calls to this function in the same frame will update the
// contents of the cached dictionary to reflect changes in the state of the local variables
// rather than returning a new snapshot.
//
// As part of :pep:`667`, :c:func:`PyFrame_GetLocals`, :func:`locals`, and
// :attr:`FrameType.f_locals <frame.f_locals>` no longer make use of the shared cache
// dictionary. Refer to the :ref:`What's New entry <whatsnew313-locals-semantics>` for
// additional details.
//
//go:linkname EvalGetLocals C.PyEval_GetLocals
func EvalGetLocals() *Object

// PyObject* PyEval_GetGlobals(void)
// .. deprecated:: 3.13
//
// Use :c:func:`PyEval_GetFrameGlobals` instead.
//
// Return a dictionary of the global variables in the current execution frame,
// or “NULL“ if no frame is currently executing.
//
//go:linkname EvalGetGlobals C.PyEval_GetGlobals
func EvalGetGlobals() *Object

// PyFrameObject* PyEval_GetFrame(void)
// Return the current thread state's frame, which is “NULL“ if no frame is
// currently executing.
//
// See also :c:func:`PyThreadState_GetFrame`.
//
//go:linkname EvalGetFrame C.PyEval_GetFrame
func EvalGetFrame() *FrameObject

// const char* PyEval_GetFuncName(PyObject *func)
// Return the name of *func* if it is a function, class or instance object, else the
// name of *func*\s type.
//
//go:linkname EvalGetFuncName C.PyEval_GetFuncName
func EvalGetFuncName(func_ *Object) *c.Char

// const char* PyEval_GetFuncDesc(PyObject *func)
// Return a description string, depending on the type of *func*.
// Return values include "()" for functions and methods, " constructor",
// " instance", and " object".  Concatenated with the result of
// :c:func:`PyEval_GetFuncName`, the result will be a description of
// *func*.
//
//go:linkname EvalGetFuncDesc C.PyEval_GetFuncDesc
func EvalGetFuncDesc(func_ *Object) *c.Char
