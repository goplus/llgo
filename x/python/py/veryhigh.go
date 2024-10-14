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

// int PyRun_AnyFile(FILE *fp, const char *filename)
// This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving
// *closeit* set to “0“ and *flags* set to “NULL“.
//
//go:linkname RunAnyFile C.PyRun_AnyFile
func RunAnyFile(fp c.FilePtr, filename *c.Char) c.Int

// int PyRun_AnyFileFlags(FILE *fp, const char *filename, PyCompilerFlags *flags)
// This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving
// the *closeit* argument set to “0“.
//
//go:linkname RunAnyFileFlags C.PyRun_AnyFileFlags
func RunAnyFileFlags(fp c.FilePtr, filename *c.Char, flags *CompilerFlags) c.Int

// int PyRun_AnyFileEx(FILE *fp, const char *filename, int closeit)
// This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving
// the *flags* argument set to “NULL“.
//
//go:linkname RunAnyFileEx C.PyRun_AnyFileEx
func RunAnyFileEx(fp c.FilePtr, filename *c.Char, closeit c.Int) c.Int

// int PyRun_AnyFileExFlags(FILE *fp, const char *filename, int closeit, PyCompilerFlags *flags)
// If *fp* refers to a file associated with an interactive device (console or
// terminal input or Unix pseudo-terminal), return the value of
// :c:func:`PyRun_InteractiveLoop`, otherwise return the result of
// :c:func:`PyRun_SimpleFile`.  *filename* is decoded from the filesystem
// encoding (:func:`sys.getfilesystemencoding`).  If *filename* is “NULL“, this
// function uses “"???"“ as the filename.
// If *closeit* is true, the file is closed before
// “PyRun_SimpleFileExFlags()“ returns.
//
//go:linkname RunAnyFileExFlags C.PyRun_AnyFileExFlags
func RunAnyFileExFlags(fp c.FilePtr, filename *c.Char, closeit c.Int, flags *CompilerFlags) c.Int

// int PyRun_SimpleString(const char *command)
// This is a simplified interface to :c:func:`PyRun_SimpleStringFlags` below,
// leaving the :c:struct:`PyCompilerFlags`\* argument set to “NULL“.
//
//go:linkname RunSimpleString C.PyRun_SimpleString
func RunSimpleString(command *c.Char) c.Int

// int PyRun_SimpleStringFlags(const char *command, PyCompilerFlags *flags)
// Executes the Python source code from *command* in the :mod:`__main__` module
// according to the *flags* argument. If :mod:`__main__` does not already exist, it
// is created.  Returns “0“ on success or “-1“ if an exception was raised.  If
// there was an error, there is no way to get the exception information. For the
// meaning of *flags*, see below.
//
// Note that if an otherwise unhandled :exc:`SystemExit` is raised, this
// function will not return “-1“, but exit the process, as long as
// :c:member:`PyConfig.inspect` is zero.
//
//go:linkname RunSimpleStringFlags C.PyRun_SimpleStringFlags
func RunSimpleStringFlags(command *c.Char, flags *CompilerFlags) c.Int

// int PyRun_SimpleFile(FILE *fp, const char *filename)
// This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below,
// leaving *closeit* set to “0“ and *flags* set to “NULL“.
//
//go:linkname RunSimpleFile C.PyRun_SimpleFile
func RunSimpleFile(fp c.FilePtr, filename *c.Char) c.Int

// int PyRun_SimpleFileEx(FILE *fp, const char *filename, int closeit)
// This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below,
// leaving *flags* set to “NULL“.
//
//go:linkname RunSimpleFileEx C.PyRun_SimpleFileEx
func RunSimpleFileEx(fp c.FilePtr, filename *c.Char, closeit c.Int) c.Int

// int PyRun_SimpleFileExFlags(FILE *fp, const char *filename, int closeit, PyCompilerFlags *flags)
// Similar to :c:func:`PyRun_SimpleStringFlags`, but the Python source code is read
// from *fp* instead of an in-memory string. *filename* should be the name of
// the file, it is decoded from :term:`filesystem encoding and error handler`.
// If *closeit* is true, the file is closed before
// “PyRun_SimpleFileExFlags()“ returns.
//
// .. note::
// On Windows, *fp* should be opened as binary mode (e.g. “fopen(filename, "rb")“).
// Otherwise, Python may not handle script file with LF line ending correctly.
//
//go:linkname RunSimpleFileExFlags C.PyRun_SimpleFileExFlags
func RunSimpleFileExFlags(fp c.FilePtr, filename *c.Char, closeit c.Int, flags *CompilerFlags) c.Int

