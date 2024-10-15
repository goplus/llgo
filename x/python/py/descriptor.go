package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// PyObject* PyDescr_NewGetSet(PyTypeObject *type, struct PyGetSetDef *getset)

//
//go:linkname DescrNewGetSet C.PyDescr_NewGetSet
func DescrNewGetSet(type_ *TypeObject, getset *GetSetDef) *Object

// PyObject* PyDescr_NewMember(PyTypeObject *type, struct PyMemberDef *meth)

//
//go:linkname DescrNewMember C.PyDescr_NewMember
func DescrNewMember(type_ *TypeObject, meth *MemberDef) *Object

// PyObject* PyDescr_NewMethod(PyTypeObject *type, struct PyMethodDef *meth)

//
//go:linkname DescrNewMethod C.PyDescr_NewMethod
func DescrNewMethod(type_ *TypeObject, meth *MethodDef) *Object

// PyObject* PyDescr_NewClassMethod(PyTypeObject *type, PyMethodDef *method)

//
//go:linkname DescrNewClassMethod C.PyDescr_NewClassMethod
func DescrNewClassMethod(type_ *TypeObject, method *MethodDef) *Object

// int PyDescr_IsData(PyObject *descr)
// Return non-zero if the descriptor objects *descr* describes a data attribute, or
// “0“ if it describes a method.  *descr* must be a descriptor object; there is
// no error checking.
//
//go:linkname DescrIsData C.PyDescr_IsData
func DescrIsData(descr *Object) Int

// PyObject* PyWrapper_New(PyObject *, PyObject *)

//
//go:linkname WrapperNew C.PyWrapper_New
func WrapperNew(*Object, *Object) *Object

// PyTypeObject PyProperty_Type
// The type object for the built-in descriptor types.
func PropertyType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyProperty_Type))
}
