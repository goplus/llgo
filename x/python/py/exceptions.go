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

// void PyErr_Clear()
// Clear the error indicator.  If the error indicator is not set, there is no
// effect.
//
//go:linkname ErrClear C.PyErr_Clear
func ErrClear()

// void PyErr_PrintEx(int set_sys_last_vars)
// Print a standard traceback to “sys.stderr“ and clear the error indicator.
// **Unless** the error is a “SystemExit“, in that case no traceback is
// printed and the Python process will exit with the error code specified by
// the “SystemExit“ instance.
//
// Call this function **only** when the error indicator is set.  Otherwise it
// will cause a fatal error!
//
// If *set_sys_last_vars* is nonzero, the variable :data:`sys.last_exc` is
// set to the printed exception. For backwards compatibility, the
// deprecated variables :data:`sys.last_type`, :data:`sys.last_value` and
// :data:`sys.last_traceback` are also set to the type, value and traceback
// of this exception, respectively.
//
// The setting of :data:`sys.last_exc` was added.
//
//go:linkname ErrPrintEx C.PyErr_PrintEx
func ErrPrintEx(setSysLastVars c.Int)

// void PyErr_Print()
// Alias for “PyErr_PrintEx(1)“.
//
//go:linkname ErrPrint C.PyErr_Print
func ErrPrint()

// void PyErr_WriteUnraisable(PyObject *obj)
// Call :func:`sys.unraisablehook` using the current exception and *obj*
// argument.
//
// This utility function prints a warning message to “sys.stderr“ when an
// exception has been set but it is impossible for the interpreter to actually
// raise the exception.  It is used, for example, when an exception occurs in an
// :meth:`~object.__del__` method.
//
// The function is called with a single argument *obj* that identifies the context
// in which the unraisable exception occurred. If possible,
// the repr of *obj* will be printed in the warning message.
// If *obj* is “NULL“, only the traceback is printed.
//
// An exception must be set when calling this function.
//
// Print a traceback. Print only traceback if *obj* is “NULL“.
//
// Use :func:`sys.unraisablehook`.
//
//go:linkname ErrWriteUnraisable C.PyErr_WriteUnraisable
func ErrWriteUnraisable(obj *Object)

// void PyErr_DisplayException(PyObject *exc)
// Print the standard traceback display of “exc“ to “sys.stderr“, including
// chained exceptions and notes.
//
// Raising exceptions
// ==================
//
// These functions help you set the current thread's error indicator.
// For convenience, some of these functions will always return a
// “NULL“ pointer for use in a “return“ statement.
//
//go:linkname ErrDisplayException C.PyErr_DisplayException
func ErrDisplayException(exc *Object)

// void PyErr_SetString(PyObject *type, const char *message)
// This is the most common way to set the error indicator.  The first argument
// specifies the exception type; it is normally one of the standard exceptions,
// e.g. :c:data:`PyExc_RuntimeError`.  You need not create a new
// :term:`strong reference` to it (e.g. with :c:func:`Py_INCREF`).
// The second argument is an error message; it is decoded from “'utf-8'“.
//
//go:linkname ErrSetString C.PyErr_SetString
func ErrSetString(type_ *Object, message *c.Char)

// void PyErr_SetObject(PyObject *type, PyObject *value)
// This function is similar to :c:func:`PyErr_SetString` but lets you specify an
// arbitrary Python object for the "value" of the exception.
//
//go:linkname ErrSetObject C.PyErr_SetObject
func ErrSetObject(type_ *Object, value *Object)

// PyObject* PyErr_Format(PyObject *exception, const char *format, ...)
// This function sets the error indicator and returns “NULL“.  *exception*
// should be a Python exception class.  The *format* and subsequent
// parameters help format the error message; they have the same meaning and
// values as in :c:func:`PyUnicode_FromFormat`. *format* is an ASCII-encoded
// string.
//
//go:linkname ErrFormat C.PyErr_Format
func ErrFormat(exception *Object, format *c.Char, __llgo_va_list ...any) *Object

// void PyErr_SetNone(PyObject *type)
// This is a shorthand for “PyErr_SetObject(type, Py_None)“.
//
//go:linkname ErrSetNone C.PyErr_SetNone
func ErrSetNone(type_ *Object)

// int PyErr_BadArgument()
// This is a shorthand for “PyErr_SetString(PyExc_TypeError, message)“, where
// *message* indicates that a built-in operation was invoked with an illegal
// argument.  It is mostly for internal use.
//
//go:linkname ErrBadArgument C.PyErr_BadArgument
func ErrBadArgument() c.Int

// PyObject* PyErr_NoMemory()
// This is a shorthand for “PyErr_SetNone(PyExc_MemoryError)“; it returns “NULL“
// so an object allocation function can write “return PyErr_NoMemory();“ when it
// runs out of memory.
//
//go:linkname ErrNoMemory C.PyErr_NoMemory
func ErrNoMemory() *Object

// PyObject* PyErr_SetFromErrno(PyObject *type)
// .. index:: single: strerror (C function)
//
// This is a convenience function to raise an exception when a C library function
// has returned an error and set the C variable :c:data:`errno`.  It constructs a
// tuple object whose first item is the integer :c:data:`errno` value and whose
// second item is the corresponding error message (gotten from :c:func:`!strerror`),
// and then calls “PyErr_SetObject(type, object)“.  On Unix, when the
// :c:data:`errno` value is :c:macro:`!EINTR`, indicating an interrupted system call,
// this calls :c:func:`PyErr_CheckSignals`, and if that set the error indicator,
// leaves it set to that.  The function always returns “NULL“, so a wrapper
// function around a system call can write “return PyErr_SetFromErrno(type);“
// when the system call returns an error.
//
//go:linkname ErrSetFromErrno C.PyErr_SetFromErrno
func ErrSetFromErrno(type_ *Object) *Object

// PyObject* PyErr_SetFromErrnoWithFilenameObject(PyObject *type, PyObject *filenameObject)
// Similar to :c:func:`PyErr_SetFromErrno`, with the additional behavior that if
// *filenameObject* is not “NULL“, it is passed to the constructor of *type* as
// a third parameter.  In the case of :exc:`OSError` exception,
// this is used to define the :attr:`!filename` attribute of the
// exception instance.
//
//go:linkname ErrSetFromErrnoWithFilenameObject C.PyErr_SetFromErrnoWithFilenameObject
func ErrSetFromErrnoWithFilenameObject(type_ *Object, filenameObject *Object) *Object

// PyObject* PyErr_SetFromErrnoWithFilenameObjects(PyObject *type, PyObject *filenameObject, PyObject *filenameObject2)
// Similar to :c:func:`PyErr_SetFromErrnoWithFilenameObject`, but takes a second
// filename object, for raising errors when a function that takes two filenames
// fails.
//
//go:linkname ErrSetFromErrnoWithFilenameObjects C.PyErr_SetFromErrnoWithFilenameObjects
func ErrSetFromErrnoWithFilenameObjects(type_ *Object, filenameObject *Object, filenameObject2 *Object) *Object

