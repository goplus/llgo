package matplotlib

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.matplotlib"

// Returns a new subclass of tuple with named fields.
//
//	>>> Point = namedtuple('Point', ['x', 'y'])
//	>>> Point.__doc__                   # docstring for the new class
//	'Point(x, y)'
//	>>> p = Point(11, y=22)             # instantiate with positional args or keywords
//	>>> p[0] + p[1]                     # indexable like a plain tuple
//	33
//	>>> x, y = p                        # unpack like a regular tuple
//	>>> x, y
//	(11, 22)
//	>>> p.x + p.y                       # fields also accessible by name
//	33
//	>>> d = p._asdict()                 # convert to a dictionary
//	>>> d['x']
//	11
//	>>> Point(**d)                      # convert from a dictionary
//	Point(x=11, y=22)
//	>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
//	Point(x=100, y=22)
//
//go:linkname Namedtuple py.namedtuple
func Namedtuple(typename *py.Object, fieldNames *py.Object) *py.Object

// Parse the given version string.
//
//	>>> parse('1.0.dev1')
//	<Version('1.0.dev1')>
//
//	:param version: The version string to parse.
//	:raises InvalidVersion: When the version string is not a valid version.
//
//go:linkname ParseVersion py.parse_version
func ParseVersion(version *py.Object) *py.Object

// Convert dictview objects to list. Other inputs are returned unchanged.
//
//go:linkname SanitizeSequence py.sanitize_sequence
func SanitizeSequence(data *py.Object) *py.Object

// Configure Matplotlib's logging levels.
//
// Matplotlib uses the standard library `logging` framework under the root
// logger 'matplotlib'.  This is a helper function to:
//
//   - set Matplotlib's root logger level
//   - set the root logger handler's level, creating the handler
//     if it does not exist yet
//
// Typically, one should call “set_loglevel("info")“ or
// “set_loglevel("debug")“ to get additional debugging information.
//
// Users or applications that are installing their own logging handlers
// may want to directly manipulate “logging.getLogger('matplotlib')“ rather
// than use this function.
//
// Parameters
// ----------
// level : {"notset", "debug", "info", "warning", "error", "critical"}
//
//	The log level of the handler.
//
// Notes
// -----
// The first time this function is called, an additional handler is attached
// to Matplotlib's root handler; this handler is reused every time and this
// function simply manipulates the logger and handler's level.
//
//go:linkname SetLoglevel py.set_loglevel
func SetLoglevel(level *py.Object) *py.Object

// Return the string path of the configuration directory.
//
// The directory is chosen as follows:
//
//  1. If the MPLCONFIGDIR environment variable is supplied, choose that.
//  2. On Linux, follow the XDG specification and look first in
//     “$XDG_CONFIG_HOME“, if defined, or “$HOME/.config“.  On other
//     platforms, choose “$HOME/.matplotlib“.
//  3. If the chosen directory exists and is writable, use that as the
//     configuration directory.
//  4. Else, create a temporary directory, and use it as the configuration
//     directory.
//
//go:linkname GetConfigdir py.get_configdir
func GetConfigdir() *py.Object

// Return the string path of the cache directory.
//
// The procedure used to find the directory is the same as for
// `get_configdir`, except using “$XDG_CACHE_HOME“/“$HOME/.cache“ instead.
//
//go:linkname GetCachedir py.get_cachedir
func GetCachedir() *py.Object

// Return the path to Matplotlib data.
//
//go:linkname GetDataPath py.get_data_path
func GetDataPath() *py.Object

// Get the location of the config file.
//
// # The file location is determined in the following order
//
// - “$PWD/matplotlibrc“
// - “$MATPLOTLIBRC“ if it is not a directory
// - “$MATPLOTLIBRC/matplotlibrc“
// - “$MPLCONFIGDIR/matplotlibrc“
// - On Linux,
//   - “$XDG_CONFIG_HOME/matplotlib/matplotlibrc“ (if “$XDG_CONFIG_HOME“
//     is defined)
//   - or “$HOME/.config/matplotlib/matplotlibrc“ (if “$XDG_CONFIG_HOME“
//     is not defined)
//
// - On other platforms,
//   - “$HOME/.matplotlib/matplotlibrc“ if “$HOME“ is defined
//   - Lastly, it looks in “$MATPLOTLIBDATA/matplotlibrc“, which should always
//     exist.
//
//go:linkname MatplotlibFname py.matplotlib_fname
func MatplotlibFname() *py.Object

