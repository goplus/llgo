package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// PyObject* PyImport_ImportModule(const char *name)
// .. index::
// single: package variable; __all__
// single: __all__ (package variable)
// single: modules (in module sys)
//
// This is a wrapper around :c:func:`PyImport_Import()` which takes a
// :c:expr:`const char *` as an argument instead of a :c:expr:`PyObject *`.
//
//go:linkname ImportImportModule PyImport_ImportModule
func ImportImportModule(name *Char) *Object

// PyObject* PyImport_ImportModuleNoBlock(const char *name)
// This function is a deprecated alias of :c:func:`PyImport_ImportModule`.
//
// This function used to fail immediately when the import lock was held
// by another thread.  In Python 3.3 though, the locking scheme switched
// to per-module locks for most purposes, so this function's special
// behaviour isn't needed anymore.
//
// .. deprecated-removed:: 3.13 3.15
// Use :c:func:`PyImport_ImportModule` instead.
//
//go:linkname ImportImportModuleNoBlock PyImport_ImportModuleNoBlock
func ImportImportModuleNoBlock(name *Char) *Object

// PyObject* PyImport_ImportModuleEx(const char *name, PyObject *globals, PyObject *locals, PyObject *fromlist)
// .. index:: pair: built-in function; __import__
//
// Import a module.  This is best described by referring to the built-in Python
// function :func:`__import__`.
//
// The return value is a new reference to the imported module or top-level
// package, or “NULL“ with an exception set on failure.  Like for
// :func:`__import__`, the return value when a submodule of a package was
// requested is normally the top-level package, unless a non-empty *fromlist*
// was given.
//
// Failing imports remove incomplete module objects, like with
// :c:func:`PyImport_ImportModule`.
//
//go:linkname ImportImportModuleEx PyImport_ImportModuleEx
func ImportImportModuleEx(name *Char, globals *Object, locals *Object, fromlist *Object) *Object

// PyObject* PyImport_ImportModuleLevelObject(PyObject *name, PyObject *globals, PyObject *locals, PyObject *fromlist, int level)
// Import a module.  This is best described by referring to the built-in Python
// function :func:`__import__`, as the standard :func:`__import__` function calls
// this function directly.
//
// The return value is a new reference to the imported module or top-level package,
// or “NULL“ with an exception set on failure.  Like for :func:`__import__`,
// the return value when a submodule of a package was requested is normally the
// top-level package, unless a non-empty *fromlist* was given.
//
//go:linkname ImportImportModuleLevelObject PyImport_ImportModuleLevelObject
func ImportImportModuleLevelObject(name *Object, globals *Object, locals *Object, fromlist *Object, level Int) *Object

// PyObject* PyImport_ImportModuleLevel(const char *name, PyObject *globals, PyObject *locals, PyObject *fromlist, int level)
// Similar to :c:func:`PyImport_ImportModuleLevelObject`, but the name is a
// UTF-8 encoded string instead of a Unicode object.
//
// Negative values for *level* are no longer accepted.
//
//go:linkname ImportImportModuleLevel PyImport_ImportModuleLevel
func ImportImportModuleLevel(name *Char, globals *Object, locals *Object, fromlist *Object, level Int) *Object

// PyObject* PyImport_Import(PyObject *name)
// This is a higher-level interface that calls the current "import hook
// function" (with an explicit *level* of 0, meaning absolute import).  It
// invokes the :func:`__import__` function from the “__builtins__“ of the
// current globals.  This means that the import is done using whatever import
// hooks are installed in the current environment.
//
// This function always uses absolute imports.
//
//go:linkname ImportImport PyImport_Import
func ImportImport(name *Object) *Object

// PyObject* PyImport_ReloadModule(PyObject *m)
// Reload a module.  Return a new reference to the reloaded module, or “NULL“ with
// an exception set on failure (the module still exists in this case).
//
//go:linkname ImportReloadModule PyImport_ReloadModule
func ImportReloadModule(m *Object) *Object

// PyObject* PyImport_AddModuleObject(PyObject *name)
// Similar to :c:func:`PyImport_AddModuleRef`, but return a :term:`borrowed
// reference` and *name* is a Python :class:`str` object.
//
//go:linkname ImportAddModuleObject PyImport_AddModuleObject
func ImportAddModuleObject(name *Object) *Object

// PyObject* PyImport_AddModule(const char *name)
// Similar to :c:func:`PyImport_AddModuleRef`, but return a :term:`borrowed
// reference`.
//
//go:linkname ImportAddModule PyImport_AddModule
func ImportAddModule(name *Char) *Object