// int PyRun_InteractiveOne(FILE *fp, const char *filename)
// This is a simplified interface to :c:func:`PyRun_InteractiveOneFlags` below,
// leaving *flags* set to “NULL“.
//
//go:linkname RunInteractiveOne C.PyRun_InteractiveOne
func RunInteractiveOne(fp c.FilePtr, filename *c.Char) c.Int

// int PyRun_InteractiveOneFlags(FILE *fp, const char *filename, PyCompilerFlags *flags)
// Read and execute a single statement from a file associated with an
// interactive device according to the *flags* argument.  The user will be
// prompted using “sys.ps1“ and “sys.ps2“.  *filename* is decoded from the
// :term:`filesystem encoding and error handler`.
//
// Returns “0“ when the input was
// executed successfully, “-1“ if there was an exception, or an error code
// from the :file:`errcode.h` include file distributed as part of Python if
// there was a parse error.  (Note that :file:`errcode.h` is not included by
// :file:`Python.h`, so must be included specifically if needed.)
//
//go:linkname RunInteractiveOneFlags C.PyRun_InteractiveOneFlags
func RunInteractiveOneFlags(fp c.FilePtr, filename *c.Char, flags *CompilerFlags) c.Int

// int PyRun_InteractiveLoop(FILE *fp, const char *filename)
// This is a simplified interface to :c:func:`PyRun_InteractiveLoopFlags` below,
// leaving *flags* set to “NULL“.
//
//go:linkname RunInteractiveLoop C.PyRun_InteractiveLoop
func RunInteractiveLoop(fp c.FilePtr, filename *c.Char) c.Int

// int PyRun_InteractiveLoopFlags(FILE *fp, const char *filename, PyCompilerFlags *flags)
// Read and execute statements from a file associated with an interactive device
// until EOF is reached.  The user will be prompted using “sys.ps1“ and
// “sys.ps2“.  *filename* is decoded from the :term:`filesystem encoding and
// error handler`.  Returns “0“ at EOF or a negative number upon failure.
//
//go:linkname RunInteractiveLoopFlags C.PyRun_InteractiveLoopFlags
func RunInteractiveLoopFlags(fp c.FilePtr, filename *c.Char, flags *CompilerFlags) c.Int

// PyObject* PyRun_String(const char *str, int start, PyObject *globals, PyObject *locals)
// This is a simplified interface to :c:func:`PyRun_StringFlags` below, leaving
// *flags* set to “NULL“.
//
//go:linkname RunString C.PyRun_String
func RunString(str *c.Char, start c.Int, globals *Object, locals *Object) *Object

// PyObject* PyRun_StringFlags(const char *str, int start, PyObject *globals, PyObject *locals, PyCompilerFlags *flags)
// Execute Python source code from *str* in the context specified by the
// objects *globals* and *locals* with the compiler flags specified by
// *flags*.  *globals* must be a dictionary; *locals* can be any object
// that implements the mapping protocol.  The parameter *start* specifies
// the start token that should be used to parse the source code.
//
// Returns the result of executing the code as a Python object, or “NULL“ if an
// exception was raised.
//
//go:linkname RunStringFlags C.PyRun_StringFlags
func RunStringFlags(str *c.Char, start c.Int, globals *Object, locals *Object, flags *CompilerFlags) *Object

// PyObject* PyRun_File(FILE *fp, const char *filename, int start, PyObject *globals, PyObject *locals)
// This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving
// *closeit* set to “0“ and *flags* set to “NULL“.
//
//go:linkname RunFile C.PyRun_File
func RunFile(fp c.FilePtr, filename *c.Char, start c.Int, globals *Object, locals *Object) *Object

// PyObject* PyRun_FileEx(FILE *fp, const char *filename, int start, PyObject *globals, PyObject *locals, int closeit)
// This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving
// *flags* set to “NULL“.
//
//go:linkname RunFileEx C.PyRun_FileEx
func RunFileEx(fp c.FilePtr, filename *c.Char, start c.Int, globals *Object, locals *Object, closeit c.Int) *Object

