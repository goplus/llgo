package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// PyStatus PyWideStringList_Append(PyWideStringList *list, const wchar_t *item)
// Append *item* to *list*.
//
// Python must be preinitialized to call this function.
//
//go:linkname WideStringListAppend C.PyWideStringList_Append
func WideStringListAppend(list *WideStringList, item *Wchar) Status

// PyStatus PyWideStringList_Insert(PyWideStringList *list, Py_ssize_t index, const wchar_t *item)
// Insert *item* into *list* at *index*.
//
// If *index* is greater than or equal to *list* length, append *item* to
// *list*.
//
// *index* must be greater than or equal to “0“.
//
// Python must be preinitialized to call this function.
//
//go:linkname WideStringListInsert C.PyWideStringList_Insert
func WideStringListInsert(list *WideStringList, index SSizeT, item *Wchar) Status

// PyStatus PyStatus_Ok(void)
// Success.
//
//go:linkname StatusOk C.PyStatus_Ok
func StatusOk() Status

// PyStatus PyStatus_Error(const char *err_msg)
// Initialization error with a message.
//
// *err_msg* must not be “NULL“.
//
//go:linkname StatusError C.PyStatus_Error
func StatusError(errMsg *Char) Status

// PyStatus PyStatus_NoMemory(void)
// Memory allocation failure (out of memory).
//
//go:linkname StatusNoMemory C.PyStatus_NoMemory
func StatusNoMemory() Status

// PyStatus PyStatus_Exit(int exitcode)
// Exit Python with the specified exit code.
//
// Functions to handle a status:
//
//go:linkname StatusExit C.PyStatus_Exit
func StatusExit(exitcode Int) Status

// int PyStatus_Exception(PyStatus status)
// Is the status an error or an exit? If true, the exception must be
// handled; by calling :c:func:`Py_ExitStatusException` for example.
//
//go:linkname StatusException C.PyStatus_Exception
func StatusException(status Status) Int

// int PyStatus_IsError(PyStatus status)
// Is the result an error?
//
//go:linkname StatusIsError C.PyStatus_IsError
func StatusIsError(status Status) Int

// int PyStatus_IsExit(PyStatus status)
// Is the result an exit?
//
//go:linkname StatusIsExit C.PyStatus_IsExit
func StatusIsExit(status Status) Int

// void Py_ExitStatusException(PyStatus status)
// Call “exit(exitcode)“ if *status* is an exit. Print the error
// message and exit with a non-zero exit code if *status* is an error.  Must
// only be called if “PyStatus_Exception(status)“ is non-zero.
//
// .. note::
// Internally, Python uses macros which set “PyStatus.func“,
// whereas functions to create a status set “func“ to “NULL“.
//
// Example::
//
// PyStatus alloc(void **ptr, size_t size)
// {
// *ptr = PyMem_RawMalloc(size);
// if (*ptr == NULL) {
// return PyStatus_NoMemory();
// }
// return PyStatus_Ok();
// }
//
// int main(int argc, char **argv)
// {
// void *ptr;
// PyStatus status = alloc(&ptr, 16);
// if (PyStatus_Exception(status)) {
// Py_ExitStatusException(status);
// }
// PyMem_Free(ptr);
// return 0;
// }
//
// PyPreConfig
// -----------
//
//go:linkname ExitStatusException C.Py_ExitStatusException
func ExitStatusException(status Status)

// void PyPreConfig_InitPythonConfig(PyPreConfig *preconfig)
// Initialize the preconfiguration with :ref:`Python Configuration
// <init-python-config>`.
//
//go:linkname PreConfigInitPythonConfig C.PyPreConfig_InitPythonConfig
func PreConfigInitPythonConfig(preconfig *PreConfig)

// void PyPreConfig_InitIsolatedConfig(PyPreConfig *preconfig)
// Initialize the preconfiguration with :ref:`Isolated Configuration
// <init-isolated-conf>`.
//
//go:linkname PreConfigInitIsolatedConfig C.PyPreConfig_InitIsolatedConfig
func PreConfigInitIsolatedConfig(preconfig *PreConfig)