// PyObject* PyErr_SetFromErrnoWithFilename(PyObject *type, const char *filename)
// Similar to :c:func:`PyErr_SetFromErrnoWithFilenameObject`, but the filename
// is given as a C string.  *filename* is decoded from the :term:`filesystem
// encoding and error handler`.
//
//go:linkname ErrSetFromErrnoWithFilename C.PyErr_SetFromErrnoWithFilename
func ErrSetFromErrnoWithFilename(type_ *Object, filename *c.Char) *Object

// PyObject* PyErr_SetFromWindowsErr(int ierr)
// This is a convenience function to raise :exc:`OSError`. If called with
// *ierr* of “0“, the error code returned by a call to :c:func:`!GetLastError`
// is used instead.  It calls the Win32 function :c:func:`!FormatMessage` to retrieve
// the Windows description of error code given by *ierr* or :c:func:`!GetLastError`,
// then it constructs a :exc:`OSError` object with the :attr:`~OSError.winerror`
// attribute set to the error code, the :attr:`~OSError.strerror` attribute
// set to the corresponding error message (gotten from
// :c:func:`!FormatMessage`), and then calls “PyErr_SetObject(PyExc_OSError,
// object)“. This function always returns “NULL“.
//
// .. availability:: Windows.
//
//go:linkname ErrSetFromWindowsErr C.PyErr_SetFromWindowsErr
func ErrSetFromWindowsErr(ierr c.Int) *Object

// PyObject* PyErr_SetExcFromWindowsErr(PyObject *type, int ierr)
// Similar to :c:func:`PyErr_SetFromWindowsErr`, with an additional parameter
// specifying the exception type to be raised.
//
// .. availability:: Windows.
//
//go:linkname ErrSetExcFromWindowsErr C.PyErr_SetExcFromWindowsErr
func ErrSetExcFromWindowsErr(type_ *Object, ierr c.Int) *Object

// PyObject* PyErr_SetFromWindowsErrWithFilename(int ierr, const char *filename)
// Similar to :c:func:`PyErr_SetFromWindowsErr`, with the additional behavior
// that if *filename* is not “NULL“, it is decoded from the filesystem
// encoding (:func:`os.fsdecode`) and passed to the constructor of
// :exc:`OSError` as a third parameter to be used to define the
// :attr:`!filename` attribute of the exception instance.
//
// .. availability:: Windows.
//
//go:linkname ErrSetFromWindowsErrWithFilename C.PyErr_SetFromWindowsErrWithFilename
func ErrSetFromWindowsErrWithFilename(ierr c.Int, filename *c.Char) *Object

// PyObject* PyErr_SetExcFromWindowsErrWithFilenameObject(PyObject *type, int ierr, PyObject *filename)
// Similar to :c:func:`PyErr_SetExcFromWindowsErr`, with the additional behavior
// that if *filename* is not “NULL“, it is passed to the constructor of
// :exc:`OSError` as a third parameter to be used to define the
// :attr:`!filename` attribute of the exception instance.
//
// .. availability:: Windows.
//
//go:linkname ErrSetExcFromWindowsErrWithFilenameObject C.PyErr_SetExcFromWindowsErrWithFilenameObject
func ErrSetExcFromWindowsErrWithFilenameObject(type_ *Object, ierr c.Int, filename *Object) *Object

// PyObject* PyErr_SetExcFromWindowsErrWithFilenameObjects(PyObject *type, int ierr, PyObject *filename, PyObject *filename2)
// Similar to :c:func:`PyErr_SetExcFromWindowsErrWithFilenameObject`,
// but accepts a second filename object.
//
// .. availability:: Windows.
//
//go:linkname ErrSetExcFromWindowsErrWithFilenameObjects C.PyErr_SetExcFromWindowsErrWithFilenameObjects
func ErrSetExcFromWindowsErrWithFilenameObjects(type_ *Object, ierr c.Int, filename *Object, filename2 *Object) *Object

// PyObject* PyErr_SetExcFromWindowsErrWithFilename(PyObject *type, int ierr, const char *filename)
// Similar to :c:func:`PyErr_SetFromWindowsErrWithFilename`, with an additional
// parameter specifying the exception type to be raised.
//
// .. availability:: Windows.
//
//go:linkname ErrSetExcFromWindowsErrWithFilename C.PyErr_SetExcFromWindowsErrWithFilename
func ErrSetExcFromWindowsErrWithFilename(type_ *Object, ierr c.Int, filename *c.Char) *Object

// PyObject* PyErr_SetImportError(PyObject *msg, PyObject *name, PyObject *path)
// This is a convenience function to raise :exc:`ImportError`. *msg* will be
// set as the exception's message string. *name* and *path*, both of which can
// be “NULL“, will be set as the :exc:`ImportError`'s respective “name“
// and “path“ attributes.
//
//go:linkname ErrSetImportError C.PyErr_SetImportError
func ErrSetImportError(msg *Object, name *Object, path *Object) *Object

// PyObject* PyErr_SetImportErrorSubclass(PyObject *exception, PyObject *msg, PyObject *name, PyObject *path)
// Much like :c:func:`PyErr_SetImportError` but this function allows for
// specifying a subclass of :exc:`ImportError` to raise.
//
//go:linkname ErrSetImportErrorSubclass C.PyErr_SetImportErrorSubclass
func ErrSetImportErrorSubclass(exception *Object, msg *Object, name *Object, path *Object) *Object

// void PyErr_SyntaxLocationObject(PyObject *filename, int lineno, int col_offset)
// Set file, line, and offset information for the current exception.  If the
// current exception is not a :exc:`SyntaxError`, then it sets additional
// attributes, which make the exception printing subsystem think the exception
// is a :exc:`SyntaxError`.
//
//go:linkname ErrSyntaxLocationObject C.PyErr_SyntaxLocationObject
func ErrSyntaxLocationObject(filename *Object, lineno c.Int, colOffset c.Int)

// void PyErr_SyntaxLocationEx(const char *filename, int lineno, int col_offset)
// Like :c:func:`PyErr_SyntaxLocationObject`, but *filename* is a byte string
// decoded from the :term:`filesystem encoding and error handler`.
//
//go:linkname ErrSyntaxLocationEx C.PyErr_SyntaxLocationEx
func ErrSyntaxLocationEx(filename *c.Char, lineno c.Int, colOffset c.Int)

// void PyErr_SyntaxLocation(const char *filename, int lineno)
// Like :c:func:`PyErr_SyntaxLocationEx`, but the *col_offset* parameter is
// omitted.
//
//go:linkname ErrSyntaxLocation C.PyErr_SyntaxLocation
func ErrSyntaxLocation(filename *c.Char, lineno c.Int)

