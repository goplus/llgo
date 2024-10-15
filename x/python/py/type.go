package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyType_Check(PyObject *o)
// Return non-zero if the object *o* is a type object, including instances of
// types derived from the standard type object.  Return 0 in all other cases.
// This function always succeeds.
//
//go:linkname TypeCheck PyType_Check
func TypeCheck(o *Object) Int

// int PyType_CheckExact(PyObject *o)
// Return non-zero if the object *o* is a type object, but not a subtype of
// the standard type object.  Return 0 in all other cases.  This function
// always succeeds.
//
//go:linkname TypeCheckExact PyType_CheckExact
func TypeCheckExact(o *Object) Int

// unsigned int PyType_ClearCache()
// Clear the internal lookup cache. Return the current version tag.
//
//go:linkname TypeClearCache PyType_ClearCache
func TypeClearCache() Uint

// unsigned long PyType_GetFlags(PyTypeObject* type)
// Return the :c:member:`~PyTypeObject.tp_flags` member of *type*. This function is primarily
// meant for use with “Py_LIMITED_API“; the individual flag bits are
// guaranteed to be stable across Python releases, but access to
// :c:member:`~PyTypeObject.tp_flags` itself is not part of the :ref:`limited API <limited-c-api>`.
//
// The return type is now “unsigned long“ rather than “long“.
//
//go:linkname TypeGetFlags PyType_GetFlags
func TypeGetFlags(type_ *TypeObject) Ulong

// PyObject* PyType_GetDict(PyTypeObject* type)
// Return the type object's internal namespace, which is otherwise only
// exposed via a read-only proxy (:attr:`cls.__dict__ <type.__dict__>`).
// This is a
// replacement for accessing :c:member:`~PyTypeObject.tp_dict` directly.
// The returned dictionary must be treated as read-only.
//
// This function is meant for specific embedding and language-binding cases,
// where direct access to the dict is necessary and indirect access
// (e.g. via the proxy or :c:func:`PyObject_GetAttr`) isn't adequate.
//
// Extension modules should continue to use “tp_dict“,
// directly or indirectly, when setting up their own types.
//
//go:linkname TypeGetDict PyType_GetDict
func TypeGetDict(type_ *TypeObject) *Object

// void PyType_Modified(PyTypeObject *type)
// Invalidate the internal lookup cache for the type and all of its
// subtypes.  This function must be called after any manual
// modification of the attributes or base classes of the type.
//
//go:linkname TypeModified PyType_Modified
func TypeModified(type_ *TypeObject)

// int PyType_AddWatcher(PyType_WatchCallback callback)
// Register *callback* as a type watcher. Return a non-negative integer ID
// which must be passed to future calls to :c:func:`PyType_Watch`. In case of
// error (e.g. no more watcher IDs available), return “-1“ and set an
// exception.
//
//go:linkname TypeAddWatcher PyType_AddWatcher
func TypeAddWatcher(callback TypeWatchCallback) Int

// int PyType_ClearWatcher(int watcher_id)
// Clear watcher identified by *watcher_id* (previously returned from
// :c:func:`PyType_AddWatcher`). Return “0“ on success, “-1“ on error (e.g.
// if *watcher_id* was never registered.)
//
// An extension should never call “PyType_ClearWatcher“ with a *watcher_id*
// that was not returned to it by a previous call to
// :c:func:`PyType_AddWatcher`.
//
//go:linkname TypeClearWatcher PyType_ClearWatcher
func TypeClearWatcher(watcherId Int) Int

// int PyType_Watch(int watcher_id, PyObject *type)
// Mark *type* as watched. The callback granted *watcher_id* by
// :c:func:`PyType_AddWatcher` will be called whenever
// :c:func:`PyType_Modified` reports a change to *type*. (The callback may be
// called only once for a series of consecutive modifications to *type*, if
// :c:func:`!_PyType_Lookup` is not called on *type* between the modifications;
// this is an implementation detail and subject to change.)
//
// An extension should never call “PyType_Watch“ with a *watcher_id* that was
// not returned to it by a previous call to :c:func:`PyType_AddWatcher`.
//
//go:linkname TypeWatch PyType_Watch
func TypeWatch(watcherId Int, type_ *Object) Int

