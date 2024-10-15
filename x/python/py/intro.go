package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// Py_ssize_t
// A signed integral type such that “sizeof(Py_ssize_t) == sizeof(size_t)“.
// C99 doesn't define such a thing directly (size_t is an unsigned integral type).
// See :pep:`353` for details. “PY_SSIZE_T_MAX“ is the largest positive value
// of type :c:type:`Py_ssize_t`.
//
// .. _api-exceptions:
//
// Exceptions
// ==========
//
// The Python programmer only needs to deal with exceptions if specific  error
// handling is required; unhandled exceptions are automatically  propagated to the
// caller, then to the caller's caller, and so on, until they reach the top-level
// interpreter, where they are reported to the  user accompanied by a stack
// traceback.
//
// .. index:: single: PyErr_Occurred (C function)
//
// For C programmers, however, error checking always has to be explicit.  All
// functions in the Python/C API can raise exceptions, unless an explicit claim is
// made otherwise in a function's documentation.  In general, when a function
// encounters an error, it sets an exception, discards any object references that
// it owns, and returns an error indicator.  If not documented otherwise, this
// indicator is either “NULL“ or “-1“, depending on the function's return type.
// A few functions return a Boolean true/false result, with false indicating an
// error.  Very few functions return no explicit error indicator or have an
// ambiguous return value, and require explicit testing for errors with
// :c:func:`PyErr_Occurred`.  These exceptions are always explicitly documented.
//
// .. index::
// single: PyErr_SetString (C function)
// single: PyErr_Clear (C function)
//
// Exception state is maintained in per-thread storage (this is  equivalent to
// using global storage in an unthreaded application).  A  thread can be in one of
// two states: an exception has occurred, or not. The function
// :c:func:`PyErr_Occurred` can be used to check for this: it returns a borrowed
// reference to the exception type object when an exception has occurred, and
// “NULL“ otherwise.  There are a number of functions to set the exception state:
// :c:func:`PyErr_SetString` is the most common (though not the most general)
// function to set the exception state, and :c:func:`PyErr_Clear` clears the
// exception state.
//
// The full exception state consists of three objects (all of which can  be
// “NULL“): the exception type, the corresponding exception  value, and the
// traceback.  These have the same meanings as the Python result of
// “sys.exc_info()“; however, they are not the same: the Python objects represent
// the last exception being handled by a Python  :keyword:`try` ...
// :keyword:`except` statement, while the C level exception state only exists while
// an exception is being passed on between C functions until it reaches the Python
// bytecode interpreter's  main loop, which takes care of transferring it to
// “sys.exc_info()“ and friends.
//
// .. index:: single: exc_info (in module sys)
//
// Note that starting with Python 1.5, the preferred, thread-safe way to access the
// exception state from Python code is to call the function :func:`sys.exc_info`,
// which returns the per-thread exception state for Python code.  Also, the
// semantics of both ways to access the exception state have changed so that a
// function which catches an exception will save and restore its thread's exception
// state so as to preserve the exception state of its caller.  This prevents common
// bugs in exception handling code caused by an innocent-looking function
// overwriting the exception being handled; it also reduces the often unwanted
// lifetime extension for objects that are referenced by the stack frames in the
// traceback.
//
// As a general principle, a function that calls another function to  perform some
// task should check whether the called function raised an  exception, and if so,
// pass the exception state on to its caller.  It  should discard any object
// references that it owns, and return an  error indicator, but it should *not* set
// another exception --- that would overwrite the exception that was just raised,
// and lose important information about the exact cause of the error.
//
// .. index:: single: sum_sequence()
//
// A simple example of detecting exceptions and passing them on is shown in the
// :c:func:`!sum_sequence` example above.  It so happens that this example doesn't
// need to clean up any owned references when it detects an error.  The following
// example function shows some error cleanup.  First, to remind you why you like
// Python, we show the equivalent Python code::
//
// def incr_item(dict, key):
// try:
// item = dict[key]
// except KeyError:
// item = 0
// dict[key] = item + 1
//
// .. index:: single: incr_item()
//
// Here is the corresponding C code, in all its glory::
//
// int
// incr_item(PyObject *dict, PyObject *key)
// {
// /* Objects all initialized to NULL for Py_XDECREF */
// PyObject *item = NULL, *const_one = NULL, *incremented_item = NULL;
// int rv = -1; /* Return value initialized to -1 (failure) */
//
// item = PyObject_GetItem(dict, key);
// if (item == NULL) {
// /* Handle KeyError only: */
// if (!PyErr_ExceptionMatches(PyExc_KeyError))
// goto error;
//
// /* Clear the error and use zero: */
// PyErr_Clear();
// item = PyLong_FromLong(0L);
// if (item == NULL)
// goto error;
// }
// const_one = PyLong_FromLong(1L);
// if (const_one == NULL)
// goto error;
//
// incremented_item = PyNumber_Add(item, const_one);
// if (incremented_item == NULL)
// goto error;
//
// if (PyObject_SetItem(dict, key, incremented_item) < 0)
// goto error;
// rv = 0; /* Success */
// /* Continue with cleanup code */
//
// error:
// /* Cleanup code, shared by success and failure path */
//
// /* Use Py_XDECREF() to ignore NULL references */
// Py_XDECREF(item);
// Py_XDECREF(const_one);
// Py_XDECREF(incremented_item);
//
// return rv; /* -1 for error, 0 for success */
// }
//
// .. index:: single: incr_item()
//
// .. index::
// single: PyErr_ExceptionMatches (C function)
// single: PyErr_Clear (C function)
// single: Py_XDECREF (C function)
//
// This example represents an endorsed use of the “goto“ statement  in C!
// It illustrates the use of :c:func:`PyErr_ExceptionMatches` and
// :c:func:`PyErr_Clear` to handle specific exceptions, and the use of
// :c:func:`Py_XDECREF` to dispose of owned references that may be “NULL“ (note the
// “'X'“ in the name; :c:func:`Py_DECREF` would crash when confronted with a
// “NULL“ reference).  It is important that the variables used to hold owned
// references are initialized to “NULL“ for this to work; likewise, the proposed
// return value is initialized to “-1“ (failure) and only set to success after
// the final call made is successful.
//
// .. _api-embedding:
//
// Embedding Python
// ================
//
// The one important task that only embedders (as opposed to extension writers) of
// the Python interpreter have to worry about is the initialization, and possibly
// the finalization, of the Python interpreter.  Most functionality of the
// interpreter can only be used after the interpreter has been initialized.
//
// .. index::
// single: Py_Initialize (C function)
// pair: module; builtins
// pair: module; __main__
// pair: module; sys
// triple: module; search; path
// single: path (in module sys)
//
// The basic initialization function is :c:func:`Py_Initialize`. This initializes
// the table of loaded modules, and creates the fundamental modules
// :mod:`builtins`, :mod:`__main__`, and :mod:`sys`.  It also
// initializes the module search path (“sys.path“).
//
// :c:func:`Py_Initialize` does not set the "script argument list"  (“sys.argv“).
// If this variable is needed by Python code that will be executed later, setting
// :c:member:`PyConfig.argv` and :c:member:`PyConfig.parse_argv` must be set: see
// :ref:`Python Initialization Configuration <init-config>`.
//
// On most systems (in particular, on Unix and Windows, although the details are
// slightly different), :c:func:`Py_Initialize` calculates the module search path
// based upon its best guess for the location of the standard Python interpreter
// executable, assuming that the Python library is found in a fixed location
// relative to the Python interpreter executable.  In particular, it looks for a
// directory named :file:`lib/python{X.Y}` relative to the parent directory
// where the executable named :file:`python` is found on the shell command search
// path (the environment variable :envvar:`PATH`).
//
// For instance, if the Python executable is found in
// :file:`/usr/local/bin/python`, it will assume that the libraries are in
// :file:`/usr/local/lib/python{X.Y}`.  (In fact, this particular path is also
// the "fallback" location, used when no executable file named :file:`python` is
// found along :envvar:`PATH`.)  The user can override this behavior by setting the
// environment variable :envvar:`PYTHONHOME`, or insert additional directories in
// front of the standard path by setting :envvar:`PYTHONPATH`.
//
// .. index::
// single: Py_GetPath (C function)
// single: Py_GetPrefix (C function)
// single: Py_GetExecPrefix (C function)
// single: Py_GetProgramFullPath (C function)
//
// The embedding application can steer the search by setting
// :c:member:`PyConfig.program_name` *before* calling
// :c:func:`Py_InitializeFromConfig`. Note that
// :envvar:`PYTHONHOME` still overrides this and :envvar:`PYTHONPATH` is still
// inserted in front of the standard path.  An application that requires total
// control has to provide its own implementation of :c:func:`Py_GetPath`,
// :c:func:`Py_GetPrefix`, :c:func:`Py_GetExecPrefix`, and
// :c:func:`Py_GetProgramFullPath` (all defined in :file:`Modules/getpath.c`).
//
// .. index:: single: Py_IsInitialized (C function)
//
// Sometimes, it is desirable to "uninitialize" Python.  For instance,  the
// application may want to start over (make another call to
// :c:func:`Py_Initialize`) or the application is simply done with its  use of
// Python and wants to free memory allocated by Python.  This can be accomplished
// by calling :c:func:`Py_FinalizeEx`.  The function :c:func:`Py_IsInitialized` returns
// true if Python is currently in the initialized state.  More information about
// these functions is given in a later chapter. Notice that :c:func:`Py_FinalizeEx`
// does *not* free all memory allocated by the Python interpreter, e.g. memory
// allocated by extension modules currently cannot be released.
//
// .. _api-debugging:
//
// Debugging Builds
// ================
//
// Python can be built with several macros to enable extra checks of the
// interpreter and extension modules.  These checks tend to add a large amount of
// overhead to the runtime so they are not enabled by default.
//
// A full list of the various types of debugging builds is in the file
// :file:`Misc/SpecialBuilds.txt` in the Python source distribution. Builds are
// available that support tracing of reference counts, debugging the memory
// allocator, or low-level profiling of the main interpreter loop.  Only the most
// frequently used builds will be described in the remainder of this section.
type SsizeT = C.Py_ssize_t