// void PyErr_BadInternalCall()
// This is a shorthand for “PyErr_SetString(PyExc_SystemError, message)“,
// where *message* indicates that an internal operation (e.g. a Python/C API
// function) was invoked with an illegal argument.  It is mostly for internal
// use.
//
// Issuing warnings
// ================
//
// Use these functions to issue warnings from C code.  They mirror similar
// functions exported by the Python :mod:`warnings` module.  They normally
// print a warning message to *sys.stderr*; however, it is
// also possible that the user has specified that warnings are to be turned into
// errors, and in that case they will raise an exception.  It is also possible that
// the functions raise an exception because of a problem with the warning machinery.
// The return value is “0“ if no exception is raised, or “-1“ if an exception
// is raised.  (It is not possible to determine whether a warning message is
// actually printed, nor what the reason is for the exception; this is
// intentional.)  If an exception is raised, the caller should do its normal
// exception handling (for example, :c:func:`Py_DECREF` owned references and return
// an error value).
//
//go:linkname ErrBadInternalCall C.PyErr_BadInternalCall
func ErrBadInternalCall()

// int PyErr_WarnEx(PyObject *category, const char *message, Py_ssize_t stack_level)
// Issue a warning message.  The *category* argument is a warning category (see
// below) or “NULL“; the *message* argument is a UTF-8 encoded string.  *stack_level* is a
// positive number giving a number of stack frames; the warning will be issued from
// the  currently executing line of code in that stack frame.  A *stack_level* of 1
// is the function calling :c:func:`PyErr_WarnEx`, 2 is  the function above that,
// and so forth.
//
// Warning categories must be subclasses of :c:data:`PyExc_Warning`;
// :c:data:`PyExc_Warning` is a subclass of :c:data:`PyExc_Exception`;
// the default warning category is :c:data:`PyExc_RuntimeWarning`. The standard
// Python warning categories are available as global variables whose names are
// enumerated at :ref:`standardwarningcategories`.
//
// For information about warning control, see the documentation for the
// :mod:`warnings` module and the :option:`-W` option in the command line
// documentation.  There is no C API for warning control.
//
//go:linkname ErrWarnEx C.PyErr_WarnEx
func ErrWarnEx(category *Object, message *c.Char, stackLevel SSizeT) c.Int

// int PyErr_WarnExplicitObject(PyObject *category, PyObject *message, PyObject *filename, int lineno, PyObject *module, PyObject *registry)
// Issue a warning message with explicit control over all warning attributes.  This
// is a straightforward wrapper around the Python function
// :func:`warnings.warn_explicit`; see there for more information.  The *module*
// and *registry* arguments may be set to “NULL“ to get the default effect
// described there.
//
//go:linkname ErrWarnExplicitObject C.PyErr_WarnExplicitObject
func ErrWarnExplicitObject(category *Object, message *Object, filename *Object, lineno c.Int, module *Object, registry *Object) c.Int

// int PyErr_WarnExplicit(PyObject *category, const char *message, const char *filename, int lineno, const char *module, PyObject *registry)
// Similar to :c:func:`PyErr_WarnExplicitObject` except that *message* and
// *module* are UTF-8 encoded strings, and *filename* is decoded from the
// :term:`filesystem encoding and error handler`.
//
//go:linkname ErrWarnExplicit C.PyErr_WarnExplicit
func ErrWarnExplicit(category *Object, message *c.Char, filename *c.Char, lineno c.Int, module *c.Char, registry *Object) c.Int

// int PyErr_WarnFormat(PyObject *category, Py_ssize_t stack_level, const char *format, ...)
// Function similar to :c:func:`PyErr_WarnEx`, but use
// :c:func:`PyUnicode_FromFormat` to format the warning message.  *format* is
// an ASCII-encoded string.
//
//go:linkname ErrWarnFormat C.PyErr_WarnFormat
func ErrWarnFormat(category *Object, stackLevel SSizeT, format *c.Char, __llgo_va_list ...any) c.Int

// int PyErr_ResourceWarning(PyObject *source, Py_ssize_t stack_level, const char *format, ...)
// Function similar to :c:func:`PyErr_WarnFormat`, but *category* is
// :exc:`ResourceWarning` and it passes *source* to :class:`!warnings.WarningMessage`.
//
// Querying the error indicator
// ============================
//
//go:linkname ErrResourceWarning C.PyErr_ResourceWarning
func ErrResourceWarning(source *Object, stackLevel SSizeT, format *c.Char, __llgo_va_list ...any) c.Int

// PyObject* PyErr_Occurred()
// Test whether the error indicator is set.  If set, return the exception *type*
// (the first argument to the last call to one of the “PyErr_Set*“
// functions or to :c:func:`PyErr_Restore`).  If not set, return “NULL“.  You do not
// own a reference to the return value, so you do not need to :c:func:`Py_DECREF`
// it.
//
// The caller must hold the GIL.
//
// .. note::
//
// Do not compare the return value to a specific exception; use
// :c:func:`PyErr_ExceptionMatches` instead, shown below.  (The comparison could
// easily fail since the exception may be an instance instead of a class, in the
// case of a class exception, or it may be a subclass of the expected exception.)
//
//go:linkname ErrOccurred C.PyErr_Occurred
func ErrOccurred() *Object

// int PyErr_ExceptionMatches(PyObject *exc)
// Equivalent to “PyErr_GivenExceptionMatches(PyErr_Occurred(), exc)“.  This
// should only be called when an exception is actually set; a memory access
// violation will occur if no exception has been raised.
//
//go:linkname ErrExceptionMatches C.PyErr_ExceptionMatches
func ErrExceptionMatches(exc *Object) c.Int

// int PyErr_GivenExceptionMatches(PyObject *given, PyObject *exc)
// Return true if the *given* exception matches the exception type in *exc*.  If
// *exc* is a class object, this also returns true when *given* is an instance
// of a subclass.  If *exc* is a tuple, all exception types in the tuple (and
// recursively in subtuples) are searched for a match.
//
//go:linkname ErrGivenExceptionMatches C.PyErr_GivenExceptionMatches
func ErrGivenExceptionMatches(given *Object, exc *Object) c.Int

// PyObject *PyErr_GetRaisedException(void)
// Return the exception currently being raised, clearing the error indicator at
// the same time. Return “NULL“ if the error indicator is not set.
//
// This function is used by code that needs to catch exceptions,
// or code that needs to save and restore the error indicator temporarily.
//
// For example::
//
// {
// PyObject *exc = PyErr_GetRaisedException();
//
// /* ... code that might produce other errors ... */
//
// PyErr_SetRaisedException(exc);
// }
//
// .. seealso:: :c:func:`PyErr_GetHandledException`,
// to save the exception currently being handled.
//
//go:linkname ErrGetRaisedException C.PyErr_GetRaisedException
func ErrGetRaisedException() *Object