// PyStatus Py_PreInitialize(const PyPreConfig *preconfig)
// Preinitialize Python from *preconfig* preconfiguration.
//
// *preconfig* must not be “NULL“.
//
//go:linkname PreInitialize C.Py_PreInitialize
func PreInitialize(preconfig *PreConfig) Status

// PyStatus Py_PreInitializeFromBytesArgs(const PyPreConfig *preconfig, int argc, char * const *argv)
// Preinitialize Python from *preconfig* preconfiguration.
//
// Parse *argv* command line arguments (bytes strings) if
// :c:member:`~PyPreConfig.parse_argv` of *preconfig* is non-zero.
//
// *preconfig* must not be “NULL“.
//
//go:linkname PreInitializeFromBytesArgs C.Py_PreInitializeFromBytesArgs
func PreInitializeFromBytesArgs(preconfig *PreConfig, argc Int, argv **Char) Status

// PyStatus Py_PreInitializeFromArgs(const PyPreConfig *preconfig, int argc, wchar_t * const * argv)
// Preinitialize Python from *preconfig* preconfiguration.
//
// Parse *argv* command line arguments (wide strings) if
// :c:member:`~PyPreConfig.parse_argv` of *preconfig* is non-zero.
//
// *preconfig* must not be “NULL“.
//
// The caller is responsible to handle exceptions (error or exit) using
// :c:func:`PyStatus_Exception` and :c:func:`Py_ExitStatusException`.
//
// For :ref:`Python Configuration <init-python-config>`
// (:c:func:`PyPreConfig_InitPythonConfig`), if Python is initialized with
// command line arguments, the command line arguments must also be passed to
// preinitialize Python, since they have an effect on the pre-configuration
// like encodings. For example, the :option:`-X utf8 <-X>` command line option
// enables the :ref:`Python UTF-8 Mode <utf8-mode>`.
//
// “PyMem_SetAllocator()“ can be called after :c:func:`Py_PreInitialize` and
// before :c:func:`Py_InitializeFromConfig` to install a custom memory allocator.
// It can be called before :c:func:`Py_PreInitialize` if
// :c:member:`PyPreConfig.allocator` is set to “PYMEM_ALLOCATOR_NOT_SET“.
//
// Python memory allocation functions like :c:func:`PyMem_RawMalloc` must not be
// used before the Python preinitialization, whereas calling directly “malloc()“
// and “free()“ is always safe. :c:func:`Py_DecodeLocale` must not be called
// before the Python preinitialization.
//
// Example using the preinitialization to enable
// the :ref:`Python UTF-8 Mode <utf8-mode>`::
//
// PyStatus status;
// PyPreConfig preconfig;
// PyPreConfig_InitPythonConfig(&preconfig);
//
// preconfig.utf8_mode = 1;
//
// status = Py_PreInitialize(&preconfig);
// if (PyStatus_Exception(status)) {
// Py_ExitStatusException(status);
// }
//
// /* at this point, Python speaks UTF-8 */
//
// Py_Initialize();
// /* ... use Python API here ... */
// Py_Finalize();
//
// PyConfig
// --------
//
//go:linkname PreInitializeFromArgs C.Py_PreInitializeFromArgs
func PreInitializeFromArgs(preconfig *PreConfig, argc Int, argv **Wchar) Status

// void PyConfig_InitPythonConfig(PyConfig *config)
// Initialize configuration with the :ref:`Python Configuration
// <init-python-config>`.
//
//go:linkname ConfigInitPythonConfig C.PyConfig_InitPythonConfig
func ConfigInitPythonConfig(config *Config)

// void PyConfig_InitIsolatedConfig(PyConfig *config)
// Initialize configuration with the :ref:`Isolated Configuration
// <init-isolated-conf>`.
//
//go:linkname ConfigInitIsolatedConfig C.PyConfig_InitIsolatedConfig
func ConfigInitIsolatedConfig(config *Config)

// PyStatus PyConfig_SetString(PyConfig *config, wchar_t * const *config_str, const wchar_t *str)
// Copy the wide character string *str* into “*config_str“.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetString C.PyConfig_SetString
func ConfigSetString(config *Config, configStr **Wchar, str *Wchar) Status

