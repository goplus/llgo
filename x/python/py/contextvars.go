package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyContext_CheckExact(PyObject *o)
// Return true if *o* is of type :c:data:`PyContext_Type`. *o* must not be
// “NULL“.  This function always succeeds.
//
//go:linkname ContextCheckExact PyContext_CheckExact
func ContextCheckExact(o *Object) Int

// int PyContextVar_CheckExact(PyObject *o)
// Return true if *o* is of type :c:data:`PyContextVar_Type`. *o* must not be
// “NULL“.  This function always succeeds.
//
//go:linkname ContextVarCheckExact PyContextVar_CheckExact
func ContextVarCheckExact(o *Object) Int

// int PyContextToken_CheckExact(PyObject *o)
// Return true if *o* is of type :c:data:`PyContextToken_Type`.
// *o* must not be “NULL“.  This function always succeeds.
//
// Context object management functions:
//
//go:linkname ContextTokenCheckExact PyContextToken_CheckExact
func ContextTokenCheckExact(o *Object) Int

// PyObject *PyContext_New(void)
// Create a new empty context object.  Returns “NULL“ if an error
// has occurred.
//
//go:linkname ContextNew PyContext_New
func ContextNew() *Object

// PyObject *PyContext_Copy(PyObject *ctx)
// Create a shallow copy of the passed *ctx* context object.
// Returns “NULL“ if an error has occurred.
//
//go:linkname ContextCopy PyContext_Copy
func ContextCopy(ctx *Object) *Object

// PyObject *PyContext_CopyCurrent(void)
// Create a shallow copy of the current thread context.
// Returns “NULL“ if an error has occurred.
//
//go:linkname ContextCopyCurrent PyContext_CopyCurrent
func ContextCopyCurrent() *Object

// int PyContext_Enter(PyObject *ctx)
// Set *ctx* as the current context for the current thread.
// Returns “0“ on success, and “-1“ on error.
//
//go:linkname ContextEnter PyContext_Enter
func ContextEnter(ctx *Object) Int

// int PyContext_Exit(PyObject *ctx)
// Deactivate the *ctx* context and restore the previous context as the
// current context for the current thread.  Returns “0“ on success,
// and “-1“ on error.
//
//go:linkname ContextExit PyContext_Exit
func ContextExit(ctx *Object) Int

// PyObject *PyContextVar_New(const char *name, PyObject *def)
// Create a new “ContextVar“ object.  The *name* parameter is used
// for introspection and debug purposes.  The *def* parameter specifies
// a default value for the context variable, or “NULL“ for no default.
// If an error has occurred, this function returns “NULL“.
//
//go:linkname ContextVarNew PyContextVar_New
func ContextVarNew(name *Char, def *Object) *Object

// int PyContextVar_Get(PyObject *var, PyObject *default_value, PyObject **value)
// Get the value of a context variable.  Returns “-1“ if an error has
// occurred during lookup, and “0“ if no error occurred, whether or not
// a value was found.
//
// If the context variable was found, *value* will be a pointer to it.
// If the context variable was *not* found, *value* will point to:
//
// - *default_value*, if not “NULL“;
// - the default value of *var*, if not “NULL“;
// - “NULL“
//
// Except for “NULL“, the function returns a new reference.
//
//go:linkname ContextVarGet PyContextVar_Get
func ContextVarGet(var_ *Object, defaultValue *Object, value **Object) Int

// PyObject *PyContextVar_Set(PyObject *var, PyObject *value)
// Set the value of *var* to *value* in the current context.  Returns
// a new token object for this change, or “NULL“ if an error has occurred.
//
//go:linkname ContextVarSet PyContextVar_Set
func ContextVarSet(var_ *Object, value *Object) *Object

// int PyContextVar_Reset(PyObject *var, PyObject *token)
// Reset the state of the *var* context variable to that it was in before
// :c:func:`PyContextVar_Set` that returned the *token* was called.
// This function returns “0“ on success and “-1“ on error.
//
//go:linkname ContextVarReset PyContextVar_Reset
func ContextVarReset(var_ *Object, token *Object) Int

// PyContext
// The C structure used to represent a :class:`contextvars.Context`
// object.
type Context = C.PyContext

// PyContextVar
// The C structure used to represent a :class:`contextvars.ContextVar`
// object.
type ContextVar = C.PyContextVar

// PyContextToken
// The C structure used to represent a :class:`contextvars.Token` object.
type ContextToken = C.PyContextToken

// PyTypeObject PyContext_Type
// The type object representing the *context* type.
func ContextType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyContext_Type))
}

// PyTypeObject PyContextVar_Type
// The type object representing the *context variable* type.
func ContextVarType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyContextVar_Type))
}

// PyTypeObject PyContextToken_Type
// The type object representing the *context variable token* type.
//
// Type-check macros:
func ContextTokenType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyContextToken_Type))
}