// void PyErr_SetRaisedException(PyObject *exc)
// Set *exc* as the exception currently being raised,
// clearing the existing exception if one is set.
//
// .. warning::
//
// This call steals a reference to *exc*, which must be a valid exception.
//
//go:linkname ErrSetRaisedException C.PyErr_SetRaisedException
func ErrSetRaisedException(exc *Object)

// void PyErr_Fetch(PyObject **ptype, PyObject **pvalue, PyObject **ptraceback)
// .. deprecated:: 3.12
//
// Use :c:func:`PyErr_GetRaisedException` instead.
//
// Retrieve the error indicator into three variables whose addresses are passed.
// If the error indicator is not set, set all three variables to “NULL“.  If it is
// set, it will be cleared and you own a reference to each object retrieved.  The
// value and traceback object may be “NULL“ even when the type object is not.
//
// .. note::
//
// This function is normally only used by legacy code that needs to catch
// exceptions or save and restore the error indicator temporarily.
//
// For example::
//
// {
// PyObject *type, *value, *traceback;
// PyErr_Fetch(&type, &value, &traceback);
//
// /* ... code that might produce other errors ... */
//
// PyErr_Restore(type, value, traceback);
// }
//
//go:linkname ErrFetch C.PyErr_Fetch
func ErrFetch(ptype **Object, pvalue **Object, ptraceback **Object)

// void PyErr_Restore(PyObject *type, PyObject *value, PyObject *traceback)
// .. deprecated:: 3.12
//
// Use :c:func:`PyErr_SetRaisedException` instead.
//
// Set the error indicator from the three objects,
// *type*, *value*, and *traceback*,
// clearing the existing exception if one is set.
// If the objects are “NULL“, the error
// indicator is cleared.  Do not pass a “NULL“ type and non-“NULL“ value or
// traceback.  The exception type should be a class.  Do not pass an invalid
// exception type or value. (Violating these rules will cause subtle problems
// later.)  This call takes away a reference to each object: you must own a
// reference to each object before the call and after the call you no longer own
// these references.  (If you don't understand this, don't use this function.  I
// warned you.)
//
// .. note::
//
// This function is normally only used by legacy code that needs to
// save and restore the error indicator temporarily.
// Use :c:func:`PyErr_Fetch` to save the current error indicator.
//
//go:linkname ErrRestore C.PyErr_Restore
func ErrRestore(type_ *Object, value *Object, traceback *Object)

// void PyErr_NormalizeException(PyObject **exc, PyObject **val, PyObject **tb)
// .. deprecated:: 3.12
//
// Use :c:func:`PyErr_GetRaisedException` instead,
// to avoid any possible de-normalization.
//
// Under certain circumstances, the values returned by :c:func:`PyErr_Fetch` below
// can be "unnormalized", meaning that “*exc“ is a class object but “*val“ is
// not an instance of the  same class.  This function can be used to instantiate
// the class in that case.  If the values are already normalized, nothing happens.
// The delayed normalization is implemented to improve performance.
//
// .. note::
//
// This function *does not* implicitly set the
// :attr:`~BaseException.__traceback__`
// attribute on the exception value. If setting the traceback
// appropriately is desired, the following additional snippet is needed::
//
// if (tb != NULL) {
// PyException_SetTraceback(val, tb);
// }
//
//go:linkname ErrNormalizeException C.PyErr_NormalizeException
func ErrNormalizeException(exc **Object, val **Object, tb **Object)

// PyObject* PyErr_GetHandledException(void)
// Retrieve the active exception instance, as would be returned by :func:`sys.exception`.
// This refers to an exception that was *already caught*, not to an exception that was
// freshly raised. Returns a new reference to the exception or “NULL“.
// Does not modify the interpreter's exception state.
//
// .. note::
//
// This function is not normally used by code that wants to handle exceptions.
// Rather, it can be used when code needs to save and restore the exception
// state temporarily.  Use :c:func:`PyErr_SetHandledException` to restore or
// clear the exception state.
//
//go:linkname ErrGetHandledException C.PyErr_GetHandledException
func ErrGetHandledException() *Object

// void PyErr_SetHandledException(PyObject *exc)
// Set the active exception, as known from “sys.exception()“.  This refers
// to an exception that was *already caught*, not to an exception that was
// freshly raised.
// To clear the exception state, pass “NULL“.
//
// .. note::
//
// This function is not normally used by code that wants to handle exceptions.
// Rather, it can be used when code needs to save and restore the exception
// state temporarily.  Use :c:func:`PyErr_GetHandledException` to get the exception
// state.
//
//go:linkname ErrSetHandledException C.PyErr_SetHandledException
func ErrSetHandledException(exc *Object)

// void PyErr_GetExcInfo(PyObject **ptype, PyObject **pvalue, PyObject **ptraceback)
// Retrieve the old-style representation of the exception info, as known from
// :func:`sys.exc_info`.  This refers to an exception that was *already caught*,
// not to an exception that was freshly raised.  Returns new references for the
// three objects, any of which may be “NULL“.  Does not modify the exception
// info state.  This function is kept for backwards compatibility. Prefer using
// :c:func:`PyErr_GetHandledException`.
//
// .. note::
//
// This function is not normally used by code that wants to handle exceptions.
// Rather, it can be used when code needs to save and restore the exception
// state temporarily.  Use :c:func:`PyErr_SetExcInfo` to restore or clear the
// exception state.
//
//go:linkname ErrGetExcInfo C.PyErr_GetExcInfo
func ErrGetExcInfo(ptype **Object, pvalue **Object, ptraceback **Object)

// void PyErr_SetExcInfo(PyObject *type, PyObject *value, PyObject *traceback)
// Set the exception info, as known from “sys.exc_info()“.  This refers
// to an exception that was *already caught*, not to an exception that was
// freshly raised.  This function steals the references of the arguments.
// To clear the exception state, pass “NULL“ for all three arguments.
// This function is kept for backwards compatibility. Prefer using
// :c:func:`PyErr_SetHandledException`.
//
// .. note::
//
// This function is not normally used by code that wants to handle exceptions.
// Rather, it can be used when code needs to save and restore the exception
// state temporarily.  Use :c:func:`PyErr_GetExcInfo` to read the exception
// state.
//
// The “type“ and “traceback“ arguments are no longer used and
// can be NULL. The interpreter now derives them from the exception
// instance (the “value“ argument). The function still steals
// references of all three arguments.
//
// Signal Handling
// ===============
//
//go:linkname ErrSetExcInfo C.PyErr_SetExcInfo
func ErrSetExcInfo(type_ *Object, value *Object, traceback *Object)

