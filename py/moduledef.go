/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package py

/*
#cgo pkg-config: python-3.12-embed
#include <Python.h>
*/
import "C"

import (
	"unsafe"
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

func checkTrue(b bool) {
	if !b {
		panic("check true failed")
	}
}

func init() {
	checkTrue(unsafe.Sizeof(C.PyObject{}) == unsafe.Sizeof(Object{}))
	checkTrue(unsafe.Sizeof(C.PyVarObject{}) == unsafe.Sizeof(VarObject{}))
	checkTrue(unsafe.Sizeof(C.PyModuleDef_Base{}) == unsafe.Sizeof(ModuleDefBase{}))
	checkTrue(unsafe.Sizeof(C.PyModuleDef_Slot{}) == unsafe.Sizeof(ModuleDefSlot{}))
	checkTrue(unsafe.Sizeof(C.PyMethodDef{}) == unsafe.Sizeof(MethodDef{}))
	checkTrue(unsafe.Sizeof(C.PyMemberDef{}) == unsafe.Sizeof(MemberDef{}))
	checkTrue(unsafe.Sizeof(C.PyGetSetDef{}) == unsafe.Sizeof(GetSetDef{}))
	checkTrue(unsafe.Sizeof(C.PyTypeObject{}) == unsafe.Sizeof(TypeObject{}))
}

func None() *Object {
	return (*Object)(unsafe.Pointer(&C._Py_NoneStruct))
}

const (
	TPFLAGS_DEFAULT  = 0
	TPFLAGS_BASETYPE = 1 << 10
)

// #define METH_VARARGS  0x0001
// #define METH_KEYWORDS 0x0002
// /* METH_NOARGS and METH_O must not be combined with the flags above. */
// #define METH_NOARGS   0x0004
// #define METH_O        0x0008

const (
	METH_VARARGS  = 0x0001
	METH_KEYWORDS = 0x0002
	METH_NOARGS   = 0x0004
	METH_O        = 0x0008
)

// /* Types */
// #define Py_T_SHORT     0
// #define Py_T_INT       1
// #define Py_T_LONG      2
// #define Py_T_FLOAT     3
// #define Py_T_DOUBLE    4
// #define Py_T_STRING    5
// #define _Py_T_OBJECT   6  // Deprecated, use Py_T_OBJECT_EX instead
// /* the ordering here is weird for binary compatibility */
// #define Py_T_CHAR      7   /* 1-character string */
// #define Py_T_BYTE      8   /* 8-bit signed int */
// /* unsigned variants: */
// #define Py_T_UBYTE     9
// #define Py_T_USHORT    10
// #define Py_T_UINT      11
// #define Py_T_ULONG     12

// /* Added by Jack: strings contained in the structure */
// #define Py_T_STRING_INPLACE    13

// /* Added by Lillo: bools contained in the structure (assumed char) */
// #define Py_T_BOOL      14

// #define Py_T_OBJECT_EX 16
// #define Py_T_LONGLONG  17
// #define Py_T_ULONGLONG 18

// #define Py_T_PYSSIZET  19      /* Py_ssize_t */
// #define _Py_T_NONE     20 // Deprecated. Value is always None.

const (
	T_SHORT          = 0
	T_INT            = 1
	T_LONG           = 2
	T_FLOAT          = 3
	T_DOUBLE         = 4
	T_STRING         = 5
	T_CHAR           = 7
	T_BYTE           = 8
	T_UBYTE          = 9
	T_USHORT         = 10
	T_UINT           = 11
	T_ULONG          = 12
	T_STRING_INPLACE = 13
	T_BOOL           = 14
	T_OBJECT_EX      = 16
	T_LONGLONG       = 17
	T_ULONGLONG      = 18
	T_PYSSIZET       = 19
	T_NONE           = 20
)

//	typedef struct {
//	    PyObject ob_base;
//	    Py_ssize_t ob_size;
//	} VarObject;
type VarObject struct {
	Ob_base Object
	Ob_size int
}

// typedef void (*destructor)(PyObject *);
// llgo:type C
// type destructor = func(*Object)
type destructor = c.Pointer

// typedef PyObject *(*getattrfunc)(PyObject *, char *);
// llgo:type C
// type getattrfunc = func(*Object, *c.Char) *Object
type getattrfunc = c.Pointer

// typedef PyObject *(*getattrofunc)(PyObject *, PyObject *);
// llgo:type C
// type getattrofunc = func(*Object, *Object) *Object
type getattrofunc = c.Pointer

// typedef int (*setattrfunc)(PyObject *, char *, PyObject *);
// llgo:type C
// type setattrfunc = func(*Object, *c.Char, *Object) c.Int
type setattrfunc = c.Pointer

// typedef int (*setattrofunc)(PyObject *, PyObject *, PyObject *);
// llgo:type C
// type setattrofunc = func(*Object, *Object, *Object) c.Int
type setattrofunc = c.Pointer

// typedef PyObject *(*reprfunc)(PyObject *);
// llgo:type C
// type reprfunc = func(*Object) *Object
type reprfunc = c.Pointer

// typedef Py_hash_t (*hashfunc)(PyObject *);
// llgo:type C
// type hashfunc = func(*Object) c.Int
type hashfunc = c.Pointer

// typedef PyObject * (*ternaryfunc)(PyObject *, PyObject *, PyObject *);
// llgo:type C
// type ternaryfunc = func(*Object, *Object, *Object) *Object
type ternaryfunc = c.Pointer

// typedef PyObject *(*richcmpfunc) (PyObject *, PyObject *, int);
// llgo:type C
// type richcmpfunc = func(*Object, *Object, c.Int) *Object
type richcmpfunc = c.Pointer

// typedef PyObject *(*getiterfunc) (PyObject *);
// llgo:type C
// type getiterfunc = func(*Object) *Object
type getiterfunc = c.Pointer

// typedef PyObject *(*iternextfunc) (PyObject *);
// llgo:type C
// type iternextfunc = func(*Object) *Object
type iternextfunc = c.Pointer

// typedef PyObject *(*descrgetfunc) (PyObject *, PyObject *, PyObject *);
// llgo:type C
// type descrgetfunc = func(*Object, *Object, *Object) *Object
type descrgetfunc = c.Pointer

// typedef int (*descrsetfunc) (PyObject *, PyObject *, PyObject *);
// llgo:type C
// type descrsetfunc = func(*Object, *Object, *Object) c.Int
type descrsetfunc = c.Pointer

// typedef int (*initproc)(PyObject *, PyObject *, PyObject *);
// llgo:type C
// type initproc = func(*Object, *Object, *Object) c.Int
type initproc = c.Pointer

// typedef PyObject *(*newfunc)(TypeObject *, PyObject *, PyObject *);
// llgo:type C
// type newfunc = func(*TypeObject, *Object, *Object) *Object
type newfunc = c.Pointer

// typedef PyObject *(*allocfunc)(TypeObject *, Py_ssize_t);
// llgo:type C
// type allocfunc = func(*TypeObject, int) *Object
type allocfunc = c.Pointer

// typedef PyObject *(*vectorcallfunc)(PyObject *callable, PyObject *const *args, size_t nargsf, PyObject *kwnames);
// llgo:type C
// type vectorcallfunc = func(*Object, *Object, int, *Object) *Object
type vectorcallfunc = c.Pointer

type AsyncMethods struct{}
type NumberMethods struct{}
type SequenceMethods struct{}
type MappingMethods struct{}
type BufferProcs struct{}

//	struct MemberDef {
//	    const char *name;
//	    int type;
//	    Py_ssize_t offset;
//	    int flags;
//	    const char *doc;
//	};
type MemberDef struct {
	Name   *c.Char
	Type   int
	Offset int
	Flags  int
	Doc    *c.Char
}

// typedef PyObject *(*getter)(PyObject *, void *);
// llgo:type C
// type getter = func(*Object, *Object) *Object
type getter = c.Pointer

// typedef int (*setter)(PyObject *, PyObject *, void *);
// llgo:type C
// type setter = func(*Object, *Object, *Object) c.Int
type setter = c.Pointer

//	struct GetSetDef {
//	    const char *name;
//	    getter get;
//	    setter set;
//	    const char *doc;
//	    void *closure;
//	};
type GetSetDef struct {
	Name    *c.Char
	Get     getter
	Set     setter
	Doc     *c.Char
	Closure *Object
}

/*
	struct _typeobject {
	    PyVarObject ob_base;
	    const char *tp_name;
	    Py_ssize_t tp_basicsize, tp_itemsize;



	    destructor tp_dealloc;
	    Py_ssize_t tp_vectorcall_offset;
	    getattrfunc tp_getattr;
	    setattrfunc tp_setattr;
	    PyAsyncMethods *tp_as_async;

	    reprfunc tp_repr;



	    PyNumberMethods *tp_as_number;
	    PySequenceMethods *tp_as_sequence;
	    PyMappingMethods *tp_as_mapping;



	    hashfunc tp_hash;
	    ternaryfunc tp_call;
	    reprfunc tp_str;
	    getattrofunc tp_getattro;
	    setattrofunc tp_setattro;


	    PyBufferProcs *tp_as_buffer;


	    unsigned long tp_flags;

	    const char *tp_doc;



	    traverseproc tp_traverse;


	    inquiry tp_clear;



	    richcmpfunc tp_richcompare;


	    Py_ssize_t tp_weaklistoffset;


	    getiterfunc tp_iter;
	    iternextfunc tp_iternext;


	    PyMethodDef *tp_methods;
	    PyMemberDef *tp_members;
	    PyGetSetDef *tp_getset;

	    TypeObject *tp_base;
	    PyObject *tp_dict;
	    descrgetfunc tp_descr_get;
	    descrsetfunc tp_descr_set;
	    Py_ssize_t tp_dictoffset;
	    initproc tp_init;
	    allocfunc tp_alloc;
	    newfunc tp_new;
	    freefunc tp_free;
	    inquiry tp_is_gc;
	    PyObject *tp_bases;
	    PyObject *tp_mro;
	    PyObject *tp_cache;
	    void *tp_subclasses;
	    PyObject *tp_weaklist;
	    destructor tp_del;


	    unsigned int tp_version_tag;

	    destructor tp_finalize;
	    vectorcallfunc tp_vectorcall;


	    unsigned char tp_watched;
	};
*/
type TypeObject struct {
	Ob_base      VarObject
	Tp_name      *c.Char
	Tp_basicsize int
	Tp_itemsize  int

	Tp_dealloc           destructor
	Tp_vectorcall_offset int
	Tp_getattr           getattrfunc
	Tp_setattr           setattrfunc
	Tp_as_async          *AsyncMethods

	Tp_repr reprfunc

	Tp_as_number   *NumberMethods
	Tp_as_sequence *SequenceMethods
	Tp_as_mapping  *MappingMethods

	Tp_hash     hashfunc
	Tp_call     ternaryfunc
	Tp_str      reprfunc
	Tp_getattro getattrofunc
	Tp_setattro setattrofunc

	Tp_as_buffer *BufferProcs

	Tp_flags int

	Tp_doc *c.Char

	Tp_traverse traverseproc

	Tp_clear inquiry

	Tp_richcompare    richcmpfunc
	Tp_weaklistoffset int
	Tp_iter           getiterfunc
	Tp_iternext       iternextfunc
	Tp_methods        *MethodDef
	Tp_members        *MemberDef
	Tp_getset         *GetSetDef
	Tp_base           *TypeObject
	Tp_dict           *Object
	Tp_descr_get      descrgetfunc
	Tp_descr_set      descrsetfunc
	Tp_dictoffset     int
	Tp_init           initproc
	Tp_alloc          allocfunc
	Tp_new            newfunc
	Tp_free           freefunc
	Tp_is_gc          inquiry
	Tp_bases          *Object
	Tp_mro            *Object
	Tp_cache          *Object
	Tp_subclasses     *Object
	Tp_weaklist       *Object
	Tp_del            destructor
	Tp_version_tag    uint
	Tp_finalize       destructor
	Tp_vectorcall     vectorcallfunc
	Tp_watched        uint8
}

// typedef PyObject *(*CFunction)(PyObject *, PyObject *);
type CFunction = c.Pointer

//	struct MethodDef {
//	    const char *ml_name;
//	    PyCFunction ml_meth;
//	    int ml_flags;
//		const char *ml_doc;
//	};
type MethodDef struct {
	Name  *c.Char
	Func  CFunction
	Flags c.Int
	Doc   *c.Char
}

// llgo:type C
// type initfunc = func() *Object
type initfunc = c.Pointer

//	typedef struct PyModuleDef_Base {
//	  PyObject ob_base;
//	  PyObject* (*m_init)(void);
//	  Py_ssize_t m_index;
//	  PyObject* m_copy;
//	} PyModuleDef_Base;
type ModuleDefBase struct {
	Ob_base Object
	M_init  initfunc
	M_index int
	M_copy  *Object
}

//	struct PyModuleDef_Slot {
//	    int slot;
//	    void *value;
//	};
type ModuleDefSlot struct {
	Slot  int
	Value *Object
}

// typedef int (*visitproc)(PyObject *, void *);
// llgo:type C
// type visitproc = func(*Object, *Object) c.Int
type visitproc = c.Pointer

// typedef int (*traverseproc)(PyObject *, visitproc, void *);
// llgo:type C
// type traverseproc = func(*Object, visitproc, *Object) c.Int
type traverseproc = c.Pointer

// typedef int (*inquiry)(PyObject *);
// llgo:type C
// type inquiry = func(*Object) c.Int
type inquiry = c.Pointer

// typedef void (*freefunc)(void *);
// llgo:type C
// type freefunc = func(*Object)
type freefunc = c.Pointer

//	struct ModuleDef {
//	  PyModuleDef_Base m_base;
//	  const char* m_name;
//	  const char* m_doc;
//	  Py_ssize_t m_size;
//	  PyMethodDef *m_methods;
//	  PyModuleDef_Slot *m_slots;
//	  traverseproc m_traverse;
//	  inquiry m_clear;
//	  freefunc m_free;
//	};
type ModuleDef struct {
	Base     ModuleDefBase
	Name     *c.Char
	Doc      *c.Char
	Size     int
	Methods  *MethodDef
	Slots    *ModuleDefSlot
	Traverse traverseproc
	Clear    inquiry
	Free     freefunc
}

// #define _Py_IMMORTAL_REFCNT _Py_CAST(Py_ssize_t, UINT_MAX >> 2)
const _Py_IMMORTAL_REFCNT = 0x7FFFFFFF

// #if defined(Py_GIL_DISABLED)
//
//	#define PyObject_HEAD_INIT(type)    \
//	    {                               \
//	        0,                          \
//	        0,                          \
//	        { 0 },                      \
//	        0,                          \
//	        _Py_IMMORTAL_REFCNT_LOCAL,  \
//	        0,                          \
//	        (type),                     \
//	    },
//
// #else
//
//	#define PyObject_HEAD_INIT(type)    \
//	    {                               \
//	        { _Py_IMMORTAL_REFCNT },    \
//	        (type)                      \
//	    },
//
// #endif
func PyObject_HEAD_INIT(t c.Pointer) Object {
	return Object{
		ObRefcnt: _Py_IMMORTAL_REFCNT,
		ObType:   t,
	}
}

//	#define PyModuleDef_HEAD_INIT {  \
//	    PyObject_HEAD_INIT(_Py_NULL) \
//	    _Py_NULL, /* m_init */       \
//	    0,        /* m_index */      \
//	    _Py_NULL, /* m_copy */       \
//	  }
func PyModuleDef_HEAD_INIT() ModuleDefBase {
	return ModuleDefBase{
		Ob_base: PyObject_HEAD_INIT(nil),
		M_init:  nil,
		M_index: 0,
		M_copy:  nil,
	}
}

// PyObject * PyModule_Create2(PyModuleDef*, int apiver);
//
//go:linkname ModuleCreate2 C.PyModule_Create2
func ModuleCreate2(def *ModuleDef, apiver int) *Object

/*
#define PyObject_HEAD                   PyObject ob_base;

#if defined(Py_GIL_DISABLED)
#define PyObject_HEAD_INIT(type)    \
    {                               \
        0,                          \
        0,                          \
        { 0 },                      \
        0,                          \
        _Py_IMMORTAL_REFCNT_LOCAL,  \
        0,                          \
        (type),                     \
    },
#else
#define PyObject_HEAD_INIT(type)    \
    {                               \
        { _Py_IMMORTAL_REFCNT },    \
        (type)                      \
    },
#endif
*/

// llgo:link (*Object).Init C.PyObject_Init
func (o *Object) Init(tp *TypeObject) *Object { return nil }

// llgo:link (*TypeObject).Ready C.PyType_Ready
func (tp *TypeObject) Ready() c.Int { return 0 }

// PyAPI_FUNC(PyObject *) PyType_GenericNew(TypeObject *, PyObject *, PyObject *);
//
// llgo:link (*TypeObject).GenericNew C.PyType_GenericNew
func (tp *TypeObject) GenericNew(ob *Object, args *Object) *Object { return nil }

// llgo:link ModuleAddObject C.PyModule_AddObject
func ModuleAddObject(module *Object, name *c.Char, value *Object) c.Int { return 0 }