// PyObject* PyRun_FileFlags(FILE *fp, const char *filename, int start, PyObject *globals, PyObject *locals, PyCompilerFlags *flags)
// This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving
// *closeit* set to “0“.
//
//go:linkname RunFileFlags C.PyRun_FileFlags
func RunFileFlags(fp c.FilePtr, filename *c.Char, start c.Int, globals *Object, locals *Object, flags *CompilerFlags) *Object

// PyObject* PyRun_FileExFlags(FILE *fp, const char *filename, int start, PyObject *globals, PyObject *locals, int closeit, PyCompilerFlags *flags)
// Similar to :c:func:`PyRun_StringFlags`, but the Python source code is read from
// *fp* instead of an in-memory string. *filename* should be the name of the file,
// it is decoded from the :term:`filesystem encoding and error handler`.
// If *closeit* is true, the file is closed before :c:func:`PyRun_FileExFlags`
// returns.
//
//go:linkname RunFileExFlags C.PyRun_FileExFlags
func RunFileExFlags(fp c.FilePtr, filename *c.Char, start c.Int, globals *Object, locals *Object, closeit c.Int, flags *CompilerFlags) *Object

// PyObject* Py_CompileString(const char *str, const char *filename, int start)
// This is a simplified interface to :c:func:`Py_CompileStringFlags` below, leaving
// *flags* set to “NULL“.
//
//go:linkname CompileString C.Py_CompileString
func CompileString(str *c.Char, filename *c.Char, start c.Int) *Object

// PyObject* Py_CompileStringFlags(const char *str, const char *filename, int start, PyCompilerFlags *flags)
// This is a simplified interface to :c:func:`Py_CompileStringExFlags` below, with
// *optimize* set to “-1“.
//
//go:linkname CompileStringFlags C.Py_CompileStringFlags
func CompileStringFlags(str *c.Char, filename *c.Char, start c.Int, flags *CompilerFlags) *Object

// PyObject* Py_CompileStringObject(const char *str, PyObject *filename, int start, PyCompilerFlags *flags, int optimize)
// Parse and compile the Python source code in *str*, returning the resulting code
// object.  The start token is given by *start*; this can be used to constrain the
// code which can be compiled and should be :c:data:`Py_eval_input`,
// :c:data:`Py_file_input`, or :c:data:`Py_single_input`.  The filename specified by
// *filename* is used to construct the code object and may appear in tracebacks or
// :exc:`SyntaxError` exception messages.  This returns “NULL“ if the code
// cannot be parsed or compiled.
//
// The integer *optimize* specifies the optimization level of the compiler; a
// value of “-1“ selects the optimization level of the interpreter as given by
// :option:`-O` options.  Explicit levels are “0“ (no optimization;
// “__debug__“ is true), “1“ (asserts are removed, “__debug__“ is false)
// or “2“ (docstrings are removed too).
//
//go:linkname CompileStringObject C.Py_CompileStringObject
func CompileStringObject(str *c.Char, filename *Object, start c.Int, flags *CompilerFlags, optimize c.Int) *Object

// PyObject* Py_CompileStringExFlags(const char *str, const char *filename, int start, PyCompilerFlags *flags, int optimize)
// Like :c:func:`Py_CompileStringObject`, but *filename* is a byte string
// decoded from the :term:`filesystem encoding and error handler`.
//
//go:linkname CompileStringExFlags C.Py_CompileStringExFlags
func CompileStringExFlags(str *c.Char, filename *c.Char, start c.Int, flags *CompilerFlags, optimize c.Int) *Object

// PyObject* PyEval_EvalCode(PyObject *co, PyObject *globals, PyObject *locals)
// This is a simplified interface to :c:func:`PyEval_EvalCodeEx`, with just
// the code object, and global and local variables.  The other arguments are
// set to “NULL“.
//
//go:linkname EvalEvalCode C.PyEval_EvalCode
func EvalEvalCode(co *Object, globals *Object, locals *Object) *Object

