package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// PyHash_FuncDef* PyHash_GetFuncDef(void)
// Get the hash function definition.
//
// .. seealso::
// :pep:`456` "Secure and interchangeable hash algorithm".
//
//go:linkname HashGetFuncDef C.PyHash_GetFuncDef
func HashGetFuncDef() *HashFuncDef

// Py_hash_t
// Hash value type: signed integer.
type HashT = C.Py_hash_t

// Py_uhash_t
// Hash value type: unsigned integer.
type UhashT = C.Py_uhash_t

// PyHash_FuncDef
// Hash function definition used by :c:func:`PyHash_GetFuncDef`.
type HashFuncDef = C.PyHash_FuncDef
