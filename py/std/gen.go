package std

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.builtins"

// Return True if bool(x) is True for all values x in the iterable.
//
// If the iterable is empty, return True.
//
//go:linkname All py.all
func All(iterable *py.Object) *py.Object

// Return True if bool(x) is True for any x in the iterable.
//
// If the iterable is empty, return False.
//
//go:linkname Any py.any
func Any(iterable *py.Object) *py.Object

// Return an ASCII-only representation of an object.
//
// As repr(), return a string containing a printable representation of an
// object, but escape the non-ASCII characters in the string returned by
// repr() using \\x, \\u or \\U escapes. This generates a string similar
// to that returned by repr() in Python 2.
//
//go:linkname Ascii py.ascii
func Ascii(obj *py.Object) *py.Object

// Return the binary representation of an integer.
//
//	>>> bin(2796202)
//	'0b1010101010101010101010'
//
//go:linkname Bin py.bin
func Bin(number *py.Object) *py.Object

// Return whether the object is callable (i.e., some kind of function).
//
// Note that classes are callable, as are instances of classes with a
// __call__() method.
//
//go:linkname Callable py.callable
func Callable(obj *py.Object) *py.Object

// Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.
//
//go:linkname Chr py.chr
func Chr(i *py.Object) *py.Object

// Compile source into a code object that can be executed by exec() or eval().
//
// The source code may represent a Python module, statement or expression.
// The filename will be used for run-time error messages.
// The mode must be 'exec' to compile a module, 'single' to compile a
// single (interactive) statement, or 'eval' to compile an expression.
// The flags argument, if present, controls which future statements influence
// the compilation of the code.
// The dont_inherit argument, if true, stops the compilation inheriting
// the effects of any future statements in effect in the code calling
// compile; if absent or false these statements do influence the compilation,
// in addition to any features explicitly specified.
//
//go:linkname Compile py.compile
func Compile(source *py.Object, filename *py.Object, mode *py.Object, flags *py.Object, dontInherit *py.Object, optimize *py.Object) *py.Object

// Deletes the named attribute from the given object.
//
// delattr(x, 'y') is equivalent to “del x.y“
//
//go:linkname Delattr py.delattr
func Delattr(obj *py.Object, name *py.Object) *py.Object

// Return the tuple (x//y, x%y).  Invariant: div*y + mod == x.
//
//go:linkname Divmod py.divmod
func Divmod(x *py.Object, y *py.Object) *py.Object

// Evaluate the given source in the context of globals and locals.
//
// The source may be a string representing a Python expression
// or a code object as returned by compile().
// The globals must be a dictionary and locals can be any mapping,
// defaulting to the current globals and locals.
// If only globals is given, locals defaults to it.
//
//go:linkname Eval py.eval
func Eval(source *py.Object, globals *py.Object, locals *py.Object) *py.Object

// Execute the given source in the context of globals and locals.
//
// The source may be a string representing one or more Python statements
// or a code object as returned by compile().
// The globals must be a dictionary and locals can be any mapping,
// defaulting to the current globals and locals.
// If only globals is given, locals defaults to it.
// The closure must be a tuple of cellvars, and can only be used
// when source is a code object requiring exactly that many cellvars.
//
//go:linkname Exec py.exec
func Exec(source *py.Object, globals *py.Object, locals *py.Object) *py.Object

// Return type(value).__format__(value, format_spec)
//
// Many built-in types implement format_spec according to the
// Format Specification Mini-language. See help('FORMATTING').
//
// If type(value) does not supply a method named __format__
// and format_spec is empty, then str(value) is returned.
// See also help('SPECIALMETHODS').
//
//go:linkname Format py.format
func Format(value *py.Object, formatSpec *py.Object) *py.Object

// Return the dictionary containing the current scope's global variables.
//
// NOTE: Updates to this dictionary *will* affect name lookups in the current
// global scope and vice-versa.
//
//go:linkname Globals py.globals
func Globals() *py.Object

// Return whether the object has an attribute with the given name.
//
// This is done by calling getattr(obj, name) and catching AttributeError.
//
//go:linkname Hasattr py.hasattr
func Hasattr(obj *py.Object, name *py.Object) *py.Object

// Return the hash value for the given object.
//
// Two objects that compare equal must also have the same hash value, but the
// reverse is not necessarily true.
//
//go:linkname Hash py.hash
func Hash(obj *py.Object) *py.Object

// Return the hexadecimal representation of an integer.
//
//	>>> hex(12648430)
//	'0xc0ffee'
//
//go:linkname Hex py.hex
func Hex(number *py.Object) *py.Object

// Return the identity of an object.
//
// This is guaranteed to be unique among simultaneously existing objects.
// (CPython uses the object's memory address.)
//
//go:linkname Id py.id
func Id(obj *py.Object) *py.Object