// int PyType_HasFeature(PyTypeObject *o, int feature)
// Return non-zero if the type object *o* sets the feature *feature*.
// Type features are denoted by single bit flags.
//
//go:linkname TypeHasFeature PyType_HasFeature
func TypeHasFeature(o *TypeObject, feature Int) Int

// int PyType_IS_GC(PyTypeObject *o)
// Return true if the type object includes support for the cycle detector; this
// tests the type flag :c:macro:`Py_TPFLAGS_HAVE_GC`.
//
//go:linkname TypeISGC PyType_IS_GC
func TypeISGC(o *TypeObject) Int

// int PyType_IsSubtype(PyTypeObject *a, PyTypeObject *b)
// Return true if *a* is a subtype of *b*.
//
// This function only checks for actual subtypes, which means that
// :meth:`~type.__subclasscheck__` is not called on *b*.  Call
// :c:func:`PyObject_IsSubclass` to do the same check that :func:`issubclass`
// would do.
//
//go:linkname TypeIsSubtype PyType_IsSubtype
func TypeIsSubtype(a *TypeObject, b *TypeObject) Int

// PyObject* PyType_GenericAlloc(PyTypeObject *type, Py_ssize_t nitems)
// Generic handler for the :c:member:`~PyTypeObject.tp_alloc` slot of a type object.  Use
// Python's default memory allocation mechanism to allocate a new instance and
// initialize all its contents to “NULL“.
//
//go:linkname TypeGenericAlloc PyType_GenericAlloc
func TypeGenericAlloc(type_ *TypeObject, nitems SSizeT) *Object

// PyObject* PyType_GenericNew(PyTypeObject *type, PyObject *args, PyObject *kwds)
// Generic handler for the :c:member:`~PyTypeObject.tp_new` slot of a type object.  Create a
// new instance using the type's :c:member:`~PyTypeObject.tp_alloc` slot.
//
//go:linkname TypeGenericNew PyType_GenericNew
func TypeGenericNew(type_ *TypeObject, args *Object, kwds *Object) *Object

// int PyType_Ready(PyTypeObject *type)
// Finalize a type object.  This should be called on all type objects to finish
// their initialization.  This function is responsible for adding inherited slots
// from a type's base class.  Return “0“ on success, or return “-1“ and sets an
// exception on error.
//
// .. note::
// If some of the base classes implements the GC protocol and the provided
// type does not include the :c:macro:`Py_TPFLAGS_HAVE_GC` in its flags, then
// the GC protocol will be automatically implemented from its parents. On
// the contrary, if the type being created does include
// :c:macro:`Py_TPFLAGS_HAVE_GC` in its flags then it **must** implement the
// GC protocol itself by at least implementing the
// :c:member:`~PyTypeObject.tp_traverse` handle.
//
//go:linkname TypeReady PyType_Ready
func TypeReady(type_ *TypeObject) Int

// PyObject* PyType_GetName(PyTypeObject *type)
// Return the type's name. Equivalent to getting the type's
// :attr:`~type.__name__` attribute.
//
//go:linkname TypeGetName PyType_GetName
func TypeGetName(type_ *TypeObject) *Object

// PyObject* PyType_GetQualName(PyTypeObject *type)
// Return the type's qualified name. Equivalent to getting the
// type's :attr:`~type.__qualname__` attribute.
//
//go:linkname TypeGetQualName PyType_GetQualName
func TypeGetQualName(type_ *TypeObject) *Object

// void* PyType_GetSlot(PyTypeObject *type, int slot)
// Return the function pointer stored in the given slot. If the
// result is “NULL“, this indicates that either the slot is “NULL“,
// or that the function was called with invalid parameters.
// Callers will typically cast the result pointer into the appropriate
// function type.
//
// See :c:member:`PyType_Slot.slot` for possible values of the *slot* argument.
//
// :c:func:`PyType_GetSlot` can now accept all types.
// Previously, it was limited to :ref:`heap types <heap-types>`.
//
//go:linkname TypeGetSlot PyType_GetSlot
func TypeGetSlot(type_ *TypeObject, slot Int) Pointer

