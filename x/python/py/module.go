package py

/*
#cgo pkg-config: python-3.12-embed
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// int PyModule_Check(PyObject *p)
// Return true if *p* is a module object, or a subtype of a module object.
// This function always succeeds.
//
//go:linkname ModuleCheck C.PyModule_Check
func ModuleCheck(p *Object) c.Int

// int PyModule_CheckExact(PyObject *p)
// Return true if *p* is a module object, but not a subtype of
// :c:data:`PyModule_Type`.  This function always succeeds.
//
//go:linkname ModuleCheckExact C.PyModule_CheckExact
func ModuleCheckExact(p *Object) c.Int

// PyObject* PyModule_NewObject(PyObject *name)
// .. index::
// single: __name__ (module attribute)
// single: __doc__ (module attribute)
// single: __file__ (module attribute)
// single: __package__ (module attribute)
// single: __loader__ (module attribute)
//
// Return a new module object with :attr:`module.__name__` set to *name*.
// The module's :attr:`!__name__`, :attr:`~module.__doc__`,
// :attr:`~module.__package__` and :attr:`~module.__loader__` attributes are
// filled in (all but :attr:`!__name__` are set to “None“). The caller is
// responsible for setting a :attr:`~module.__file__` attribute.
//
// Return “NULL“ with an exception set on error.
//
// :attr:`~module.__package__` and :attr:`~module.__loader__` are now set to
// “None“.
//
//go:linkname ModuleNewObject C.PyModule_NewObject
func ModuleNewObject(name *Object) *Object

// PyObject* PyModule_New(const char *name)
// Similar to :c:func:`PyModule_NewObject`, but the name is a UTF-8 encoded
// string instead of a Unicode object.
//
//go:linkname ModuleNew C.PyModule_New
func ModuleNew(name *c.Char) *Object

// PyObject* PyModule_GetDict(PyObject *module)
// .. index:: single: __dict__ (module attribute)
//
// Return the dictionary object that implements *module*'s namespace; this object
// is the same as the :attr:`~object.__dict__` attribute of the module object.
// If *module* is not a module object (or a subtype of a module object),
// :exc:`SystemError` is raised and “NULL“ is returned.
//
// It is recommended extensions use other “PyModule_*“ and
// “PyObject_*“ functions rather than directly manipulate a module's
// :attr:`~object.__dict__`.
//
//go:linkname ModuleGetDict C.PyModule_GetDict
func ModuleGetDict(module *Object) *Object

// PyObject* PyModule_GetNameObject(PyObject *module)
// .. index::
// single: __name__ (module attribute)
// single: SystemError (built-in exception)
//
// Return *module*'s :attr:`~module.__name__` value.  If the module does not
// provide one, or if it is not a string, :exc:`SystemError` is raised and
// “NULL“ is returned.
//
//go:linkname ModuleGetNameObject C.PyModule_GetNameObject
func ModuleGetNameObject(module *Object) *Object

// const char* PyModule_GetName(PyObject *module)
// Similar to :c:func:`PyModule_GetNameObject` but return the name encoded to
// “'utf-8'“.
//
//go:linkname ModuleGetName C.PyModule_GetName
func ModuleGetName(module *Object) *c.Char

// void* PyModule_GetState(PyObject *module)
// Return the "state" of the module, that is, a pointer to the block of memory
// allocated at module creation time, or “NULL“.  See
// :c:member:`PyModuleDef.m_size`.
//
//go:linkname ModuleGetState C.PyModule_GetState
func ModuleGetState(module *Object) c.Pointer

// PyModuleDef* PyModule_GetDef(PyObject *module)
// Return a pointer to the :c:type:`PyModuleDef` struct from which the module was
// created, or “NULL“ if the module wasn't created from a definition.
//
//go:linkname ModuleGetDef C.PyModule_GetDef
func ModuleGetDef(module *Object) *ModuleDef

// PyObject* PyModule_GetFilenameObject(PyObject *module)
// .. index::
// single: __file__ (module attribute)
// single: SystemError (built-in exception)
//
// Return the name of the file from which *module* was loaded using *module*'s
// :attr:`~module.__file__` attribute.  If this is not defined, or if it is not a
// string, raise :exc:`SystemError` and return “NULL“; otherwise return
// a reference to a Unicode object.
//
//go:linkname ModuleGetFilenameObject C.PyModule_GetFilenameObject
func ModuleGetFilenameObject(module *Object) *Object

// const char* PyModule_GetFilename(PyObject *module)
// Similar to :c:func:`PyModule_GetFilenameObject` but return the filename
// encoded to 'utf-8'.
//
// .. deprecated:: 3.2
// :c:func:`PyModule_GetFilename` raises :exc:`UnicodeEncodeError` on
// unencodable filenames, use :c:func:`PyModule_GetFilenameObject` instead.
//
// .. _initializing-modules:
//
// Initializing C modules
// ^^^^^^^^^^^^^^^^^^^^^^
//
// Modules objects are usually created from extension modules (shared libraries
// which export an initialization function), or compiled-in modules
// (where the initialization function is added using :c:func:`PyImport_AppendInittab`).
// See :ref:`building` or :ref:`extending-with-embedding` for details.
//
// The initialization function can either pass a module definition instance
// to :c:func:`PyModule_Create`, and return the resulting module object,
// or request "multi-phase initialization" by returning the definition struct itself.
//
//go:linkname ModuleGetFilename C.PyModule_GetFilename
func ModuleGetFilename(module *Object) *c.Char

// PyObject* PyModule_Create(PyModuleDef *def)
// Create a new module object, given the definition in *def*.  This behaves
// like :c:func:`PyModule_Create2` with *module_api_version* set to
// :c:macro:`PYTHON_API_VERSION`.
//
//go:linkname ModuleCreate C.PyModule_Create
func ModuleCreate(def *ModuleDef) *Object

// PyObject* PyModule_Create2(PyModuleDef *def, int module_api_version)
// Create a new module object, given the definition in *def*, assuming the
// API version *module_api_version*.  If that version does not match the version
// of the running interpreter, a :exc:`RuntimeWarning` is emitted.
//
// Return “NULL“ with an exception set on error.
//
// .. note::
//
// Most uses of this function should be using :c:func:`PyModule_Create`
// instead; only use this if you are sure you need it.
//
// Before it is returned from in the initialization function, the resulting module
// object is typically populated using functions like :c:func:`PyModule_AddObjectRef`.
//
// .. _multi-phase-initialization:
//
// Multi-phase initialization
// ..........................
//
// An alternate way to specify extensions is to request "multi-phase initialization".
// Extension modules created this way behave more like Python modules: the
// initialization is split between the *creation phase*, when the module object
// is created, and the *execution phase*, when it is populated.
// The distinction is similar to the :py:meth:`!__new__` and :py:meth:`!__init__` methods
// of classes.
//
// Unlike modules created using single-phase initialization, these modules are not
// singletons: if the *sys.modules* entry is removed and the module is re-imported,
// a new module object is created, and the old module is subject to normal garbage
// collection -- as with Python modules.
// By default, multiple modules created from the same definition should be
// independent: changes to one should not affect the others.
// This means that all state should be specific to the module object (using e.g.
// using :c:func:`PyModule_GetState`), or its contents (such as the module's
// :attr:`~object.__dict__` or individual classes created with :c:func:`PyType_FromSpec`).
//
// All modules created using multi-phase initialization are expected to support
// :ref:`sub-interpreters <sub-interpreter-support>`. Making sure multiple modules
// are independent is typically enough to achieve this.
//
// To request multi-phase initialization, the initialization function
// (PyInit_modulename) returns a :c:type:`PyModuleDef` instance with non-empty
// :c:member:`~PyModuleDef.m_slots`. Before it is returned, the “PyModuleDef“
// instance must be initialized with the following function:
//
//go:linkname ModuleCreate2 C.PyModule_Create2
func ModuleCreate2(def *ModuleDef, moduleApiVersion c.Int) *Object

// PyObject* PyModuleDef_Init(PyModuleDef *def)
// Ensures a module definition is a properly initialized Python object that
// correctly reports its type and reference count.
//
// Returns *def* cast to “PyObject*“, or “NULL“ if an error occurred.
//
// The *m_slots* member of the module definition must point to an array of
// “PyModuleDef_Slot“ structures:
//
//go:linkname ModuleDefInit C.PyModuleDef_Init
func ModuleDefInit(def *ModuleDef) *Object

// PyObject* create_module(PyObject *spec, PyModuleDef *def)
// :no-index-entry:
// :no-contents-entry:
//
// The function receives a :py:class:`~importlib.machinery.ModuleSpec`
// instance, as defined in :PEP:`451`, and the module definition.
// It should return a new module object, or set an error
// and return “NULL“.
//
// This function should be kept minimal. In particular, it should not
// call arbitrary Python code, as trying to import the same module again may
// result in an infinite loop.
//
// Multiple “Py_mod_create“ slots may not be specified in one module
// definition.
//
// If “Py_mod_create“ is not specified, the import machinery will create
// a normal module object using :c:func:`PyModule_New`. The name is taken from
// *spec*, not the definition, to allow extension modules to dynamically adjust
// to their place in the module hierarchy and be imported under different
// names through symlinks, all while sharing a single module definition.
//
// There is no requirement for the returned object to be an instance of
// :c:type:`PyModule_Type`. Any type can be used, as long as it supports
// setting and getting import-related attributes.
// However, only “PyModule_Type“ instances may be returned if the
// “PyModuleDef“ has non-“NULL“ “m_traverse“, “m_clear“,
// “m_free“; non-zero “m_size“; or slots other than “Py_mod_create“.
//
//go:linkname CreateModule C.create_module
func CreateModule(spec *Object, def *ModuleDef) *Object

// int exec_module(PyObject* module)
// :no-index-entry:
// :no-contents-entry:
//
// If multiple “Py_mod_exec“ slots are specified, they are processed in the
// order they appear in the *m_slots* array.
//
//go:linkname ExecModule C.exec_module
func ExecModule(module *Object) c.Int

// PyObject * PyModule_FromDefAndSpec(PyModuleDef *def, PyObject *spec)
// Create a new module object, given the definition in *def* and the
// ModuleSpec *spec*.  This behaves like :c:func:`PyModule_FromDefAndSpec2`
// with *module_api_version* set to :c:macro:`PYTHON_API_VERSION`.
//
//go:linkname ModuleFromDefAndSpec C.PyModule_FromDefAndSpec
func ModuleFromDefAndSpec(def *ModuleDef, spec *Object) *Object

// PyObject * PyModule_FromDefAndSpec2(PyModuleDef *def, PyObject *spec, int module_api_version)
// Create a new module object, given the definition in *def* and the
// ModuleSpec *spec*, assuming the API version *module_api_version*.
// If that version does not match the version of the running interpreter,
// a :exc:`RuntimeWarning` is emitted.
//
// Return “NULL“ with an exception set on error.
//
// .. note::
//
// Most uses of this function should be using :c:func:`PyModule_FromDefAndSpec`
// instead; only use this if you are sure you need it.
//
//go:linkname ModuleFromDefAndSpec2 C.PyModule_FromDefAndSpec2
func ModuleFromDefAndSpec2(def *ModuleDef, spec *Object, moduleApiVersion c.Int) *Object

// int PyModule_ExecDef(PyObject *module, PyModuleDef *def)
// Process any execution slots (:c:data:`Py_mod_exec`) given in *def*.
//
//go:linkname ModuleExecDef C.PyModule_ExecDef
func ModuleExecDef(module *Object, def *ModuleDef) c.Int

// int PyModule_SetDocString(PyObject *module, const char *docstring)
// Set the docstring for *module* to *docstring*.
// This function is called automatically when creating a module from
// “PyModuleDef“, using either “PyModule_Create“ or
// “PyModule_FromDefAndSpec“.
//
//go:linkname ModuleSetDocString C.PyModule_SetDocString
func ModuleSetDocString(module *Object, docstring *c.Char) c.Int

// int PyModule_AddFunctions(PyObject *module, PyMethodDef *functions)
// Add the functions from the “NULL“ terminated *functions* array to *module*.
// Refer to the :c:type:`PyMethodDef` documentation for details on individual
// entries (due to the lack of a shared module namespace, module level
// "functions" implemented in C typically receive the module as their first
// parameter, making them similar to instance methods on Python classes).
// This function is called automatically when creating a module from
// “PyModuleDef“, using either “PyModule_Create“ or
// “PyModule_FromDefAndSpec“.
//
// Support functions
// .................
//
// The module initialization function (if using single phase initialization) or
// a function called from a module execution slot (if using multi-phase
// initialization), can use the following functions to help initialize the module
// state:
//
//go:linkname ModuleAddFunctions C.PyModule_AddFunctions
func ModuleAddFunctions(module *Object, functions *MethodDef) c.Int

// int PyModule_AddObjectRef(PyObject *module, const char *name, PyObject *value)
// Add an object to *module* as *name*.  This is a convenience function which
// can be used from the module's initialization function.
//
// On success, return “0“. On error, raise an exception and return “-1“.
//
// Return “-1“ if *value* is “NULL“. It must be called with an exception
// raised in this case.
//
// Example usage::
//
// static int
// add_spam(PyObject *module, int value)
// {
// PyObject *obj = PyLong_FromLong(value);
// if (obj == NULL) {
// return -1;
// }
// int res = PyModule_AddObjectRef(module, "spam", obj);
// Py_DECREF(obj);
// return res;
// }
//
// The example can also be written without checking explicitly if *obj* is
// “NULL“::
//
// static int
// add_spam(PyObject *module, int value)
// {
// PyObject *obj = PyLong_FromLong(value);
// int res = PyModule_AddObjectRef(module, "spam", obj);
// Py_XDECREF(obj);
// return res;
// }
//
// Note that “Py_XDECREF()“ should be used instead of “Py_DECREF()“ in
// this case, since *obj* can be “NULL“.
//
// The number of different *name* strings passed to this function
// should be kept small, usually by only using statically allocated strings
// as *name*.
// For names that aren't known at compile time, prefer calling
// :c:func:`PyUnicode_FromString` and :c:func:`PyObject_SetAttr` directly.
// For more details, see :c:func:`PyUnicode_InternFromString`, which may be
// used internally to create a key object.
//
//go:linkname ModuleAddObjectRef C.PyModule_AddObjectRef
func ModuleAddObjectRef(module *Object, name *c.Char, value *Object) c.Int

// int PyModule_AddObject(PyObject *module, const char *name, PyObject *value)
// Similar to :c:func:`PyModule_AddObjectRef`, but steals a reference to
// *value* on success (if it returns “0“).
//
// The new :c:func:`PyModule_Add` or :c:func:`PyModule_AddObjectRef`
// functions are recommended, since it is
// easy to introduce reference leaks by misusing the
// :c:func:`PyModule_AddObject` function.
//
// .. note::
//
// Unlike other functions that steal references, “PyModule_AddObject()“
// only releases the reference to *value* **on success**.
//
// This means that its return value must be checked, and calling code must
// :c:func:`Py_XDECREF` *value* manually on error.
//
// Example usage::
//
// PyObject *obj = PyBytes_FromString(value);
// if (PyModule_AddObject(module, "spam", obj) < 0) {
// // If 'obj' is not NULL and PyModule_AddObject() failed,
// // 'obj' strong reference must be deleted with Py_XDECREF().
// // If 'obj' is NULL, Py_XDECREF() does nothing.
// Py_XDECREF(obj);
// goto error;
// }
// // PyModule_AddObject() stole a reference to obj:
// // Py_XDECREF(obj) is not needed here.
//
// .. deprecated:: 3.13
//
// :c:func:`PyModule_AddObject` is :term:`soft deprecated`.
//
//go:linkname ModuleAddObject C.PyModule_AddObject
func ModuleAddObject(module *Object, name *c.Char, value *Object) c.Int

// int PyModule_AddIntConstant(PyObject *module, const char *name, long value)
// Add an integer constant to *module* as *name*.  This convenience function can be
// used from the module's initialization function.
// Return “-1“ with an exception set on error, “0“ on success.
//
// This is a convenience function that calls :c:func:`PyLong_FromLong` and
// :c:func:`PyModule_AddObjectRef`; see their documentation for details.
//
//go:linkname ModuleAddIntConstant C.PyModule_AddIntConstant
func ModuleAddIntConstant(module *Object, name *c.Char, value c.Long) c.Int

// int PyModule_AddStringConstant(PyObject *module, const char *name, const char *value)
// Add a string constant to *module* as *name*.  This convenience function can be
// used from the module's initialization function.  The string *value* must be
// “NULL“-terminated.
// Return “-1“ with an exception set on error, “0“ on success.
//
// This is a convenience function that calls
// :c:func:`PyUnicode_InternFromString` and :c:func:`PyModule_AddObjectRef`;
// see their documentation for details.
//
//go:linkname ModuleAddStringConstant C.PyModule_AddStringConstant
func ModuleAddStringConstant(module *Object, name *c.Char, value *c.Char) c.Int

// int PyModule_AddType(PyObject *module, PyTypeObject *type)
// Add a type object to *module*.
// The type object is finalized by calling internally :c:func:`PyType_Ready`.
// The name of the type object is taken from the last component of
// :c:member:`~PyTypeObject.tp_name` after dot.
// Return “-1“ with an exception set on error, “0“ on success.
//
//go:linkname ModuleAddType C.PyModule_AddType
func ModuleAddType(module *Object, type_ *TypeObject) c.Int

// PyObject* PyState_FindModule(PyModuleDef *def)
// Returns the module object that was created from *def* for the current interpreter.
// This method requires that the module object has been attached to the interpreter state with
// :c:func:`PyState_AddModule` beforehand. In case the corresponding module object is not
// found or has not been attached to the interpreter state yet, it returns “NULL“.
//
//go:linkname StateFindModule C.PyState_FindModule
func StateFindModule(def *ModuleDef) *Object

// int PyState_AddModule(PyObject *module, PyModuleDef *def)
// Attaches the module object passed to the function to the interpreter state. This allows
// the module object to be accessible via :c:func:`PyState_FindModule`.
//
// Only effective on modules created using single-phase initialization.
//
// Python calls “PyState_AddModule“ automatically after importing a module,
// so it is unnecessary (but harmless) to call it from module initialization
// code. An explicit call is needed only if the module's own init code
// subsequently calls “PyState_FindModule“.
// The function is mainly intended for implementing alternative import
// mechanisms (either by calling it directly, or by referring to its
// implementation for details of the required state updates).
//
// The caller must hold the GIL.
//
// Return “-1“ with an exception set on error, “0“ on success.
//
//go:linkname StateAddModule C.PyState_AddModule
func StateAddModule(module *Object, def *ModuleDef) c.Int

// int PyState_RemoveModule(PyModuleDef *def)
// Removes the module object created from *def* from the interpreter state.
// Return “-1“ with an exception set on error, “0“ on success.
//
// The caller must hold the GIL.
//
//go:linkname StateRemoveModule C.PyState_RemoveModule
func StateRemoveModule(def *ModuleDef) c.Int

// PyTypeObject PyModule_Type
// .. index:: single: ModuleType (in module types)
//
// This instance of :c:type:`PyTypeObject` represents the Python module type.  This
// is exposed to Python programs as “types.ModuleType“.
func ModuleType() TypeObject {
	return *(*TypeObject)(c.Pointer(&C.PyModule_Type))
}
