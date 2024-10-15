package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyArg_ParseTuple(PyObject *args, const char *format, ...)
// Parse the parameters of a function that takes only positional parameters into
// local variables.  Returns true on success; on failure, it returns false and
// raises the appropriate exception.
//
//go:linkname ArgParseTuple PyArg_ParseTuple
func ArgParseTuple(args *Object, format *Char, __llgo_va_list ...any) Int

// int PyArg_ParseTupleAndKeywords(PyObject *args, PyObject *kw, const char *format, char *keywords[], ...)
// Parse the parameters of a function that takes both positional and keyword
// parameters into local variables.  The *keywords* argument is a
// “NULL“-terminated array of keyword parameter names.  Empty names denote
// :ref:`positional-only parameters <positional-only_parameter>`.
// Returns true on success; on failure, it returns false and raises the
// appropriate exception.
//
// Added support for :ref:`positional-only parameters
// <positional-only_parameter>`.
//
//go:linkname ArgParseTupleAndKeywords PyArg_ParseTupleAndKeywords
func ArgParseTupleAndKeywords(args *Object, kw *Object, format *Char, keywords *Char, __llgo_va_list ...any) Int

// int PyArg_ValidateKeywordArguments(PyObject *)
// Ensure that the keys in the keywords argument dictionary are strings.  This
// is only needed if :c:func:`PyArg_ParseTupleAndKeywords` is not used, since the
// latter already does this check.
//
// .. XXX deprecated, will be removed
//
//go:linkname ArgValidateKeywordArguments PyArg_ValidateKeywordArguments
func ArgValidateKeywordArguments(*Object) Int

// int PyArg_Parse(PyObject *args, const char *format, ...)
// Function used to deconstruct the argument lists of "old-style" functions ---
// these are functions which use the :const:`METH_OLDARGS` parameter parsing
// method, which has been removed in Python 3.  This is not recommended for use
// in parameter parsing in new code, and most code in the standard interpreter
// has been modified to no longer use this for that purpose.  It does remain a
// convenient way to decompose other tuples, however, and may continue to be
// used for that purpose.
//
//go:linkname ArgParse PyArg_Parse
func ArgParse(args *Object, format *Char, __llgo_va_list ...any) Int

// int PyArg_UnpackTuple(PyObject *args, const char *name, Py_ssize_t min, Py_ssize_t max, ...)
// A simpler form of parameter retrieval which does not use a format string to
// specify the types of the arguments.  Functions which use this method to retrieve
// their parameters should be declared as :c:macro:`METH_VARARGS` in function or
// method tables.  The tuple containing the actual parameters should be passed as
// *args*; it must actually be a tuple.  The length of the tuple must be at least
// *min* and no more than *max*; *min* and *max* may be equal.  Additional
// arguments must be passed to the function, each of which should be a pointer to a
// :c:expr:`PyObject*` variable; these will be filled in with the values from
// *args*; they will contain :term:`borrowed references <borrowed reference>`.
// The variables which correspond
// to optional parameters not given by *args* will not be filled in; these should
// be initialized by the caller. This function returns true on success and false if
// *args* is not a tuple or contains the wrong number of elements; an exception
// will be set if there was a failure.
//
// This is an example of the use of this function, taken from the sources for the
// :mod:`!_weakref` helper module for weak references::
//
// static PyObject *
// weakref_ref(PyObject *self, PyObject *args)
// {
// PyObject *object;
// PyObject *callback = NULL;
// PyObject *result = NULL;
//
// if (PyArg_UnpackTuple(args, "ref", 1, 2, &object, &callback)) {
// result = PyWeakref_NewRef(object, callback);
// }
// return result;
// }
//
// The call to :c:func:`PyArg_UnpackTuple` in this example is entirely equivalent to
// this call to :c:func:`PyArg_ParseTuple`::
//
// PyArg_ParseTuple(args, "O|O:ref", &object, &callback)
//
// ---------------
// Building values
// ---------------
//
//go:linkname ArgUnpackTuple PyArg_UnpackTuple
func ArgUnpackTuple(args *Object, name *Char, min SSizeT, max SSizeT, __llgo_va_list ...any) Int