// int PyErr_CheckSignals()
// .. index::
// pair: module; signal
// single: SIGINT (C macro)
// single: KeyboardInterrupt (built-in exception)
//
// This function interacts with Python's signal handling.
//
// If the function is called from the main thread and under the main Python
// interpreter, it checks whether a signal has been sent to the processes
// and if so, invokes the corresponding signal handler.  If the :mod:`signal`
// module is supported, this can invoke a signal handler written in Python.
//
// The function attempts to handle all pending signals, and then returns “0“.
// However, if a Python signal handler raises an exception, the error
// indicator is set and the function returns “-1“ immediately (such that
// other pending signals may not have been handled yet: they will be on the
// next :c:func:`PyErr_CheckSignals()` invocation).
//
// If the function is called from a non-main thread, or under a non-main
// Python interpreter, it does nothing and returns “0“.
//
// This function can be called by long-running C code that wants to
// be interruptible by user requests (such as by pressing Ctrl-C).
//
// .. note::
// The default Python signal handler for :c:macro:`!SIGINT` raises the
// :exc:`KeyboardInterrupt` exception.
//
//go:linkname ErrCheckSignals C.PyErr_CheckSignals
func ErrCheckSignals() c.Int

// void PyErr_SetInterrupt()
// .. index::
// pair: module; signal
// single: SIGINT (C macro)
// single: KeyboardInterrupt (built-in exception)
//
// Simulate the effect of a :c:macro:`!SIGINT` signal arriving.
// This is equivalent to “PyErr_SetInterruptEx(SIGINT)“.
//
// .. note::
// This function is async-signal-safe.  It can be called without
// the :term:`GIL` and from a C signal handler.
//
//go:linkname ErrSetInterrupt C.PyErr_SetInterrupt
func ErrSetInterrupt()

// int PyErr_SetInterruptEx(int signum)
// .. index::
// pair: module; signal
// single: KeyboardInterrupt (built-in exception)
//
// Simulate the effect of a signal arriving. The next time
// :c:func:`PyErr_CheckSignals` is called,  the Python signal handler for
// the given signal number will be called.
//
// This function can be called by C code that sets up its own signal handling
// and wants Python signal handlers to be invoked as expected when an
// interruption is requested (for example when the user presses Ctrl-C
// to interrupt an operation).
//
// If the given signal isn't handled by Python (it was set to
// :py:const:`signal.SIG_DFL` or :py:const:`signal.SIG_IGN`), it will be ignored.
//
// If *signum* is outside of the allowed range of signal numbers, “-1“
// is returned.  Otherwise, “0“ is returned.  The error indicator is
// never changed by this function.
//
// .. note::
// This function is async-signal-safe.  It can be called without
// the :term:`GIL` and from a C signal handler.
//
//go:linkname ErrSetInterruptEx C.PyErr_SetInterruptEx
func ErrSetInterruptEx(signum c.Int) c.Int

// int PySignal_SetWakeupFd(int fd)
// This utility function specifies a file descriptor to which the signal number
// is written as a single byte whenever a signal is received. *fd* must be
// non-blocking. It returns the previous such file descriptor.
//
// The value “-1“ disables the feature; this is the initial state.
// This is equivalent to :func:`signal.set_wakeup_fd` in Python, but without any
// error checking.  *fd* should be a valid file descriptor.  The function should
// only be called from the main thread.
//
// On Windows, the function now also supports socket handles.
//
// Exception Classes
// =================
//
//go:linkname SignalSetWakeupFd C.PySignal_SetWakeupFd
func SignalSetWakeupFd(fd c.Int) c.Int

// PyObject* PyErr_NewException(const char *name, PyObject *base, PyObject *dict)
// This utility function creates and returns a new exception class. The *name*
// argument must be the name of the new exception, a C string of the form
// “module.classname“.  The *base* and *dict* arguments are normally “NULL“.
// This creates a class object derived from :exc:`Exception` (accessible in C as
// :c:data:`PyExc_Exception`).
//
// The :attr:`~type.__module__` attribute of the new class is set to the first part (up
// to the last dot) of the *name* argument, and the class name is set to the last
// part (after the last dot).  The *base* argument can be used to specify alternate
// base classes; it can either be only one class or a tuple of classes. The *dict*
// argument can be used to specify a dictionary of class variables and methods.
//
//go:linkname ErrNewException C.PyErr_NewException
func ErrNewException(name *c.Char, base *Object, dict *Object) *Object

// PyObject* PyErr_NewExceptionWithDoc(const char *name, const char *doc, PyObject *base, PyObject *dict)
// Same as :c:func:`PyErr_NewException`, except that the new exception class can
// easily be given a docstring: If *doc* is non-“NULL“, it will be used as the
// docstring for the exception class.
//
// Exception Objects
// =================
//
//go:linkname ErrNewExceptionWithDoc C.PyErr_NewExceptionWithDoc
func ErrNewExceptionWithDoc(name *c.Char, doc *c.Char, base *Object, dict *Object) *Object

// PyObject* PyException_GetTraceback(PyObject *ex)
// Return the traceback associated with the exception as a new reference, as
// accessible from Python through the :attr:`~BaseException.__traceback__`
// attribute. If there is no
// traceback associated, this returns “NULL“.
//
//go:linkname ExceptionGetTraceback C.PyException_GetTraceback
func ExceptionGetTraceback(ex *Object) *Object

// int PyException_SetTraceback(PyObject *ex, PyObject *tb)
// Set the traceback associated with the exception to *tb*.  Use “Py_None“ to
// clear it.
//
//go:linkname ExceptionSetTraceback C.PyException_SetTraceback
func ExceptionSetTraceback(ex *Object, tb *Object) c.Int

// PyObject* PyException_GetContext(PyObject *ex)
// Return the context (another exception instance during whose handling *ex* was
// raised) associated with the exception as a new reference, as accessible from
// Python through the :attr:`~BaseException.__context__` attribute.
// If there is no context associated, this returns “NULL“.
//
//go:linkname ExceptionGetContext C.PyException_GetContext
func ExceptionGetContext(ex *Object) *Object

// void PyException_SetContext(PyObject *ex, PyObject *ctx)
// Set the context associated with the exception to *ctx*.  Use “NULL“ to clear
// it.  There is no type check to make sure that *ctx* is an exception instance.
// This steals a reference to *ctx*.
//
//go:linkname ExceptionSetContext C.PyException_SetContext
func ExceptionSetContext(ex *Object, ctx *Object)

// PyObject* PyException_GetCause(PyObject *ex)
// Return the cause (either an exception instance, or “None“,
// set by “raise ... from ...“) associated with the exception as a new
// reference, as accessible from Python through the
// :attr:`~BaseException.__cause__` attribute.
//
//go:linkname ExceptionGetCause C.PyException_GetCause
func ExceptionGetCause(ex *Object) *Object

// void PyException_SetCause(PyObject *ex, PyObject *cause)
// Set the cause associated with the exception to *cause*.  Use “NULL“ to clear
// it.  There is no type check to make sure that *cause* is either an exception
// instance or “None“.  This steals a reference to *cause*.
//
// The :attr:`~BaseException.__suppress_context__` attribute is implicitly set
// to “True“ by this function.
//
//go:linkname ExceptionSetCause C.PyException_SetCause
func ExceptionSetCause(ex *Object, cause *Object)

