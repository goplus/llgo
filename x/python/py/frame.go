package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyFrame_Check(PyObject *obj)
// Return non-zero if *obj* is a frame object.
//
// Previously, this function was only available after including
// “<frameobject.h>“.
//
//go:linkname FrameCheck PyFrame_Check
func FrameCheck(obj *Object) Int

// PyFrameObject* PyFrame_GetBack(PyFrameObject *frame)
// Get the *frame* next outer frame.
//
// Return a :term:`strong reference`, or “NULL“ if *frame* has no outer
// frame.
//
//go:linkname FrameGetBack PyFrame_GetBack
func FrameGetBack(frame *FrameObject) *FrameObject

// PyObject* PyFrame_GetBuiltins(PyFrameObject *frame)
// Get the *frame*'s :attr:`~frame.f_builtins` attribute.
//
// Return a :term:`strong reference`. The result cannot be “NULL“.
//
//go:linkname FrameGetBuiltins PyFrame_GetBuiltins
func FrameGetBuiltins(frame *FrameObject) *Object

// PyCodeObject* PyFrame_GetCode(PyFrameObject *frame)
// Get the *frame* code.
//
// Return a :term:`strong reference`.
//
// The result (frame code) cannot be “NULL“.
//
//go:linkname FrameGetCode PyFrame_GetCode
func FrameGetCode(frame *FrameObject) *CodeObject

// PyObject* PyFrame_GetGenerator(PyFrameObject *frame)
// Get the generator, coroutine, or async generator that owns this frame,
// or “NULL“ if this frame is not owned by a generator.
// Does not raise an exception, even if the return value is “NULL“.
//
// Return a :term:`strong reference`, or “NULL“.
//
//go:linkname FrameGetGenerator PyFrame_GetGenerator
func FrameGetGenerator(frame *FrameObject) *Object

// PyObject* PyFrame_GetGlobals(PyFrameObject *frame)
// Get the *frame*'s :attr:`~frame.f_globals` attribute.
//
// Return a :term:`strong reference`. The result cannot be “NULL“.
//
//go:linkname FrameGetGlobals PyFrame_GetGlobals
func FrameGetGlobals(frame *FrameObject) *Object

// int PyFrame_GetLasti(PyFrameObject *frame)
// Get the *frame*'s :attr:`~frame.f_lasti` attribute.
//
// Returns -1 if “frame.f_lasti“ is “None“.
//
//go:linkname FrameGetLasti PyFrame_GetLasti
func FrameGetLasti(frame *FrameObject) Int

// PyObject* PyFrame_GetVar(PyFrameObject *frame, PyObject *name)
// Get the variable *name* of *frame*.
//
// * Return a :term:`strong reference` to the variable value on success.
// * Raise :exc:`NameError` and return “NULL“ if the variable does not exist.
// * Raise an exception and return “NULL“ on error.
//
// *name* type must be a :class:`str`.
//
//go:linkname FrameGetVar PyFrame_GetVar
func FrameGetVar(frame *FrameObject, name *Object) *Object

// PyObject* PyFrame_GetVarString(PyFrameObject *frame, const char *name)
// Similar to :c:func:`PyFrame_GetVar`, but the variable name is a C string
// encoded in UTF-8.
//
//go:linkname FrameGetVarString PyFrame_GetVarString
func FrameGetVarString(frame *FrameObject, name *Char) *Object

// PyObject* PyFrame_GetLocals(PyFrameObject *frame)
// Get the *frame*'s :attr:`~frame.f_locals` attribute.
// If the frame refers to an :term:`optimized scope`, this returns a
// write-through proxy object that allows modifying the locals.
// In all other cases (classes, modules, :func:`exec`, :func:`eval`) it returns
// the mapping representing the frame locals directly (as described for
// :func:`locals`).
//
// Return a :term:`strong reference`.
//
// As part of :pep:`667`, return a proxy object for optimized scopes.
//
//go:linkname FrameGetLocals PyFrame_GetLocals
func FrameGetLocals(frame *FrameObject) *Object

// int PyFrame_GetLineNumber(PyFrameObject *frame)
// Return the line number that *frame* is currently executing.
//
// Internal Frames
// ^^^^^^^^^^^^^^^
//
// Unless using :pep:`523`, you will not need this.
//
//go:linkname FrameGetLineNumber PyFrame_GetLineNumber
func FrameGetLineNumber(frame *FrameObject) Int

// PyObject* PyUnstable_InterpreterFrame_GetCode(struct _PyInterpreterFrame *frame);
// Return a :term:`strong reference` to the code object for the frame.
//
//go:linkname UnstableInterpreterFrameGetCode PyUnstable_InterpreterFrame_GetCode
func UnstableInterpreterFrameGetCode(frame *InterpreterFrame) *Object

// int PyUnstable_InterpreterFrame_GetLasti(struct _PyInterpreterFrame *frame);
// Return the byte offset into the last executed instruction.
//
//go:linkname UnstableInterpreterFrameGetLasti PyUnstable_InterpreterFrame_GetLasti
func UnstableInterpreterFrameGetLasti(frame *InterpreterFrame) Int

// int PyUnstable_InterpreterFrame_GetLine(struct _PyInterpreterFrame *frame);
// Return the currently executing line number, or -1 if there is no line number.
//
//go:linkname UnstableInterpreterFrameGetLine PyUnstable_InterpreterFrame_GetLine
func UnstableInterpreterFrameGetLine(frame *InterpreterFrame) Int

// PyFrameObject
// The C structure of the objects used to describe frame objects.
//
// There are no public members in this structure.
//
// The members of this structure were removed from the public C API.
// Refer to the :ref:`What's New entry <pyframeobject-3.11-hiding>`
// for details.
//
// The :c:func:`PyEval_GetFrame` and :c:func:`PyThreadState_GetFrame` functions
// can be used to get a frame object.
//
// See also :ref:`Reflection <reflection>`.
type FrameObject = C.PyFrameObject

// struct _PyInterpreterFrame
// The interpreter's internal frame representation.
type InterpreterFrame struct{}

// PyTypeObject PyFrame_Type
// The type of frame objects.
// It is the same object as :py:class:`types.FrameType` in the Python layer.
//
// Previously, this type was only available after including
// “<frameobject.h>“.
func FrameType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyFrame_Type))
}
