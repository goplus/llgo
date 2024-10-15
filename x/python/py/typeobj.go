package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// PyNumberMethods
// This structure holds pointers to the functions which an object uses to
// implement the number protocol.  Each function is used by the function of
// similar name documented in the :ref:`number` section.
//
// .. XXX Drop the definition?
//
// Here is the structure definition::
//
// typedef struct {
// binaryfunc nb_add;
// binaryfunc nb_subtract;
// binaryfunc nb_multiply;
// binaryfunc nb_remainder;
// binaryfunc nb_divmod;
// ternaryfunc nb_power;
// unaryfunc nb_negative;
// unaryfunc nb_positive;
// unaryfunc nb_absolute;
// inquiry nb_bool;
// unaryfunc nb_invert;
// binaryfunc nb_lshift;
// binaryfunc nb_rshift;
// binaryfunc nb_and;
// binaryfunc nb_xor;
// binaryfunc nb_or;
// unaryfunc nb_int;
// void *nb_reserved;
// unaryfunc nb_float;
//
// binaryfunc nb_inplace_add;
// binaryfunc nb_inplace_subtract;
// binaryfunc nb_inplace_multiply;
// binaryfunc nb_inplace_remainder;
// ternaryfunc nb_inplace_power;
// binaryfunc nb_inplace_lshift;
// binaryfunc nb_inplace_rshift;
// binaryfunc nb_inplace_and;
// binaryfunc nb_inplace_xor;
// binaryfunc nb_inplace_or;
//
// binaryfunc nb_floor_divide;
// binaryfunc nb_true_divide;
// binaryfunc nb_inplace_floor_divide;
// binaryfunc nb_inplace_true_divide;
//
// unaryfunc nb_index;
//
// binaryfunc nb_matrix_multiply;
// binaryfunc nb_inplace_matrix_multiply;
// } PyNumberMethods;
//
// .. note::
//
// Binary and ternary functions must check the type of all their operands,
// and implement the necessary conversions (at least one of the operands is
// an instance of the defined type).  If the operation is not defined for the
// given operands, binary and ternary functions must return
// “Py_NotImplemented“, if another error occurred they must return “NULL“
// and set an exception.
//
// .. note::
//
// The :c:member:`~PyNumberMethods.nb_reserved` field should always be “NULL“.  It
// was previously called :c:member:`!nb_long`, and was renamed in
// Python 3.0.1.
type NumberMethods = C.PyNumberMethods

// PyMappingMethods
// This structure holds pointers to the functions which an object uses to
// implement the mapping protocol.  It has three members:
type MappingMethods = C.PyMappingMethods

// PySequenceMethods
// This structure holds pointers to the functions which an object uses to
// implement the sequence protocol.
type SequenceMethods = C.PySequenceMethods

// PyBufferProcs
// This structure holds pointers to the functions required by the
// :ref:`Buffer protocol <bufferobjects>`. The protocol defines how
// an exporter object can expose its internal data to consumer objects.
type BufferProcs = C.PyBufferProcs

// PyAsyncMethods
// This structure holds pointers to the functions required to implement
// :term:`awaitable` and :term:`asynchronous iterator` objects.
//
// Here is the structure definition::
//
// typedef struct {
// unaryfunc am_await;
// unaryfunc am_aiter;
// unaryfunc am_anext;
// sendfunc am_send;
// } PyAsyncMethods;
type AsyncMethods = C.PyAsyncMethods

// PyObject *(*allocfunc)(PyTypeObject *cls, Py_ssize_t nitems)
// The purpose of this function is to separate memory allocation from memory
// initialization.  It should return a pointer to a block of memory of adequate
// length for the instance, suitably aligned, and initialized to zeros, but with
// :c:member:`~PyObject.ob_refcnt` set to “1“ and :c:member:`~PyObject.ob_type` set to the type argument.  If
// the type's :c:member:`~PyTypeObject.tp_itemsize` is non-zero, the object's :c:member:`~PyVarObject.ob_size` field
// should be initialized to *nitems* and the length of the allocated memory block
// should be “tp_basicsize + nitems*tp_itemsize“, rounded up to a multiple of
// “sizeof(void*)“; otherwise, *nitems* is not used and the length of the block
// should be :c:member:`~PyTypeObject.tp_basicsize`.
//
// This function should not do any other instance initialization, not even to
// allocate additional memory; that should be done by :c:member:`~PyTypeObject.tp_new`.
// llgo:type C
type Allocfunc func(cls *TypeObject, nitems SSizeT) *Object

// void (*destructor)(PyObject *)

// llgo:type C
type Destructor func(*Object)

// void (*freefunc)(void *)
// See :c:member:`~PyTypeObject.tp_free`.
// llgo:type C
type Freefunc func(Pointer)

// PyObject *(*newfunc)(PyObject *, PyObject *, PyObject *)
// See :c:member:`~PyTypeObject.tp_new`.
// llgo:type C
type Newfunc func(*Object, *Object, *Object) *Object