// PyObject* PyException_GetArgs(PyObject *ex)
// Return :attr:`~BaseException.args` of exception *ex*.
//
//go:linkname ExceptionGetArgs C.PyException_GetArgs
func ExceptionGetArgs(ex *Object) *Object

// void PyException_SetArgs(PyObject *ex, PyObject *args)
// Set :attr:`~BaseException.args` of exception *ex* to *args*.
//
//go:linkname ExceptionSetArgs C.PyException_SetArgs
func ExceptionSetArgs(ex *Object, args *Object)

// PyObject* PyUnstable_Exc_PrepReraiseStar(PyObject *orig, PyObject *excs)
// Implement part of the interpreter's implementation of :keyword:`!except*`.
// *orig* is the original exception that was caught, and *excs* is the list of
// the exceptions that need to be raised. This list contains the unhandled
// part of *orig*, if any, as well as the exceptions that were raised from the
// :keyword:`!except*` clauses (so they have a different traceback from *orig*) and
// those that were reraised (and have the same traceback as *orig*).
// Return the :exc:`ExceptionGroup` that needs to be reraised in the end, or
// “None“ if there is nothing to reraise.
//
// .. _unicodeexceptions:
//
// Unicode Exception Objects
// =========================
//
// The following functions are used to create and modify Unicode exceptions from C.
//
//go:linkname UnstableExcPrepReraiseStar C.PyUnstable_Exc_PrepReraiseStar
func UnstableExcPrepReraiseStar(orig *Object, excs *Object) *Object

// PyObject* PyUnicodeDecodeError_Create(const char *encoding, const char *object, Py_ssize_t length, Py_ssize_t start, Py_ssize_t end, const char *reason)
// Create a :class:`UnicodeDecodeError` object with the attributes *encoding*,
// *object*, *length*, *start*, *end* and *reason*. *encoding* and *reason* are
// UTF-8 encoded strings.
//
//go:linkname UnicodeDecodeErrorCreate C.PyUnicodeDecodeError_Create
func UnicodeDecodeErrorCreate(encoding *c.Char, object *c.Char, length SSizeT, start SSizeT, end SSizeT, reason *c.Char) *Object

// PyObject* PyUnicodeDecodeError_GetEncoding(PyObject *exc)
// PyObject* PyUnicodeEncodeError_GetEncoding(PyObject *exc)
//
// Return the *encoding* attribute of the given exception object.
//
//go:linkname UnicodeDecodeErrorGetEncoding C.PyUnicodeDecodeError_GetEncoding
func UnicodeDecodeErrorGetEncoding(exc *Object) *Object

// PyObject* PyUnicodeDecodeError_GetObject(PyObject *exc)
// PyObject* PyUnicodeEncodeError_GetObject(PyObject *exc)
// PyObject* PyUnicodeTranslateError_GetObject(PyObject *exc)
//
// Return the *object* attribute of the given exception object.
//
//go:linkname UnicodeDecodeErrorGetObject C.PyUnicodeDecodeError_GetObject
func UnicodeDecodeErrorGetObject(exc *Object) *Object

// int PyUnicodeDecodeError_GetStart(PyObject *exc, Py_ssize_t *start)
// int PyUnicodeEncodeError_GetStart(PyObject *exc, Py_ssize_t *start)
// int PyUnicodeTranslateError_GetStart(PyObject *exc, Py_ssize_t *start)
//
// Get the *start* attribute of the given exception object and place it into
// *\*start*.  *start* must not be “NULL“.  Return “0“ on success, “-1“ on
// failure.
//
//go:linkname UnicodeDecodeErrorGetStart C.PyUnicodeDecodeError_GetStart
func UnicodeDecodeErrorGetStart(exc *Object, start *SSizeT) c.Int

// int PyUnicodeDecodeError_SetStart(PyObject *exc, Py_ssize_t start)
// int PyUnicodeEncodeError_SetStart(PyObject *exc, Py_ssize_t start)
// int PyUnicodeTranslateError_SetStart(PyObject *exc, Py_ssize_t start)
//
// Set the *start* attribute of the given exception object to *start*.  Return
// “0“ on success, “-1“ on failure.
//
//go:linkname UnicodeDecodeErrorSetStart C.PyUnicodeDecodeError_SetStart
func UnicodeDecodeErrorSetStart(exc *Object, start SSizeT) c.Int

// int PyUnicodeDecodeError_GetEnd(PyObject *exc, Py_ssize_t *end)
// int PyUnicodeEncodeError_GetEnd(PyObject *exc, Py_ssize_t *end)
// int PyUnicodeTranslateError_GetEnd(PyObject *exc, Py_ssize_t *end)
//
// Get the *end* attribute of the given exception object and place it into
// *\*end*.  *end* must not be “NULL“.  Return “0“ on success, “-1“ on
// failure.
//
//go:linkname UnicodeDecodeErrorGetEnd C.PyUnicodeDecodeError_GetEnd
func UnicodeDecodeErrorGetEnd(exc *Object, end *SSizeT) c.Int

// int PyUnicodeDecodeError_SetEnd(PyObject *exc, Py_ssize_t end)
// int PyUnicodeEncodeError_SetEnd(PyObject *exc, Py_ssize_t end)
// int PyUnicodeTranslateError_SetEnd(PyObject *exc, Py_ssize_t end)
//
// Set the *end* attribute of the given exception object to *end*.  Return “0“
// on success, “-1“ on failure.
//
//go:linkname UnicodeDecodeErrorSetEnd C.PyUnicodeDecodeError_SetEnd
func UnicodeDecodeErrorSetEnd(exc *Object, end SSizeT) c.Int

// PyObject* PyUnicodeDecodeError_GetReason(PyObject *exc)
// PyObject* PyUnicodeEncodeError_GetReason(PyObject *exc)
// PyObject* PyUnicodeTranslateError_GetReason(PyObject *exc)
//
// Return the *reason* attribute of the given exception object.
//
//go:linkname UnicodeDecodeErrorGetReason C.PyUnicodeDecodeError_GetReason
func UnicodeDecodeErrorGetReason(exc *Object) *Object

// int PyUnicodeDecodeError_SetReason(PyObject *exc, const char *reason)
// int PyUnicodeEncodeError_SetReason(PyObject *exc, const char *reason)
// int PyUnicodeTranslateError_SetReason(PyObject *exc, const char *reason)
//
// Set the *reason* attribute of the given exception object to *reason*.  Return
// “0“ on success, “-1“ on failure.
//
// .. _recursion:
//
// Recursion Control
// =================
//
// These two functions provide a way to perform safe recursive calls at the C
// level, both in the core and in extension modules.  They are needed if the
// recursive code does not necessarily invoke Python code (which tracks its
// recursion depth automatically).
// They are also not needed for *tp_call* implementations
// because the :ref:`call protocol <call>` takes care of recursion handling.
//
//go:linkname UnicodeDecodeErrorSetReason C.PyUnicodeDecodeError_SetReason
func UnicodeDecodeErrorSetReason(exc *Object, reason *c.Char) c.Int

