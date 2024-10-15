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
//go:linkname WideStringListAppend PyWideStringList_Append
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
//go:linkname WideStringListInsert PyWideStringList_Insert
func WideStringListInsert(list *WideStringList, index SSizeT, item *Wchar) Status

// PyStatus PyStatus_Ok(void)
// Success.
//
//go:linkname StatusOk PyStatus_Ok
func StatusOk() Status

// PyStatus PyStatus_Error(const char *err_msg)
// Initialization error with a message.
//
// *err_msg* must not be “NULL“.
//
//go:linkname StatusError PyStatus_Error
func StatusError(errMsg *Char) Status

// PyStatus PyStatus_NoMemory(void)
// Memory allocation failure (out of memory).
//
//go:linkname StatusNoMemory PyStatus_NoMemory
func StatusNoMemory() Status

// PyStatus PyStatus_Exit(int exitcode)
// Exit Python with the specified exit code.
//
// Functions to handle a status:
//
//go:linkname StatusExit PyStatus_Exit
func StatusExit(exitcode Int) Status

// int PyStatus_Exception(PyStatus status)
// Is the status an error or an exit? If true, the exception must be
// handled; by calling :c:func:`Py_ExitStatusException` for example.
//
//go:linkname StatusException PyStatus_Exception
func StatusException(status Status) Int

// int PyStatus_IsError(PyStatus status)
// Is the result an error?
//
//go:linkname StatusIsError PyStatus_IsError
func StatusIsError(status Status) Int

// int PyStatus_IsExit(PyStatus status)
// Is the result an exit?
//
//go:linkname StatusIsExit PyStatus_IsExit
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
// ===========
//
//go:linkname ExitStatusException Py_ExitStatusException
func ExitStatusException(status Status)

// void PyPreConfig_InitPythonConfig(PyPreConfig *preconfig)
// Initialize the preconfiguration with :ref:`Python Configuration
// <init-python-config>`.
//
//go:linkname PreConfigInitPythonConfig PyPreConfig_InitPythonConfig
func PreConfigInitPythonConfig(preconfig *PreConfig)

// void PyPreConfig_InitIsolatedConfig(PyPreConfig *preconfig)
// Initialize the preconfiguration with :ref:`Isolated Configuration
// <init-isolated-conf>`.
//
//go:linkname PreConfigInitIsolatedConfig PyPreConfig_InitIsolatedConfig
func PreConfigInitIsolatedConfig(preconfig *PreConfig)

// PyStatus Py_PreInitialize(const PyPreConfig *preconfig)
// Preinitialize Python from *preconfig* preconfiguration.
//
// *preconfig* must not be “NULL“.
//
//go:linkname PreInitialize Py_PreInitialize
func PreInitialize(preconfig *PreConfig) Status

// PyStatus Py_PreInitializeFromBytesArgs(const PyPreConfig *preconfig, int argc, char * const *argv)
// Preinitialize Python from *preconfig* preconfiguration.
//
// Parse *argv* command line arguments (bytes strings) if
// :c:member:`~PyPreConfig.parse_argv` of *preconfig* is non-zero.
//
// *preconfig* must not be “NULL“.
//
//go:linkname PreInitializeFromBytesArgs Py_PreInitializeFromBytesArgs
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
// ========
//
//go:linkname PreInitializeFromArgs Py_PreInitializeFromArgs
func PreInitializeFromArgs(preconfig *PreConfig, argc Int, argv **Wchar) Status

// void PyConfig_InitPythonConfig(PyConfig *config)
// Initialize configuration with the :ref:`Python Configuration
// <init-python-config>`.
//
//go:linkname ConfigInitPythonConfig PyConfig_InitPythonConfig
func ConfigInitPythonConfig(config *Config)

// void PyConfig_InitIsolatedConfig(PyConfig *config)
// Initialize configuration with the :ref:`Isolated Configuration
// <init-isolated-conf>`.
//
//go:linkname ConfigInitIsolatedConfig PyConfig_InitIsolatedConfig
func ConfigInitIsolatedConfig(config *Config)