// PyStatus PyConfig_SetBytesString(PyConfig *config, wchar_t * const *config_str, const char *str)
// Decode *str* using :c:func:`Py_DecodeLocale` and set the result into
// “*config_str“.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetBytesString C.PyConfig_SetBytesString
func ConfigSetBytesString(config *Config, configStr **Wchar, str *Char) Status

// PyStatus PyConfig_SetArgv(PyConfig *config, int argc, wchar_t * const *argv)
// Set command line arguments (:c:member:`~PyConfig.argv` member of
// *config*) from the *argv* list of wide character strings.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetArgv C.PyConfig_SetArgv
func ConfigSetArgv(config *Config, argc Int, argv **Wchar) Status

// PyStatus PyConfig_SetBytesArgv(PyConfig *config, int argc, char * const *argv)
// Set command line arguments (:c:member:`~PyConfig.argv` member of
// *config*) from the *argv* list of bytes strings. Decode bytes using
// :c:func:`Py_DecodeLocale`.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetBytesArgv C.PyConfig_SetBytesArgv
func ConfigSetBytesArgv(config *Config, argc Int, argv **Char) Status

// PyStatus PyConfig_SetWideStringList(PyConfig *config, PyWideStringList *list, Py_ssize_t length, wchar_t **items)
// Set the list of wide strings *list* to *length* and *items*.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetWideStringList C.PyConfig_SetWideStringList
func ConfigSetWideStringList(config *Config, list *WideStringList, length SSizeT, items **Wchar) Status

// PyStatus PyConfig_Read(PyConfig *config)
// Read all Python configuration.
//
// Fields which are already initialized are left unchanged.
//
// Fields for :ref:`path configuration <init-path-config>` are no longer
// calculated or modified when calling this function, as of Python 3.11.
//
// The :c:func:`PyConfig_Read` function only parses
// :c:member:`PyConfig.argv` arguments once: :c:member:`PyConfig.parse_argv`
// is set to “2“ after arguments are parsed. Since Python arguments are
// stripped from :c:member:`PyConfig.argv`, parsing arguments twice would
// parse the application options as Python options.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
// The :c:member:`PyConfig.argv` arguments are now only parsed once,
// :c:member:`PyConfig.parse_argv` is set to “2“ after arguments are
// parsed, and arguments are only parsed if
// :c:member:`PyConfig.parse_argv` equals “1“.
//
// :c:func:`PyConfig_Read` no longer calculates all paths, and so fields
// listed under :ref:`Python Path Configuration <init-path-config>` may
// no longer be updated until :c:func:`Py_InitializeFromConfig` is
// called.
//
//go:linkname ConfigRead C.PyConfig_Read
func ConfigRead(config *Config) Status

// void PyConfig_Clear(PyConfig *config)
// Release configuration memory.
//
// Most “PyConfig“ methods :ref:`preinitialize Python <c-preinit>` if needed.
// In that case, the Python preinitialization configuration
// (:c:type:`PyPreConfig`) in based on the :c:type:`PyConfig`. If configuration
// fields which are in common with :c:type:`PyPreConfig` are tuned, they must
// be set before calling a :c:type:`PyConfig` method:
//
// * :c:member:`PyConfig.dev_mode`
// * :c:member:`PyConfig.isolated`
// * :c:member:`PyConfig.parse_argv`
// * :c:member:`PyConfig.use_environment`
//
// Moreover, if :c:func:`PyConfig_SetArgv` or :c:func:`PyConfig_SetBytesArgv`
// is used, this method must be called before other methods, since the
// preinitialization configuration depends on command line arguments (if
// :c:member:`~PyConfig.parse_argv` is non-zero).
//
// The caller of these methods is responsible to handle exceptions (error or
// exit) using “PyStatus_Exception()“ and “Py_ExitStatusException()“.
//
//go:linkname ConfigClear C.PyConfig_Clear
func ConfigClear(config *Config)

// PyInitConfig* PyInitConfig_Create(void)
// Create a new initialization configuration using :ref:`Isolated Configuration
// <init-isolated-conf>` default values.
//
// It must be freed by :c:func:`PyInitConfig_Free`.
//
// Return “NULL“ on memory allocation failure.
//
//go:linkname InitConfigCreate C.PyInitConfig_Create
func InitConfigCreate() *InitConfig