// int Py_EnterRecursiveCall(const char *where)
// Marks a point where a recursive C-level call is about to be performed.
//
// If :c:macro:`!USE_STACKCHECK` is defined, this function checks if the OS
// stack overflowed using :c:func:`PyOS_CheckStack`.  If this is the case, it
// sets a :exc:`MemoryError` and returns a nonzero value.
//
// The function then checks if the recursion limit is reached.  If this is the
// case, a :exc:`RecursionError` is set and a nonzero value is returned.
// Otherwise, zero is returned.
//
// *where* should be a UTF-8 encoded string such as “" in instance check"“ to
// be concatenated to the :exc:`RecursionError` message caused by the recursion
// depth limit.
//
// This function is now also available in the :ref:`limited API <limited-c-api>`.
//
//go:linkname EnterRecursiveCall C.Py_EnterRecursiveCall
func EnterRecursiveCall(where *c.Char) c.Int

// void Py_LeaveRecursiveCall(void)
// Ends a :c:func:`Py_EnterRecursiveCall`.  Must be called once for each
// *successful* invocation of :c:func:`Py_EnterRecursiveCall`.
//
// This function is now also available in the :ref:`limited API <limited-c-api>`.
//
// Properly implementing :c:member:`~PyTypeObject.tp_repr` for container types requires
// special recursion handling.  In addition to protecting the stack,
// :c:member:`~PyTypeObject.tp_repr` also needs to track objects to prevent cycles.  The
// following two functions facilitate this functionality.  Effectively,
// these are the C equivalent to :func:`reprlib.recursive_repr`.
//
//go:linkname LeaveRecursiveCall C.Py_LeaveRecursiveCall
func LeaveRecursiveCall()

// int Py_ReprEnter(PyObject *object)
// Called at the beginning of the :c:member:`~PyTypeObject.tp_repr` implementation to
// detect cycles.
//
// If the object has already been processed, the function returns a
// positive integer.  In that case the :c:member:`~PyTypeObject.tp_repr` implementation
// should return a string object indicating a cycle.  As examples,
// :class:`dict` objects return “{...}“ and :class:`list` objects
// return “[...]“.
//
// The function will return a negative integer if the recursion limit
// is reached.  In that case the :c:member:`~PyTypeObject.tp_repr` implementation should
// typically return “NULL“.
//
// Otherwise, the function returns zero and the :c:member:`~PyTypeObject.tp_repr`
// implementation can continue normally.
//
//go:linkname ReprEnter C.Py_ReprEnter
func ReprEnter(object *Object) c.Int