// PyStatus PyConfig_SetString(PyConfig *config, wchar_t * const *config_str, const wchar_t *str)
// Copy the wide character string *str* into “*config_str“.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetString PyConfig_SetString
func ConfigSetString(config *Config, configStr **Wchar, str *Wchar) Status

// PyStatus PyConfig_SetBytesString(PyConfig *config, wchar_t * const *config_str, const char *str)
// Decode *str* using :c:func:`Py_DecodeLocale` and set the result into
// “*config_str“.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetBytesString PyConfig_SetBytesString
func ConfigSetBytesString(config *Config, configStr **Wchar, str *Char) Status

// PyStatus PyConfig_SetArgv(PyConfig *config, int argc, wchar_t * const *argv)
// Set command line arguments (:c:member:`~PyConfig.argv` member of
// *config*) from the *argv* list of wide character strings.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetArgv PyConfig_SetArgv
func ConfigSetArgv(config *Config, argc Int, argv **Wchar) Status

// PyStatus PyConfig_SetBytesArgv(PyConfig *config, int argc, char * const *argv)
// Set command line arguments (:c:member:`~PyConfig.argv` member of
// *config*) from the *argv* list of bytes strings. Decode bytes using
// :c:func:`Py_DecodeLocale`.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetBytesArgv PyConfig_SetBytesArgv
func ConfigSetBytesArgv(config *Config, argc Int, argv **Char) Status

// PyStatus PyConfig_SetWideStringList(PyConfig *config, PyWideStringList *list, Py_ssize_t length, wchar_t **items)
// Set the list of wide strings *list* to *length* and *items*.
//
// :ref:`Preinitialize Python <c-preinit>` if needed.
//
//go:linkname ConfigSetWideStringList PyConfig_SetWideStringList
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
//go:linkname ConfigRead PyConfig_Read
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
//go:linkname ConfigClear PyConfig_Clear
func ConfigClear(config *Config)