// void PyInitConfig_Free(PyInitConfig *config)
// Free memory of the initialization configuration *config*.
//
// Error Handling
// --------------
//
//go:linkname InitConfigFree C.PyInitConfig_Free
func InitConfigFree(config *InitConfig)

// int PyInitConfig_GetError(PyInitConfig* config, const char **err_msg)
// Get the *config* error message.
//
// * Set *\*err_msg* and return “1“ if an error is set.
// * Set *\*err_msg* to “NULL“ and return “0“ otherwise.
//
// An error message is an UTF-8 encoded string.
//
// If *config* has an exit code, format the exit code as an error
// message.
//
// The error message remains valid until another “PyInitConfig“
// function is called with *config*. The caller doesn't have to free the
// error message.
//
//go:linkname InitConfigGetError C.PyInitConfig_GetError
func InitConfigGetError(config *InitConfig, errMsg **Char) Int

// int PyInitConfig_GetExitCode(PyInitConfig* config, int *exitcode)
// Get the *config* exit code.
//
// * Set *\*exitcode* and return “1“ if *config* has an exit code set.
// * Return “0“ if *config* has no exit code set.
//
// Only the “Py_InitializeFromInitConfig()“ function can set an exit
// code if the “parse_argv“ option is non-zero.
//
// An exit code can be set when parsing the command line failed (exit
// code “2“) or when a command line option asks to display the command
// line help (exit code “0“).
//
// Get Options
// -----------
//
// The configuration option *name* parameter must be a non-NULL
// null-terminated UTF-8 encoded string.
//
//go:linkname InitConfigGetExitCode C.PyInitConfig_GetExitCode
func InitConfigGetExitCode(config *InitConfig, exitcode *Int) Int

// int PyInitConfig_HasOption(PyInitConfig *config, const char *name)
// Test if the configuration has an option called *name*.
//
// Return “1“ if the option exists, or return “0“ otherwise.
//
//go:linkname InitConfigHasOption C.PyInitConfig_HasOption
func InitConfigHasOption(config *InitConfig, name *Char) Int

// int PyInitConfig_GetInt(PyInitConfig *config, const char *name, int64_t *value)
// Get an integer configuration option.
//
// * Set *\*value*, and return “0“ on success.
// * Set an error in *config* and return “-1“ on error.
//
//go:linkname InitConfigGetInt C.PyInitConfig_GetInt
func InitConfigGetInt(config *InitConfig, name *Char, value *UlongLong) Int

// int PyInitConfig_GetStr(PyInitConfig *config, const char *name, char **value)
// Get a string configuration option as a null-terminated UTF-8
// encoded string.
//
// * Set *\*value*, and return “0“ on success.
// * Set an error in *config* and return “-1“ on error.
//
// *\*value* can be set to “NULL“ if the option is an optional string and the
// option is unset.
//
// On success, the string must be released with “free(value)“ if it's not
// “NULL“.
//
//go:linkname InitConfigGetStr C.PyInitConfig_GetStr
func InitConfigGetStr(config *InitConfig, name *Char, value **Char) Int

// int PyInitConfig_GetStrList(PyInitConfig *config, const char *name, size_t *length, char ***items)
// Get a string list configuration option as an array of
// null-terminated UTF-8 encoded strings.
//
// * Set *\*length* and *\*value*, and return “0“ on success.
// * Set an error in *config* and return “-1“ on error.
//
// On success, the string list must be released with
// “PyInitConfig_FreeStrList(length, items)“.
//
//go:linkname InitConfigGetStrList C.PyInitConfig_GetStrList
func InitConfigGetStrList(config *InitConfig, name *Char, length *Ulong, items ***Char) Int

// void PyInitConfig_FreeStrList(size_t length, char **items)
// Free memory of a string list created by
// “PyInitConfig_GetStrList()“.
//
// Set Options
// -----------
//
// The configuration option *name* parameter must be a non-NULL null-terminated
// UTF-8 encoded string.
//
// Some configuration options have side effects on other options. This logic is
// only implemented when “Py_InitializeFromInitConfig()“ is called, not by the
// "Set" functions below. For example, setting “dev_mode“ to “1“ does not set
// “faulthandler“ to “1“.
//
//go:linkname InitConfigFreeStrList C.PyInitConfig_FreeStrList
func InitConfigFreeStrList(length Ulong, items **Char)