// int (*initproc)(PyObject *, PyObject *, PyObject *)
// See :c:member:`~PyTypeObject.tp_init`.
// llgo:type C
type Initproc func(*Object, *Object, *Object) Int

// PyObject *(*reprfunc)(PyObject *)
// See :c:member:`~PyTypeObject.tp_repr`.
// llgo:type C
type Reprfunc func(*Object) *Object

// PyObject *(*getattrfunc)(PyObject *self, char *attr)
// Return the value of the named attribute for the object.
// llgo:type C
type Getattrfunc func(self *Object, attr *Char) *Object

// int (*setattrfunc)(PyObject *self, char *attr, PyObject *value)
// Set the value of the named attribute for the object.
// The value argument is set to “NULL“ to delete the attribute.
// llgo:type C
type Setattrfunc func(self *Object, attr *Char, value *Object) Int

// PyObject *(*getattrofunc)(PyObject *self, PyObject *attr)
// Return the value of the named attribute for the object.
//
// See :c:member:`~PyTypeObject.tp_getattro`.
// llgo:type C
type Getattrofunc func(self *Object, attr *Object) *Object

// int (*setattrofunc)(PyObject *self, PyObject *attr, PyObject *value)
// Set the value of the named attribute for the object.
// The value argument is set to “NULL“ to delete the attribute.
//
// See :c:member:`~PyTypeObject.tp_setattro`.
// llgo:type C
type Setattrofunc func(self *Object, attr *Object, value *Object) Int

// PyObject *(*descrgetfunc)(PyObject *, PyObject *, PyObject *)
// See :c:member:`~PyTypeObject.tp_descr_get`.
// llgo:type C
type Descrgetfunc func(*Object, *Object, *Object) *Object

// int (*descrsetfunc)(PyObject *, PyObject *, PyObject *)
// See :c:member:`~PyTypeObject.tp_descr_set`.
// llgo:type C
type Descrsetfunc func(*Object, *Object, *Object) Int

// Py_hash_t (*hashfunc)(PyObject *)
// See :c:member:`~PyTypeObject.tp_hash`.
// llgo:type C
type Hashfunc func(*Object) HashT

// PyObject *(*richcmpfunc)(PyObject *, PyObject *, int)
// See :c:member:`~PyTypeObject.tp_richcompare`.
// llgo:type C
type Richcmpfunc func(*Object, *Object, Int) *Object

// PyObject *(*getiterfunc)(PyObject *)
// See :c:member:`~PyTypeObject.tp_iter`.
// llgo:type C
type Getiterfunc func(*Object) *Object

// PyObject *(*iternextfunc)(PyObject *)
// See :c:member:`~PyTypeObject.tp_iternext`.
// llgo:type C
type Iternextfunc func(*Object) *Object

// Py_ssize_t (*lenfunc)(PyObject *)

// llgo:type C
type Lenfunc func(*Object) SSizeT

// int (*getbufferproc)(PyObject *, Py_buffer *, int)

// llgo:type C
type Getbufferproc func(*Object, *Buffer, Int) Int

// void (*releasebufferproc)(PyObject *, Py_buffer *)

// llgo:type C
type Releasebufferproc func(*Object, *Buffer)

// PyObject *(*unaryfunc)(PyObject *)

// llgo:type C
type Unaryfunc func(*Object) *Object

// PyObject *(*binaryfunc)(PyObject *, PyObject *)

// llgo:type C
type Binaryfunc func(*Object, *Object) *Object

// PySendResult (*sendfunc)(PyObject *, PyObject *, PyObject **)
// See :c:member:`~PyAsyncMethods.am_send`.
// llgo:type C
type Sendfunc func(*Object, *Object, **Object) SendResult

// PyObject *(*ternaryfunc)(PyObject *, PyObject *, PyObject *)

// llgo:type C
type Ternaryfunc func(*Object, *Object, *Object) *Object

// PyObject *(*ssizeargfunc)(PyObject *, Py_ssize_t)

// llgo:type C
type Ssizeargfunc func(*Object, SSizeT) *Object

// int (*ssizeobjargproc)(PyObject *, Py_ssize_t, PyObject *)

// llgo:type C
type Ssizeobjargproc func(*Object, SSizeT, *Object) Int

// int (*objobjproc)(PyObject *, PyObject *)

// llgo:type C
type Objobjproc func(*Object, *Object) Int