// PyObject* PyType_GetModule(PyTypeObject *type)
// Return the module object associated with the given type when the type was
// created using :c:func:`PyType_FromModuleAndSpec`.
//
// If no module is associated with the given type, sets :py:class:`TypeError`
// and returns “NULL“.
//
// This function is usually used to get the module in which a method is defined.
// Note that in such a method, “PyType_GetModule(Py_TYPE(self))“
// may not return the intended result.
// “Py_TYPE(self)“ may be a *subclass* of the intended class, and subclasses
// are not necessarily defined in the same module as their superclass.
// See :c:type:`PyCMethod` to get the class that defines the method.
// See :c:func:`PyType_GetModuleByDef` for cases when :c:type:`!PyCMethod` cannot
// be used.
//
//go:linkname TypeGetModule PyType_GetModule
func TypeGetModule(type_ *TypeObject) *Object

// void* PyType_GetModuleState(PyTypeObject *type)
// Return the state of the module object associated with the given type.
// This is a shortcut for calling :c:func:`PyModule_GetState()` on the result
// of :c:func:`PyType_GetModule`.
//
// If no module is associated with the given type, sets :py:class:`TypeError`
// and returns “NULL“.
//
// If the *type* has an associated module but its state is “NULL“,
// returns “NULL“ without setting an exception.
//
//go:linkname TypeGetModuleState PyType_GetModuleState
func TypeGetModuleState(type_ *TypeObject) Pointer

// PyObject* PyType_GetModuleByDef(PyTypeObject *type, struct PyModuleDef *def)
// Find the first superclass whose module was created from
// the given :c:type:`PyModuleDef` *def*, and return that module.
//
// If no module is found, raises a :py:class:`TypeError` and returns “NULL“.
//
// This function is intended to be used together with
// :c:func:`PyModule_GetState()` to get module state from slot methods (such as
// :c:member:`~PyTypeObject.tp_init` or :c:member:`~PyNumberMethods.nb_add`)
// and other places where a method's defining class cannot be passed using the
// :c:type:`PyCMethod` calling convention.
//
//go:linkname TypeGetModuleByDef PyType_GetModuleByDef
func TypeGetModuleByDef(type_ *TypeObject, def *ModuleDef) *Object

// int PyUnstable_Type_AssignVersionTag(PyTypeObject *type)
// Attempt to assign a version tag to the given type.
//
// Returns 1 if the type already had a valid version tag or a new one was
// assigned, or 0 if a new tag could not be assigned.
//
// Creating Heap-Allocated Types
// .............................
//
// The following functions and structs are used to create
// :ref:`heap types <heap-types>`.
//
//go:linkname UnstableTypeAssignVersionTag PyUnstable_Type_AssignVersionTag
func UnstableTypeAssignVersionTag(type_ *TypeObject) Int

// PyObject* PyType_FromMetaclass(PyTypeObject *metaclass, PyObject *module, PyType_Spec *spec, PyObject *bases)
// Create and return a :ref:`heap type <heap-types>` from the *spec*
// (see :c:macro:`Py_TPFLAGS_HEAPTYPE`).
//
// The metaclass *metaclass* is used to construct the resulting type object.
// When *metaclass* is “NULL“, the metaclass is derived from *bases*
// (or *Py_tp_base[s]* slots if *bases* is “NULL“, see below).
//
// Metaclasses that override :c:member:`~PyTypeObject.tp_new` are not
// supported, except if “tp_new“ is “NULL“.
// (For backwards compatibility, other “PyType_From*“ functions allow
// such metaclasses. They ignore “tp_new“, which may result in incomplete
// initialization. This is deprecated and in Python 3.14+ such metaclasses will
// not be supported.)
//
// The *bases* argument can be used to specify base classes; it can either
// be only one class or a tuple of classes.
// If *bases* is “NULL“, the *Py_tp_bases* slot is used instead.
// If that also is “NULL“, the *Py_tp_base* slot is used instead.
// If that also is “NULL“, the new type derives from :class:`object`.
//
// The *module* argument can be used to record the module in which the new
// class is defined. It must be a module object or “NULL“.
// If not “NULL“, the module is associated with the new type and can later be
// retrieved with :c:func:`PyType_GetModule`.
// The associated module is not inherited by subclasses; it must be specified
// for each class individually.
//
// This function calls :c:func:`PyType_Ready` on the new type.
//
// Note that this function does *not* fully match the behavior of
// calling :py:class:`type() <type>` or using the :keyword:`class` statement.
// With user-provided base types or metaclasses, prefer
// :ref:`calling <capi-call>` :py:class:`type` (or the metaclass)
// over “PyType_From*“ functions.
// Specifically:
//
// * :py:meth:`~object.__new__` is not called on the new class
// (and it must be set to “type.__new__“).
// * :py:meth:`~object.__init__` is not called on the new class.
// * :py:meth:`~object.__init_subclass__` is not called on any bases.
// * :py:meth:`~object.__set_name__` is not called on new descriptors.
//
//go:linkname TypeFromMetaclass PyType_FromMetaclass
func TypeFromMetaclass(metaclass *TypeObject, module *Object, spec *TypeSpec, bases *Object) *Object