// int PyInitConfig_SetInt(PyInitConfig *config, const char *name, int64_t value)
// Set an integer configuration option.
//
// * Return “0“ on success.
// * Set an error in *config* and return “-1“ on error.
//
//go:linkname InitConfigSetInt C.PyInitConfig_SetInt
func InitConfigSetInt(config *InitConfig, name *Char, value UlongLong) Int

// int PyInitConfig_SetStr(PyInitConfig *config, const char *name, const char *value)
// Set a string configuration option from a null-terminated UTF-8
// encoded string. The string is copied.
//
// * Return “0“ on success.
// * Set an error in *config* and return “-1“ on error.
//
//go:linkname InitConfigSetStr C.PyInitConfig_SetStr
func InitConfigSetStr(config *InitConfig, name *Char, value *Char) Int

// int PyInitConfig_SetStrList(PyInitConfig *config, const char *name, size_t length, char * const *items)
// Set a string list configuration option from an array of
// null-terminated UTF-8 encoded strings. The string list is copied.
//
// * Return “0“ on success.
// * Set an error in *config* and return “-1“ on error.
//
// Module
// ------
//
//go:linkname InitConfigSetStrList C.PyInitConfig_SetStrList
func InitConfigSetStrList(config *InitConfig, name *Char, length Ulong, items **Char) Int

// int PyInitConfig_AddModule(PyInitConfig *config, const char *name, PyObject* (*initfunc)(void))
// Add a built-in extension module to the table of built-in modules.
//
// The new module can be imported by the name *name*, and uses the function
// *initfunc* as the initialization function called on the first attempted
// import.
//
// * Return “0“ on success.
// * Set an error in *config* and return “-1“ on error.
//
// If Python is initialized multiple times, “PyInitConfig_AddModule()“ must
// be called at each Python initialization.
//
// Similar to the :c:func:`PyImport_AppendInittab` function.
//
// Initialize Python
// -----------------
//
//go:linkname InitConfigAddModule C.PyInitConfig_AddModule
func InitConfigAddModule(config *InitConfig, name *Char, initfunc func() *Object) Int

// int Py_InitializeFromInitConfig(PyInitConfig *config)
// Initialize Python from the initialization configuration.
//
// * Return “0“ on success.
// * Set an error in *config* and return “-1“ on error.
// * Set an exit code in *config* and return “-1“ if Python wants to
// exit.
//
// See “PyInitConfig_GetExitcode()“ for the exit code case.
//
// Example
// -------
//
// Example initializing Python, set configuration options of various types,
// return “-1“ on error:
//
// .. code-block:: c
//
// int init_python(void)
// {
// PyInitConfig *config = PyInitConfig_Create();
// if (config == NULL) {
// printf("PYTHON INIT ERROR: memory allocation failed\n");
// return -1;
// }
//
// // Set an integer (dev mode)
// if (PyInitConfig_SetInt(config, "dev_mode", 1) < 0) {
// goto error;
// }
//
// // Set a list of UTF-8 strings (argv)
// char *argv[] = {"my_program", "-c", "pass"};
// if (PyInitConfig_SetStrList(config, "argv",
// Py_ARRAY_LENGTH(argv), argv) < 0) {
// goto error;
// }
//
// // Set a UTF-8 string (program name)
// if (PyInitConfig_SetStr(config, "program_name", L"my_program") < 0) {
// goto error;
// }
//
// // Initialize Python with the configuration
// if (Py_InitializeFromInitConfig(config) < 0) {
// goto error;
// }
// PyInitConfig_Free(config);
// return 0;
//
// // Display the error message
// const char *err_msg;
// error:
// (void)PyInitConfig_GetError(config, &err_msg);
// printf("PYTHON INIT ERROR: %s\n", err_msg);
// PyInitConfig_Free(config);
//
// return -1;
// }
//
// Runtime Python configuration API
// ================================
//
// The configuration option *name* parameter must be a non-NULL null-terminated
// UTF-8 encoded string.
//
// Some options are read from the :mod:`sys` attributes. For example, the option
// “"argv"“ is read from :data:`sys.argv`.
//
//go:linkname InitializeFromInitConfig C.Py_InitializeFromInitConfig
func InitializeFromInitConfig(config *InitConfig) Int