// PyObject* PyImport_ExecCodeModule(const char *name, PyObject *co)
// .. index:: pair: built-in function; compile
//
// Given a module name (possibly of the form “package.module“) and a code object
// read from a Python bytecode file or obtained from the built-in function
// :func:`compile`, load the module.  Return a new reference to the module object,
// or “NULL“ with an exception set if an error occurred.  *name*
// is removed from :data:`sys.modules` in error cases, even if *name* was already
// in :data:`sys.modules` on entry to :c:func:`PyImport_ExecCodeModule`.  Leaving
// incompletely initialized modules in :data:`sys.modules` is dangerous, as imports of
// such modules have no way to know that the module object is an unknown (and
// probably damaged with respect to the module author's intents) state.
//
// The module's :attr:`~module.__spec__` and :attr:`~module.__loader__` will be
// set, if not set already, with the appropriate values.  The spec's loader
// will be set to the module's :attr:`!__loader__` (if set) and to an instance
// of :class:`~importlib.machinery.SourceFileLoader` otherwise.
//
// The module's :attr:`~module.__file__` attribute will be set to the code
// object's :attr:`~codeobject.co_filename`.  If applicable,
// :attr:`~module.__cached__` will also be set.
//
// This function will reload the module if it was already imported.  See
// :c:func:`PyImport_ReloadModule` for the intended way to reload a module.
//
// If *name* points to a dotted name of the form “package.module“, any package
// structures not already created will still not be created.
//
// See also :c:func:`PyImport_ExecCodeModuleEx` and
// :c:func:`PyImport_ExecCodeModuleWithPathnames`.
//
// The setting of :attr:`~module.__cached__` and :attr:`~module.__loader__`
// is deprecated. See :class:`~importlib.machinery.ModuleSpec` for
// alternatives.
//
//go:linkname ImportExecCodeModule PyImport_ExecCodeModule
func ImportExecCodeModule(name *Char, co *Object) *Object

// PyObject* PyImport_ExecCodeModuleEx(const char *name, PyObject *co, const char *pathname)
// Like :c:func:`PyImport_ExecCodeModule`, but the :attr:`~module.__file__`
// attribute of the module object is set to *pathname* if it is non-“NULL“.
//
// See also :c:func:`PyImport_ExecCodeModuleWithPathnames`.
//
//go:linkname ImportExecCodeModuleEx PyImport_ExecCodeModuleEx
func ImportExecCodeModuleEx(name *Char, co *Object, pathname *Char) *Object

// PyObject* PyImport_ExecCodeModuleObject(PyObject *name, PyObject *co, PyObject *pathname, PyObject *cpathname)
// Like :c:func:`PyImport_ExecCodeModuleEx`, but the :attr:`~module.__cached__`
// attribute of the module object is set to *cpathname* if it is
// non-“NULL“.  Of the three functions, this is the preferred one to use.
//
// Setting :attr:`~module.__cached__` is deprecated. See
// :class:`~importlib.machinery.ModuleSpec` for alternatives.
//
//go:linkname ImportExecCodeModuleObject PyImport_ExecCodeModuleObject
func ImportExecCodeModuleObject(name *Object, co *Object, pathname *Object, cpathname *Object) *Object

// PyObject* PyImport_ExecCodeModuleWithPathnames(const char *name, PyObject *co, const char *pathname, const char *cpathname)
// Like :c:func:`PyImport_ExecCodeModuleObject`, but *name*, *pathname* and
// *cpathname* are UTF-8 encoded strings. Attempts are also made to figure out
// what the value for *pathname* should be from *cpathname* if the former is
// set to “NULL“.
//
// Uses :func:`!imp.source_from_cache` in calculating the source path if
// only the bytecode path is provided.
// No longer uses the removed :mod:`!imp` module.
//
//go:linkname ImportExecCodeModuleWithPathnames PyImport_ExecCodeModuleWithPathnames
func ImportExecCodeModuleWithPathnames(name *Char, co *Object, pathname *Char, cpathname *Char) *Object

// long PyImport_GetMagicNumber()
// Return the magic number for Python bytecode files (a.k.a. :file:`.pyc` file).
// The magic number should be present in the first four bytes of the bytecode
// file, in little-endian byte order. Returns “-1“ on error.
//
// Return value of “-1“ upon failure.
//
//go:linkname ImportGetMagicNumber PyImport_GetMagicNumber
func ImportGetMagicNumber() Long

// const char * PyImport_GetMagicTag()
// Return the magic tag string for :pep:`3147` format Python bytecode file
// names.  Keep in mind that the value at “sys.implementation.cache_tag“ is
// authoritative and should be used instead of this function.
//
//go:linkname ImportGetMagicTag PyImport_GetMagicTag
func ImportGetMagicTag() *Char