// Read a string from standard input.  The trailing newline is stripped.
//
// The prompt string, if given, is printed to standard output without a
// trailing newline before reading input.
//
// If the user hits EOF (*nix: Ctrl-D, Windows: Ctrl-Z+Return), raise EOFError.
// On *nix systems, readline is used if available.
//
//go:linkname Input py.input
func Input(prompt *py.Object) *py.Object

// Return whether an object is an instance of a class or of a subclass thereof.
//
// A tuple, as in “isinstance(x, (A, B, ...))“, may be given as the target to
// check against. This is equivalent to “isinstance(x, A) or isinstance(x, B)
// or ...“ etc.
//
//go:linkname Isinstance py.isinstance
func Isinstance(obj *py.Object, classOrTuple *py.Object) *py.Object

// Return whether 'cls' is derived from another class or is the same class.
//
// A tuple, as in “issubclass(x, (A, B, ...))“, may be given as the target to
// check against. This is equivalent to “issubclass(x, A) or issubclass(x, B)
// or ...“.
//
//go:linkname Issubclass py.issubclass
func Issubclass(cls *py.Object, classOrTuple *py.Object) *py.Object

// Return an AsyncIterator for an AsyncIterable object.
//
//go:linkname Aiter py.aiter
func Aiter(asyncIterable *py.Object) *py.Object

// Return the number of items in a container.
//
//go:linkname Len py.len
func Len(obj *py.Object) *py.Object

// Return a dictionary containing the current scope's local variables.
//
// NOTE: Whether or not updates to this dictionary will affect name lookups in
// the local scope and vice-versa is *implementation dependent* and not
// covered by any backwards compatibility guarantees.
//
//go:linkname Locals py.locals
func Locals() *py.Object

// Return the octal representation of an integer.
//
//	>>> oct(342391)
//	'0o1234567'
//
//go:linkname Oct py.oct
func Oct(number *py.Object) *py.Object

// Return the Unicode code point for a one-character string.
//
//go:linkname Ord py.ord
func Ord(c *py.Object) *py.Object

// Equivalent to base**exp with 2 arguments or base**exp % mod with 3 arguments
//
// Some types, such as ints, are able to use a more efficient algorithm when
// invoked using the three argument form.
//
//go:linkname Pow py.pow
func Pow(base *py.Object, exp *py.Object, mod *py.Object) *py.Object

// Prints the values to a stream, or to sys.stdout by default.
//
//	sep
//	  string inserted between values, default a space.
//	end
//	  string appended after the last value, default a newline.
//	file
//	  a file-like object (stream); defaults to the current sys.stdout.
//	flush
//	  whether to forcibly flush the stream.
//
//go:linkname Print py.print
func Print(__llgo_va_list ...interface{}) *py.Object

// Return the canonical string representation of the object.
//
// For many object types, including most builtins, eval(repr(obj)) == obj.
//
//go:linkname Repr py.repr
func Repr(obj *py.Object) *py.Object

// Round a number to a given precision in decimal digits.
//
// The return value is an integer if ndigits is omitted or None.  Otherwise
// the return value has the same type as the number.  ndigits may be negative.
//
//go:linkname Round py.round
func Round(number *py.Object, ndigits *py.Object) *py.Object

// Sets the named attribute on the given object to the specified value.
//
// setattr(x, 'y', v) is equivalent to “x.y = v“
//
//go:linkname Setattr py.setattr
func Setattr(obj *py.Object, name *py.Object, value *py.Object) *py.Object

// Return a new list containing all items from the iterable in ascending order.
//
// A custom key function can be supplied to customize the sort order, and the
// reverse flag can be set to request the result in descending order.
//
//go:linkname Sorted py.sorted
func Sorted(iterable *py.Object) *py.Object

// Return the sum of a 'start' value (default: 0) plus an iterable of numbers
//
// When the iterable is empty, return the start value.
// This function is intended specifically for use with numeric values and may
// reject non-numeric types.
//
//go:linkname Sum py.sum
func Sum(iterable *py.Object, start *py.Object) *py.Object