// void Py_GetArgcArgv(int *argc, wchar_t ***argv)
// Get the original command line arguments, before Python modified them.
//
// See also :c:member:`PyConfig.orig_argv` member.
//
// Multi-Phase Initialization Private Provisional API
// ==================================================
//
// This section is a private provisional API introducing multi-phase
// initialization, the core feature of :pep:`432`:
//
// * "Core" initialization phase, "bare minimum Python":
//
// * Builtin types;
// * Builtin exceptions;
// * Builtin and frozen modules;
// * The :mod:`sys` module is only partially initialized
// (ex: :data:`sys.path` doesn't exist yet).
//
// * "Main" initialization phase, Python is fully initialized:
//
// * Install and configure :mod:`importlib`;
// * Apply the :ref:`Path Configuration <init-path-config>`;
// * Install signal handlers;
// * Finish :mod:`sys` module initialization (ex: create :data:`sys.stdout`
// and :data:`sys.path`);
// * Enable optional features like :mod:`faulthandler` and :mod:`tracemalloc`;
// * Import the :mod:`site` module;
// * etc.
//
// Private provisional API:
//
// * :c:member:`PyConfig._init_main`: if set to “0“,
// :c:func:`Py_InitializeFromConfig` stops at the "Core" initialization phase.
//
//go:linkname GetArgcArgv C.Py_GetArgcArgv
func GetArgcArgv(argc *Int, argv ***Wchar)

// PyStatus _Py_InitializeMain(void)
// Move to the "Main" initialization phase, finish the Python initialization.
//
// No module is imported during the "Core" phase and the “importlib“ module is
// not configured: the :ref:`Path Configuration <init-path-config>` is only
// applied during the "Main" phase. It may allow to customize Python in Python to
// override or tune the :ref:`Path Configuration <init-path-config>`, maybe
// install a custom :data:`sys.meta_path` importer or an import hook, etc.
//
// It may become possible to calculate the :ref:`Path Configuration
// <init-path-config>` in Python, after the Core phase and before the Main phase,
// which is one of the :pep:`432` motivation.
//
// The "Core" phase is not properly defined: what should be and what should
// not be available at this phase is not specified yet. The API is marked
// as private and provisional: the API can be modified or even be removed
// anytime until a proper public API is designed.
//
// Example running Python code between "Core" and "Main" initialization
// phases::
//
// void init_python(void)
// {
// PyStatus status;
//
// PyConfig config;
// PyConfig_InitPythonConfig(&config);
// config._init_main = 0;
//
// /* ... customize 'config' configuration ... */
//
// status = Py_InitializeFromConfig(&config);
// PyConfig_Clear(&config);
// if (PyStatus_Exception(status)) {
// Py_ExitStatusException(status);
// }
//
// /* Use sys.stderr because sys.stdout is only created
// by _Py_InitializeMain() */
// int res = PyRun_SimpleString(
// "import sys; "
// "print('Run Python code before _Py_InitializeMain', "
// "file=sys.stderr)");
// if (res < 0) {
// exit(1);
// }
//
// /* ... put more configuration code here ... */
//
// status = _Py_InitializeMain();
// if (PyStatus_Exception(status)) {
// Py_ExitStatusException(status);
// }
// }
//
//go:linkname InitializeMain C._Py_InitializeMain
func InitializeMain() Status

// PyWideStringList
// List of “wchar_t*“ strings.
//
// If *length* is non-zero, *items* must be non-“NULL“ and all strings must be
// non-“NULL“.
type WideStringList = C.PyWideStringList

// PyStatus
// Structure to store an initialization function status: success, error
// or exit.
//
// For an error, it can store the C function name which created the error.
//
// Structure fields:
type Status = C.PyStatus

// PyPreConfig
// Structure used to preinitialize Python.
type PreConfig = C.PyPreConfig

// PyConfig
// Structure containing most parameters to configure Python.
//
// When done, the :c:func:`PyConfig_Clear` function must be used to release the
// configuration memory.
type Config = C.PyConfig

// struct PyInitConfig
// Opaque structure to configure the Python initialization.
type InitConfig struct{}