// PyObject* PyType_FromModuleAndSpec(PyObject *module, PyType_Spec *spec, PyObject *bases)
// Equivalent to “PyType_FromMetaclass(NULL, module, spec, bases)“.
//
// The function now accepts a single class as the *bases* argument and
// “NULL“ as the “tp_doc“ slot.
//
// The function now finds and uses a metaclass corresponding to the provided
// base classes.  Previously, only :class:`type` instances were returned.
//
// The :c:member:`~PyTypeObject.tp_new` of the metaclass is *ignored*.
// which may result in incomplete initialization.
// Creating classes whose metaclass overrides
// :c:member:`~PyTypeObject.tp_new` is deprecated and in Python 3.14+ it
// will be no longer allowed.
//
//go:linkname TypeFromModuleAndSpec PyType_FromModuleAndSpec
func TypeFromModuleAndSpec(module *Object, spec *TypeSpec, bases *Object) *Object

// PyObject* PyType_FromSpecWithBases(PyType_Spec *spec, PyObject *bases)
// Equivalent to “PyType_FromMetaclass(NULL, NULL, spec, bases)“.
//
// The function now finds and uses a metaclass corresponding to the provided
// base classes.  Previously, only :class:`type` instances were returned.
//
// The :c:member:`~PyTypeObject.tp_new` of the metaclass is *ignored*.
// which may result in incomplete initialization.
// Creating classes whose metaclass overrides
// :c:member:`~PyTypeObject.tp_new` is deprecated and in Python 3.14+ it
// will be no longer allowed.
//
//go:linkname TypeFromSpecWithBases PyType_FromSpecWithBases
func TypeFromSpecWithBases(spec *TypeSpec, bases *Object) *Object

// PyObject* PyType_FromSpec(PyType_Spec *spec)
// Equivalent to “PyType_FromMetaclass(NULL, NULL, spec, NULL)“.
//
// The function now finds and uses a metaclass corresponding to the
// base classes provided in *Py_tp_base[s]* slots.
// Previously, only :class:`type` instances were returned.
//
// The :c:member:`~PyTypeObject.tp_new` of the metaclass is *ignored*.
// which may result in incomplete initialization.
// Creating classes whose metaclass overrides
// :c:member:`~PyTypeObject.tp_new` is deprecated and in Python 3.14+ it
// will be no longer allowed.
//
// .. raw:: html
//
// <!-- Keep old URL fragments working (see gh-97908) -->
// <span id='c.PyType_Spec.PyType_Spec.name'></span>
// <span id='c.PyType_Spec.PyType_Spec.basicsize'></span>
// <span id='c.PyType_Spec.PyType_Spec.itemsize'></span>
// <span id='c.PyType_Spec.PyType_Spec.flags'></span>
// <span id='c.PyType_Spec.PyType_Spec.slots'></span>
//
//go:linkname TypeFromSpec PyType_FromSpec
func TypeFromSpec(spec *TypeSpec) *Object

// int (*PyType_WatchCallback)(PyObject *type)
// Type of a type-watcher callback function.
//
// The callback must not modify *type* or cause :c:func:`PyType_Modified` to be
// called on *type* or any type in its MRO; violating this rule could cause
// infinite recursion.
// llgo:type C
type TypeWatchCallback func(type_ *Object) Int

// PyType_Spec
// Structure defining a type's behavior.
type TypeSpec = C.PyType_Spec

// PyType_Slot
// Structure defining optional functionality of a type, containing a slot ID
// and a value pointer.
type TypeSlot = C.PyType_Slot

// PyTypeObject PyType_Type
// This is the type object for type objects; it is the same object as
// :class:`type` in the Python layer.
func TypeType() TypeObject {
	return *(*TypeObject)(Pointer(&C.PyType_Type))
}