// PyObject* Py_BuildValue(const char *format, ...)
// Create a new value based on a format string similar to those accepted by the
// “PyArg_Parse*“ family of functions and a sequence of values.  Returns
// the value or “NULL“ in the case of an error; an exception will be raised if
// “NULL“ is returned.
//
// :c:func:`Py_BuildValue` does not always build a tuple.  It builds a tuple only if
// its format string contains two or more format units.  If the format string is
// empty, it returns “None“; if it contains exactly one format unit, it returns
// whatever object is described by that format unit.  To force it to return a tuple
// of size 0 or one, parenthesize the format string.
//
// When memory buffers are passed as parameters to supply data to build objects, as
// for the “s“ and “s#“ formats, the required data is copied.  Buffers provided
// by the caller are never referenced by the objects created by
// :c:func:`Py_BuildValue`.  In other words, if your code invokes :c:func:`malloc`
// and passes the allocated memory to :c:func:`Py_BuildValue`, your code is
// responsible for calling :c:func:`free` for that memory once
// :c:func:`Py_BuildValue` returns.
//
// In the following description, the quoted form is the format unit; the entry in
// (round) parentheses is the Python object type that the format unit will return;
// and the entry in [square] brackets is the type of the C value(s) to be passed.
//
// The characters space, tab, colon and comma are ignored in format strings (but
// not within format units such as “s#“).  This can be used to make long format
// strings a tad more readable.
//
// “s“ (:class:`str` or “None“) [const char \*]
// Convert a null-terminated C string to a Python :class:`str` object using “'utf-8'“
// encoding. If the C string pointer is “NULL“, “None“ is used.
//
// “s#“ (:class:`str` or “None“) [const char \*, :c:type:`Py_ssize_t`]
// Convert a C string and its length to a Python :class:`str` object using “'utf-8'“
// encoding. If the C string pointer is “NULL“, the length is ignored and
// “None“ is returned.
//
// “y“ (:class:`bytes`) [const char \*]
// This converts a C string to a Python :class:`bytes` object.  If the C
// string pointer is “NULL“, “None“ is returned.
//
// “y#“ (:class:`bytes`) [const char \*, :c:type:`Py_ssize_t`]
// This converts a C string and its lengths to a Python object.  If the C
// string pointer is “NULL“, “None“ is returned.
//
// “z“ (:class:`str` or “None“) [const char \*]
// Same as “s“.
//
// “z#“ (:class:`str` or “None“) [const char \*, :c:type:`Py_ssize_t`]
// Same as “s#“.
//
// “u“ (:class:`str`) [const wchar_t \*]
// Convert a null-terminated :c:type:`wchar_t` buffer of Unicode (UTF-16 or UCS-4)
// data to a Python Unicode object.  If the Unicode buffer pointer is “NULL“,
// “None“ is returned.
//
// “u#“ (:class:`str`) [const wchar_t \*, :c:type:`Py_ssize_t`]
// Convert a Unicode (UTF-16 or UCS-4) data buffer and its length to a Python
// Unicode object.   If the Unicode buffer pointer is “NULL“, the length is ignored
// and “None“ is returned.
//
// “U“ (:class:`str` or “None“) [const char \*]
// Same as “s“.
//
// “U#“ (:class:`str` or “None“) [const char \*, :c:type:`Py_ssize_t`]
// Same as “s#“.
//
// “i“ (:class:`int`) [int]
// Convert a plain C :c:expr:`int` to a Python integer object.
//
// “b“ (:class:`int`) [char]
// Convert a plain C :c:expr:`char` to a Python integer object.
//
// “h“ (:class:`int`) [short int]
// Convert a plain C :c:expr:`short int` to a Python integer object.
//
// “l“ (:class:`int`) [long int]
// Convert a C :c:expr:`long int` to a Python integer object.
//
// “B“ (:class:`int`) [unsigned char]
// Convert a C :c:expr:`unsigned char` to a Python integer object.
//
// “H“ (:class:`int`) [unsigned short int]
// Convert a C :c:expr:`unsigned short int` to a Python integer object.
//
// “I“ (:class:`int`) [unsigned int]
// Convert a C :c:expr:`unsigned int` to a Python integer object.
//
// “k“ (:class:`int`) [unsigned long]
// Convert a C :c:expr:`unsigned long` to a Python integer object.
//
// “L“ (:class:`int`) [long long]
// Convert a C :c:expr:`long long` to a Python integer object.
//
// “K“ (:class:`int`) [unsigned long long]
// Convert a C :c:expr:`unsigned long long` to a Python integer object.
//
// “n“ (:class:`int`) [:c:type:`Py_ssize_t`]
// Convert a C :c:type:`Py_ssize_t` to a Python integer.
//
// “c“ (:class:`bytes` of length 1) [char]
// Convert a C :c:expr:`int` representing a byte to a Python :class:`bytes` object of
// length 1.
//
// “C“ (:class:`str` of length 1) [int]
// Convert a C :c:expr:`int` representing a character to Python :class:`str`
// object of length 1.
//
// “d“ (:class:`float`) [double]
// Convert a C :c:expr:`double` to a Python floating-point number.
//
// “f“ (:class:`float`) [float]
// Convert a C :c:expr:`float` to a Python floating-point number.
//
// “D“ (:class:`complex`) [Py_complex \*]
// Convert a C :c:type:`Py_complex` structure to a Python complex number.
//
// “O“ (object) [PyObject \*]
// Pass a Python object untouched but create a new
// :term:`strong reference` to it
// (i.e. its reference count is incremented by one).
// If the object passed in is a “NULL“ pointer, it is assumed
// that this was caused because the call producing the argument found an error and
// set an exception. Therefore, :c:func:`Py_BuildValue` will return “NULL“ but won't
// raise an exception.  If no exception has been raised yet, :exc:`SystemError` is
// set.
//
// “S“ (object) [PyObject \*]
// Same as “O“.
//
// “N“ (object) [PyObject \*]
// Same as “O“, except it doesn't create a new :term:`strong reference`.
// Useful when the object is created by a call to an object constructor in the
// argument list.
//
// “O&“ (object) [*converter*, *anything*]
// Convert *anything* to a Python object through a *converter* function.  The
// function is called with *anything* (which should be compatible with :c:expr:`void*`)
// as its argument and should return a "new" Python object, or “NULL“ if an
// error occurred.
//
// “(items)“ (:class:`tuple`) [*matching-items*]
// Convert a sequence of C values to a Python tuple with the same number of items.
//
// “[items]“ (:class:`list`) [*matching-items*]
// Convert a sequence of C values to a Python list with the same number of items.
//
// “{items}“ (:class:`dict`) [*matching-items*]
// Convert a sequence of C values to a Python dictionary.  Each pair of consecutive
// C values adds one item to the dictionary, serving as key and value,
// respectively.
//
// If there is an error in the format string, the :exc:`SystemError` exception is
// set and “NULL“ returned.
//
//go:linkname BuildValue Py_BuildValue
func BuildValue(format *Char, __llgo_va_list ...any) *Object
