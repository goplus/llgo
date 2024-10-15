package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int Py_Main(int argc, wchar_t **argv)
// The main program for the standard interpreter.  This is made available for
// programs which embed Python.  The *argc* and *argv* parameters should be
// prepared exactly as those which are passed to a C program's :c:func:`main`
// function (converted to wchar_t according to the user's locale).  It is
// important to note that the argument list may be modified (but the contents of
// the strings pointed to by the argument list are not). The return value will
// be “0“ if the interpreter exits normally (i.e., without an exception),
// “1“ if the interpreter exits due to an exception, or “2“ if the parameter
// list does not represent a valid Python command line.
//
// Note that if an otherwise unhandled :exc:`SystemExit` is raised, this
// function will not return “1“, but exit the process, as long as
// :c:member:`PyConfig.inspect` is zero.
//
//go:linkname Main Py_Main
func Main(argc Int, argv **Wchar) Int

// int Py_BytesMain(int argc, char **argv)
// Similar to :c:func:`Py_Main` but *argv* is an array of bytes strings.
//
//go:linkname BytesMain Py_BytesMain
func BytesMain(argc Int, argv **Char) Int

// int PyRun_AnyFile(FILE *fp, const char *filename)
// This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving
// *closeit* set to “0“ and *flags* set to “NULL“.
//
//go:linkname RunAnyFile PyRun_AnyFile
func RunAnyFile(fp FilePtr, filename *Char) Int

// int PyRun_AnyFileFlags(FILE *fp, const char *filename, PyCompilerFlags *flags)
// This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving
// the *closeit* argument set to “0“.
//
//go:linkname RunAnyFileFlags PyRun_AnyFileFlags
func RunAnyFileFlags(fp FilePtr, filename *Char, flags *CompilerFlags) Int

// int PyRun_AnyFileEx(FILE *fp, const char *filename, int closeit)
// This is a simplified interface to :c:func:`PyRun_AnyFileExFlags` below, leaving
// the *flags* argument set to “NULL“.
//
//go:linkname RunAnyFileEx PyRun_AnyFileEx
func RunAnyFileEx(fp FilePtr, filename *Char, closeit Int) Int

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
//go:linkname RunAnyFileExFlags PyRun_AnyFileExFlags
func RunAnyFileExFlags(fp FilePtr, filename *Char, closeit Int, flags *CompilerFlags) Int

// int PyRun_SimpleString(const char *command)
// This is a simplified interface to :c:func:`PyRun_SimpleStringFlags` below,
// leaving the :c:struct:`PyCompilerFlags`\* argument set to “NULL“.
//
//go:linkname RunSimpleString PyRun_SimpleString
func RunSimpleString(command *Char) Int

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
//go:linkname RunSimpleStringFlags PyRun_SimpleStringFlags
func RunSimpleStringFlags(command *Char, flags *CompilerFlags) Int

// int PyRun_SimpleFile(FILE *fp, const char *filename)
// This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below,
// leaving *closeit* set to “0“ and *flags* set to “NULL“.
//
//go:linkname RunSimpleFile PyRun_SimpleFile
func RunSimpleFile(fp FilePtr, filename *Char) Int

// int PyRun_SimpleFileEx(FILE *fp, const char *filename, int closeit)
// This is a simplified interface to :c:func:`PyRun_SimpleFileExFlags` below,
// leaving *flags* set to “NULL“.
//
//go:linkname RunSimpleFileEx PyRun_SimpleFileEx
func RunSimpleFileEx(fp FilePtr, filename *Char, closeit Int) Int

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
//go:linkname RunSimpleFileExFlags PyRun_SimpleFileExFlags
func RunSimpleFileExFlags(fp FilePtr, filename *Char, closeit Int, flags *CompilerFlags) Int

// int PyRun_InteractiveOne(FILE *fp, const char *filename)
// This is a simplified interface to :c:func:`PyRun_InteractiveOneFlags` below,
// leaving *flags* set to “NULL“.
//
//go:linkname RunInteractiveOne PyRun_InteractiveOne
func RunInteractiveOne(fp FilePtr, filename *Char) Int

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
//go:linkname RunInteractiveOneFlags PyRun_InteractiveOneFlags
func RunInteractiveOneFlags(fp FilePtr, filename *Char, flags *CompilerFlags) Int

// int PyRun_InteractiveLoop(FILE *fp, const char *filename)
// This is a simplified interface to :c:func:`PyRun_InteractiveLoopFlags` below,
// leaving *flags* set to “NULL“.
//
//go:linkname RunInteractiveLoop PyRun_InteractiveLoop
func RunInteractiveLoop(fp FilePtr, filename *Char) Int

// int PyRun_InteractiveLoopFlags(FILE *fp, const char *filename, PyCompilerFlags *flags)
// Read and execute statements from a file associated with an interactive device
// until EOF is reached.  The user will be prompted using “sys.ps1“ and
// “sys.ps2“.  *filename* is decoded from the :term:`filesystem encoding and
// error handler`.  Returns “0“ at EOF or a negative number upon failure.
//
//go:linkname RunInteractiveLoopFlags PyRun_InteractiveLoopFlags
func RunInteractiveLoopFlags(fp FilePtr, filename *Char, flags *CompilerFlags) Int

// PyObject* PyRun_String(const char *str, int start, PyObject *globals, PyObject *locals)
// This is a simplified interface to :c:func:`PyRun_StringFlags` below, leaving
// *flags* set to “NULL“.
//
//go:linkname RunString PyRun_String
func RunString(str *Char, start Int, globals *Object, locals *Object) *Object

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
//go:linkname RunStringFlags PyRun_StringFlags
func RunStringFlags(str *Char, start Int, globals *Object, locals *Object, flags *CompilerFlags) *Object