// PyObject* PyEval_EvalCodeEx(PyObject *co, PyObject *globals, PyObject *locals, PyObject *const *args, int argcount, PyObject *const *kws, int kwcount, PyObject *const *defs, int defcount, PyObject *kwdefs, PyObject *closure)
// Evaluate a precompiled code object, given a particular environment for its
// evaluation.  This environment consists of a dictionary of global variables,
// a mapping object of local variables, arrays of arguments, keywords and
// defaults, a dictionary of default values for :ref:`keyword-only
// <keyword-only_parameter>` arguments and a closure tuple of cells.
//
//go:linkname EvalEvalCodeEx C.PyEval_EvalCodeEx
func EvalEvalCodeEx(co *Object, globals *Object, locals *Object, args **Object, argcount c.Int, kws **Object, kwcount c.Int, defs **Object, defcount c.Int, kwdefs *Object, closure *Object) *Object

// PyObject* PyEval_EvalFrame(PyFrameObject *f)
// Evaluate an execution frame.  This is a simplified interface to
// :c:func:`PyEval_EvalFrameEx`, for backward compatibility.
//
//go:linkname EvalEvalFrame C.PyEval_EvalFrame
func EvalEvalFrame(f *FrameObject) *Object

// PyObject* PyEval_EvalFrameEx(PyFrameObject *f, int throwflag)
// This is the main, unvarnished function of Python interpretation.  The code
// object associated with the execution frame *f* is executed, interpreting
// bytecode and executing calls as needed.  The additional *throwflag*
// parameter can mostly be ignored - if true, then it causes an exception
// to immediately be thrown; this is used for the :meth:`~generator.throw`
// methods of generator objects.
//
// This function now includes a debug assertion to help ensure that it
// does not silently discard an active exception.
//
//go:linkname EvalEvalFrameEx C.PyEval_EvalFrameEx
func EvalEvalFrameEx(f *FrameObject, throwflag c.Int) *Object

// int PyEval_MergeCompilerFlags(PyCompilerFlags *cf)
// This function changes the flags of the current evaluation frame, and returns
// true on success, false on failure.
//
//go:linkname EvalMergeCompilerFlags C.PyEval_MergeCompilerFlags
func EvalMergeCompilerFlags(cf *CompilerFlags) c.Int

// struct PyCompilerFlags
// This is the structure used to hold compiler flags.  In cases where code is only
// being compiled, it is passed as “int flags“, and in cases where code is being
// executed, it is passed as “PyCompilerFlags *flags“.  In this case, “from
// __future__ import“ can modify *flags*.
//
// Whenever “PyCompilerFlags *flags“ is “NULL“, :c:member:`~PyCompilerFlags.cf_flags` is treated as
// equal to “0“, and any modification due to “from __future__ import“ is
// discarded.
type CompilerFlags = C.PyCompilerFlags

// int (*PyOS_InputHook)(void)
// Can be set to point to a function with the prototype
// “int func(void)“.  The function will be called when Python's
// interpreter prompt is about to become idle and wait for user input
// from the terminal.  The return value is ignored.  Overriding this
// hook can be used to integrate the interpreter's prompt with other
// event loops, as done in the :file:`Modules/_tkinter.c` in the
// Python source code.
//
// This function is only called from the
// :ref:`main interpreter <sub-interpreter-support>`.
var OSInputHook func() c.Int

// char* (*PyOS_ReadlineFunctionPointer)(FILE *, FILE *, const char *)
// Can be set to point to a function with the prototype
// “char *func(FILE *stdin, FILE *stdout, char *prompt)“,
// overriding the default function used to read a single line of input
// at the interpreter's prompt.  The function is expected to output
// the string *prompt* if it's not “NULL“, and then read a line of
// input from the provided standard input file, returning the
// resulting string.  For example, The :mod:`readline` module sets
// this hook to provide line-editing and tab-completion features.
//
// The result must be a string allocated by :c:func:`PyMem_RawMalloc` or
// :c:func:`PyMem_RawRealloc`, or “NULL“ if an error occurred.
//
// The result must be allocated by :c:func:`PyMem_RawMalloc` or
// :c:func:`PyMem_RawRealloc`, instead of being allocated by
// :c:func:`PyMem_Malloc` or :c:func:`PyMem_Realloc`.
//
// This function is only called from the
// :ref:`main interpreter <sub-interpreter-support>`.
var OSReadlineFunctionPointer func(c.FilePtr, c.FilePtr, *c.Char) *c.Char

// int CO_FUTURE_DIVISION
// This bit can be set in *flags* to cause division operator “/“ to be
// interpreted as "true division" according to :pep:`238`.
func COFUTUREDIVISION() c.Int {
	return c.Int(C.CO_FUTURE_DIVISION)
}