// int (*objobjargproc)(PyObject *, PyObject *, PyObject *)
// .. _typedef-examples:
//
// Examples
// ========
//
// The following are simple examples of Python type definitions.  They
// include common usage you may encounter.  Some demonstrate tricky corner
// cases.  For more examples, practical info, and a tutorial, see
// :ref:`defining-new-types` and :ref:`new-types-topics`.
//
// A basic :ref:`static type <static-types>`::
//
// typedef struct {
// PyObject_HEAD
// const char *data;
// } MyObject;
//
// static PyTypeObject MyObject_Type = {
// PyVarObject_HEAD_INIT(NULL, 0)
// .tp_name = "mymod.MyObject",
// .tp_basicsize = sizeof(MyObject),
// .tp_doc = PyDoc_STR("My objects"),
// .tp_new = myobj_new,
// .tp_dealloc = (destructor)myobj_dealloc,
// .tp_repr = (reprfunc)myobj_repr,
// };
//
// You may also find older code (especially in the CPython code base)
// with a more verbose initializer::
//
// static PyTypeObject MyObject_Type = {
// PyVarObject_HEAD_INIT(NULL, 0)
// "mymod.MyObject",               /* tp_name */
// sizeof(MyObject),               /* tp_basicsize */
// 0,                              /* tp_itemsize */
// (destructor)myobj_dealloc,      /* tp_dealloc */
// 0,                              /* tp_vectorcall_offset */
// 0,                              /* tp_getattr */
// 0,                              /* tp_setattr */
// 0,                              /* tp_as_async */
// (reprfunc)myobj_repr,           /* tp_repr */
// 0,                              /* tp_as_number */
// 0,                              /* tp_as_sequence */
// 0,                              /* tp_as_mapping */
// 0,                              /* tp_hash */
// 0,                              /* tp_call */
// 0,                              /* tp_str */
// 0,                              /* tp_getattro */
// 0,                              /* tp_setattro */
// 0,                              /* tp_as_buffer */
// 0,                              /* tp_flags */
// PyDoc_STR("My objects"),        /* tp_doc */
// 0,                              /* tp_traverse */
// 0,                              /* tp_clear */
// 0,                              /* tp_richcompare */
// 0,                              /* tp_weaklistoffset */
// 0,                              /* tp_iter */
// 0,                              /* tp_iternext */
// 0,                              /* tp_methods */
// 0,                              /* tp_members */
// 0,                              /* tp_getset */
// 0,                              /* tp_base */
// 0,                              /* tp_dict */
// 0,                              /* tp_descr_get */
// 0,                              /* tp_descr_set */
// 0,                              /* tp_dictoffset */
// 0,                              /* tp_init */
// 0,                              /* tp_alloc */
// myobj_new,                      /* tp_new */
// };
//
// A type that supports weakrefs, instance dicts, and hashing::
//
// typedef struct {
// PyObject_HEAD
// const char *data;
// } MyObject;
//
// static PyTypeObject MyObject_Type = {
// PyVarObject_HEAD_INIT(NULL, 0)
// .tp_name = "mymod.MyObject",
// .tp_basicsize = sizeof(MyObject),
// .tp_doc = PyDoc_STR("My objects"),
// .tp_flags = Py_TPFLAGS_DEFAULT | Py_TPFLAGS_BASETYPE |
// Py_TPFLAGS_HAVE_GC | Py_TPFLAGS_MANAGED_DICT |
// Py_TPFLAGS_MANAGED_WEAKREF,
// .tp_new = myobj_new,
// .tp_traverse = (traverseproc)myobj_traverse,
// .tp_clear = (inquiry)myobj_clear,
// .tp_alloc = PyType_GenericNew,
// .tp_dealloc = (destructor)myobj_dealloc,
// .tp_repr = (reprfunc)myobj_repr,
// .tp_hash = (hashfunc)myobj_hash,
// .tp_richcompare = PyBaseObject_Type.tp_richcompare,
// };
//
// A str subclass that cannot be subclassed and cannot be called
// to create instances (e.g. uses a separate factory func) using
// :c:macro:`Py_TPFLAGS_DISALLOW_INSTANTIATION` flag::
//
// typedef struct {
// PyUnicodeObject raw;
// char *extra;
// } MyStr;
//
// static PyTypeObject MyStr_Type = {
// PyVarObject_HEAD_INIT(NULL, 0)
// .tp_name = "mymod.MyStr",
// .tp_basicsize = sizeof(MyStr),
// .tp_base = NULL,  // set to &PyUnicode_Type in module init
// .tp_doc = PyDoc_STR("my custom str"),
// .tp_flags = Py_TPFLAGS_DEFAULT | Py_TPFLAGS_DISALLOW_INSTANTIATION,
// .tp_repr = (reprfunc)myobj_repr,
// };
//
// The simplest :ref:`static type <static-types>` with fixed-length instances::
//
// typedef struct {
// PyObject_HEAD
// } MyObject;
//
// static PyTypeObject MyObject_Type = {
// PyVarObject_HEAD_INIT(NULL, 0)
// .tp_name = "mymod.MyObject",
// };
//
// The simplest :ref:`static type <static-types>` with variable-length instances::
//
// typedef struct {
// PyObject_VAR_HEAD
// const char *data[1];
// } MyObject;
//
// static PyTypeObject MyObject_Type = {
// PyVarObject_HEAD_INIT(NULL, 0)
// .tp_name = "mymod.MyObject",
// .tp_basicsize = sizeof(MyObject) - sizeof(char *),
// .tp_itemsize = sizeof(char *),
// };
// llgo:type C
type Objobjargproc func(*Object, *Object, *Object) Int
