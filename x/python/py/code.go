package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyCode_Check(PyObject *co)
// Return true if *co* is a :ref:`code object <code-objects>`.
// This function always succeeds.
//
//go:linkname CodeCheck C.PyCode_Check
func CodeCheck(co *Object) Int

// Py_ssize_t PyCode_GetNumFree(PyCodeObject *co)
// Return the number of :term:`free (closure) variables <closure variable>`
// in a code object.
//
//go:linkname CodeGetNumFree C.PyCode_GetNumFree
func CodeGetNumFree(co *CodeObject) SSizeT

// int PyUnstable_Code_GetFirstFree(PyCodeObject *co)
// Return the position of the first :term:`free (closure) variable <closure variable>`
// in a code object.
//
// Renamed from “PyCode_GetFirstFree“ as part of :ref:`unstable-c-api`.
// The old name is deprecated, but will remain available until the
// signature changes again.
//
//go:linkname UnstableCodeGetFirstFree C.PyUnstable_Code_GetFirstFree
func UnstableCodeGetFirstFree(co *CodeObject) Int

// PyCodeObject* PyUnstable_Code_New(int argcount, int kwonlyargcount, int nlocals, int stacksize, int flags, PyObject *code, PyObject *consts, PyObject *names, PyObject *varnames, PyObject *freevars, PyObject *cellvars, PyObject *filename, PyObject *name, PyObject *qualname, int firstlineno, PyObject *linetable, PyObject *exceptiontable)
// Return a new code object.  If you need a dummy code object to create a frame,
// use :c:func:`PyCode_NewEmpty` instead.
//
// Since the definition of the bytecode changes often, calling
// :c:func:`PyUnstable_Code_New` directly can bind you to a precise Python version.
//
// The many arguments of this function are inter-dependent in complex
// ways, meaning that subtle changes to values are likely to result in incorrect
// execution or VM crashes. Use this function only with extreme care.
//
// Added “qualname“ and “exceptiontable“ parameters.
//
// .. index:: single: PyCode_New (C function)
//
// Renamed from “PyCode_New“ as part of :ref:`unstable-c-api`.
// The old name is deprecated, but will remain available until the
// signature changes again.
//
//go:linkname UnstableCodeNew C.PyUnstable_Code_New
func UnstableCodeNew(argcount Int, kwonlyargcount Int, nlocals Int, stacksize Int, flags Int, code *Object, consts *Object, names *Object, varnames *Object, freevars *Object, cellvars *Object, filename *Object, name *Object, qualname *Object, firstlineno Int, linetable *Object, exceptiontable *Object) *CodeObject

// PyCodeObject* PyUnstable_Code_NewWithPosOnlyArgs(int argcount, int posonlyargcount, int kwonlyargcount, int nlocals, int stacksize, int flags, PyObject *code, PyObject *consts, PyObject *names, PyObject *varnames, PyObject *freevars, PyObject *cellvars, PyObject *filename, PyObject *name, PyObject *qualname, int firstlineno, PyObject *linetable, PyObject *exceptiontable)
// Similar to :c:func:`PyUnstable_Code_New`, but with an extra "posonlyargcount" for positional-only arguments.
// The same caveats that apply to “PyUnstable_Code_New“ also apply to this function.
//
// .. index:: single: PyCode_NewWithPosOnlyArgs (C function)
//
// Added “qualname“ and  “exceptiontable“ parameters.
//
// Renamed to “PyUnstable_Code_NewWithPosOnlyArgs“.
// The old name is deprecated, but will remain available until the
// signature changes again.
//
//go:linkname UnstableCodeNewWithPosOnlyArgs C.PyUnstable_Code_NewWithPosOnlyArgs
func UnstableCodeNewWithPosOnlyArgs(argcount Int, posonlyargcount Int, kwonlyargcount Int, nlocals Int, stacksize Int, flags Int, code *Object, consts *Object, names *Object, varnames *Object, freevars *Object, cellvars *Object, filename *Object, name *Object, qualname *Object, firstlineno Int, linetable *Object, exceptiontable *Object) *CodeObject

// PyCodeObject* PyCode_NewEmpty(const char *filename, const char *funcname, int firstlineno)
// Return a new empty code object with the specified filename,
// function name, and first line number. The resulting code
// object will raise an “Exception“ if executed.
//
//go:linkname CodeNewEmpty C.PyCode_NewEmpty
func CodeNewEmpty(filename *Char, funcname *Char, firstlineno Int) *CodeObject