// Construct a `RcParams` instance from the default Matplotlib rc file.
//
//go:linkname RcParams py.rc_params
func RcParams(failOnError *py.Object) *py.Object

// Construct a `RcParams` from file *fname*.
//
// Parameters
// ----------
// fname : str or path-like
//
//	A file with Matplotlib rc settings.
//
// fail_on_error : bool
//
//	If True, raise an error when the parser fails to convert a parameter.
//
// use_default_template : bool
//
//	If True, initialize with default parameters before updating with those
//	in the given file. If False, the configuration class only contains the
//	parameters specified in the file. (Useful for updating dicts.)
//
//go:linkname RcParamsFromFile py.rc_params_from_file
func RcParamsFromFile(fname *py.Object, failOnError *py.Object, useDefaultTemplate *py.Object) *py.Object

// Set the current `.rcParams`.  *group* is the grouping for the rc, e.g.,
// for “lines.linewidth“ the group is “lines“, for
// “axes.facecolor“, the group is “axes“, and so on.  Group may
// also be a list or tuple of group names, e.g., (*xtick*, *ytick*).
// *kwargs* is a dictionary attribute name/value pairs, e.g.,::
//
//	rc('lines', linewidth=2, color='r')
//
// sets the current `.rcParams` and is equivalent to::
//
//	rcParams['lines.linewidth'] = 2
//	rcParams['lines.color'] = 'r'
//
// The following aliases are available to save typing for interactive users:
//
// =====   =================
// Alias   Property
// =====   =================
// 'lw'    'linewidth'
// 'ls'    'linestyle'
// 'c'     'color'
// 'fc'    'facecolor'
// 'ec'    'edgecolor'
// 'mew'   'markeredgewidth'
// 'aa'    'antialiased'
// =====   =================
//
// Thus you could abbreviate the above call as::
//
//	rc('lines', lw=2, c='r')
//
// Note you can use python's kwargs dictionary facility to store
// dictionaries of default parameters.  e.g., you can customize the
// font rc as follows::
//
//	font = {'family' : 'monospace',
//	        'weight' : 'bold',
//	        'size'   : 'larger'}
//	rc('font', **font)  # pass in the font dict as kwargs
//
// This enables you to easily switch between several configurations.  Use
// “matplotlib.style.use('default')“ or :func:`~matplotlib.rcdefaults` to
// restore the default `.rcParams` after changes.
//
// Notes
// -----
// Similar functionality is available by using the normal dict interface, i.e.
// “rcParams.update({"lines.linewidth": 2, ...})“ (but “rcParams.update“
// does not support abbreviations or grouping).
//
//go:linkname Rc py.rc
func Rc(group *py.Object) *py.Object

// Restore the `.rcParams` from Matplotlib's internal default style.
//
// Style-blacklisted `.rcParams` (defined in
// “matplotlib.style.core.STYLE_BLACKLIST“) are not updated.
//
// See Also
// --------
// matplotlib.rc_file_defaults
//
//	Restore the `.rcParams` from the rc file originally loaded by
//	Matplotlib.
//
// matplotlib.style.use
//
//	Use a specific style file.  Call ``style.use('default')`` to restore
//	the default style.
//
//go:linkname Rcdefaults py.rcdefaults
func Rcdefaults() *py.Object

// Restore the `.rcParams` from the original rc file loaded by Matplotlib.
//
// Style-blacklisted `.rcParams` (defined in
// “matplotlib.style.core.STYLE_BLACKLIST“) are not updated.
//
//go:linkname RcFileDefaults py.rc_file_defaults
func RcFileDefaults() *py.Object