// Open file and return a stream.  Raise OSError upon failure.
//
// file is either a text or byte string giving the name (and the path
// if the file isn't in the current working directory) of the file to
// be opened or an integer file descriptor of the file to be
// wrapped. (If a file descriptor is given, it is closed when the
// returned I/O object is closed, unless closefd is set to False.)
//
// mode is an optional string that specifies the mode in which the file
// is opened. It defaults to 'r' which means open for reading in text
// mode.  Other common values are 'w' for writing (truncating the file if
// it already exists), 'x' for creating and writing to a new file, and
// 'a' for appending (which on some Unix systems, means that all writes
// append to the end of the file regardless of the current seek position).
// In text mode, if encoding is not specified the encoding used is platform
// dependent: locale.getencoding() is called to get the current locale encoding.
// (For reading and writing raw bytes use binary mode and leave encoding
// unspecified.) The available modes are:
//
// ========= ===============================================================
// Character Meaning
// --------- ---------------------------------------------------------------
// 'r'       open for reading (default)
// 'w'       open for writing, truncating the file first
// 'x'       create a new file and open it for writing
// 'a'       open for writing, appending to the end of the file if it exists
// 'b'       binary mode
// 't'       text mode (default)
// '+'       open a disk file for updating (reading and writing)
// ========= ===============================================================
//
// The default mode is 'rt' (open for reading text). For binary random
// access, the mode 'w+b' opens and truncates the file to 0 bytes, while
// 'r+b' opens the file without truncation. The 'x' mode implies 'w' and
// raises an `FileExistsError` if the file already exists.
//
// Python distinguishes between files opened in binary and text modes,
// even when the underlying operating system doesn't. Files opened in
// binary mode (appending 'b' to the mode argument) return contents as
// bytes objects without any decoding. In text mode (the default, or when
// 't' is appended to the mode argument), the contents of the file are
// returned as strings, the bytes having been first decoded using a
// platform-dependent encoding or using the specified encoding if given.
//
// buffering is an optional integer used to set the buffering policy.
// Pass 0 to switch buffering off (only allowed in binary mode), 1 to select
// line buffering (only usable in text mode), and an integer > 1 to indicate
// the size of a fixed-size chunk buffer.  When no buffering argument is
// given, the default buffering policy works as follows:
//
//   - Binary files are buffered in fixed-size chunks; the size of the buffer
//     is chosen using a heuristic trying to determine the underlying device's
//     "block size" and falling back on `io.DEFAULT_BUFFER_SIZE`.
//     On many systems, the buffer will typically be 4096 or 8192 bytes long.
//
//   - "Interactive" text files (files for which isatty() returns True)
//     use line buffering.  Other text files use the policy described above
//     for binary files.
//
// encoding is the name of the encoding used to decode or encode the
// file. This should only be used in text mode. The default encoding is
// platform dependent, but any encoding supported by Python can be
// passed.  See the codecs module for the list of supported encodings.
//
// errors is an optional string that specifies how encoding errors are to
// be handled---this argument should not be used in binary mode. Pass
// 'strict' to raise a ValueError exception if there is an encoding error
// (the default of None has the same effect), or pass 'ignore' to ignore
// errors. (Note that ignoring encoding errors can lead to data loss.)
// See the documentation for codecs.register or run 'help(codecs.Codec)'
// for a list of the permitted encoding error strings.
//
// newline controls how universal newlines works (it only applies to text
// mode). It can be None, ”, '\n', '\r', and '\r\n'.  It works as
// follows:
//
//   - On input, if newline is None, universal newlines mode is
//     enabled. Lines in the input can end in '\n', '\r', or '\r\n', and
//     these are translated into '\n' before being returned to the
//     caller. If it is ”, universal newline mode is enabled, but line
//     endings are returned to the caller untranslated. If it has any of
//     the other legal values, input lines are only terminated by the given
//     string, and the line ending is returned to the caller untranslated.
//
//   - On output, if newline is None, any '\n' characters written are
//     translated to the system default line separator, os.linesep. If
//     newline is ” or '\n', no translation takes place. If newline is any
//     of the other legal values, any '\n' characters written are translated
//     to the given string.
//
// If closefd is False, the underlying file descriptor will be kept open
// when the file is closed. This does not work when a file name is given
// and must be True in that case.
//
// A custom opener can be used by passing a callable as *opener*. The
// underlying file descriptor for the file object is then obtained by
// calling *opener* with (*file*, *flags*). *opener* must return an open
// file descriptor (passing os.open as *opener* results in functionality
// similar to passing None).
//
// open() returns a file object whose type depends on the mode, and
// through which the standard file operations such as reading and writing
// are performed. When open() is used to open a file in a text mode ('w',
// 'r', 'wt', 'rt', etc.), it returns a TextIOWrapper. When used to open
// a file in a binary mode, the returned class varies: in read binary
// mode, it returns a BufferedReader; in write binary and append binary
// modes, it returns a BufferedWriter, and in read/write mode, it returns
// a BufferedRandom.
//
// It is also possible to use a string or bytearray as a file for both
// reading and writing. For strings StringIO can be used like a file
// opened in a text mode, and for bytes a BytesIO can be used like a file
// opened in a binary mode.
//
//go:linkname Open py.open
func Open(file *py.Object, mode *py.Object, buffering *py.Object, encoding *py.Object, errors *py.Object, newline *py.Object, closefd *py.Object, opener *py.Object) *py.Object