// int PyCode_Addr2Line(PyCodeObject *co, int byte_offset)
// Return the line number of the instruction that occurs on or before “byte_offset“ and ends after it.
// If you just need the line number of a frame, use :c:func:`PyFrame_GetLineNumber` instead.
//
// For efficiently iterating over the line numbers in a code object, use :pep:`the API described in PEP 626
// <0626#out-of-process-debuggers-and-profilers>`.
//
//go:linkname CodeAddr2Line C.PyCode_Addr2Line
func CodeAddr2Line(co *CodeObject, byteOffset Int) Int

// int PyCode_Addr2Location(PyObject *co, int byte_offset, int *start_line, int *start_column, int *end_line, int *end_column)
// Sets the passed “int“ pointers to the source code line and column numbers
// for the instruction at “byte_offset“. Sets the value to “0“ when
// information is not available for any particular element.
//
// Returns “1“ if the function succeeds and 0 otherwise.
//
//go:linkname CodeAddr2Location C.PyCode_Addr2Location
func CodeAddr2Location(co *Object, byteOffset Int, startLine *Int, startColumn *Int, endLine *Int, endColumn *Int) Int

// PyObject* PyCode_GetCode(PyCodeObject *co)
// Equivalent to the Python code “getattr(co, 'co_code')“.
// Returns a strong reference to a :c:type:`PyBytesObject` representing the
// bytecode in a code object. On error, “NULL“ is returned and an exception
// is raised.
//
// This “PyBytesObject“ may be created on-demand by the interpreter and does
// not necessarily represent the bytecode actually executed by CPython. The
// primary use case for this function is debuggers and profilers.
//
//go:linkname CodeGetCode C.PyCode_GetCode
func CodeGetCode(co *CodeObject) *Object

// PyObject* PyCode_GetVarnames(PyCodeObject *co)
// Equivalent to the Python code “getattr(co, 'co_varnames')“.
// Returns a new reference to a :c:type:`PyTupleObject` containing the names of
// the local variables. On error, “NULL“ is returned and an exception
// is raised.
//
//go:linkname CodeGetVarnames C.PyCode_GetVarnames
func CodeGetVarnames(co *CodeObject) *Object

// PyObject* PyCode_GetCellvars(PyCodeObject *co)
// Equivalent to the Python code “getattr(co, 'co_cellvars')“.
// Returns a new reference to a :c:type:`PyTupleObject` containing the names of
// the local variables that are referenced by nested functions. On error, “NULL“
// is returned and an exception is raised.
//
//go:linkname CodeGetCellvars C.PyCode_GetCellvars
func CodeGetCellvars(co *CodeObject) *Object

// PyObject* PyCode_GetFreevars(PyCodeObject *co)
// Equivalent to the Python code “getattr(co, 'co_freevars')“.
// Returns a new reference to a :c:type:`PyTupleObject` containing the names of
// the :term:`free (closure) variables <closure variable>`. On error, “NULL“ is returned
// and an exception is raised.
//
//go:linkname CodeGetFreevars C.PyCode_GetFreevars
func CodeGetFreevars(co *CodeObject) *Object

// int PyCode_AddWatcher(PyCode_WatchCallback callback)
// Register *callback* as a code object watcher for the current interpreter.
// Return an ID which may be passed to :c:func:`PyCode_ClearWatcher`.
// In case of error (e.g. no more watcher IDs available),
// return “-1“ and set an exception.
//
//go:linkname CodeAddWatcher C.PyCode_AddWatcher
func CodeAddWatcher(callback CodeWatchCallback) Int

// int PyCode_ClearWatcher(int watcher_id)
// Clear watcher identified by *watcher_id* previously returned from
// :c:func:`PyCode_AddWatcher` for the current interpreter.
// Return “0“ on success, or “-1“ and set an exception on error
// (e.g. if the given *watcher_id* was never registered.)
//
//go:linkname CodeClearWatcher C.PyCode_ClearWatcher
func CodeClearWatcher(watcherId Int) Int