// Update `.rcParams` from file.
//
// Style-blacklisted `.rcParams` (defined in
// “matplotlib.style.core.STYLE_BLACKLIST“) are not updated.
//
// Parameters
// ----------
// fname : str or path-like
//
//	A file with Matplotlib rc settings.
//
// use_default_template : bool
//
//	If True, initialize with default parameters before updating with those
//	in the given file. If False, the current configuration persists
//	and only the parameters specified in the file are updated.
//
//go:linkname RcFile py.rc_file
func RcFile(fname *py.Object) *py.Object

// Return a context manager for temporarily changing rcParams.
//
// The :rc:`backend` will not be reset by the context manager.
//
// rcParams changed both through the context manager invocation and
// in the body of the context will be reset on context exit.
//
// Parameters
// ----------
// rc : dict
//
//	The rcParams to temporarily set.
//
// fname : str or path-like
//
//	A file with Matplotlib rc settings. If both *fname* and *rc* are given,
//	settings from *rc* take precedence.
//
// See Also
// --------
// :ref:`customizing-with-matplotlibrc-files`
//
// Examples
// --------
// Passing explicit values via a dict::
//
//	with mpl.rc_context({'interactive': False}):
//	    fig, ax = plt.subplots()
//	    ax.plot(range(3), range(3))
//	    fig.savefig('example.png')
//	    plt.close(fig)
//
// Loading settings from a file::
//
//	with mpl.rc_context(fname='print.rc'):
//	    plt.plot(x, y)  # uses 'print.rc'
//
// Setting in the context body::
//
//	with mpl.rc_context():
//	    # will be reset
//	    mpl.rcParams['lines.linewidth'] = 5
//	    plt.plot(x, y)
//
//go:linkname RcContext py.rc_context
func RcContext(rc *py.Object, fname *py.Object) *py.Object

// Select the backend used for rendering and GUI integration.
//
// If pyplot is already imported, `~matplotlib.pyplot.switch_backend` is used
// and if the new backend is different than the current backend, all Figures
// will be closed.
//
// Parameters
// ----------
// backend : str
//
//	The backend to switch to.  This can either be one of the standard
//	backend names, which are case-insensitive:
//
//	- interactive backends:
//	  GTK3Agg, GTK3Cairo, GTK4Agg, GTK4Cairo, MacOSX, nbAgg, QtAgg,
//	  QtCairo, TkAgg, TkCairo, WebAgg, WX, WXAgg, WXCairo, Qt5Agg, Qt5Cairo
//
//	- non-interactive backends:
//	  agg, cairo, pdf, pgf, ps, svg, template
//
//	or a string of the form: ``module://my.module.name``.
//
//	Switching to an interactive backend is not possible if an unrelated
//	event loop has already been started (e.g., switching to GTK3Agg if a
//	TkAgg window has already been opened).  Switching to a non-interactive
//	backend is always possible.
//
// force : bool, default: True
//
//	If True (the default), raise an `ImportError` if the backend cannot be
//	set up (either because it fails to import, or because an incompatible
//	GUI interactive framework is already running); if False, silently
//	ignore the failure.
//
// See Also
// --------
// :ref:`backends`
// matplotlib.get_backend
// matplotlib.pyplot.switch_backend
//
//go:linkname Use py.use
func Use(backend *py.Object) *py.Object

// Return the name of the current backend.
//
// See Also
// --------
// matplotlib.use
//
//go:linkname GetBackend py.get_backend
func GetBackend() *py.Object

// Set whether to redraw after every plotting command (e.g. `.pyplot.xlabel`).
//
//go:linkname Interactive py.interactive
func Interactive(b *py.Object) *py.Object

// Return whether to redraw after every plotting command.
//
// .. note::
//
//	This function is only intended for use in backends. End users should
//	use `.pyplot.isinteractive` instead.
//
//go:linkname IsInteractive py.is_interactive
func IsInteractive() *py.Object
