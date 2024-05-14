package sys

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.sys"

// Adds a new audit hook callback.
//
//go:linkname Addaudithook py.addaudithook
func Addaudithook(hook *py.Object) *py.Object

// Print an object to sys.stdout and also save it in builtins._
//
//go:linkname Displayhook py.displayhook
func Displayhook(object *py.Object) *py.Object

// Return the current exception.
//
// Return the most recent exception caught by an except clause
// in the current stack frame or in an older stack frame, or None
// if no such exception exists.
//
//go:linkname Exception py.exception
func Exception() *py.Object

// Return current exception information: (type, value, traceback).
//
// Return information about the most recent exception caught by an except
// clause in the current stack frame or in an older stack frame.
//
//go:linkname ExcInfo py.exc_info
func ExcInfo() *py.Object

// Handle an exception by displaying it with a traceback on sys.stderr.
//
//go:linkname Excepthook py.excepthook
func Excepthook(exctype *py.Object, value *py.Object, traceback *py.Object) *py.Object

// Exit the interpreter by raising SystemExit(status).
//
// If the status is omitted or None, it defaults to zero (i.e., success).
// If the status is an integer, it will be used as the system exit status.
// If it is another kind of object, it will be printed and the system
// exit status will be one (i.e., failure).
//
//go:linkname Exit py.exit
func Exit(status *py.Object) *py.Object

// Return the current default encoding used by the Unicode implementation.
//
//go:linkname Getdefaultencoding py.getdefaultencoding
func Getdefaultencoding() *py.Object

// Return the current value of the flags that are used for dlopen calls.
//
// The flag constants are defined in the os module.
//
//go:linkname Getdlopenflags py.getdlopenflags
func Getdlopenflags() *py.Object

// Return the number of memory blocks currently allocated.
//
//go:linkname Getallocatedblocks py.getallocatedblocks
func Getallocatedblocks() *py.Object

// Return the number of elements of the unicode interned dictionary
//
//go:linkname Getunicodeinternedsize py.getunicodeinternedsize
func Getunicodeinternedsize() *py.Object

// Return the encoding used to convert Unicode filenames to OS filenames.
//
//go:linkname Getfilesystemencoding py.getfilesystemencoding
func Getfilesystemencoding() *py.Object

// Return the error mode used Unicode to OS filename conversion.
//
//go:linkname Getfilesystemencodeerrors py.getfilesystemencodeerrors
func Getfilesystemencodeerrors() *py.Object

// Return the reference count of object.
//
// The count returned is generally one higher than you might expect,
// because it includes the (temporary) reference as an argument to
// getrefcount().
//
//go:linkname Getrefcount py.getrefcount
func Getrefcount(object *py.Object) *py.Object

// Return the current value of the recursion limit.
//
// The recursion limit is the maximum depth of the Python interpreter
// stack.  This limit prevents infinite recursion from causing an overflow
// of the C stack and crashing Python.
//
//go:linkname Getrecursionlimit py.getrecursionlimit
func Getrecursionlimit() *py.Object

// “Intern” the given string.
//
// This enters the string in the (global) table of interned strings whose
// purpose is to speed up dictionary lookups. Return the string itself or
// the previously interned string object with the same value.
//
//go:linkname Intern py.intern
func Intern(string *py.Object) *py.Object

// Return True if Python is exiting.
//
//go:linkname IsFinalizing py.is_finalizing
func IsFinalizing() *py.Object

// Set the ideal thread switching delay inside the Python interpreter.
//
// The actual frequency of switching threads can be lower if the
// interpreter executes long sequences of uninterruptible code
// (this is implementation-specific and workload-dependent).
//
// The parameter must represent the desired switching delay in seconds
// A typical value is 0.005 (5 milliseconds).
//
//go:linkname Setswitchinterval py.setswitchinterval
func Setswitchinterval(interval *py.Object) *py.Object

// Return the current thread switch interval; see sys.setswitchinterval().
//
//go:linkname Getswitchinterval py.getswitchinterval
func Getswitchinterval() *py.Object

// Set the flags used by the interpreter for dlopen calls.
//
// This is used, for example, when the interpreter loads extension
// modules. Among other things, this will enable a lazy resolving of
// symbols when importing a module, if called as sys.setdlopenflags(0).
// To share symbols across extension modules, call as
// sys.setdlopenflags(os.RTLD_GLOBAL).  Symbolic names for the flag
// modules can be found in the os module (RTLD_xxx constants, e.g.
// os.RTLD_LAZY).
//
//go:linkname Setdlopenflags py.setdlopenflags
func Setdlopenflags(flags *py.Object) *py.Object

// Set the maximum depth of the Python interpreter stack to n.
//
// This limit prevents infinite recursion from causing an overflow of the C
// stack and crashing Python.  The highest possible limit is platform-
// dependent.
//
//go:linkname Setrecursionlimit py.setrecursionlimit
func Setrecursionlimit(limit *py.Object) *py.Object

// Return the global debug tracing function set with sys.settrace.
//
// See the debugger chapter in the library manual.
//
//go:linkname Gettrace py.gettrace
func Gettrace() *py.Object

// Call func(*args), while tracing is enabled.
//
// The tracing state is saved, and restored afterwards.  This is intended
// to be called from a debugger from a checkpoint, to recursively debug
// some other code.
//
//go:linkname CallTracing py.call_tracing
func CallTracing(func_ *py.Object, args *py.Object) *py.Object

// Enable or disable origin tracking for coroutine objects in this thread.
//
// Coroutine objects will track 'depth' frames of traceback information
// about where they came from, available in their cr_origin attribute.
//
// Set a depth of 0 to disable.
//
//go:linkname SetCoroutineOriginTrackingDepth py.set_coroutine_origin_tracking_depth
func SetCoroutineOriginTrackingDepth(depth *py.Object) *py.Object

// Check status of origin tracking for coroutine objects in this thread.
//
//go:linkname GetCoroutineOriginTrackingDepth py.get_coroutine_origin_tracking_depth
func GetCoroutineOriginTrackingDepth() *py.Object

// Deactivate the current stack profiler trampoline backend.
//
// If no stack profiler is activated, this function has no effect.
//
//go:linkname DeactivateStackTrampoline py.deactivate_stack_trampoline
func DeactivateStackTrampoline() *py.Object

// Return *True* if a stack profiler trampoline is active.
//
//go:linkname IsStackTrampolineActive py.is_stack_trampoline_active
func IsStackTrampolineActive() *py.Object

// Handle an unraisable exception.
//
// The unraisable argument has the following attributes:
//
// * exc_type: Exception type.
// * exc_value: Exception value, can be None.
// * exc_traceback: Exception traceback, can be None.
// * err_msg: Error message, can be None.
// * object: Object causing the exception, can be None.
//
//go:linkname Unraisablehook py.unraisablehook
func Unraisablehook(unraisable *py.Object) *py.Object

// Return the maximum string digits limit for non-binary int<->str conversions.
//
//go:linkname GetIntMaxStrDigits py.get_int_max_str_digits
func GetIntMaxStrDigits() *py.Object

// Set the maximum string digits limit for non-binary int<->str conversions.
//
//go:linkname SetIntMaxStrDigits py.set_int_max_str_digits
func SetIntMaxStrDigits(maxdigits *py.Object) *py.Object