// void Py_ReprLeave(PyObject *object)
// Ends a :c:func:`Py_ReprEnter`.  Must be called once for each
// invocation of :c:func:`Py_ReprEnter` that returns zero.
//
// .. _standardexceptions:
//
// Standard Exceptions
// ===================
//
// All standard Python exceptions are available as global variables whose names are
// “PyExc_“ followed by the Python exception name.  These have the type
// :c:expr:`PyObject*`; they are all class objects.  For completeness, here are all
// the variables:
//
// .. index::
// single: PyExc_BaseException (C var)
// single: PyExc_Exception (C var)
// single: PyExc_ArithmeticError (C var)
// single: PyExc_AssertionError (C var)
// single: PyExc_AttributeError (C var)
// single: PyExc_BlockingIOError (C var)
// single: PyExc_BrokenPipeError (C var)
// single: PyExc_BufferError (C var)
// single: PyExc_ChildProcessError (C var)
// single: PyExc_ConnectionAbortedError (C var)
// single: PyExc_ConnectionError (C var)
// single: PyExc_ConnectionRefusedError (C var)
// single: PyExc_ConnectionResetError (C var)
// single: PyExc_EOFError (C var)
// single: PyExc_FileExistsError (C var)
// single: PyExc_FileNotFoundError (C var)
// single: PyExc_FloatingPointError (C var)
// single: PyExc_GeneratorExit (C var)
// single: PyExc_ImportError (C var)
// single: PyExc_IndentationError (C var)
// single: PyExc_IndexError (C var)
// single: PyExc_InterruptedError (C var)
// single: PyExc_IsADirectoryError (C var)
// single: PyExc_KeyError (C var)
// single: PyExc_KeyboardInterrupt (C var)
// single: PyExc_LookupError (C var)
// single: PyExc_MemoryError (C var)
// single: PyExc_ModuleNotFoundError (C var)
// single: PyExc_NameError (C var)
// single: PyExc_NotADirectoryError (C var)
// single: PyExc_NotImplementedError (C var)
// single: PyExc_OSError (C var)
// single: PyExc_OverflowError (C var)
// single: PyExc_PermissionError (C var)
// single: PyExc_ProcessLookupError (C var)
// single: PyExc_PythonFinalizationError (C var)
// single: PyExc_RecursionError (C var)
// single: PyExc_ReferenceError (C var)
// single: PyExc_RuntimeError (C var)
// single: PyExc_StopAsyncIteration (C var)
// single: PyExc_StopIteration (C var)
// single: PyExc_SyntaxError (C var)
// single: PyExc_SystemError (C var)
// single: PyExc_SystemExit (C var)
// single: PyExc_TabError (C var)
// single: PyExc_TimeoutError (C var)
// single: PyExc_TypeError (C var)
// single: PyExc_UnboundLocalError (C var)
// single: PyExc_UnicodeDecodeError (C var)
// single: PyExc_UnicodeEncodeError (C var)
// single: PyExc_UnicodeError (C var)
// single: PyExc_UnicodeTranslateError (C var)
// single: PyExc_ValueError (C var)
// single: PyExc_ZeroDivisionError (C var)
//
// +-----------------------------------------+---------------------------------+----------+
// | C Name                                  | Python Name                     | Notes    |
// +=========================================+=================================+==========+
// | :c:data:`PyExc_BaseException`           | :exc:`BaseException`            | [1]_     |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_Exception`               | :exc:`Exception`                | [1]_     |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ArithmeticError`         | :exc:`ArithmeticError`          | [1]_     |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_AssertionError`          | :exc:`AssertionError`           |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_AttributeError`          | :exc:`AttributeError`           |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_BlockingIOError`         | :exc:`BlockingIOError`          |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_BrokenPipeError`         | :exc:`BrokenPipeError`          |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_BufferError`             | :exc:`BufferError`              |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ChildProcessError`       | :exc:`ChildProcessError`        |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ConnectionAbortedError`  | :exc:`ConnectionAbortedError`   |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ConnectionError`         | :exc:`ConnectionError`          |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ConnectionRefusedError`  | :exc:`ConnectionRefusedError`   |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ConnectionResetError`    | :exc:`ConnectionResetError`     |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_EOFError`                | :exc:`EOFError`                 |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_FileExistsError`         | :exc:`FileExistsError`          |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_FileNotFoundError`       | :exc:`FileNotFoundError`        |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_FloatingPointError`      | :exc:`FloatingPointError`       |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_GeneratorExit`           | :exc:`GeneratorExit`            |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ImportError`             | :exc:`ImportError`              |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_IndentationError`        | :exc:`IndentationError`         |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_IndexError`              | :exc:`IndexError`               |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_InterruptedError`        | :exc:`InterruptedError`         |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_IsADirectoryError`       | :exc:`IsADirectoryError`        |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_KeyError`                | :exc:`KeyError`                 |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_KeyboardInterrupt`       | :exc:`KeyboardInterrupt`        |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_LookupError`             | :exc:`LookupError`              | [1]_     |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_MemoryError`             | :exc:`MemoryError`              |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ModuleNotFoundError`     | :exc:`ModuleNotFoundError`      |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_NameError`               | :exc:`NameError`                |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_NotADirectoryError`      | :exc:`NotADirectoryError`       |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_NotImplementedError`     | :exc:`NotImplementedError`      |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_OSError`                 | :exc:`OSError`                  | [1]_     |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_OverflowError`           | :exc:`OverflowError`            |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_PermissionError`         | :exc:`PermissionError`          |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ProcessLookupError`      | :exc:`ProcessLookupError`       |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_PythonFinalizationError` | :exc:`PythonFinalizationError`  |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_RecursionError`          | :exc:`RecursionError`           |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ReferenceError`          | :exc:`ReferenceError`           |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_RuntimeError`            | :exc:`RuntimeError`             |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_StopAsyncIteration`      | :exc:`StopAsyncIteration`       |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_StopIteration`           | :exc:`StopIteration`            |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_SyntaxError`             | :exc:`SyntaxError`              |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_SystemError`             | :exc:`SystemError`              |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_SystemExit`              | :exc:`SystemExit`               |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_TabError`                | :exc:`TabError`                 |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_TimeoutError`            | :exc:`TimeoutError`             |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_TypeError`               | :exc:`TypeError`                |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_UnboundLocalError`       | :exc:`UnboundLocalError`        |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_UnicodeDecodeError`      | :exc:`UnicodeDecodeError`       |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_UnicodeEncodeError`      | :exc:`UnicodeEncodeError`       |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_UnicodeError`            | :exc:`UnicodeError`             |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_UnicodeTranslateError`   | :exc:`UnicodeTranslateError`    |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ValueError`              | :exc:`ValueError`               |          |
// +-----------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ZeroDivisionError`       | :exc:`ZeroDivisionError`        |          |
// +-----------------------------------------+---------------------------------+----------+
//
// :c:data:`PyExc_BlockingIOError`, :c:data:`PyExc_BrokenPipeError`,
// :c:data:`PyExc_ChildProcessError`, :c:data:`PyExc_ConnectionError`,
// :c:data:`PyExc_ConnectionAbortedError`, :c:data:`PyExc_ConnectionRefusedError`,
// :c:data:`PyExc_ConnectionResetError`, :c:data:`PyExc_FileExistsError`,
// :c:data:`PyExc_FileNotFoundError`, :c:data:`PyExc_InterruptedError`,
// :c:data:`PyExc_IsADirectoryError`, :c:data:`PyExc_NotADirectoryError`,
// :c:data:`PyExc_PermissionError`, :c:data:`PyExc_ProcessLookupError`
// and :c:data:`PyExc_TimeoutError` were introduced following :pep:`3151`.
//
// :c:data:`PyExc_StopAsyncIteration` and :c:data:`PyExc_RecursionError`.
//
// :c:data:`PyExc_ModuleNotFoundError`.
//
// These are compatibility aliases to :c:data:`PyExc_OSError`:
//
// .. index::
// single: PyExc_EnvironmentError (C var)
// single: PyExc_IOError (C var)
// single: PyExc_WindowsError (C var)
//
// +-------------------------------------+----------+
// | C Name                              | Notes    |
// +=====================================+==========+
// | :c:data:`!PyExc_EnvironmentError`   |          |
// +-------------------------------------+----------+
// | :c:data:`!PyExc_IOError`            |          |
// +-------------------------------------+----------+
// | :c:data:`!PyExc_WindowsError`       | [2]_     |
// +-------------------------------------+----------+
//
// These aliases used to be separate exception types.
//
// Notes:
//
// .. [1]
// This is a base class for other standard exceptions.
//
// .. [2]
// Only defined on Windows; protect code that uses this by testing that the
// preprocessor macro “MS_WINDOWS“ is defined.
//
// .. _standardwarningcategories:
//
// Standard Warning Categories
// ===========================
//
// All standard Python warning categories are available as global variables whose
// names are “PyExc_“ followed by the Python exception name. These have the type
// :c:expr:`PyObject*`; they are all class objects. For completeness, here are all
// the variables:
//
// .. index::
// single: PyExc_Warning (C var)
// single: PyExc_BytesWarning (C var)
// single: PyExc_DeprecationWarning (C var)
// single: PyExc_FutureWarning (C var)
// single: PyExc_ImportWarning (C var)
// single: PyExc_PendingDeprecationWarning (C var)
// single: PyExc_ResourceWarning (C var)
// single: PyExc_RuntimeWarning (C var)
// single: PyExc_SyntaxWarning (C var)
// single: PyExc_UnicodeWarning (C var)
// single: PyExc_UserWarning (C var)
//
// +------------------------------------------+---------------------------------+----------+
// | C Name                                   | Python Name                     | Notes    |
// +==========================================+=================================+==========+
// | :c:data:`PyExc_Warning`                  | :exc:`Warning`                  | [3]_     |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_BytesWarning`             | :exc:`BytesWarning`             |          |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_DeprecationWarning`       | :exc:`DeprecationWarning`       |          |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_FutureWarning`            | :exc:`FutureWarning`            |          |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ImportWarning`            | :exc:`ImportWarning`            |          |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_PendingDeprecationWarning`| :exc:`PendingDeprecationWarning`|          |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_ResourceWarning`          | :exc:`ResourceWarning`          |          |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_RuntimeWarning`           | :exc:`RuntimeWarning`           |          |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_SyntaxWarning`            | :exc:`SyntaxWarning`            |          |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_UnicodeWarning`           | :exc:`UnicodeWarning`           |          |
// +------------------------------------------+---------------------------------+----------+
// | :c:data:`PyExc_UserWarning`              | :exc:`UserWarning`              |          |
// +------------------------------------------+---------------------------------+----------+
//
// :c:data:`PyExc_ResourceWarning`.
//
// Notes:
//
// .. [3]
// This is a base class for other standard warning categories.
//
//go:linkname ReprLeave C.Py_ReprLeave
func ReprLeave(object *Object)