// PyStatus Py_InitializeFromConfig(const PyConfig *config)
// Initialize Python from *config* configuration.
//
// The caller is responsible to handle exceptions (error or exit) using
// :c:func:`PyStatus_Exception` and :c:func:`Py_ExitStatusException`.
//
// If :c:func:`PyImport_FrozenModules`, :c:func:`PyImport_AppendInittab` or
// :c:func:`PyImport_ExtendInittab` are used, they must be set or called after
// Python preinitialization and before the Python initialization. If Python is
// initialized multiple times, :c:func:`PyImport_AppendInittab` or
// :c:func:`PyImport_ExtendInittab` must be called before each Python
// initialization.
//
// The current configuration (“PyConfig“ type) is stored in
// “PyInterpreterState.config“.
//
// Example setting the program name::
//
// void init_python(void)
// {
// PyStatus status;
//
// PyConfig config;
// PyConfig_InitPythonConfig(&config);
//
// /* Set the program name. Implicitly preinitialize Python. */
// status = PyConfig_SetString(&config, &config.program_name,
// L"/path/to/my_program");
// if (PyStatus_Exception(status)) {
// goto exception;
// }
//
// status = Py_InitializeFromConfig(&config);
// if (PyStatus_Exception(status)) {
// goto exception;
// }
// PyConfig_Clear(&config);
// return;
//
// exception:
// PyConfig_Clear(&config);
// Py_ExitStatusException(status);
// }
//
// More complete example modifying the default configuration, read the
// configuration, and then override some parameters. Note that since
// 3.11, many parameters are not calculated until initialization, and
// so values cannot be read from the configuration structure. Any values
// set before initialize is called will be left unchanged by
// initialization::
//
// PyStatus init_python(const char *program_name)
// {
// PyStatus status;
//
// PyConfig config;
// PyConfig_InitPythonConfig(&config);
//
// /* Set the program name before reading the configuration
// (decode byte string from the locale encoding).
//
// Implicitly preinitialize Python. */
// status = PyConfig_SetBytesString(&config, &config.program_name,
// program_name);
// if (PyStatus_Exception(status)) {
// goto done;
// }
//
// /* Read all configuration at once */
// status = PyConfig_Read(&config);
// if (PyStatus_Exception(status)) {
// goto done;
// }
//
// /* Specify sys.path explicitly */
// /* If you want to modify the default set of paths, finish
// initialization first and then use PySys_GetObject("path") */
// config.module_search_paths_set = 1;
// status = PyWideStringList_Append(&config.module_search_paths,
// L"/path/to/stdlib");
// if (PyStatus_Exception(status)) {
// goto done;
// }
// status = PyWideStringList_Append(&config.module_search_paths,
// L"/path/to/more/modules");
// if (PyStatus_Exception(status)) {
// goto done;
// }
//
// /* Override executable computed by PyConfig_Read() */
// status = PyConfig_SetString(&config, &config.executable,
// L"/path/to/my_executable");
// if (PyStatus_Exception(status)) {
// goto done;
// }
//
// status = Py_InitializeFromConfig(&config);
//
// done:
// PyConfig_Clear(&config);
// return status;
// }
//
// .. _init-isolated-conf:
//
// Isolated Configuration
// ======================
//
// :c:func:`PyPreConfig_InitIsolatedConfig` and
// :c:func:`PyConfig_InitIsolatedConfig` functions create a configuration to
// isolate Python from the system. For example, to embed Python into an
// application.
//
// This configuration ignores global configuration variables, environment
// variables, command line arguments (:c:member:`PyConfig.argv` is not parsed)
// and user site directory. The C standard streams (ex: “stdout“) and the
// LC_CTYPE locale are left unchanged. Signal handlers are not installed.
//
// Configuration files are still used with this configuration to determine
// paths that are unspecified. Ensure :c:member:`PyConfig.home` is specified
// to avoid computing the default path configuration.
//
// .. _init-python-config:
//
// Python Configuration
// ====================
//
// :c:func:`PyPreConfig_InitPythonConfig` and :c:func:`PyConfig_InitPythonConfig`
// functions create a configuration to build a customized Python which behaves as
// the regular Python.
//
// Environments variables and command line arguments are used to configure
// Python, whereas global configuration variables are ignored.
//
// This function enables C locale coercion (:pep:`538`)
// and :ref:`Python UTF-8 Mode <utf8-mode>`
// (:pep:`540`) depending on the LC_CTYPE locale, :envvar:`PYTHONUTF8` and
// :envvar:`PYTHONCOERCECLOCALE` environment variables.
//
// .. _init-path-config:
//
// Python Path Configuration
// =========================
//
// :c:type:`PyConfig` contains multiple fields for the path configuration:
//
// * Path configuration inputs:
//
// * :c:member:`PyConfig.home`
// * :c:member:`PyConfig.platlibdir`
// * :c:member:`PyConfig.pathconfig_warnings`
// * :c:member:`PyConfig.program_name`
// * :c:member:`PyConfig.pythonpath_env`
// * current working directory: to get absolute paths
// * “PATH“ environment variable to get the program full path
// (from :c:member:`PyConfig.program_name`)
// * “__PYVENV_LAUNCHER__“ environment variable
// * (Windows only) Application paths in the registry under
// "Software\Python\PythonCore\X.Y\PythonPath" of HKEY_CURRENT_USER and
// HKEY_LOCAL_MACHINE (where X.Y is the Python version).
//
// * Path configuration output fields:
//
// * :c:member:`PyConfig.base_exec_prefix`
// * :c:member:`PyConfig.base_executable`
// * :c:member:`PyConfig.base_prefix`
// * :c:member:`PyConfig.exec_prefix`
// * :c:member:`PyConfig.executable`
// * :c:member:`PyConfig.module_search_paths_set`,
// :c:member:`PyConfig.module_search_paths`
// * :c:member:`PyConfig.prefix`
//
// If at least one "output field" is not set, Python calculates the path
// configuration to fill unset fields. If
// :c:member:`~PyConfig.module_search_paths_set` is equal to “0“,
// :c:member:`~PyConfig.module_search_paths` is overridden and
// :c:member:`~PyConfig.module_search_paths_set` is set to “1“.
//
// It is possible to completely ignore the function calculating the default
// path configuration by setting explicitly all path configuration output
// fields listed above. A string is considered as set even if it is non-empty.
// “module_search_paths“ is considered as set if
// “module_search_paths_set“ is set to “1“. In this case,
// “module_search_paths“ will be used without modification.
//
// Set :c:member:`~PyConfig.pathconfig_warnings` to “0“ to suppress warnings when
// calculating the path configuration (Unix only, Windows does not log any warning).
//
// If :c:member:`~PyConfig.base_prefix` or :c:member:`~PyConfig.base_exec_prefix`
// fields are not set, they inherit their value from :c:member:`~PyConfig.prefix`
// and :c:member:`~PyConfig.exec_prefix` respectively.
//
// :c:func:`Py_RunMain` and :c:func:`Py_Main` modify :data:`sys.path`:
//
// * If :c:member:`~PyConfig.run_filename` is set and is a directory which contains a
// “__main__.py“ script, prepend :c:member:`~PyConfig.run_filename` to
// :data:`sys.path`.
// * If :c:member:`~PyConfig.isolated` is zero:
//
// * If :c:member:`~PyConfig.run_module` is set, prepend the current directory
// to :data:`sys.path`. Do nothing if the current directory cannot be read.
// * If :c:member:`~PyConfig.run_filename` is set, prepend the directory of the
// filename to :data:`sys.path`.
// * Otherwise, prepend an empty string to :data:`sys.path`.
//
// If :c:member:`~PyConfig.site_import` is non-zero, :data:`sys.path` can be
// modified by the :mod:`site` module. If
// :c:member:`~PyConfig.user_site_directory` is non-zero and the user's
// site-package directory exists, the :mod:`site` module appends the user's
// site-package directory to :data:`sys.path`.
//
// The following configuration files are used by the path configuration:
//
// * “pyvenv.cfg“
// * “._pth“ file (ex: “python._pth“)
// * “pybuilddir.txt“ (Unix only)
//
// If a “._pth“ file is present:
//
// * Set :c:member:`~PyConfig.isolated` to “1“.
// * Set :c:member:`~PyConfig.use_environment` to “0“.
// * Set :c:member:`~PyConfig.site_import` to “0“.
// * Set :c:member:`~PyConfig.safe_path` to “1“.
//
// The “__PYVENV_LAUNCHER__“ environment variable is used to set
// :c:member:`PyConfig.base_executable`
//
// Py_RunMain()
// ============
//
//go:linkname InitializeFromConfig Py_InitializeFromConfig
func InitializeFromConfig(config *Config) Status

// int Py_RunMain(void)
// Execute the command (:c:member:`PyConfig.run_command`), the script
// (:c:member:`PyConfig.run_filename`) or the module
// (:c:member:`PyConfig.run_module`) specified on the command line or in the
// configuration.
//
// By default and when if :option:`-i` option is used, run the REPL.
//
// Finally, finalizes Python and returns an exit status that can be passed to
// the “exit()“ function.
//
// See :ref:`Python Configuration <init-python-config>` for an example of
// customized Python always running in isolated mode using
// :c:func:`Py_RunMain`.
//
// Py_GetArgcArgv()
// ================
//
//go:linkname RunMain Py_RunMain
func RunMain() Int

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
//go:linkname GetArgcArgv Py_GetArgcArgv
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
//go:linkname InitializeMain _Py_InitializeMain
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