// Py_ssize_t PyUnstable_Eval_RequestCodeExtraIndex(freefunc free)
// Return a new an opaque index value used to adding data to code objects.
//
// You generally call this function once (per interpreter) and use the result
// with “PyCode_GetExtra“ and “PyCode_SetExtra“ to manipulate
// data on individual code objects.
//
// If *free* is not “NULL“: when a code object is deallocated,
// *free* will be called on non-“NULL“ data stored under the new index.
// Use :c:func:`Py_DecRef` when storing :c:type:`PyObject`.
//
// .. index:: single: _PyEval_RequestCodeExtraIndex (C function)
//
// Renamed to “PyUnstable_Eval_RequestCodeExtraIndex“.
// The old private name is deprecated, but will be available until the API
// changes.
//
//go:linkname UnstableEvalRequestCodeExtraIndex C.PyUnstable_Eval_RequestCodeExtraIndex
func UnstableEvalRequestCodeExtraIndex(free Freefunc) SSizeT

// int PyUnstable_Code_GetExtra(PyObject *code, Py_ssize_t index, void **extra)
// Set *extra* to the extra data stored under the given index.
// Return 0 on success. Set an exception and return -1 on failure.
//
// If no data was set under the index, set *extra* to “NULL“ and return
// 0 without setting an exception.
//
// .. index:: single: _PyCode_GetExtra (C function)
//
// Renamed to “PyUnstable_Code_GetExtra“.
// The old private name is deprecated, but will be available until the API
// changes.
//
//go:linkname UnstableCodeGetExtra C.PyUnstable_Code_GetExtra
func UnstableCodeGetExtra(code *Object, index SSizeT, extra *Pointer) Int

// int PyUnstable_Code_SetExtra(PyObject *code, Py_ssize_t index, void *extra)
// Set the extra data stored under the given index to *extra*.
// Return 0 on success. Set an exception and return -1 on failure.
//
// .. index:: single: _PyCode_SetExtra (C function)
//
// Renamed to “PyUnstable_Code_SetExtra“.
// The old private name is deprecated, but will be available until the API
// changes.
//
//go:linkname UnstableCodeSetExtra C.PyUnstable_Code_SetExtra
func UnstableCodeSetExtra(code *Object, index SSizeT, extra Pointer) Int

// PyCodeObject
// The C structure of the objects used to describe code objects.  The
// fields of this type are subject to change at any time.
type CodeObject = C.PyCodeObject

// PyCodeEvent
// Enumeration of possible code object watcher events:
// - “PY_CODE_EVENT_CREATE“
// - “PY_CODE_EVENT_DESTROY“
type CodeEvent = C.PyCodeEvent

// int (*PyCode_WatchCallback)(PyCodeEvent event, PyCodeObject* co)
// Type of a code object watcher callback function.
//
// If *event* is “PY_CODE_EVENT_CREATE“, then the callback is invoked
// after `co` has been fully initialized. Otherwise, the callback is invoked
// before the destruction of *co* takes place, so the prior state of *co*
// can be inspected.
//
// If *event* is “PY_CODE_EVENT_DESTROY“, taking a reference in the callback
// to the about-to-be-destroyed code object will resurrect it and prevent it
// from being freed at this time. When the resurrected object is destroyed
// later, any watcher callbacks active at that time will be called again.
//
// Users of this API should not rely on internal runtime implementation
// details. Such details may include, but are not limited to, the exact
// order and timing of creation and destruction of code objects. While
// changes in these details may result in differences observable by watchers
// (including whether a callback is invoked or not), it does not change
// the semantics of the Python code being executed.
//
// If the callback sets an exception, it must return “-1“; this exception will
// be printed as an unraisable exception using :c:func:`PyErr_WriteUnraisable`.
// Otherwise it should return “0“.
//
// There may already be a pending exception set on entry to the callback. In
// this case, the callback should return “0“ with the same exception still
// set. This means the callback may not call any other API that can set an
// exception unless it saves and clears the exception state first, and restores
// it before returning.
//
// Extra information
// -----------------
//
// To support low-level extensions to frame evaluation, such as external
// just-in-time compilers, it is possible to attach arbitrary extra data to
// code objects.
//
// These functions are part of the unstable C API tier:
// this functionality is a CPython implementation detail, and the API
// may change without deprecation warnings.
// llgo:type C
type CodeWatchCallback func(event CodeEvent, co *CodeObject) Int

// PyTypeObject PyCode_Type
// This is an instance of :c:type:`PyTypeObject` representing the Python
// :ref:`code object <code-objects>`.
func CodeType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyCode_Type))
}
