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

//	struct GetSetDef {
//	    const char *name;
//	    getter get;
//	    setter set;
//	    const char *doc;
//	    void *closure;
//	};
type GetSetDef struct {
	Name    *c.Char
	Get     Getter
	Set     Setter
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

	Tp_dealloc           Destructor
	Tp_vectorcall_offset int
	Tp_getattr           Getattrfunc
	Tp_setattr           Setattrfunc
	Tp_as_async          *AsyncMethods

	Tp_repr Reprfunc

	Tp_as_number   *NumberMethods
	Tp_as_sequence *SequenceMethods
	Tp_as_mapping  *MappingMethods

	Tp_hash     Hashfunc
	Tp_call     Ternaryfunc
	Tp_str      Reprfunc
	Tp_getattro Getattrofunc
	Tp_setattro Setattrofunc

	Tp_as_buffer *BufferProcs

	Tp_flags int

	Tp_doc *c.Char

	Tp_traverse Traverseproc

	Tp_clear Inquiry

	Tp_richcompare    Richcmpfunc
	Tp_weaklistoffset int
	Tp_iter           Getiterfunc
	Tp_iternext       Iternextfunc
	Tp_methods        *MethodDef
	Tp_members        *MemberDef
	Tp_getset         *GetSetDef
	Tp_base           *TypeObject
	Tp_dict           *Object
	Tp_descr_get      Descrgetfunc
	Tp_descr_set      Descrsetfunc
	Tp_dictoffset     int
	Tp_init           Initproc
	Tp_alloc          Allocfunc
	Tp_new            Newfunc
	Tp_free           Freefunc
	Tp_is_gc          Inquiry
	Tp_bases          *Object
	Tp_mro            *Object
	Tp_cache          *Object
	Tp_subclasses     *Object
	Tp_weaklist       *Object
	Tp_del            Destructor
	Tp_version_tag    uint
	Tp_finalize       Destructor
	Tp_vectorcall     Vectorcallfunc
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
type initfunc = c.Pointer

// llgo:type C
type freefunc = func(*Object)

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
	Traverse Traverseproc
	Clear    Inquiry
	Free     freefunc
}

// PyObject *PyCMethod_New(PyMethodDef *ml, PyObject *self, PyObject *module, PyTypeObject *cls)
// Return value: New reference. Part of the Stable ABI since version 3.9.
// Turn ml into a Python callable object. The caller must ensure that ml outlives the callable. Typically, ml is defined as a static variable.
// The self parameter will be passed as the self argument to the C function in ml->ml_meth when invoked. self can be NULL.
// The callable object’s __module__ attribute can be set from the given module argument. module should be a Python string, which will be used as name of the module the function is defined in. If unavailable, it can be set to None or NULL.
// llgo:link (*MethodDef).NewMethod C.PyCMethod_New
func (ml *MethodDef) NewMethod(self, module, cls *Object) *Object

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