// PyObject* PyImport_GetModuleDict()
// Return the dictionary used for the module administration (a.k.a.
// “sys.modules“).  Note that this is a per-interpreter variable.
//
//go:linkname ImportGetModuleDict PyImport_GetModuleDict
func ImportGetModuleDict() *Object

// PyObject* PyImport_GetModule(PyObject *name)
// Return the already imported module with the given name.  If the
// module has not been imported yet then returns “NULL“ but does not set
// an error.  Returns “NULL“ and sets an error if the lookup failed.
//
//go:linkname ImportGetModule PyImport_GetModule
func ImportGetModule(name *Object) *Object

// PyObject* PyImport_GetImporter(PyObject *path)
// Return a finder object for a :data:`sys.path`/:attr:`!pkg.__path__` item
// *path*, possibly by fetching it from the :data:`sys.path_importer_cache`
// dict.  If it wasn't yet cached, traverse :data:`sys.path_hooks` until a hook
// is found that can handle the path item.  Return “None“ if no hook could;
// this tells our caller that the :term:`path based finder` could not find a
// finder for this path item. Cache the result in :data:`sys.path_importer_cache`.
// Return a new reference to the finder object.
//
//go:linkname ImportGetImporter PyImport_GetImporter
func ImportGetImporter(path *Object) *Object

// int PyImport_ImportFrozenModuleObject(PyObject *name)
// Load a frozen module named *name*.  Return “1“ for success, “0“ if the
// module is not found, and “-1“ with an exception set if the initialization
// failed.  To access the imported module on a successful load, use
// :c:func:`PyImport_ImportModule`.  (Note the misnomer --- this function would
// reload the module if it was already imported.)
//
// The “__file__“ attribute is no longer set on the module.
//
//go:linkname ImportImportFrozenModuleObject PyImport_ImportFrozenModuleObject
func ImportImportFrozenModuleObject(name *Object) Int

// int PyImport_ImportFrozenModule(const char *name)
// Similar to :c:func:`PyImport_ImportFrozenModuleObject`, but the name is a
// UTF-8 encoded string instead of a Unicode object.
//
//go:linkname ImportImportFrozenModule PyImport_ImportFrozenModule
func ImportImportFrozenModule(name *Char) Int

// int PyImport_AppendInittab(const char *name, PyObject* (*initfunc)(void))
// Add a single module to the existing table of built-in modules.  This is a
// convenience wrapper around :c:func:`PyImport_ExtendInittab`, returning “-1“ if
// the table could not be extended.  The new module can be imported by the name
// *name*, and uses the function *initfunc* as the initialization function called
// on the first attempted import.  This should be called before
// :c:func:`Py_Initialize`.
//
//go:linkname ImportAppendInittab PyImport_AppendInittab
func ImportAppendInittab(name *Char, initfunc func() *Object) Int

// int PyImport_ExtendInittab(struct _inittab *newtab)
// Add a collection of modules to the table of built-in modules.  The *newtab*
// array must end with a sentinel entry which contains “NULL“ for the :c:member:`~_inittab.name`
// field; failure to provide the sentinel value can result in a memory fault.
// Returns “0“ on success or “-1“ if insufficient memory could be allocated to
// extend the internal table.  In the event of failure, no modules are added to the
// internal table.  This must be called before :c:func:`Py_Initialize`.
//
// If Python is initialized multiple times, :c:func:`PyImport_AppendInittab` or
// :c:func:`PyImport_ExtendInittab` must be called before each Python
// initialization.
//
//go:linkname ImportExtendInittab PyImport_ExtendInittab
func ImportExtendInittab(newtab *Inittab) Int

// struct _frozen
// .. index:: single: freeze utility
//
// This is the structure type definition for frozen module descriptors, as
// generated by the :program:`freeze` utility (see :file:`Tools/freeze/` in the
// Python source distribution).  Its definition, found in :file:`Include/import.h`,
// is::
//
// struct _frozen {
// const char *name;
// const unsigned char *code;
// int size;
// bool is_package;
// };
//
// The new “is_package“ field indicates whether the module is a package or not.
// This replaces setting the “size“ field to a negative value.
type Frozen struct{}

// struct _inittab
// Structure describing a single entry in the list of built-in modules.
// Programs which
// embed Python may use an array of these structures in conjunction with
// :c:func:`PyImport_ExtendInittab` to provide additional built-in modules.
// The structure consists of two members:
type Inittab struct{}

// const struct _frozen* PyImport_FrozenModules
// This pointer is initialized to point to an array of :c:struct:`_frozen`
// records, terminated by one whose members are all “NULL“ or zero.  When a frozen
// module is imported, it is searched in this table.  Third-party code could play
// tricks with this to provide a dynamically created collection of frozen modules.
func ImportFrozenModules() *Frozen {
	return *(**Frozen)(Pointer(&C.PyImport_FrozenModules))
}