// PyObject* PyRun_File(FILE *fp, const char *filename, int start, PyObject *globals, PyObject *locals)
// This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving
// *closeit* set to “0“ and *flags* set to “NULL“.
//
//go:linkname RunFile PyRun_File
func RunFile(fp FilePtr, filename *Char, start Int, globals *Object, locals *Object) *Object

// PyObject* PyRun_FileEx(FILE *fp, const char *filename, int start, PyObject *globals, PyObject *locals, int closeit)
// This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving
// *flags* set to “NULL“.
//
//go:linkname RunFileEx PyRun_FileEx
func RunFileEx(fp FilePtr, filename *Char, start Int, globals *Object, locals *Object, closeit Int) *Object

// PyObject* PyRun_FileFlags(FILE *fp, const char *filename, int start, PyObject *globals, PyObject *locals, PyCompilerFlags *flags)
// This is a simplified interface to :c:func:`PyRun_FileExFlags` below, leaving
// *closeit* set to “0“.
//
//go:linkname RunFileFlags PyRun_FileFlags
func RunFileFlags(fp FilePtr, filename *Char, start Int, globals *Object, locals *Object, flags *CompilerFlags) *Object

// PyObject* PyRun_FileExFlags(FILE *fp, const char *filename, int start, PyObject *globals, PyObject *locals, int closeit, PyCompilerFlags *flags)
// Similar to :c:func:`PyRun_StringFlags`, but the Python source code is read from
// *fp* instead of an in-memory string. *filename* should be the name of the file,
// it is decoded from the :term:`filesystem encoding and error handler`.
// If *closeit* is true, the file is closed before :c:func:`PyRun_FileExFlags`
// returns.
//
//go:linkname RunFileExFlags PyRun_FileExFlags
func RunFileExFlags(fp FilePtr, filename *Char, start Int, globals *Object, locals *Object, closeit Int, flags *CompilerFlags) *Object

// PyObject* Py_CompileString(const char *str, const char *filename, int start)
// This is a simplified interface to :c:func:`Py_CompileStringFlags` below, leaving
// *flags* set to “NULL“.
//
//go:linkname CompileString Py_CompileString
func CompileString(str *Char, filename *Char, start Int) *Object

// PyObject* Py_CompileStringFlags(const char *str, const char *filename, int start, PyCompilerFlags *flags)
// This is a simplified interface to :c:func:`Py_CompileStringExFlags` below, with
// *optimize* set to “-1“.
//
//go:linkname CompileStringFlags Py_CompileStringFlags
func CompileStringFlags(str *Char, filename *Char, start Int, flags *CompilerFlags) *Object

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
//go:linkname CompileStringObject Py_CompileStringObject
func CompileStringObject(str *Char, filename *Object, start Int, flags *CompilerFlags, optimize Int) *Object

// PyObject* Py_CompileStringExFlags(const char *str, const char *filename, int start, PyCompilerFlags *flags, int optimize)
// Like :c:func:`Py_CompileStringObject`, but *filename* is a byte string
// decoded from the :term:`filesystem encoding and error handler`.
//
//go:linkname CompileStringExFlags Py_CompileStringExFlags
func CompileStringExFlags(str *Char, filename *Char, start Int, flags *CompilerFlags, optimize Int) *Object

// PyObject* PyEval_EvalCode(PyObject *co, PyObject *globals, PyObject *locals)
// This is a simplified interface to :c:func:`PyEval_EvalCodeEx`, with just
// the code object, and global and local variables.  The other arguments are
// set to “NULL“.
//
//go:linkname EvalEvalCode PyEval_EvalCode
func EvalEvalCode(co *Object, globals *Object, locals *Object) *Object

// PyObject* PyEval_EvalCodeEx(PyObject *co, PyObject *globals, PyObject *locals, PyObject *const *args, int argcount, PyObject *const *kws, int kwcount, PyObject *const *defs, int defcount, PyObject *kwdefs, PyObject *closure)
// Evaluate a precompiled code object, given a particular environment for its
// evaluation.  This environment consists of a dictionary of global variables,
// a mapping object of local variables, arrays of arguments, keywords and
// defaults, a dictionary of default values for :ref:`keyword-only
// <keyword-only_parameter>` arguments and a closure tuple of cells.
//
//go:linkname EvalEvalCodeEx PyEval_EvalCodeEx
func EvalEvalCodeEx(co *Object, globals *Object, locals *Object, args **Object, argcount Int, kws **Object, kwcount Int, defs **Object, defcount Int, kwdefs *Object, closure *Object) *Object

// PyObject* PyEval_EvalFrame(PyFrameObject *f)
// Evaluate an execution frame.  This is a simplified interface to
// :c:func:`PyEval_EvalFrameEx`, for backward compatibility.
//
//go:linkname EvalEvalFrame PyEval_EvalFrame
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
//go:linkname EvalEvalFrameEx PyEval_EvalFrameEx
func EvalEvalFrameEx(f *FrameObject, throwflag Int) *Object

// int PyEval_MergeCompilerFlags(PyCompilerFlags *cf)
// This function changes the flags of the current evaluation frame, and returns
// true on success, false on failure.
//
//go:linkname EvalMergeCompilerFlags PyEval_MergeCompilerFlags
func EvalMergeCompilerFlags(cf *CompilerFlags) Int

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
var OSInputHook func() Int

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
var OSReadlineFunctionPointer func(FilePtr, FilePtr, *Char) *Char

// int CO_FUTURE_DIVISION
// This bit can be set in *flags* to cause division operator “/“ to be
// interpreted as "true division" according to :pep:`238`.
func COFUTUREDIVISION() Int {
	return Int(C.CO_FUTURE_DIVISION)
}
