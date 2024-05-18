package pyplot

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.matplotlib.pyplot"

// Cast a value to a type.
//
//	This returns the value unchanged.  To the type checker this
//	signals that the return value has the designated type, but at
//	runtime we intentionally don't check anything (we want this
//	to be as fast as possible).
//
//go:linkname Cast py.cast
func Cast(typ *py.Object, val *py.Object) *py.Object

// Decorator for overloaded functions/methods.
//
//	In a stub file, place two or more stub definitions for the same
//	function in a row, each decorated with @overload.
//
//	For example::
//
//	    @overload
//	    def utf8(value: None) -> None: ...
//	    @overload
//	    def utf8(value: bytes) -> bytes: ...
//	    @overload
//	    def utf8(value: str) -> bytes: ...
//
//	In a non-stub file (i.e. a regular .py file), do the same but
//	follow it with an implementation.  The implementation should *not*
//	be decorated with @overload::
//
//	    @overload
//	    def utf8(value: None) -> None: ...
//	    @overload
//	    def utf8(value: bytes) -> bytes: ...
//	    @overload
//	    def utf8(value: str) -> bytes: ...
//	    def utf8(value):
//	        ...  # implementation goes here
//
//	The overloads for a function can be retrieved at runtime using the
//	get_overloads() function.
//
//go:linkname Overload py.overload
func Overload(func_ *py.Object) *py.Object

// Create a new `Cycler` object from a single positional argument,
// a pair of positional arguments, or the combination of keyword arguments.
//
// cycler(arg)
// cycler(label1=itr1[, label2=iter2[, ...]])
// cycler(label, itr)
//
// Form 1 simply copies a given `Cycler` object.
//
// Form 2 composes a `Cycler` as an inner product of the
// pairs of keyword arguments. In other words, all of the
// iterables are cycled simultaneously, as if through zip().
//
// Form 3 creates a `Cycler` from a label and an iterable.
// This is useful for when the label cannot be a keyword argument
// (e.g., an integer or a name that has a space in it).
//
// Parameters
// ----------
// arg : Cycler
//
//	Copy constructor for Cycler (does a shallow copy of iterables).
//
// label : name
//
//	The property key. In the 2-arg form of the function,
//	the label can be any hashable object. In the keyword argument
//	form of the function, it must be a valid python identifier.
//
// itr : iterable
//
//	Finite length iterable of the property values.
//	Can be a single-property `Cycler` that would
//	be like a key change, but as a shallow copy.
//
// Returns
// -------
// cycler : Cycler
//
//	New `Cycler` for the given property
//
//go:linkname Cycler py.cycler
func Cycler(__llgo_va_list ...interface{}) *py.Object

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

// Calculate the width and height for a figure with a specified aspect ratio.
//
// While the height is taken from :rc:`figure.figsize`, the width is
// adjusted to match the desired aspect ratio. Additionally, it is ensured
// that the width is in the range [4., 16.] and the height is in the range
// [2., 16.]. If necessary, the default height is adjusted to ensure this.
//
// Parameters
// ----------
// arg : float or 2D array
//
//	If a float, this defines the aspect ratio (i.e. the ratio height /
//	width).
//	In case of an array the aspect ratio is number of rows / number of
//	columns, so that the array could be fitted in the figure undistorted.
//
// Returns
// -------
// width, height : float
//
//	The figure size in inches.
//
// Notes
// -----
// If you want to create an Axes within the figure, that still preserves the
// aspect ratio, be sure to create it with equal width and height. See
// examples below.
//
// Thanks to Fernando Perez for this function.
//
// Examples
// --------
// Make a figure twice as tall as it is wide::
//
//	w, h = figaspect(2.)
//	fig = Figure(figsize=(w, h))
//	ax = fig.add_axes([0.1, 0.1, 0.8, 0.8])
//	ax.imshow(A, **kwargs)
//
// Make a figure with the proper aspect for an array::
//
//	A = rand(5, 3)
//	w, h = figaspect(A)
//	fig = Figure(figsize=(w, h))
//	ax = fig.add_axes([0.1, 0.1, 0.8, 0.8])
//	ax.imshow(A, **kwargs)
//
//go:linkname Figaspect py.figaspect
func Figaspect(arg *py.Object) *py.Object

// Return the names of the available scales.
//
//go:linkname GetScaleNames py.get_scale_names
func GetScaleNames() *py.Object

// [*Deprecated*] Add a colormap to the set recognized by :func:`get_cmap`.
//
// Register a new colormap to be accessed by name ::
//
//	LinearSegmentedColormap('swirly', data, lut)
//	register_cmap(cmap=swirly_cmap)
//
// Parameters
// ----------
// name : str, optional
//
//	The name that can be used in :func:`get_cmap` or :rc:`image.cmap`
//
//	If absent, the name will be the :attr:`~matplotlib.colors.Colormap.name`
//	attribute of the *cmap*.
//
// cmap : matplotlib.colors.Colormap
//
//	Despite being the second argument and having a default value, this
//	is a required argument.
//
// override_builtin : bool
//
//	Allow built-in colormaps to be overridden by a user-supplied
//	colormap.
//
//	Please do not use this unless you are sure you need it.
//
// Notes
// -----
// .. deprecated:: 3.7
//
//	Use ``matplotlib.colormaps.register(name)`` instead.
//
//go:linkname RegisterCmap py.register_cmap
func RegisterCmap(name *py.Object, cmap *py.Object) *py.Object

// Connect to the display hook of the current shell.
//
// The display hook gets called when the read-evaluate-print-loop (REPL) of
// the shell has finished the execution of a command. We use this callback
// to be able to automatically update a figure in interactive mode.
//
// This works both with IPython and with vanilla python shells.
//
//go:linkname InstallReplDisplayhook py.install_repl_displayhook
func InstallReplDisplayhook() *py.Object

// Disconnect from the display hook of the current shell.
//
//go:linkname UninstallReplDisplayhook py.uninstall_repl_displayhook
func UninstallReplDisplayhook() *py.Object

// Redraw all stale managed figures, or, if *force* is True, all managed
// figures.
//
//go:linkname DrawAll py.draw_all
func DrawAll(force *py.Object) *py.Object

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
func SetLoglevel(__llgo_va_list ...interface{}) *py.Object

// Find artist objects.
//
// Recursively find all `.Artist` instances contained in the artist.
//
// Parameters
// ----------
// match
//
//	A filter criterion for the matches. This can be
//
//	- *None*: Return all objects contained in artist.
//	- A function with signature ``def match(artist: Artist) -> bool``.
//	  The result will only contain artists for which the function
//	  returns *True*.
//	- A class instance: e.g., `.Line2D`. The result will only contain
//	  artists of this class or its subclasses (``isinstance`` check).
//
// include_self : bool
//
//	Include *self* in the list to be checked for a match.
//
// Returns
// -------
// list of `.Artist`
//
//go:linkname Findobj py.findobj
func Findobj(o *py.Object, match *py.Object, includeSelf *py.Object) *py.Object

// Set the pyplot backend.
//
// Switching to an interactive backend is possible only if no event loop for
// another interactive backend has started.  Switching to and from
// non-interactive backends is always possible.
//
// If the new backend is different than the current backend then all open
// Figures will be closed via “plt.close('all')“.
//
// Parameters
// ----------
// newbackend : str
//
//	The case-insensitive name of the backend to use.
//
//go:linkname SwitchBackend py.switch_backend
func SwitchBackend(newbackend *py.Object) *py.Object

// Create a new figure manager instance.
//
//go:linkname NewFigureManager py.new_figure_manager
func NewFigureManager(__llgo_va_list ...interface{}) *py.Object

// Redraw the current figure if in interactive mode.
//
// .. warning::
//
//	End users will typically not have to call this function because the
//	the interactive mode takes care of this.
//
//go:linkname DrawIfInteractive py.draw_if_interactive
func DrawIfInteractive(__llgo_va_list ...interface{}) *py.Object

// Display all open figures.
//
// Parameters
// ----------
// block : bool, optional
//
//	Whether to wait for all figures to be closed before returning.
//
//	If `True` block and run the GUI main loop until all figure windows
//	are closed.
//
//	If `False` ensure that all figure windows are displayed and return
//	immediately.  In this case, you are responsible for ensuring
//	that the event loop is running to have responsive figures.
//
//	Defaults to True in non-interactive mode and to False in interactive
//	mode (see `.pyplot.isinteractive`).
//
// See Also
// --------
// ion : Enable interactive mode, which shows / updates the figure after
//
//	every plotting command, so that calling ``show()`` is not necessary.
//
// ioff : Disable interactive mode.
// savefig : Save the figure to an image file instead of showing it on screen.
//
// Notes
// -----
// **Saving figures to file and showing a window at the same time**
//
// If you want an image file as well as a user interface window, use
// `.pyplot.savefig` before `.pyplot.show`. At the end of (a blocking)
// “show()“ the figure is closed and thus unregistered from pyplot. Calling
// `.pyplot.savefig` afterwards would save a new and thus empty figure. This
// limitation of command order does not apply if the show is non-blocking or
// if you keep a reference to the figure and use `.Figure.savefig`.
//
// **Auto-show in jupyter notebooks**
//
// The jupyter backends (activated via “%matplotlib inline“,
// “%matplotlib notebook“, or “%matplotlib widget“), call “show()“ at
// the end of every cell by default. Thus, you usually don't have to call it
// explicitly there.
//
//go:linkname Show py.show
func Show(__llgo_va_list ...interface{}) *py.Object

// Return whether plots are updated after every plotting command.
//
// The interactive mode is mainly useful if you build plots from the command
// line and want to see the effect of each command while you are building the
// figure.
//
// In interactive mode:
//
// - newly created figures will be shown immediately;
// - figures will automatically redraw on change;
// - `.pyplot.show` will not block by default.
//
// In non-interactive mode:
//
//   - newly created figures and changes to figures will not be reflected until
//     explicitly asked to be;
//   - `.pyplot.show` will block by default.
//
// See Also
// --------
// ion : Enable interactive mode.
// ioff : Disable interactive mode.
// show : Show all figures (and maybe block).
// pause : Show all figures, and block for a time.
//
//go:linkname Isinteractive py.isinteractive
func Isinteractive() *py.Object

// Disable interactive mode.
//
// See `.pyplot.isinteractive` for more details.
//
// See Also
// --------
// ion : Enable interactive mode.
// isinteractive : Whether interactive mode is enabled.
// show : Show all figures (and maybe block).
// pause : Show all figures, and block for a time.
//
// Notes
// -----
// For a temporary change, this can be used as a context manager::
//
//	# if interactive mode is on
//	# then figures will be shown on creation
//	plt.ion()
//	# This figure will be shown immediately
//	fig = plt.figure()
//
//	with plt.ioff():
//	    # interactive mode will be off
//	    # figures will not automatically be shown
//	    fig2 = plt.figure()
//	    # ...
//
// To enable optional usage as a context manager, this function returns a
// `~contextlib.ExitStack` object, which is not intended to be stored or
// accessed by the user.
//
//go:linkname Ioff py.ioff
func Ioff() *py.Object

// Enable interactive mode.
//
// See `.pyplot.isinteractive` for more details.
//
// See Also
// --------
// ioff : Disable interactive mode.
// isinteractive : Whether interactive mode is enabled.
// show : Show all figures (and maybe block).
// pause : Show all figures, and block for a time.
//
// Notes
// -----
// For a temporary change, this can be used as a context manager::
//
//	# if interactive mode is off
//	# then figures will not be shown on creation
//	plt.ioff()
//	# This figure will not be shown immediately
//	fig = plt.figure()
//
//	with plt.ion():
//	    # interactive mode will be on
//	    # figures will automatically be shown
//	    fig2 = plt.figure()
//	    # ...
//
// To enable optional usage as a context manager, this function returns a
// `~contextlib.ExitStack` object, which is not intended to be stored or
// accessed by the user.
//
//go:linkname Ion py.ion
func Ion() *py.Object

// Run the GUI event loop for *interval* seconds.
//
// If there is an active figure, it will be updated and displayed before the
// pause, and the GUI event loop (if any) will run during the pause.
//
// This can be used for crude animation.  For more complex animation use
// :mod:`matplotlib.animation`.
//
// If there is no active figure, sleep for *interval* seconds instead.
//
// See Also
// --------
// matplotlib.animation : Proper animations
// show : Show all figures and optional block until all figures are closed.
//
//go:linkname Pause py.pause
func Pause(interval *py.Object) *py.Object

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

// Return the value of an `.Artist`'s *property*, or print all of them.
//
// Parameters
// ----------
// obj : `~matplotlib.artist.Artist`
//
//	The queried artist; e.g., a `.Line2D`, a `.Text`, or an `~.axes.Axes`.
//
// property : str or None, default: None
//
//	If *property* is 'somename', this function returns
//	``obj.get_somename()``.
//
//	If it's None (or unset), it *prints* all gettable properties from
//	*obj*.  Many properties have aliases for shorter typing, e.g. 'lw' is
//	an alias for 'linewidth'.  In the output, aliases and full property
//	names will be listed as:
//
//	  property or alias = value
//
//	e.g.:
//
//	  linewidth or lw = 2
//
// See Also
// --------
// setp
//
//go:linkname Getp py.getp
func Getp(obj *py.Object, __llgo_va_list ...interface{}) *py.Object

// Return the value of an `.Artist`'s *property*, or print all of them.
//
// Parameters
// ----------
// obj : `~matplotlib.artist.Artist`
//
//	The queried artist; e.g., a `.Line2D`, a `.Text`, or an `~.axes.Axes`.
//
// property : str or None, default: None
//
//	If *property* is 'somename', this function returns
//	``obj.get_somename()``.
//
//	If it's None (or unset), it *prints* all gettable properties from
//	*obj*.  Many properties have aliases for shorter typing, e.g. 'lw' is
//	an alias for 'linewidth'.  In the output, aliases and full property
//	names will be listed as:
//
//	  property or alias = value
//
//	e.g.:
//
//	  linewidth or lw = 2
//
// See Also
// --------
// setp
//
//go:linkname Get py.get
func Get(obj *py.Object, __llgo_va_list ...interface{}) *py.Object

// Set one or more properties on an `.Artist`, or list allowed values.
//
// Parameters
// ----------
// obj : `~matplotlib.artist.Artist` or list of `.Artist`
//
//	The artist(s) whose properties are being set or queried.  When setting
//	properties, all artists are affected; when querying the allowed values,
//	only the first instance in the sequence is queried.
//
//	For example, two lines can be made thicker and red with a single call:
//
//	>>> x = arange(0, 1, 0.01)
//	>>> lines = plot(x, sin(2*pi*x), x, sin(4*pi*x))
//	>>> setp(lines, linewidth=2, color='r')
//
// file : file-like, default: `sys.stdout`
//
//	Where `setp` writes its output when asked to list allowed values.
//
//	>>> with open('output.log') as file:
//	...     setp(line, file=file)
//
//	The default, ``None``, means `sys.stdout`.
//
// *args, **kwargs
//
//	The properties to set.  The following combinations are supported:
//
//	- Set the linestyle of a line to be dashed:
//
//	  >>> line, = plot([1, 2, 3])
//	  >>> setp(line, linestyle='--')
//
//	- Set multiple properties at once:
//
//	  >>> setp(line, linewidth=2, color='r')
//
//	- List allowed values for a line's linestyle:
//
//	  >>> setp(line, 'linestyle')
//	  linestyle: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//
//	- List all properties that can be set, and their allowed values:
//
//	  >>> setp(line)
//	  agg_filter: a filter function, ...
//	  [long output listing omitted]
//
//	`setp` also supports MATLAB style string/value pairs.  For example, the
//	following are equivalent:
//
//	>>> setp(lines, 'linewidth', 2, 'color', 'r')  # MATLAB style
//	>>> setp(lines, linewidth=2, color='r')        # Python style
//
// See Also
// --------
// getp
//
//go:linkname Setp py.setp
func Setp(obj *py.Object, __llgo_va_list ...interface{}) *py.Object

// Turn on `xkcd <https://xkcd.com/>`_ sketch-style drawing mode.
//
// This will only have an effect on things drawn after this function is called.
//
// For best results, install the `xkcd script <https://github.com/ipython/xkcd-font/>`_
// font; xkcd fonts are not packaged with Matplotlib.
//
// Parameters
// ----------
// scale : float, optional
//
//	The amplitude of the wiggle perpendicular to the source line.
//
// length : float, optional
//
//	The length of the wiggle along the line.
//
// randomness : float, optional
//
//	The scale factor by which the length is shrunken or expanded.
//
// Notes
// -----
// This function works by a number of rcParams, so it will probably
// override others you have set before.
//
// If you want the effects of this function to be temporary, it can
// be used as a context manager, for example::
//
//	with plt.xkcd():
//	    # This figure will be in XKCD-style
//	    fig1 = plt.figure()
//	    # ...
//
//	# This figure will be in regular style
//	fig2 = plt.figure()
//
//go:linkname Xkcd py.xkcd
func Xkcd(scale *py.Object, length *py.Object, randomness *py.Object) *py.Object

// Create a new figure, or activate an existing figure.
//
// Parameters
// ----------
// num : int or str or `.Figure` or `.SubFigure`, optional
//
//	A unique identifier for the figure.
//
//	If a figure with that identifier already exists, this figure is made
//	active and returned. An integer refers to the ``Figure.number``
//	attribute, a string refers to the figure label.
//
//	If there is no figure with the identifier or *num* is not given, a new
//	figure is created, made active and returned.  If *num* is an int, it
//	will be used for the ``Figure.number`` attribute, otherwise, an
//	auto-generated integer value is used (starting at 1 and incremented
//	for each new figure). If *num* is a string, the figure label and the
//	window title is set to this value.  If num is a ``SubFigure``, its
//	parent ``Figure`` is activated.
//
// figsize : (float, float), default: :rc:`figure.figsize`
//
//	Width, height in inches.
//
// dpi : float, default: :rc:`figure.dpi`
//
//	The resolution of the figure in dots-per-inch.
//
// facecolor : color, default: :rc:`figure.facecolor`
//
//	The background color.
//
// edgecolor : color, default: :rc:`figure.edgecolor`
//
//	The border color.
//
// frameon : bool, default: True
//
//	If False, suppress drawing the figure frame.
//
// FigureClass : subclass of `~matplotlib.figure.Figure`
//
//	If set, an instance of this subclass will be created, rather than a
//	plain `.Figure`.
//
// clear : bool, default: False
//
//	If True and the figure already exists, then it is cleared.
//
// layout : {'constrained', 'compressed', 'tight', 'none', `.LayoutEngine`, None}, default: None
//
//	The layout mechanism for positioning of plot elements to avoid
//	overlapping Axes decorations (labels, ticks, etc). Note that layout
//	managers can measurably slow down figure display.
//
//	- 'constrained': The constrained layout solver adjusts axes sizes
//	  to avoid overlapping axes decorations.  Can handle complex plot
//	  layouts and colorbars, and is thus recommended.
//
//	  See :ref:`constrainedlayout_guide`
//	  for examples.
//
//	- 'compressed': uses the same algorithm as 'constrained', but
//	  removes extra space between fixed-aspect-ratio Axes.  Best for
//	  simple grids of axes.
//
//	- 'tight': Use the tight layout mechanism. This is a relatively
//	  simple algorithm that adjusts the subplot parameters so that
//	  decorations do not overlap. See `.Figure.set_tight_layout` for
//	  further details.
//
//	- 'none': Do not use a layout engine.
//
//	- A `.LayoutEngine` instance. Builtin layout classes are
//	  `.ConstrainedLayoutEngine` and `.TightLayoutEngine`, more easily
//	  accessible by 'constrained' and 'tight'.  Passing an instance
//	  allows third parties to provide their own layout engine.
//
//	If not given, fall back to using the parameters *tight_layout* and
//	*constrained_layout*, including their config defaults
//	:rc:`figure.autolayout` and :rc:`figure.constrained_layout.use`.
//
// **kwargs
//
//	Additional keyword arguments are passed to the `.Figure` constructor.
//
// Returns
// -------
// `~matplotlib.figure.Figure`
//
// Notes
// -----
// A newly created figure is passed to the `~.FigureCanvasBase.new_manager`
// method or the `new_figure_manager` function provided by the current
// backend, which install a canvas and a manager on the figure.
//
// Once this is done, :rc:`figure.hooks` are called, one at a time, on the
// figure; these hooks allow arbitrary customization of the figure (e.g.,
// attaching callbacks) or of associated elements (e.g., modifying the
// toolbar).  See :doc:`/gallery/user_interfaces/mplcvd` for an example of
// toolbar customization.
//
// If you are creating many figures, make sure you explicitly call
// `.pyplot.close` on the figures you are not using, because this will
// enable pyplot to properly clean up the memory.
//
// `~matplotlib.rcParams` defines the default values, which can be modified
// in the matplotlibrc file.
//
//go:linkname Figure py.figure
func Figure(num *py.Object, figsize *py.Object, dpi *py.Object) *py.Object

// Get the current figure.
//
// If there is currently no figure on the pyplot figure stack, a new one is
// created using `~.pyplot.figure()`.  (To test whether there is currently a
// figure on the pyplot figure stack, check whether `~.pyplot.get_fignums()`
// is empty.)
//
//go:linkname Gcf py.gcf
func Gcf() *py.Object

// Return whether the figure with the given id exists.
//
//	Parameters
//	----------
//	num : int or str
//	    A figure identifier.
//
//	Returns
//	-------
//	bool
//	    Whether or not a figure with id *num* exists.
//
//go:linkname FignumExists py.fignum_exists
func FignumExists(num *py.Object) *py.Object

// Return a list of existing figure numbers.
//
//go:linkname GetFignums py.get_fignums
func GetFignums() *py.Object

// Return a list of existing figure labels.
//
//go:linkname GetFiglabels py.get_figlabels
func GetFiglabels() *py.Object

// Return the figure manager of the current figure.
//
// The figure manager is a container for the actual backend-depended window
// that displays the figure on screen.
//
// If no current figure exists, a new one is created, and its figure
// manager is returned.
//
// Returns
// -------
// `.FigureManagerBase` or backend-dependent subclass thereof
//
//go:linkname GetCurrentFigManager py.get_current_fig_manager
func GetCurrentFigManager() *py.Object

// Bind function *func* to event *s*.
//
// Parameters
// ----------
// s : str
//
//	One of the following events ids:
//
//	- 'button_press_event'
//	- 'button_release_event'
//	- 'draw_event'
//	- 'key_press_event'
//	- 'key_release_event'
//	- 'motion_notify_event'
//	- 'pick_event'
//	- 'resize_event'
//	- 'scroll_event'
//	- 'figure_enter_event',
//	- 'figure_leave_event',
//	- 'axes_enter_event',
//	- 'axes_leave_event'
//	- 'close_event'.
//
// func : callable
//
//	The callback function to be executed, which must have the
//	signature::
//
//	    def func(event: Event) -> Any
//
//	For the location events (button and key press/release), if the
//	mouse is over the Axes, the ``inaxes`` attribute of the event will
//	be set to the `~matplotlib.axes.Axes` the event occurs is over, and
//	additionally, the variables ``xdata`` and ``ydata`` attributes will
//	be set to the mouse location in data coordinates.  See `.KeyEvent`
//	and `.MouseEvent` for more info.
//
//	.. note::
//
//	    If func is a method, this only stores a weak reference to the
//	    method. Thus, the figure does not influence the lifetime of
//	    the associated object. Usually, you want to make sure that the
//	    object is kept alive throughout the lifetime of the figure by
//	    holding a reference to it.
//
// Returns
// -------
// cid
//
//	A connection id that can be used with
//	`.FigureCanvasBase.mpl_disconnect`.
//
// Examples
// --------
// ::
//
//	def on_press(event):
//	    print('you pressed', event.button, event.xdata, event.ydata)
//
//	cid = canvas.mpl_connect('button_press_event', on_press)
//
//go:linkname Connect py.connect
func Connect(s *py.Object, func_ *py.Object) *py.Object

// Disconnect the callback with id *cid*.
//
// Examples
// --------
// ::
//
//	cid = canvas.mpl_connect('button_press_event', on_press)
//	# ... later
//	canvas.mpl_disconnect(cid)
//
//go:linkname Disconnect py.disconnect
func Disconnect(cid *py.Object) *py.Object

// Close a figure window.
//
// Parameters
// ----------
// fig : None or int or str or `.Figure`
//
//	The figure to close. There are a number of ways to specify this:
//
//	- *None*: the current figure
//	- `.Figure`: the given `.Figure` instance
//	- ``int``: a figure number
//	- ``str``: a figure name
//	- 'all': all figures
//
//go:linkname Close py.close
func Close(fig *py.Object) *py.Object

// Clear the current figure.
//
//go:linkname Clf py.clf
func Clf() *py.Object

// Redraw the current figure.
//
// This is used to update a figure that has been altered, but not
// automatically re-drawn.  If interactive mode is on (via `.ion()`), this
// should be only rarely needed, but there may be ways to modify the state of
// a figure without marking it as "stale".  Please report these cases as bugs.
//
// This is equivalent to calling “fig.canvas.draw_idle()“, where “fig“ is
// the current figure.
//
// See Also
// --------
// .FigureCanvasBase.draw_idle
// .FigureCanvasBase.draw
//
//go:linkname Draw py.draw
func Draw() *py.Object

// Save the current figure.
//
// Call signature::
//
//	savefig(fname, *, transparent=None, dpi='figure', format=None,
//	        metadata=None, bbox_inches=None, pad_inches=0.1,
//	        facecolor='auto', edgecolor='auto', backend=None,
//	        **kwargs
//	       )
//
// The available output formats depend on the backend being used.
//
// Parameters
// ----------
// fname : str or path-like or binary file-like
//
//	A path, or a Python file-like object, or
//	possibly some backend-dependent object such as
//	`matplotlib.backends.backend_pdf.PdfPages`.
//
//	If *format* is set, it determines the output format, and the file
//	is saved as *fname*.  Note that *fname* is used verbatim, and there
//	is no attempt to make the extension, if any, of *fname* match
//	*format*, and no extension is appended.
//
//	If *format* is not set, then the format is inferred from the
//	extension of *fname*, if there is one.  If *format* is not
//	set and *fname* has no extension, then the file is saved with
//	:rc:`savefig.format` and the appropriate extension is appended to
//	*fname*.
//
// Other Parameters
// ----------------
// transparent : bool, default: :rc:`savefig.transparent`
//
//	If *True*, the Axes patches will all be transparent; the
//	Figure patch will also be transparent unless *facecolor*
//	and/or *edgecolor* are specified via kwargs.
//
//	If *False* has no effect and the color of the Axes and
//	Figure patches are unchanged (unless the Figure patch
//	is specified via the *facecolor* and/or *edgecolor* keyword
//	arguments in which case those colors are used).
//
//	The transparency of these patches will be restored to their
//	original values upon exit of this function.
//
//	This is useful, for example, for displaying
//	a plot on top of a colored background on a web page.
//
// dpi : float or 'figure', default: :rc:`savefig.dpi`
//
//	The resolution in dots per inch.  If 'figure', use the figure's
//	dpi value.
//
// format : str
//
//	The file format, e.g. 'png', 'pdf', 'svg', ... The behavior when
//	this is unset is documented under *fname*.
//
// metadata : dict, optional
//
//	Key/value pairs to store in the image metadata. The supported keys
//	and defaults depend on the image format and backend:
//
//	- 'png' with Agg backend: See the parameter ``metadata`` of
//	  `~.FigureCanvasAgg.print_png`.
//	- 'pdf' with pdf backend: See the parameter ``metadata`` of
//	  `~.backend_pdf.PdfPages`.
//	- 'svg' with svg backend: See the parameter ``metadata`` of
//	  `~.FigureCanvasSVG.print_svg`.
//	- 'eps' and 'ps' with PS backend: Only 'Creator' is supported.
//
//	Not supported for 'pgf', 'raw', and 'rgba' as those formats do not support
//	embedding metadata.
//	Does not currently support 'jpg', 'tiff', or 'webp', but may include
//	embedding EXIF metadata in the future.
//
// bbox_inches : str or `.Bbox`, default: :rc:`savefig.bbox`
//
//	Bounding box in inches: only the given portion of the figure is
//	saved.  If 'tight', try to figure out the tight bbox of the figure.
//
// pad_inches : float or 'layout', default: :rc:`savefig.pad_inches`
//
//	Amount of padding in inches around the figure when bbox_inches is
//	'tight'. If 'layout' use the padding from the constrained or
//	compressed layout engine; ignored if one of those engines is not in
//	use.
//
// facecolor : color or 'auto', default: :rc:`savefig.facecolor`
//
//	The facecolor of the figure.  If 'auto', use the current figure
//	facecolor.
//
// edgecolor : color or 'auto', default: :rc:`savefig.edgecolor`
//
//	The edgecolor of the figure.  If 'auto', use the current figure
//	edgecolor.
//
// backend : str, optional
//
//	Use a non-default backend to render the file, e.g. to render a
//	png file with the "cairo" backend rather than the default "agg",
//	or a pdf file with the "pgf" backend rather than the default
//	"pdf".  Note that the default backend is normally sufficient.  See
//	:ref:`the-builtin-backends` for a list of valid backends for each
//	file format.  Custom backends can be referenced as "module://...".
//
// orientation : {'landscape', 'portrait'}
//
//	Currently only supported by the postscript backend.
//
// papertype : str
//
//	One of 'letter', 'legal', 'executive', 'ledger', 'a0' through
//	'a10', 'b0' through 'b10'. Only supported for postscript
//	output.
//
// bbox_extra_artists : list of `~matplotlib.artist.Artist`, optional
//
//	A list of extra artists that will be considered when the
//	tight bbox is calculated.
//
// pil_kwargs : dict, optional
//
//	Additional keyword arguments that are passed to
//	`PIL.Image.Image.save` when saving the figure.
//
//go:linkname Savefig py.savefig
func Savefig(__llgo_va_list ...interface{}) *py.Object

// Place a legend on the figure.
//
// Call signatures::
//
//	figlegend()
//	figlegend(handles, labels)
//	figlegend(handles=handles)
//	figlegend(labels)
//
// The call signatures correspond to the following different ways to use
// this method:
//
// **1. Automatic detection of elements to be shown in the legend**
//
// The elements to be added to the legend are automatically determined,
// when you do not pass in any extra arguments.
//
// In this case, the labels are taken from the artist. You can specify
// them either at artist creation or by calling the
// :meth:`~.Artist.set_label` method on the artist::
//
//	plt.plot([1, 2, 3], label='Inline label')
//	plt.figlegend()
//
// or::
//
//	line, = plt.plot([1, 2, 3])
//	line.set_label('Label via method')
//	plt.figlegend()
//
// Specific lines can be excluded from the automatic legend element
// selection by defining a label starting with an underscore.
// This is default for all artists, so calling `.Figure.legend` without
// any arguments and without setting the labels manually will result in
// no legend being drawn.
//
// **2. Explicitly listing the artists and labels in the legend**
//
// For full control of which artists have a legend entry, it is possible
// to pass an iterable of legend artists followed by an iterable of
// legend labels respectively::
//
//	plt.figlegend([line1, line2, line3], ['label1', 'label2', 'label3'])
//
// **3. Explicitly listing the artists in the legend**
//
// This is similar to 2, but the labels are taken from the artists'
// label properties. Example::
//
//	line1, = ax1.plot([1, 2, 3], label='label1')
//	line2, = ax2.plot([1, 2, 3], label='label2')
//	plt.figlegend(handles=[line1, line2])
//
// **4. Labeling existing plot elements**
//
// .. admonition:: Discouraged
//
//	This call signature is discouraged, because the relation between
//	plot elements and labels is only implicit by their order and can
//	easily be mixed up.
//
// To make a legend for all artists on all Axes, call this function with
// an iterable of strings, one for each legend item. For example::
//
//	fig, (ax1, ax2) = plt.subplots(1, 2)
//	ax1.plot([1, 3, 5], color='blue')
//	ax2.plot([2, 4, 6], color='red')
//	plt.figlegend(['the blues', 'the reds'])
//
// Parameters
// ----------
// handles : list of `.Artist`, optional
//
//	A list of Artists (lines, patches) to be added to the legend.
//	Use this together with *labels*, if you need full control on what
//	is shown in the legend and the automatic mechanism described above
//	is not sufficient.
//
//	The length of handles and labels should be the same in this
//	case. If they are not, they are truncated to the smaller length.
//
// labels : list of str, optional
//
//	A list of labels to show next to the artists.
//	Use this together with *handles*, if you need full control on what
//	is shown in the legend and the automatic mechanism described above
//	is not sufficient.
//
// Returns
// -------
// `~matplotlib.legend.Legend`
//
// Other Parameters
// ----------------
//
// loc : str or pair of floats, default: 'upper right'
//
//	The location of the legend.
//
//	The strings ``'upper left'``, ``'upper right'``, ``'lower left'``,
//	``'lower right'`` place the legend at the corresponding corner of the
//	figure.
//
//	The strings ``'upper center'``, ``'lower center'``, ``'center left'``,
//	``'center right'`` place the legend at the center of the corresponding edge
//	of the figure.
//
//	The string ``'center'`` places the legend at the center of the figure.
//
//	The location can also be a 2-tuple giving the coordinates of the lower-left
//	corner of the legend in figure coordinates (in which case *bbox_to_anchor*
//	will be ignored).
//
//	For back-compatibility, ``'center right'`` (but no other location) can also
//	be spelled ``'right'``, and each "string" location can also be given as a
//	numeric value:
//
//	==================   =============
//	Location String      Location Code
//	==================   =============
//	'best' (Axes only)   0
//	'upper right'        1
//	'upper left'         2
//	'lower left'         3
//	'lower right'        4
//	'right'              5
//	'center left'        6
//	'center right'       7
//	'lower center'       8
//	'upper center'       9
//	'center'             10
//	==================   =============
//
//	If a figure is using the constrained layout manager, the string codes
//	of the *loc* keyword argument can get better layout behaviour using the
//	prefix 'outside'. There is ambiguity at the corners, so 'outside
//	upper right' will make space for the legend above the rest of the
//	axes in the layout, and 'outside right upper' will make space on the
//	right side of the layout.  In addition to the values of *loc*
//	listed above, we have 'outside right upper', 'outside right lower',
//	'outside left upper', and 'outside left lower'.  See
//	:ref:`legend_guide` for more details.
//
// bbox_to_anchor : `.BboxBase`, 2-tuple, or 4-tuple of floats
//
//	Box that is used to position the legend in conjunction with *loc*.
//	Defaults to `axes.bbox` (if called as a method to `.Axes.legend`) or
//	`figure.bbox` (if `.Figure.legend`).  This argument allows arbitrary
//	placement of the legend.
//
//	Bbox coordinates are interpreted in the coordinate system given by
//	*bbox_transform*, with the default transform
//	Axes or Figure coordinates, depending on which ``legend`` is called.
//
//	If a 4-tuple or `.BboxBase` is given, then it specifies the bbox
//	``(x, y, width, height)`` that the legend is placed in.
//	To put the legend in the best location in the bottom right
//	quadrant of the axes (or figure)::
//
//	    loc='best', bbox_to_anchor=(0.5, 0., 0.5, 0.5)
//
//	A 2-tuple ``(x, y)`` places the corner of the legend specified by *loc* at
//	x, y.  For example, to put the legend's upper right-hand corner in the
//	center of the axes (or figure) the following keywords can be used::
//
//	    loc='upper right', bbox_to_anchor=(0.5, 0.5)
//
// ncols : int, default: 1
//
//	The number of columns that the legend has.
//
//	For backward compatibility, the spelling *ncol* is also supported
//	but it is discouraged. If both are given, *ncols* takes precedence.
//
// prop : None or `~matplotlib.font_manager.FontProperties` or dict
//
//	The font properties of the legend. If None (default), the current
//	:data:`matplotlib.rcParams` will be used.
//
// fontsize : int or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
//
//	The font size of the legend. If the value is numeric the size will be the
//	absolute font size in points. String values are relative to the current
//	default font size. This argument is only used if *prop* is not specified.
//
// labelcolor : str or list, default: :rc:`legend.labelcolor`
//
//	The color of the text in the legend. Either a valid color string
//	(for example, 'red'), or a list of color strings. The labelcolor can
//	also be made to match the color of the line or marker using 'linecolor',
//	'markerfacecolor' (or 'mfc'), or 'markeredgecolor' (or 'mec').
//
//	Labelcolor can be set globally using :rc:`legend.labelcolor`. If None,
//	use :rc:`text.color`.
//
// numpoints : int, default: :rc:`legend.numpoints`
//
//	The number of marker points in the legend when creating a legend
//	entry for a `.Line2D` (line).
//
// scatterpoints : int, default: :rc:`legend.scatterpoints`
//
//	The number of marker points in the legend when creating
//	a legend entry for a `.PathCollection` (scatter plot).
//
// scatteryoffsets : iterable of floats, default: “[0.375, 0.5, 0.3125]“
//
//	The vertical offset (relative to the font size) for the markers
//	created for a scatter plot legend entry. 0.0 is at the base the
//	legend text, and 1.0 is at the top. To draw all markers at the
//	same height, set to ``[0.5]``.
//
// markerscale : float, default: :rc:`legend.markerscale`
//
//	The relative size of legend markers compared to the originally drawn ones.
//
// markerfirst : bool, default: True
//
//	If *True*, legend marker is placed to the left of the legend label.
//	If *False*, legend marker is placed to the right of the legend label.
//
// reverse : bool, default: False
//
//	If *True*, the legend labels are displayed in reverse order from the input.
//	If *False*, the legend labels are displayed in the same order as the input.
//
//	.. versionadded:: 3.7
//
// frameon : bool, default: :rc:`legend.frameon`
//
//	Whether the legend should be drawn on a patch (frame).
//
// fancybox : bool, default: :rc:`legend.fancybox`
//
//	Whether round edges should be enabled around the `.FancyBboxPatch` which
//	makes up the legend's background.
//
// shadow : None, bool or dict, default: :rc:`legend.shadow`
//
//	Whether to draw a shadow behind the legend.
//	The shadow can be configured using `.Patch` keywords.
//	Customization via :rc:`legend.shadow` is currently not supported.
//
// framealpha : float, default: :rc:`legend.framealpha`
//
//	The alpha transparency of the legend's background.
//	If *shadow* is activated and *framealpha* is ``None``, the default value is
//	ignored.
//
// facecolor : "inherit" or color, default: :rc:`legend.facecolor`
//
//	The legend's background color.
//	If ``"inherit"``, use :rc:`axes.facecolor`.
//
// edgecolor : "inherit" or color, default: :rc:`legend.edgecolor`
//
//	The legend's background patch edge color.
//	If ``"inherit"``, use take :rc:`axes.edgecolor`.
//
// mode : {"expand", None}
//
//	If *mode* is set to ``"expand"`` the legend will be horizontally
//	expanded to fill the axes area (or *bbox_to_anchor* if defines
//	the legend's size).
//
// bbox_transform : None or `~matplotlib.transforms.Transform`
//
//	The transform for the bounding box (*bbox_to_anchor*). For a value
//	of ``None`` (default) the Axes'
//	:data:`~matplotlib.axes.Axes.transAxes` transform will be used.
//
// title : str or None
//
//	The legend's title. Default is no title (``None``).
//
// title_fontproperties : None or `~matplotlib.font_manager.FontProperties` or dict
//
//	The font properties of the legend's title. If None (default), the
//	*title_fontsize* argument will be used if present; if *title_fontsize* is
//	also None, the current :rc:`legend.title_fontsize` will be used.
//
// title_fontsize : int or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}, default: :rc:`legend.title_fontsize`
//
//	The font size of the legend's title.
//	Note: This cannot be combined with *title_fontproperties*. If you want
//	to set the fontsize alongside other font properties, use the *size*
//	parameter in *title_fontproperties*.
//
// alignment : {'center', 'left', 'right'}, default: 'center'
//
//	The alignment of the legend title and the box of entries. The entries
//	are aligned as a single block, so that markers always lined up.
//
// borderpad : float, default: :rc:`legend.borderpad`
//
//	The fractional whitespace inside the legend border, in font-size units.
//
// labelspacing : float, default: :rc:`legend.labelspacing`
//
//	The vertical space between the legend entries, in font-size units.
//
// handlelength : float, default: :rc:`legend.handlelength`
//
//	The length of the legend handles, in font-size units.
//
// handleheight : float, default: :rc:`legend.handleheight`
//
//	The height of the legend handles, in font-size units.
//
// handletextpad : float, default: :rc:`legend.handletextpad`
//
//	The pad between the legend handle and text, in font-size units.
//
// borderaxespad : float, default: :rc:`legend.borderaxespad`
//
//	The pad between the axes and legend border, in font-size units.
//
// columnspacing : float, default: :rc:`legend.columnspacing`
//
//	The spacing between columns, in font-size units.
//
// handler_map : dict or None
//
//	The custom dictionary mapping instances or types to a legend
//	handler. This *handler_map* updates the default handler map
//	found at `matplotlib.legend.Legend.get_legend_handler_map`.
//
// draggable : bool, default: False
//
//	Whether the legend can be dragged with the mouse.
//
// See Also
// --------
// .Axes.legend
//
// Notes
// -----
// Some artists are not supported by this function.  See
// :ref:`legend_guide` for details.
//
//go:linkname Figlegend py.figlegend
func Figlegend(__llgo_va_list ...interface{}) *py.Object

// Add an Axes to the current figure and make it the current Axes.
//
// Call signatures::
//
//	plt.axes()
//	plt.axes(rect, projection=None, polar=False, **kwargs)
//	plt.axes(ax)
//
// Parameters
// ----------
// arg : None or 4-tuple
//
//	The exact behavior of this function depends on the type:
//
//	- *None*: A new full window Axes is added using
//	  ``subplot(**kwargs)``.
//	- 4-tuple of floats *rect* = ``(left, bottom, width, height)``.
//	  A new Axes is added with dimensions *rect* in normalized
//	  (0, 1) units using `~.Figure.add_axes` on the current figure.
//
// projection : {None, 'aitoff', 'hammer', 'lambert', 'mollweide', 'polar', 'rectilinear', str}, optional
//
//	The projection type of the `~.axes.Axes`. *str* is the name of
//	a custom projection, see `~matplotlib.projections`. The default
//	None results in a 'rectilinear' projection.
//
// polar : bool, default: False
//
//	If True, equivalent to projection='polar'.
//
// sharex, sharey : `~matplotlib.axes.Axes`, optional
//
//	Share the x or y `~matplotlib.axis` with sharex and/or sharey.
//	The axis will have the same limits, ticks, and scale as the axis
//	of the shared Axes.
//
// label : str
//
//	A label for the returned Axes.
//
// Returns
// -------
// `~.axes.Axes`, or a subclass of `~.axes.Axes`
//
//	The returned axes class depends on the projection used. It is
//	`~.axes.Axes` if rectilinear projection is used and
//	`.projections.polar.PolarAxes` if polar projection is used.
//
// Other Parameters
// ----------------
// **kwargs
//
//	This method also takes the keyword arguments for
//	the returned Axes class. The keyword arguments for the
//	rectilinear Axes class `~.axes.Axes` can be found in
//	the following table but there might also be other keyword
//	arguments if another projection is used, see the actual Axes
//	class.
//
//	Properties:
//	adjustable: {'box', 'datalim'}
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	anchor: (float, float) or {'C', 'SW', 'S', 'SE', 'E', 'NE', ...}
//	animated: bool
//	aspect: {'auto', 'equal'} or float
//	autoscale_on: bool
//	autoscalex_on: unknown
//	autoscaley_on: unknown
//	axes_locator: Callable[[Axes, Renderer], Bbox]
//	axisbelow: bool or 'line'
//	box_aspect: float or None
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	facecolor or fc: color
//	figure: `~matplotlib.figure.Figure`
//	frame_on: bool
//	gid: str
//	in_layout: bool
//	label: object
//	mouseover: bool
//	navigate: bool
//	navigate_mode: unknown
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	position: [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
//	prop_cycle: `~cycler.Cycler`
//	rasterization_zorder: float or None
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	subplotspec: unknown
//	title: str
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	visible: bool
//	xbound: (lower: float, upper: float)
//	xlabel: str
//	xlim: (left: float, right: float)
//	xmargin: float greater than -0.5
//	xscale: unknown
//	xticklabels: unknown
//	xticks: unknown
//	ybound: (lower: float, upper: float)
//	ylabel: str
//	ylim: (bottom: float, top: float)
//	ymargin: float greater than -0.5
//	yscale: unknown
//	yticklabels: unknown
//	yticks: unknown
//	zorder: float
//
// See Also
// --------
// .Figure.add_axes
// .pyplot.subplot
// .Figure.add_subplot
// .Figure.subplots
// .pyplot.subplots
//
// Examples
// --------
// ::
//
//	# Creating a new full window Axes
//	plt.axes()
//
//	# Creating a new Axes with specified dimensions and a grey background
//	plt.axes((left, bottom, width, height), facecolor='grey')
//
//go:linkname Axes py.axes
func Axes(arg *py.Object) *py.Object

// Remove an `~.axes.Axes` (defaulting to the current axes) from its figure.
//
//go:linkname Delaxes py.delaxes
func Delaxes(ax *py.Object) *py.Object

// Set the current Axes to *ax* and the current Figure to the parent of *ax*.
//
//go:linkname Sca py.sca
func Sca(ax *py.Object) *py.Object

// Clear the current axes.
//
//go:linkname Cla py.cla
func Cla() *py.Object

// Add an Axes to the current figure or retrieve an existing Axes.
//
// This is a wrapper of `.Figure.add_subplot` which provides additional
// behavior when working with the implicit API (see the notes section).
//
// Call signatures::
//
//	subplot(nrows, ncols, index, **kwargs)
//	subplot(pos, **kwargs)
//	subplot(**kwargs)
//	subplot(ax)
//
// Parameters
// ----------
// *args : int, (int, int, *index*), or `.SubplotSpec`, default: (1, 1, 1)
//
//	The position of the subplot described by one of
//
//	- Three integers (*nrows*, *ncols*, *index*). The subplot will take the
//	  *index* position on a grid with *nrows* rows and *ncols* columns.
//	  *index* starts at 1 in the upper left corner and increases to the
//	  right. *index* can also be a two-tuple specifying the (*first*,
//	  *last*) indices (1-based, and including *last*) of the subplot, e.g.,
//	  ``fig.add_subplot(3, 1, (1, 2))`` makes a subplot that spans the
//	  upper 2/3 of the figure.
//	- A 3-digit integer. The digits are interpreted as if given separately
//	  as three single-digit integers, i.e. ``fig.add_subplot(235)`` is the
//	  same as ``fig.add_subplot(2, 3, 5)``. Note that this can only be used
//	  if there are no more than 9 subplots.
//	- A `.SubplotSpec`.
//
// projection : {None, 'aitoff', 'hammer', 'lambert', 'mollweide', 'polar', 'rectilinear', str}, optional
//
//	The projection type of the subplot (`~.axes.Axes`). *str* is the name
//	of a custom projection, see `~matplotlib.projections`. The default
//	None results in a 'rectilinear' projection.
//
// polar : bool, default: False
//
//	If True, equivalent to projection='polar'.
//
// sharex, sharey : `~matplotlib.axes.Axes`, optional
//
//	Share the x or y `~matplotlib.axis` with sharex and/or sharey. The
//	axis will have the same limits, ticks, and scale as the axis of the
//	shared axes.
//
// label : str
//
//	A label for the returned axes.
//
// Returns
// -------
// `~.axes.Axes`
//
//	The Axes of the subplot. The returned Axes can actually be an instance
//	of a subclass, such as `.projections.polar.PolarAxes` for polar
//	projections.
//
// Other Parameters
// ----------------
// **kwargs
//
//	This method also takes the keyword arguments for the returned axes
//	base class; except for the *figure* argument. The keyword arguments
//	for the rectilinear base class `~.axes.Axes` can be found in
//	the following table but there might also be other keyword
//	arguments if another projection is used.
//
//	Properties:
//	adjustable: {'box', 'datalim'}
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	anchor: (float, float) or {'C', 'SW', 'S', 'SE', 'E', 'NE', ...}
//	animated: bool
//	aspect: {'auto', 'equal'} or float
//	autoscale_on: bool
//	autoscalex_on: unknown
//	autoscaley_on: unknown
//	axes_locator: Callable[[Axes, Renderer], Bbox]
//	axisbelow: bool or 'line'
//	box_aspect: float or None
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	facecolor or fc: color
//	figure: `~matplotlib.figure.Figure`
//	frame_on: bool
//	gid: str
//	in_layout: bool
//	label: object
//	mouseover: bool
//	navigate: bool
//	navigate_mode: unknown
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	position: [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
//	prop_cycle: `~cycler.Cycler`
//	rasterization_zorder: float or None
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	subplotspec: unknown
//	title: str
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	visible: bool
//	xbound: (lower: float, upper: float)
//	xlabel: str
//	xlim: (left: float, right: float)
//	xmargin: float greater than -0.5
//	xscale: unknown
//	xticklabels: unknown
//	xticks: unknown
//	ybound: (lower: float, upper: float)
//	ylabel: str
//	ylim: (bottom: float, top: float)
//	ymargin: float greater than -0.5
//	yscale: unknown
//	yticklabels: unknown
//	yticks: unknown
//	zorder: float
//
// Notes
// -----
// Creating a new Axes will delete any preexisting Axes that
// overlaps with it beyond sharing a boundary::
//
//	import matplotlib.pyplot as plt
//	# plot a line, implicitly creating a subplot(111)
//	plt.plot([1, 2, 3])
//	# now create a subplot which represents the top plot of a grid
//	# with 2 rows and 1 column. Since this subplot will overlap the
//	# first, the plot (and its axes) previously created, will be removed
//	plt.subplot(211)
//
// If you do not want this behavior, use the `.Figure.add_subplot` method
// or the `.pyplot.axes` function instead.
//
// If no *kwargs* are passed and there exists an Axes in the location
// specified by *args* then that Axes will be returned rather than a new
// Axes being created.
//
// If *kwargs* are passed and there exists an Axes in the location
// specified by *args*, the projection type is the same, and the
// *kwargs* match with the existing Axes, then the existing Axes is
// returned.  Otherwise a new Axes is created with the specified
// parameters.  We save a reference to the *kwargs* which we use
// for this comparison.  If any of the values in *kwargs* are
// mutable we will not detect the case where they are mutated.
// In these cases we suggest using `.Figure.add_subplot` and the
// explicit Axes API rather than the implicit pyplot API.
//
// See Also
// --------
// .Figure.add_subplot
// .pyplot.subplots
// .pyplot.axes
// .Figure.subplots
//
// Examples
// --------
// ::
//
//	plt.subplot(221)
//
//	# equivalent but more general
//	ax1 = plt.subplot(2, 2, 1)
//
//	# add a subplot with no frame
//	ax2 = plt.subplot(222, frameon=False)
//
//	# add a polar subplot
//	plt.subplot(223, projection='polar')
//
//	# add a red subplot that shares the x-axis with ax1
//	plt.subplot(224, sharex=ax1, facecolor='red')
//
//	# delete ax2 from the figure
//	plt.delaxes(ax2)
//
//	# add ax2 to the figure again
//	plt.subplot(ax2)
//
//	# make the first axes "current" again
//	plt.subplot(221)
//
//go:linkname Subplot py.subplot
func Subplot(__llgo_va_list ...interface{}) *py.Object

// Create a figure and a set of subplots.
//
// This utility wrapper makes it convenient to create common layouts of
// subplots, including the enclosing figure object, in a single call.
//
// Parameters
// ----------
// nrows, ncols : int, default: 1
//
//	Number of rows/columns of the subplot grid.
//
// sharex, sharey : bool or {'none', 'all', 'row', 'col'}, default: False
//
//	Controls sharing of properties among x (*sharex*) or y (*sharey*)
//	axes:
//
//	- True or 'all': x- or y-axis will be shared among all subplots.
//	- False or 'none': each subplot x- or y-axis will be independent.
//	- 'row': each subplot row will share an x- or y-axis.
//	- 'col': each subplot column will share an x- or y-axis.
//
//	When subplots have a shared x-axis along a column, only the x tick
//	labels of the bottom subplot are created. Similarly, when subplots
//	have a shared y-axis along a row, only the y tick labels of the first
//	column subplot are created. To later turn other subplots' ticklabels
//	on, use `~matplotlib.axes.Axes.tick_params`.
//
//	When subplots have a shared axis that has units, calling
//	`~matplotlib.axis.Axis.set_units` will update each axis with the
//	new units.
//
// squeeze : bool, default: True
//
//   - If True, extra dimensions are squeezed out from the returned
//     array of `~matplotlib.axes.Axes`:
//
//   - if only one subplot is constructed (nrows=ncols=1), the
//     resulting single Axes object is returned as a scalar.
//
//   - for Nx1 or 1xM subplots, the returned object is a 1D numpy
//     object array of Axes objects.
//
//   - for NxM, subplots with N>1 and M>1 are returned as a 2D array.
//
//   - If False, no squeezing at all is done: the returned Axes object is
//     always a 2D array containing Axes instances, even if it ends up
//     being 1x1.
//
// width_ratios : array-like of length *ncols*, optional
//
//	Defines the relative widths of the columns. Each column gets a
//	relative width of ``width_ratios[i] / sum(width_ratios)``.
//	If not given, all columns will have the same width.  Equivalent
//	to ``gridspec_kw={'width_ratios': [...]}``.
//
// height_ratios : array-like of length *nrows*, optional
//
//	Defines the relative heights of the rows. Each row gets a
//	relative height of ``height_ratios[i] / sum(height_ratios)``.
//	If not given, all rows will have the same height. Convenience
//	for ``gridspec_kw={'height_ratios': [...]}``.
//
// subplot_kw : dict, optional
//
//	Dict with keywords passed to the
//	`~matplotlib.figure.Figure.add_subplot` call used to create each
//	subplot.
//
// gridspec_kw : dict, optional
//
//	Dict with keywords passed to the `~matplotlib.gridspec.GridSpec`
//	constructor used to create the grid the subplots are placed on.
//
// **fig_kw
//
//	All additional keyword arguments are passed to the
//	`.pyplot.figure` call.
//
// Returns
// -------
// fig : `.Figure`
//
// ax : `~matplotlib.axes.Axes` or array of Axes
//
//	*ax* can be either a single `~.axes.Axes` object, or an array of Axes
//	objects if more than one subplot was created.  The dimensions of the
//	resulting array can be controlled with the squeeze keyword, see above.
//
//	Typical idioms for handling the return value are::
//
//	    # using the variable ax for single a Axes
//	    fig, ax = plt.subplots()
//
//	    # using the variable axs for multiple Axes
//	    fig, axs = plt.subplots(2, 2)
//
//	    # using tuple unpacking for multiple Axes
//	    fig, (ax1, ax2) = plt.subplots(1, 2)
//	    fig, ((ax1, ax2), (ax3, ax4)) = plt.subplots(2, 2)
//
//	The names ``ax`` and pluralized ``axs`` are preferred over ``axes``
//	because for the latter it's not clear if it refers to a single
//	`~.axes.Axes` instance or a collection of these.
//
// See Also
// --------
// .pyplot.figure
// .pyplot.subplot
// .pyplot.axes
// .Figure.subplots
// .Figure.add_subplot
//
// Examples
// --------
// ::
//
//	# First create some toy data:
//	x = np.linspace(0, 2*np.pi, 400)
//	y = np.sin(x**2)
//
//	# Create just a figure and only one subplot
//	fig, ax = plt.subplots()
//	ax.plot(x, y)
//	ax.set_title('Simple plot')
//
//	# Create two subplots and unpack the output array immediately
//	f, (ax1, ax2) = plt.subplots(1, 2, sharey=True)
//	ax1.plot(x, y)
//	ax1.set_title('Sharing Y axis')
//	ax2.scatter(x, y)
//
//	# Create four polar axes and access them through the returned array
//	fig, axs = plt.subplots(2, 2, subplot_kw=dict(projection="polar"))
//	axs[0, 0].plot(x, y)
//	axs[1, 1].scatter(x, y)
//
//	# Share a X axis with each column of subplots
//	plt.subplots(2, 2, sharex='col')
//
//	# Share a Y axis with each row of subplots
//	plt.subplots(2, 2, sharey='row')
//
//	# Share both X and Y axes with all subplots
//	plt.subplots(2, 2, sharex='all', sharey='all')
//
//	# Note that this is the same as
//	plt.subplots(2, 2, sharex=True, sharey=True)
//
//	# Create figure number 10 with a single subplot
//	# and clears it if it already exists.
//	fig, ax = plt.subplots(num=10, clear=True)
//
//go:linkname Subplots py.subplots
func Subplots(nrows *py.Object, ncols *py.Object) *py.Object

// Build a layout of Axes based on ASCII art or nested lists.
//
// This is a helper function to build complex GridSpec layouts visually.
//
// See :ref:`mosaic`
// for an example and full API documentation
//
// Parameters
// ----------
// mosaic : list of list of {hashable or nested} or str
//
//	A visual layout of how you want your Axes to be arranged
//	labeled as strings.  For example ::
//
//	   x = [['A panel', 'A panel', 'edge'],
//	        ['C panel', '.',       'edge']]
//
//	produces 4 axes:
//
//	- 'A panel' which is 1 row high and spans the first two columns
//	- 'edge' which is 2 rows high and is on the right edge
//	- 'C panel' which in 1 row and 1 column wide in the bottom left
//	- a blank space 1 row and 1 column wide in the bottom center
//
//	Any of the entries in the layout can be a list of lists
//	of the same form to create nested layouts.
//
//	If input is a str, then it must be of the form ::
//
//	  '''
//	  AAE
//	  C.E
//	  '''
//
//	where each character is a column and each line is a row.
//	This only allows only single character Axes labels and does
//	not allow nesting but is very terse.
//
// sharex, sharey : bool, default: False
//
//	If True, the x-axis (*sharex*) or y-axis (*sharey*) will be shared
//	among all subplots.  In that case, tick label visibility and axis units
//	behave as for `subplots`.  If False, each subplot's x- or y-axis will
//	be independent.
//
// width_ratios : array-like of length *ncols*, optional
//
//	Defines the relative widths of the columns. Each column gets a
//	relative width of ``width_ratios[i] / sum(width_ratios)``.
//	If not given, all columns will have the same width.  Convenience
//	for ``gridspec_kw={'width_ratios': [...]}``.
//
// height_ratios : array-like of length *nrows*, optional
//
//	Defines the relative heights of the rows. Each row gets a
//	relative height of ``height_ratios[i] / sum(height_ratios)``.
//	If not given, all rows will have the same height. Convenience
//	for ``gridspec_kw={'height_ratios': [...]}``.
//
// empty_sentinel : object, optional
//
//	Entry in the layout to mean "leave this space empty".  Defaults
//	to ``'.'``. Note, if *layout* is a string, it is processed via
//	`inspect.cleandoc` to remove leading white space, which may
//	interfere with using white-space as the empty sentinel.
//
// subplot_kw : dict, optional
//
//	Dictionary with keywords passed to the `.Figure.add_subplot` call
//	used to create each subplot.  These values may be overridden by
//	values in *per_subplot_kw*.
//
// per_subplot_kw : dict, optional
//
//	A dictionary mapping the Axes identifiers or tuples of identifiers
//	to a dictionary of keyword arguments to be passed to the
//	`.Figure.add_subplot` call used to create each subplot.  The values
//	in these dictionaries have precedence over the values in
//	*subplot_kw*.
//
//	If *mosaic* is a string, and thus all keys are single characters,
//	it is possible to use a single string instead of a tuple as keys;
//	i.e. ``"AB"`` is equivalent to ``("A", "B")``.
//
//	.. versionadded:: 3.7
//
// gridspec_kw : dict, optional
//
//	Dictionary with keywords passed to the `.GridSpec` constructor used
//	to create the grid the subplots are placed on.
//
// **fig_kw
//
//	All additional keyword arguments are passed to the
//	`.pyplot.figure` call.
//
// Returns
// -------
// fig : `.Figure`
//
//	The new figure
//
// dict[label, Axes]
//
//	A dictionary mapping the labels to the Axes objects.  The order of
//	the axes is left-to-right and top-to-bottom of their position in the
//	total layout.
//
//go:linkname SubplotMosaic py.subplot_mosaic
func SubplotMosaic(mosaic *py.Object) *py.Object

// Create a subplot at a specific location inside a regular grid.
//
// Parameters
// ----------
// shape : (int, int)
//
//	Number of rows and of columns of the grid in which to place axis.
//
// loc : (int, int)
//
//	Row number and column number of the axis location within the grid.
//
// rowspan : int, default: 1
//
//	Number of rows for the axis to span downwards.
//
// colspan : int, default: 1
//
//	Number of columns for the axis to span to the right.
//
// fig : `.Figure`, optional
//
//	Figure to place the subplot in. Defaults to the current figure.
//
// **kwargs
//
//	Additional keyword arguments are handed to `~.Figure.add_subplot`.
//
// Returns
// -------
// `~.axes.Axes`
//
//	The Axes of the subplot. The returned Axes can actually be an instance
//	of a subclass, such as `.projections.polar.PolarAxes` for polar
//	projections.
//
// Notes
// -----
// The following call ::
//
//	ax = subplot2grid((nrows, ncols), (row, col), rowspan, colspan)
//
// is identical to ::
//
//	fig = gcf()
//	gs = fig.add_gridspec(nrows, ncols)
//	ax = fig.add_subplot(gs[row:row+rowspan, col:col+colspan])
//
//go:linkname Subplot2grid py.subplot2grid
func Subplot2grid(shape *py.Object, loc *py.Object, rowspan *py.Object, colspan *py.Object, fig *py.Object) *py.Object

// Make and return a second axes that shares the *x*-axis.  The new axes will
// overlay *ax* (or the current axes if *ax* is *None*), and its ticks will be
// on the right.
//
// Examples
// --------
// :doc:`/gallery/subplots_axes_and_figures/two_scales`
//
//go:linkname Twinx py.twinx
func Twinx(ax *py.Object) *py.Object

// Make and return a second axes that shares the *y*-axis.  The new axes will
// overlay *ax* (or the current axes if *ax* is *None*), and its ticks will be
// on the top.
//
// Examples
// --------
// :doc:`/gallery/subplots_axes_and_figures/two_scales`
//
//go:linkname Twiny py.twiny
func Twiny(ax *py.Object) *py.Object

// Launch a subplot tool window for a figure.
//
// Returns
// -------
// `matplotlib.widgets.SubplotTool`
//
//go:linkname SubplotTool py.subplot_tool
func SubplotTool(targetfig *py.Object) *py.Object

// Turn the axes box on or off on the current axes.
//
// Parameters
// ----------
// on : bool or None
//
//	The new `~matplotlib.axes.Axes` box state. If ``None``, toggle
//	the state.
//
// See Also
// --------
// :meth:`matplotlib.axes.Axes.set_frame_on`
// :meth:`matplotlib.axes.Axes.get_frame_on`
//
//go:linkname Box py.box
func Box(on *py.Object) *py.Object

// Get or set the x limits of the current axes.
//
// Call signatures::
//
//	left, right = xlim()  # return the current xlim
//	xlim((left, right))   # set the xlim to left, right
//	xlim(left, right)     # set the xlim to left, right
//
// If you do not specify args, you can pass *left* or *right* as kwargs,
// i.e.::
//
//	xlim(right=3)  # adjust the right leaving left unchanged
//	xlim(left=1)  # adjust the left leaving right unchanged
//
// Setting limits turns autoscaling off for the x-axis.
//
// Returns
// -------
// left, right
//
//	A tuple of the new x-axis limits.
//
// Notes
// -----
// Calling this function with no arguments (e.g. “xlim()“) is the pyplot
// equivalent of calling `~.Axes.get_xlim` on the current axes.
// Calling this function with arguments is the pyplot equivalent of calling
// `~.Axes.set_xlim` on the current axes. All arguments are passed though.
//
//go:linkname Xlim py.xlim
func Xlim(__llgo_va_list ...interface{}) *py.Object

// Get or set the y-limits of the current axes.
//
// Call signatures::
//
//	bottom, top = ylim()  # return the current ylim
//	ylim((bottom, top))   # set the ylim to bottom, top
//	ylim(bottom, top)     # set the ylim to bottom, top
//
// If you do not specify args, you can alternatively pass *bottom* or
// *top* as kwargs, i.e.::
//
//	ylim(top=3)  # adjust the top leaving bottom unchanged
//	ylim(bottom=1)  # adjust the bottom leaving top unchanged
//
// Setting limits turns autoscaling off for the y-axis.
//
// Returns
// -------
// bottom, top
//
//	A tuple of the new y-axis limits.
//
// Notes
// -----
// Calling this function with no arguments (e.g. “ylim()“) is the pyplot
// equivalent of calling `~.Axes.get_ylim` on the current axes.
// Calling this function with arguments is the pyplot equivalent of calling
// `~.Axes.set_ylim` on the current axes. All arguments are passed though.
//
//go:linkname Ylim py.ylim
func Ylim(__llgo_va_list ...interface{}) *py.Object

// Get or set the current tick locations and labels of the x-axis.
//
// Pass no arguments to return the current values without modifying them.
//
// Parameters
// ----------
// ticks : array-like, optional
//
//	The list of xtick locations.  Passing an empty list removes all xticks.
//
// labels : array-like, optional
//
//	The labels to place at the given *ticks* locations.  This argument can
//	only be passed if *ticks* is passed as well.
//
// minor : bool, default: False
//
//	If ``False``, get/set the major ticks/labels; if ``True``, the minor
//	ticks/labels.
//
// **kwargs
//
//	`.Text` properties can be used to control the appearance of the labels.
//
// Returns
// -------
// locs
//
//	The list of xtick locations.
//
// labels
//
//	The list of xlabel `.Text` objects.
//
// Notes
// -----
// Calling this function with no arguments (e.g. “xticks()“) is the pyplot
// equivalent of calling `~.Axes.get_xticks` and `~.Axes.get_xticklabels` on
// the current axes.
// Calling this function with arguments is the pyplot equivalent of calling
// `~.Axes.set_xticks` and `~.Axes.set_xticklabels` on the current axes.
//
// Examples
// --------
// >>> locs, labels = xticks()  # Get the current locations and labels.
// >>> xticks(np.arange(0, 1, step=0.2))  # Set label locations.
// >>> xticks(np.arange(3), ['Tom', 'Dick', 'Sue'])  # Set text labels.
// >>> xticks([0, 1, 2], ['January', 'February', 'March'],
// ...        rotation=20)  # Set text labels and properties.
// >>> xticks([])  # Disable xticks.
//
//go:linkname Xticks py.xticks
func Xticks(ticks *py.Object, labels *py.Object) *py.Object

// Get or set the current tick locations and labels of the y-axis.
//
// Pass no arguments to return the current values without modifying them.
//
// Parameters
// ----------
// ticks : array-like, optional
//
//	The list of ytick locations.  Passing an empty list removes all yticks.
//
// labels : array-like, optional
//
//	The labels to place at the given *ticks* locations.  This argument can
//	only be passed if *ticks* is passed as well.
//
// minor : bool, default: False
//
//	If ``False``, get/set the major ticks/labels; if ``True``, the minor
//	ticks/labels.
//
// **kwargs
//
//	`.Text` properties can be used to control the appearance of the labels.
//
// Returns
// -------
// locs
//
//	The list of ytick locations.
//
// labels
//
//	The list of ylabel `.Text` objects.
//
// Notes
// -----
// Calling this function with no arguments (e.g. “yticks()“) is the pyplot
// equivalent of calling `~.Axes.get_yticks` and `~.Axes.get_yticklabels` on
// the current axes.
// Calling this function with arguments is the pyplot equivalent of calling
// `~.Axes.set_yticks` and `~.Axes.set_yticklabels` on the current axes.
//
// Examples
// --------
// >>> locs, labels = yticks()  # Get the current locations and labels.
// >>> yticks(np.arange(0, 1, step=0.2))  # Set label locations.
// >>> yticks(np.arange(3), ['Tom', 'Dick', 'Sue'])  # Set text labels.
// >>> yticks([0, 1, 2], ['January', 'February', 'March'],
// ...        rotation=45)  # Set text labels and properties.
// >>> yticks([])  # Disable yticks.
//
//go:linkname Yticks py.yticks
func Yticks(ticks *py.Object, labels *py.Object) *py.Object

// Get or set the radial gridlines on the current polar plot.
//
// Call signatures::
//
//	lines, labels = rgrids()
//	lines, labels = rgrids(radii, labels=None, angle=22.5, fmt=None, **kwargs)
//
// When called with no arguments, `.rgrids` simply returns the tuple
// (*lines*, *labels*). When called with arguments, the labels will
// appear at the specified radial distances and angle.
//
// Parameters
// ----------
// radii : tuple with floats
//
//	The radii for the radial gridlines
//
// labels : tuple with strings or None
//
//	The labels to use at each radial gridline. The
//	`matplotlib.ticker.ScalarFormatter` will be used if None.
//
// angle : float
//
//	The angular position of the radius labels in degrees.
//
// fmt : str or None
//
//	Format string used in `matplotlib.ticker.FormatStrFormatter`.
//	For example '%f'.
//
// Returns
// -------
// lines : list of `.lines.Line2D`
//
//	The radial gridlines.
//
// labels : list of `.text.Text`
//
//	The tick labels.
//
// Other Parameters
// ----------------
// **kwargs
//
//	*kwargs* are optional `.Text` properties for the labels.
//
// See Also
// --------
// .pyplot.thetagrids
// .projections.polar.PolarAxes.set_rgrids
// .Axis.get_gridlines
// .Axis.get_ticklabels
//
// Examples
// --------
// ::
//
//	# set the locations of the radial gridlines
//	lines, labels = rgrids( (0.25, 0.5, 1.0) )
//
//	# set the locations and labels of the radial gridlines
//	lines, labels = rgrids( (0.25, 0.5, 1.0), ('Tom', 'Dick', 'Harry' ))
//
//go:linkname Rgrids py.rgrids
func Rgrids(radii *py.Object, labels *py.Object, angle *py.Object, fmt *py.Object) *py.Object

// Get or set the theta gridlines on the current polar plot.
//
// Call signatures::
//
//	lines, labels = thetagrids()
//	lines, labels = thetagrids(angles, labels=None, fmt=None, **kwargs)
//
// When called with no arguments, `.thetagrids` simply returns the tuple
// (*lines*, *labels*). When called with arguments, the labels will
// appear at the specified angles.
//
// Parameters
// ----------
// angles : tuple with floats, degrees
//
//	The angles of the theta gridlines.
//
// labels : tuple with strings or None
//
//	The labels to use at each radial gridline. The
//	`.projections.polar.ThetaFormatter` will be used if None.
//
// fmt : str or None
//
//	Format string used in `matplotlib.ticker.FormatStrFormatter`.
//	For example '%f'. Note that the angle in radians will be used.
//
// Returns
// -------
// lines : list of `.lines.Line2D`
//
//	The theta gridlines.
//
// labels : list of `.text.Text`
//
//	The tick labels.
//
// Other Parameters
// ----------------
// **kwargs
//
//	*kwargs* are optional `.Text` properties for the labels.
//
// See Also
// --------
// .pyplot.rgrids
// .projections.polar.PolarAxes.set_thetagrids
// .Axis.get_gridlines
// .Axis.get_ticklabels
//
// Examples
// --------
// ::
//
//	# set the locations of the angular gridlines
//	lines, labels = thetagrids(range(45, 360, 90))
//
//	# set the locations and labels of the angular gridlines
//	lines, labels = thetagrids(range(45, 360, 90), ('NE', 'NW', 'SW', 'SE'))
//
//go:linkname Thetagrids py.thetagrids
func Thetagrids(angles *py.Object, labels *py.Object, fmt *py.Object) *py.Object

// [*Deprecated*] Get a sorted list of all of the plotting commands.
//
// Notes
// -----
// .. deprecated:: 3.7
//
//go:linkname GetPlotCommands py.get_plot_commands
func GetPlotCommands() *py.Object

// Add a colorbar to a plot.
//
// Parameters
// ----------
// mappable
//
//	The `matplotlib.cm.ScalarMappable` (i.e., `.AxesImage`,
//	`.ContourSet`, etc.) described by this colorbar.  This argument is
//	mandatory for the `.Figure.colorbar` method but optional for the
//	`.pyplot.colorbar` function, which sets the default to the current
//	image.
//
//	Note that one can create a `.ScalarMappable` "on-the-fly" to
//	generate colorbars not attached to a previously drawn artist, e.g.
//	::
//
//	    fig.colorbar(cm.ScalarMappable(norm=norm, cmap=cmap), ax=ax)
//
// cax : `~matplotlib.axes.Axes`, optional
//
//	Axes into which the colorbar will be drawn.  If `None`, then a new
//	Axes is created and the space for it will be stolen from the Axes(s)
//	specified in *ax*.
//
// ax : `~matplotlib.axes.Axes` or iterable or `numpy.ndarray` of Axes, optional
//
//	The one or more parent Axes from which space for a new colorbar Axes
//	will be stolen. This parameter is only used if *cax* is not set.
//
//	Defaults to the Axes that contains the mappable used to create the
//	colorbar.
//
// use_gridspec : bool, optional
//
//	If *cax* is ``None``, a new *cax* is created as an instance of
//	Axes.  If *ax* is positioned with a subplotspec and *use_gridspec*
//	is ``True``, then *cax* is also positioned with a subplotspec.
//
// Returns
// -------
// colorbar : `~matplotlib.colorbar.Colorbar`
//
// Other Parameters
// ----------------
//
// location : None or {'left', 'right', 'top', 'bottom'}
//
//	The location, relative to the parent axes, where the colorbar axes
//	is created.  It also determines the *orientation* of the colorbar
//	(colorbars on the left and right are vertical, colorbars at the top
//	and bottom are horizontal).  If None, the location will come from the
//	*orientation* if it is set (vertical colorbars on the right, horizontal
//	ones at the bottom), or default to 'right' if *orientation* is unset.
//
// orientation : None or {'vertical', 'horizontal'}
//
//	The orientation of the colorbar.  It is preferable to set the *location*
//	of the colorbar, as that also determines the *orientation*; passing
//	incompatible values for *location* and *orientation* raises an exception.
//
// fraction : float, default: 0.15
//
//	Fraction of original axes to use for colorbar.
//
// shrink : float, default: 1.0
//
//	Fraction by which to multiply the size of the colorbar.
//
// aspect : float, default: 20
//
//	Ratio of long to short dimensions.
//
// pad : float, default: 0.05 if vertical, 0.15 if horizontal
//
//	Fraction of original axes between colorbar and new image axes.
//
// anchor : (float, float), optional
//
//	The anchor point of the colorbar axes.
//	Defaults to (0.0, 0.5) if vertical; (0.5, 1.0) if horizontal.
//
// panchor : (float, float), or *False*, optional
//
//	The anchor point of the colorbar parent axes. If *False*, the parent
//	axes' anchor will be unchanged.
//	Defaults to (1.0, 0.5) if vertical; (0.5, 0.0) if horizontal.
//
// extend : {'neither', 'both', 'min', 'max'}
//
//	Make pointed end(s) for out-of-range values (unless 'neither').  These are
//	set for a given colormap using the colormap set_under and set_over methods.
//
// extendfrac : {*None*, 'auto', length, lengths}
//
//	If set to *None*, both the minimum and maximum triangular colorbar
//	extensions will have a length of 5% of the interior colorbar length (this
//	is the default setting).
//
//	If set to 'auto', makes the triangular colorbar extensions the same lengths
//	as the interior boxes (when *spacing* is set to 'uniform') or the same
//	lengths as the respective adjacent interior boxes (when *spacing* is set to
//	'proportional').
//
//	If a scalar, indicates the length of both the minimum and maximum
//	triangular colorbar extensions as a fraction of the interior colorbar
//	length.  A two-element sequence of fractions may also be given, indicating
//	the lengths of the minimum and maximum colorbar extensions respectively as
//	a fraction of the interior colorbar length.
//
// extendrect : bool
//
//	If *False* the minimum and maximum colorbar extensions will be triangular
//	(the default).  If *True* the extensions will be rectangular.
//
// spacing : {'uniform', 'proportional'}
//
//	For discrete colorbars (`.BoundaryNorm` or contours), 'uniform' gives each
//	color the same space; 'proportional' makes the space proportional to the
//	data interval.
//
// ticks : None or list of ticks or Locator
//
//	If None, ticks are determined automatically from the input.
//
// format : None or str or Formatter
//
//	If None, `~.ticker.ScalarFormatter` is used.
//	Format strings, e.g., ``"%4.2e"`` or ``"{x:.2e}"``, are supported.
//	An alternative `~.ticker.Formatter` may be given instead.
//
// drawedges : bool
//
//	Whether to draw lines at color boundaries.
//
// label : str
//
//	The label on the colorbar's long axis.
//
// boundaries, values : None or a sequence
//
//	If unset, the colormap will be displayed on a 0-1 scale.
//	If sequences, *values* must have a length 1 less than *boundaries*.  For
//	each region delimited by adjacent entries in *boundaries*, the color mapped
//	to the corresponding value in values will be used.
//	Normally only useful for indexed colors (i.e. ``norm=NoNorm()``) or other
//	unusual circumstances.
//
// Notes
// -----
// If *mappable* is a `~.contour.ContourSet`, its *extend* kwarg is
// included automatically.
//
// The *shrink* kwarg provides a simple way to scale the colorbar with
// respect to the axes. Note that if *cax* is specified, it determines the
// size of the colorbar, and *shrink* and *aspect* are ignored.
//
// For more precise control, you can manually specify the positions of the
// axes objects in which the mappable and the colorbar are drawn.  In this
// case, do not use any of the axes properties kwargs.
//
// It is known that some vector graphics viewers (svg and pdf) render
// white gaps between segments of the colorbar.  This is due to bugs in
// the viewers, not Matplotlib.  As a workaround, the colorbar can be
// rendered with overlapping segments::
//
//	cbar = colorbar()
//	cbar.solids.set_edgecolor("face")
//	draw()
//
// However, this has negative consequences in other circumstances, e.g.
// with semi-transparent images (alpha < 1) and colorbar extensions;
// therefore, this workaround is not used by default (see issue #1188).
//
//go:linkname Colorbar py.colorbar
func Colorbar(mappable *py.Object, cax *py.Object, ax *py.Object) *py.Object

// Set the color limits of the current image.
//
// If either *vmin* or *vmax* is None, the image min/max respectively
// will be used for color scaling.
//
// If you want to set the clim of multiple images, use
// `~.ScalarMappable.set_clim` on every image, for example::
//
//	for im in gca().get_images():
//	    im.set_clim(0, 0.5)
//
//go:linkname Clim py.clim
func Clim(vmin *py.Object, vmax *py.Object) *py.Object

// Get a colormap instance, defaulting to rc values if *name* is None.
//
// Parameters
// ----------
// name : `~matplotlib.colors.Colormap` or str or None, default: None
//
//	If a `.Colormap` instance, it will be returned. Otherwise, the name of
//	a colormap known to Matplotlib, which will be resampled by *lut*. The
//	default, None, means :rc:`image.cmap`.
//
// lut : int or None, default: None
//
//	If *name* is not already a Colormap instance and *lut* is not None, the
//	colormap will be resampled to have *lut* entries in the lookup table.
//
// Returns
// -------
// Colormap
//
//go:linkname GetCmap py.get_cmap
func GetCmap(name *py.Object, lut *py.Object) *py.Object

// Set the default colormap, and applies it to the current image if any.
//
// Parameters
// ----------
// cmap : `~matplotlib.colors.Colormap` or str
//
//	A colormap instance or the name of a registered colormap.
//
// See Also
// --------
// colormaps
// matplotlib.cm.register_cmap
// matplotlib.cm.get_cmap
//
//go:linkname SetCmap py.set_cmap
func SetCmap(cmap *py.Object) *py.Object

// Read an image from a file into an array.
//
// .. note::
//
//	This function exists for historical reasons.  It is recommended to
//	use `PIL.Image.open` instead for loading images.
//
// Parameters
// ----------
// fname : str or file-like
//
//	The image file to read: a filename, a URL or a file-like object opened
//	in read-binary mode.
//
//	Passing a URL is deprecated.  Please open the URL
//	for reading and pass the result to Pillow, e.g. with
//	``np.array(PIL.Image.open(urllib.request.urlopen(url)))``.
//
// format : str, optional
//
//	The image file format assumed for reading the data.  The image is
//	loaded as a PNG file if *format* is set to "png", if *fname* is a path
//	or opened file with a ".png" extension, or if it is a URL.  In all
//	other cases, *format* is ignored and the format is auto-detected by
//	`PIL.Image.open`.
//
// Returns
// -------
// `numpy.array`
//
//	The image data. The returned array has shape
//
//	- (M, N) for grayscale images.
//	- (M, N, 3) for RGB images.
//	- (M, N, 4) for RGBA images.
//
//	PNG images are returned as float arrays (0-1).  All other formats are
//	returned as int arrays, with a bit depth determined by the file's
//	contents.
//
//go:linkname Imread py.imread
func Imread(fname *py.Object, format *py.Object) *py.Object

// Colormap and save an array as an image file.
//
// RGB(A) images are passed through.  Single channel images will be
// colormapped according to *cmap* and *norm*.
//
// .. note::
//
//	If you want to save a single channel image as gray scale please use an
//	image I/O library (such as pillow, tifffile, or imageio) directly.
//
// Parameters
// ----------
// fname : str or path-like or file-like
//
//	A path or a file-like object to store the image in.
//	If *format* is not set, then the output format is inferred from the
//	extension of *fname*, if any, and from :rc:`savefig.format` otherwise.
//	If *format* is set, it determines the output format.
//
// arr : array-like
//
//	The image data. The shape can be one of
//	MxN (luminance), MxNx3 (RGB) or MxNx4 (RGBA).
//
// vmin, vmax : float, optional
//
//	*vmin* and *vmax* set the color scaling for the image by fixing the
//	values that map to the colormap color limits. If either *vmin*
//	or *vmax* is None, that limit is determined from the *arr*
//	min/max value.
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	A Colormap instance or registered colormap name. The colormap
//	maps scalar data to colors. It is ignored for RGB(A) data.
//
// format : str, optional
//
//	The file format, e.g. 'png', 'pdf', 'svg', ...  The behavior when this
//	is unset is documented under *fname*.
//
// origin : {'upper', 'lower'}, default: :rc:`image.origin`
//
//	Indicates whether the ``(0, 0)`` index of the array is in the upper
//	left or lower left corner of the axes.
//
// dpi : float
//
//	The DPI to store in the metadata of the file.  This does not affect the
//	resolution of the output image.  Depending on file format, this may be
//	rounded to the nearest integer.
//
// metadata : dict, optional
//
//	Metadata in the image file.  The supported keys depend on the output
//	format, see the documentation of the respective backends for more
//	information.
//	Currently only supported for "png", "pdf", "ps", "eps", and "svg".
//
// pil_kwargs : dict, optional
//
//	Keyword arguments passed to `PIL.Image.Image.save`.  If the 'pnginfo'
//	key is present, it completely overrides *metadata*, including the
//	default 'Software' key.
//
//go:linkname Imsave py.imsave
func Imsave(fname *py.Object, arr *py.Object) *py.Object

// Display an array as a matrix in a new figure window.
//
// The origin is set at the upper left hand corner and rows (first
// dimension of the array) are displayed horizontally.  The aspect
// ratio of the figure window is that of the array, unless this would
// make an excessively short or narrow figure.
//
// Tick labels for the xaxis are placed on top.
//
// Parameters
// ----------
// A : 2D array-like
//
//	The matrix to be displayed.
//
// fignum : None or int
//
//	If *None*, create a new, appropriately sized figure window.
//
//	If 0, use the current Axes (creating one if there is none, without ever
//	adjusting the figure size).
//
//	Otherwise, create a new Axes on the figure with the given number
//	(creating it at the appropriate size if it does not exist, but not
//	adjusting the figure size otherwise).  Note that this will be drawn on
//	top of any preexisting Axes on the figure.
//
// Returns
// -------
// `~matplotlib.image.AxesImage`
//
// Other Parameters
// ----------------
// **kwargs : `~matplotlib.axes.Axes.imshow` arguments
//
//go:linkname Matshow py.matshow
func Matshow(A *py.Object, fignum *py.Object) *py.Object

// Make a polar plot.
//
// call signature::
//
//	polar(theta, r, **kwargs)
//
// Multiple *theta*, *r* arguments are supported, with format strings, as in
// `plot`.
//
//go:linkname Polar py.polar
func Polar(__llgo_va_list ...interface{}) *py.Object

// Add a non-resampled image to the figure.
//
// The image is attached to the lower or upper left corner depending on
// *origin*.
//
// Parameters
// ----------
// X
//
//	The image data. This is an array of one of the following shapes:
//
//	- (M, N): an image with scalar data.  Color-mapping is controlled
//	  by *cmap*, *norm*, *vmin*, and *vmax*.
//	- (M, N, 3): an image with RGB values (0-1 float or 0-255 int).
//	- (M, N, 4): an image with RGBA values (0-1 float or 0-255 int),
//	  i.e. including transparency.
//
// xo, yo : int
//
//	The *x*/*y* image offset in pixels.
//
// alpha : None or float
//
//	The alpha blending value.
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
//	This parameter is ignored if *X* is RGB(A).
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
//	This parameter is ignored if *X* is RGB(A).
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
//	This parameter is ignored if *X* is RGB(A).
//
// origin : {'upper', 'lower'}, default: :rc:`image.origin`
//
//	Indicates where the [0, 0] index of the array is in the upper left
//	or lower left corner of the axes.
//
// resize : bool
//
//	If *True*, resize the figure to match the given image size.
//
// Returns
// -------
// `matplotlib.image.FigureImage`
//
// Other Parameters
// ----------------
// **kwargs
//
//	Additional kwargs are `.Artist` kwargs passed on to `.FigureImage`.
//
// Notes
// -----
// figimage complements the Axes image (`~matplotlib.axes.Axes.imshow`)
// which will be resampled to fit the current Axes.  If you want
// a resampled image to fill the entire figure, you can define an
// `~matplotlib.axes.Axes` with extent [0, 0, 1, 1].
//
// Examples
// --------
// ::
//
//	f = plt.figure()
//	nx = int(f.get_figwidth() * f.dpi)
//	ny = int(f.get_figheight() * f.dpi)
//	data = np.random.random((ny, nx))
//	f.figimage(data)
//	plt.show()
//
//go:linkname Figimage py.figimage
func Figimage(X *py.Object, xo *py.Object, yo *py.Object, alpha *py.Object, norm *py.Object, cmap *py.Object, vmin *py.Object, vmax *py.Object, origin *py.Object, resize *py.Object) *py.Object

// Add text to figure.
//
// Parameters
// ----------
// x, y : float
//
//	The position to place the text. By default, this is in figure
//	coordinates, floats in [0, 1]. The coordinate system can be changed
//	using the *transform* keyword.
//
// s : str
//
//	The text string.
//
// fontdict : dict, optional
//
//	A dictionary to override the default text properties. If not given,
//	the defaults are determined by :rc:`font.*`. Properties passed as
//	*kwargs* override the corresponding ones given in *fontdict*.
//
// Returns
// -------
// `~.text.Text`
//
// Other Parameters
// ----------------
// **kwargs : `~matplotlib.text.Text` properties
//
//	Other miscellaneous text parameters.
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased: bool
//	backgroundcolor: color
//	bbox: dict with properties for `.patches.FancyBboxPatch`
//	clip_box: unknown
//	clip_on: unknown
//	clip_path: unknown
//	color or c: color
//	figure: `~matplotlib.figure.Figure`
//	fontfamily or family or fontname: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
//	fontproperties or font or font_properties: `.font_manager.FontProperties` or `str` or `pathlib.Path`
//	fontsize or size: float or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
//	fontstretch or stretch: {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
//	fontstyle or style: {'normal', 'italic', 'oblique'}
//	fontvariant or variant: {'normal', 'small-caps'}
//	fontweight or weight: {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
//	gid: str
//	horizontalalignment or ha: {'left', 'center', 'right'}
//	in_layout: bool
//	label: object
//	linespacing: float (multiple of font size)
//	math_fontfamily: str
//	mouseover: bool
//	multialignment or ma: {'left', 'right', 'center'}
//	parse_math: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	position: (float, float)
//	rasterized: bool
//	rotation: float or {'vertical', 'horizontal'}
//	rotation_mode: {None, 'default', 'anchor'}
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	text: object
//	transform: `~matplotlib.transforms.Transform`
//	transform_rotates_text: bool
//	url: str
//	usetex: bool or None
//	verticalalignment or va: {'baseline', 'bottom', 'center', 'center_baseline', 'top'}
//	visible: bool
//	wrap: bool
//	x: float
//	y: float
//	zorder: float
//
// See Also
// --------
// .Axes.text
// .pyplot.text
//
//go:linkname Figtext py.figtext
func Figtext(x *py.Object, y *py.Object, s *py.Object, fontdict *py.Object) *py.Object

// Get the current Axes.
//
// If there is currently no Axes on this Figure, a new one is created
// using `.Figure.add_subplot`.  (To test whether there is currently an
// Axes on a Figure, check whether “figure.axes“ is empty.  To test
// whether there is currently a Figure on the pyplot figure stack, check
// whether `.pyplot.get_fignums()` is empty.)
//
//go:linkname Gca py.gca
func Gca() *py.Object

// Get the current colorable artist.
//
// Specifically, returns the current `.ScalarMappable` instance (`.Image`
// created by `imshow` or `figimage`, `.Collection` created by `pcolor` or
// `scatter`, etc.), or *None* if no such instance has been defined.
//
// The current image is an attribute of the current Axes, or the nearest
// earlier Axes in the current figure that contains an image.
//
// Notes
// -----
// Historically, the only colorable artists were images; hence the name
// “gci“ (get current image).
//
//go:linkname Gci py.gci
func Gci() *py.Object

// Blocking call to interact with a figure.
//
// Wait until the user clicks *n* times on the figure, and return the
// coordinates of each click in a list.
//
// There are three possible interactions:
//
// - Add a point.
// - Remove the most recently added point.
// - Stop the interaction and return the points added so far.
//
// The actions are assigned to mouse buttons via the arguments
// *mouse_add*, *mouse_pop* and *mouse_stop*.
//
// Parameters
// ----------
// n : int, default: 1
//
//	Number of mouse clicks to accumulate. If negative, accumulate
//	clicks until the input is terminated manually.
//
// timeout : float, default: 30 seconds
//
//	Number of seconds to wait before timing out. If zero or negative
//	will never time out.
//
// show_clicks : bool, default: True
//
//	If True, show a red cross at the location of each click.
//
// mouse_add : `.MouseButton` or None, default: `.MouseButton.LEFT`
//
//	Mouse button used to add points.
//
// mouse_pop : `.MouseButton` or None, default: `.MouseButton.RIGHT`
//
//	Mouse button used to remove the most recently added point.
//
// mouse_stop : `.MouseButton` or None, default: `.MouseButton.MIDDLE`
//
//	Mouse button used to stop input.
//
// Returns
// -------
// list of tuples
//
//	A list of the clicked (x, y) coordinates.
//
// Notes
// -----
// The keyboard can also be used to select points in case your mouse
// does not have one or more of the buttons.  The delete and backspace
// keys act like right-clicking (i.e., remove last point), the enter key
// terminates input and any other key (not already used by the window
// manager) selects a point.
//
//go:linkname Ginput py.ginput
func Ginput(n *py.Object, timeout *py.Object, showClicks *py.Object, mouseAdd *py.Object, mousePop *py.Object, mouseStop *py.Object) *py.Object

// Adjust the subplot layout parameters.
//
// Unset parameters are left unmodified; initial values are given by
// :rc:`figure.subplot.[name]`.
//
// Parameters
// ----------
// left : float, optional
//
//	The position of the left edge of the subplots,
//	as a fraction of the figure width.
//
// right : float, optional
//
//	The position of the right edge of the subplots,
//	as a fraction of the figure width.
//
// bottom : float, optional
//
//	The position of the bottom edge of the subplots,
//	as a fraction of the figure height.
//
// top : float, optional
//
//	The position of the top edge of the subplots,
//	as a fraction of the figure height.
//
// wspace : float, optional
//
//	The width of the padding between subplots,
//	as a fraction of the average Axes width.
//
// hspace : float, optional
//
//	The height of the padding between subplots,
//	as a fraction of the average Axes height.
//
//go:linkname SubplotsAdjust py.subplots_adjust
func SubplotsAdjust(left *py.Object, bottom *py.Object, right *py.Object, top *py.Object, wspace *py.Object, hspace *py.Object) *py.Object

// Add a centered suptitle to the figure.
//
// Parameters
// ----------
// t : str
//
//	The suptitle text.
//
// x : float, default: 0.5
//
//	The x location of the text in figure coordinates.
//
// y : float, default: 0.98
//
//	The y location of the text in figure coordinates.
//
// horizontalalignment, ha : {'center', 'left', 'right'}, default: center
//
//	The horizontal alignment of the text relative to (*x*, *y*).
//
// verticalalignment, va : {'top', 'center', 'bottom', 'baseline'}, default: top
//
//	The vertical alignment of the text relative to (*x*, *y*).
//
// fontsize, size : default: :rc:`figure.titlesize`
//
//	The font size of the text. See `.Text.set_size` for possible
//	values.
//
// fontweight, weight : default: :rc:`figure.titleweight`
//
//	The font weight of the text. See `.Text.set_weight` for possible
//	values.
//
// Returns
// -------
// text
//
//	The `.Text` instance of the suptitle.
//
// Other Parameters
// ----------------
// fontproperties : None or dict, optional
//
//	A dict of font properties. If *fontproperties* is given the
//	default values for font size and weight are taken from the
//	`.FontProperties` defaults. :rc:`figure.titlesize` and
//	:rc:`figure.titleweight` are ignored in this case.
//
// **kwargs
//
//	Additional kwargs are `matplotlib.text.Text` properties.
//
//go:linkname Suptitle py.suptitle
func Suptitle(t *py.Object) *py.Object

// Adjust the padding between and around subplots.
//
// To exclude an artist on the Axes from the bounding box calculation
// that determines the subplot parameters (i.e. legend, or annotation),
// set “a.set_in_layout(False)“ for that artist.
//
// Parameters
// ----------
// pad : float, default: 1.08
//
//	Padding between the figure edge and the edges of subplots,
//	as a fraction of the font size.
//
// h_pad, w_pad : float, default: *pad*
//
//	Padding (height/width) between edges of adjacent subplots,
//	as a fraction of the font size.
//
// rect : tuple (left, bottom, right, top), default: (0, 0, 1, 1)
//
//	A rectangle in normalized figure coordinates into which the whole
//	subplots area (including labels) will fit.
//
// See Also
// --------
// .Figure.set_layout_engine
// .pyplot.tight_layout
//
//go:linkname TightLayout py.tight_layout
func TightLayout() *py.Object

// Blocking call to interact with the figure.
//
// Wait for user input and return True if a key was pressed, False if a
// mouse button was pressed and None if no input was given within
// *timeout* seconds.  Negative values deactivate *timeout*.
//
//go:linkname Waitforbuttonpress py.waitforbuttonpress
func Waitforbuttonpress(timeout *py.Object) *py.Object

// Plot the autocorrelation of *x*.
//
// Parameters
// ----------
// x : array-like
//
// detrend : callable, default: `.mlab.detrend_none` (no detrending)
//
//	A detrending function applied to *x*.  It must have the
//	signature ::
//
//	    detrend(x: np.ndarray) -> np.ndarray
//
// normed : bool, default: True
//
//	If ``True``, input vectors are normalised to unit length.
//
// usevlines : bool, default: True
//
//	Determines the plot style.
//
//	If ``True``, vertical lines are plotted from 0 to the acorr value
//	using `.Axes.vlines`. Additionally, a horizontal line is plotted
//	at y=0 using `.Axes.axhline`.
//
//	If ``False``, markers are plotted at the acorr values using
//	`.Axes.plot`.
//
// maxlags : int, default: 10
//
//	Number of lags to show. If ``None``, will return all
//	``2 * len(x) - 1`` lags.
//
// Returns
// -------
// lags : array (length “2*maxlags+1“)
//
//	The lag vector.
//
// c : array  (length “2*maxlags+1“)
//
//	The auto correlation vector.
//
// line : `.LineCollection` or `.Line2D`
//
//	`.Artist` added to the Axes of the correlation:
//
//	- `.LineCollection` if *usevlines* is True.
//	- `.Line2D` if *usevlines* is False.
//
// b : `~matplotlib.lines.Line2D` or None
//
//	Horizontal line at 0 if *usevlines* is True
//	None *usevlines* is False.
//
// Other Parameters
// ----------------
// linestyle : `~matplotlib.lines.Line2D` property, optional
//
//	The linestyle for plotting the data points.
//	Only used if *usevlines* is ``False``.
//
// marker : str, default: 'o'
//
//	The marker for plotting the data points.
//	Only used if *usevlines* is ``False``.
//
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*
//
// **kwargs
//
//	Additional parameters are passed to `.Axes.vlines` and
//	`.Axes.axhline` if *usevlines* is ``True``; otherwise they are
//	passed to `.Axes.plot`.
//
// Notes
// -----
// The cross correlation is performed with `numpy.correlate` with
// “mode = "full"“.
//
//go:linkname Acorr py.acorr
func Acorr(x *py.Object) *py.Object

// Plot the angle spectrum.
//
// Compute the angle spectrum (wrapped phase spectrum) of *x*.
// Data is padded to a length of *pad_to* and the windowing function
// *window* is applied to the signal.
//
// Parameters
// ----------
// x : 1-D array or sequence
//
//	Array or sequence containing the data.
//
// Fs : float, default: 2
//
//	The sampling frequency (samples per time unit).  It is used to calculate
//	the Fourier frequencies, *freqs*, in cycles per time unit.
//
// window : callable or ndarray, default: `.window_hanning`
//
//	A function or a vector of length *NFFT*.  To create window vectors see
//	`.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
//	`numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
//	function is passed as the argument, it must take a data segment as an
//	argument and return the windowed version of the segment.
//
// sides : {'default', 'onesided', 'twosided'}, optional
//
//	Which sides of the spectrum to return. 'default' is one-sided for real
//	data and two-sided for complex data. 'onesided' forces the return of a
//	one-sided spectrum, while 'twosided' forces two-sided.
//
// pad_to : int, optional
//
//	The number of points to which the data segment is padded when performing
//	the FFT.  While not increasing the actual resolution of the spectrum (the
//	minimum distance between resolvable peaks), this can give more points in
//	the plot, allowing for more detail. This corresponds to the *n* parameter
//	in the call to `~numpy.fft.fft`.  The default is None, which sets *pad_to*
//	equal to the length of the input signal (i.e. no padding).
//
// Fc : int, default: 0
//
//	The center frequency of *x*, which offsets the x extents of the
//	plot to reflect the frequency range used when a signal is acquired
//	and then filtered and downsampled to baseband.
//
// Returns
// -------
// spectrum : 1-D array
//
//	The values for the angle spectrum in radians (real valued).
//
// freqs : 1-D array
//
//	The frequencies corresponding to the elements in *spectrum*.
//
// line : `~matplotlib.lines.Line2D`
//
//	The line created by this function.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*
//
// **kwargs
//
//	Keyword arguments control the `.Line2D` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// magnitude_spectrum
//
//	Plots the magnitudes of the corresponding frequencies.
//
// phase_spectrum
//
//	Plots the unwrapped version of this function.
//
// specgram
//
//	Can plot the angle spectrum of segments within the signal in a
//	colormap.
//
//go:linkname AngleSpectrum py.angle_spectrum
func AngleSpectrum(x *py.Object, Fs *py.Object, Fc *py.Object, window *py.Object, padTo *py.Object, sides *py.Object) *py.Object

// Annotate the point *xy* with text *text*.
//
// In the simplest form, the text is placed at *xy*.
//
// Optionally, the text can be displayed in another position *xytext*.
// An arrow pointing from the text to the annotated point *xy* can then
// be added by defining *arrowprops*.
//
// Parameters
// ----------
// text : str
//
//	The text of the annotation.
//
// xy : (float, float)
//
//	The point *(x, y)* to annotate. The coordinate system is determined
//	by *xycoords*.
//
// xytext : (float, float), default: *xy*
//
//	The position *(x, y)* to place the text at. The coordinate system
//	is determined by *textcoords*.
//
// xycoords : single or two-tuple of str or `.Artist` or `.Transform` or callable, default: 'data'
//
//	The coordinate system that *xy* is given in. The following types
//	of values are supported:
//
//	- One of the following strings:
//
//	  ==================== ============================================
//	  Value                Description
//	  ==================== ============================================
//	  'figure points'      Points from the lower left of the figure
//	  'figure pixels'      Pixels from the lower left of the figure
//	  'figure fraction'    Fraction of figure from lower left
//	  'subfigure points'   Points from the lower left of the subfigure
//	  'subfigure pixels'   Pixels from the lower left of the subfigure
//	  'subfigure fraction' Fraction of subfigure from lower left
//	  'axes points'        Points from lower left corner of axes
//	  'axes pixels'        Pixels from lower left corner of axes
//	  'axes fraction'      Fraction of axes from lower left
//	  'data'               Use the coordinate system of the object
//	                       being annotated (default)
//	  'polar'              *(theta, r)* if not native 'data'
//	                       coordinates
//	  ==================== ============================================
//
//	  Note that 'subfigure pixels' and 'figure pixels' are the same
//	  for the parent figure, so users who want code that is usable in
//	  a subfigure can use 'subfigure pixels'.
//
//	- An `.Artist`: *xy* is interpreted as a fraction of the artist's
//	  `~matplotlib.transforms.Bbox`. E.g. *(0, 0)* would be the lower
//	  left corner of the bounding box and *(0.5, 1)* would be the
//	  center top of the bounding box.
//
//	- A `.Transform` to transform *xy* to screen coordinates.
//
//	- A function with one of the following signatures::
//
//	    def transform(renderer) -> Bbox
//	    def transform(renderer) -> Transform
//
//	  where *renderer* is a `.RendererBase` subclass.
//
//	  The result of the function is interpreted like the `.Artist` and
//	  `.Transform` cases above.
//
//	- A tuple *(xcoords, ycoords)* specifying separate coordinate
//	  systems for *x* and *y*. *xcoords* and *ycoords* must each be
//	  of one of the above described types.
//
//	See :ref:`plotting-guide-annotation` for more details.
//
// textcoords : single or two-tuple of str or `.Artist` or `.Transform` or callable, default: value of *xycoords*
//
//	The coordinate system that *xytext* is given in.
//
//	All *xycoords* values are valid as well as the following strings:
//
//	=================   =================================================
//	Value               Description
//	=================   =================================================
//	'offset points'     Offset, in points, from the *xy* value
//	'offset pixels'     Offset, in pixels, from the *xy* value
//	'offset fontsize'   Offset, relative to fontsize, from the *xy* value
//	=================   =================================================
//
// arrowprops : dict, optional
//
//	The properties used to draw a `.FancyArrowPatch` arrow between the
//	positions *xy* and *xytext*.  Defaults to None, i.e. no arrow is
//	drawn.
//
//	For historical reasons there are two different ways to specify
//	arrows, "simple" and "fancy":
//
//	**Simple arrow:**
//
//	If *arrowprops* does not contain the key 'arrowstyle' the
//	allowed keys are:
//
//	==========  =================================================
//	Key         Description
//	==========  =================================================
//	width       The width of the arrow in points
//	headwidth   The width of the base of the arrow head in points
//	headlength  The length of the arrow head in points
//	shrink      Fraction of total length to shrink from both ends
//	?           Any `.FancyArrowPatch` property
//	==========  =================================================
//
//	The arrow is attached to the edge of the text box, the exact
//	position (corners or centers) depending on where it's pointing to.
//
//	**Fancy arrow:**
//
//	This is used if 'arrowstyle' is provided in the *arrowprops*.
//
//	Valid keys are the following `.FancyArrowPatch` parameters:
//
//	===============  ===================================
//	Key              Description
//	===============  ===================================
//	arrowstyle       The arrow style
//	connectionstyle  The connection style
//	relpos           See below; default is (0.5, 0.5)
//	patchA           Default is bounding box of the text
//	patchB           Default is None
//	shrinkA          Default is 2 points
//	shrinkB          Default is 2 points
//	mutation_scale   Default is text size (in points)
//	mutation_aspect  Default is 1
//	?                Any `.FancyArrowPatch` property
//	===============  ===================================
//
//	The exact starting point position of the arrow is defined by
//	*relpos*. It's a tuple of relative coordinates of the text box,
//	where (0, 0) is the lower left corner and (1, 1) is the upper
//	right corner. Values <0 and >1 are supported and specify points
//	outside the text box. By default (0.5, 0.5), so the starting point
//	is centered in the text box.
//
// annotation_clip : bool or None, default: None
//
//	Whether to clip (i.e. not draw) the annotation when the annotation
//	point *xy* is outside the axes area.
//
//	- If *True*, the annotation will be clipped when *xy* is outside
//	  the axes.
//	- If *False*, the annotation will always be drawn.
//	- If *None*, the annotation will be clipped when *xy* is outside
//	  the axes and *xycoords* is 'data'.
//
// **kwargs
//
//	Additional kwargs are passed to `.Text`.
//
// Returns
// -------
// `.Annotation`
//
// See Also
// --------
// :ref:`plotting-guide-annotation`
//
//go:linkname Annotate py.annotate
func Annotate(text *py.Object, xy *py.Object, xytext *py.Object, xycoords *py.Object, textcoords *py.Object, arrowprops *py.Object, annotationClip *py.Object) *py.Object

// Add an arrow to the Axes.
//
// This draws an arrow from “(x, y)“ to “(x+dx, y+dy)“.
//
// Parameters
// ----------
// x, y : float
//
//	The x and y coordinates of the arrow base.
//
// dx, dy : float
//
//	The length of the arrow along x and y direction.
//
// width : float, default: 0.001
//
//	Width of full arrow tail.
//
// length_includes_head : bool, default: False
//
//	True if head is to be counted in calculating the length.
//
// head_width : float or None, default: 3*width
//
//	Total width of the full arrow head.
//
// head_length : float or None, default: 1.5*head_width
//
//	Length of arrow head.
//
// shape : {'full', 'left', 'right'}, default: 'full'
//
//	Draw the left-half, right-half, or full arrow.
//
// overhang : float, default: 0
//
//	Fraction that the arrow is swept back (0 overhang means
//	triangular shape). Can be negative or greater than one.
//
// head_starts_at_zero : bool, default: False
//
//	If True, the head starts being drawn at coordinate 0
//	instead of ending at coordinate 0.
//
// **kwargs
//
//	`.Patch` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: unknown
//	animated: bool
//	antialiased or aa: bool or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color: color
//	edgecolor or ec: color or None
//	facecolor or fc: color or None
//	figure: `~matplotlib.figure.Figure`
//	fill: bool
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float or None
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	visible: bool
//	zorder: float
//
// Returns
// -------
// `.FancyArrow`
//
//	The created `.FancyArrow` object.
//
// Notes
// -----
// The resulting arrow is affected by the Axes aspect ratio and limits.
// This may produce an arrow whose head is not square with its stem. To
// create an arrow whose head is square with its stem,
// use :meth:`annotate` for example:
//
// >>> ax.annotate("", xy=(0.5, 0.5), xytext=(0, 0),
// ...             arrowprops=dict(arrowstyle="->"))
//
//go:linkname Arrow py.arrow
func Arrow(x *py.Object, y *py.Object, dx *py.Object, dy *py.Object) *py.Object

// Autoscale the axis view to the data (toggle).
//
// Convenience method for simple axis view autoscaling.
// It turns autoscaling on or off, and then,
// if autoscaling for either axis is on, it performs
// the autoscaling on the specified axis or Axes.
//
// Parameters
// ----------
// enable : bool or None, default: True
//
//	True turns autoscaling on, False turns it off.
//	None leaves the autoscaling state unchanged.
//
// axis : {'both', 'x', 'y'}, default: 'both'
//
//	The axis on which to operate.  (For 3D Axes, *axis* can also be set
//	to 'z', and 'both' refers to all three axes.)
//
// tight : bool or None, default: None
//
//	If True, first set the margins to zero.  Then, this argument is
//	forwarded to `~.axes.Axes.autoscale_view` (regardless of
//	its value); see the description of its behavior there.
//
//go:linkname Autoscale py.autoscale
func Autoscale(enable *py.Object, axis *py.Object, tight *py.Object) *py.Object

// Add a horizontal line across the Axes.
//
// Parameters
// ----------
// y : float, default: 0
//
//	y position in data coordinates of the horizontal line.
//
// xmin : float, default: 0
//
//	Should be between 0 and 1, 0 being the far left of the plot, 1 the
//	far right of the plot.
//
// xmax : float, default: 1
//
//	Should be between 0 and 1, 0 being the far left of the plot, 1 the
//	far right of the plot.
//
// Returns
// -------
// `~matplotlib.lines.Line2D`
//
// Other Parameters
// ----------------
// **kwargs
//
//	Valid keyword arguments are `.Line2D` properties, except for
//	'transform':
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// hlines : Add horizontal lines in data coordinates.
// axhspan : Add a horizontal span (rectangle) across the axis.
// axline : Add a line with an arbitrary slope.
//
// Examples
// --------
// * draw a thick red hline at 'y' = 0 that spans the xrange::
//
//	>>> axhline(linewidth=4, color='r')
//
// * draw a default hline at 'y' = 1 that spans the xrange::
//
//		>>> axhline(y=1)
//
//	  - draw a default hline at 'y' = .5 that spans the middle half of
//	    the xrange::
//
//	    >>> axhline(y=.5, xmin=0.25, xmax=0.75)
//
//go:linkname Axhline py.axhline
func Axhline(y *py.Object, xmin *py.Object, xmax *py.Object) *py.Object

// Add a horizontal span (rectangle) across the Axes.
//
// The rectangle spans from *ymin* to *ymax* vertically, and, by default,
// the whole x-axis horizontally.  The x-span can be set using *xmin*
// (default: 0) and *xmax* (default: 1) which are in axis units; e.g.
// “xmin = 0.5“ always refers to the middle of the x-axis regardless of
// the limits set by `~.Axes.set_xlim`.
//
// Parameters
// ----------
// ymin : float
//
//	Lower y-coordinate of the span, in data units.
//
// ymax : float
//
//	Upper y-coordinate of the span, in data units.
//
// xmin : float, default: 0
//
//	Lower x-coordinate of the span, in x-axis (0-1) units.
//
// xmax : float, default: 1
//
//	Upper x-coordinate of the span, in x-axis (0-1) units.
//
// Returns
// -------
// `~matplotlib.patches.Polygon`
//
//	Horizontal span (rectangle) from (xmin, ymin) to (xmax, ymax).
//
// Other Parameters
// ----------------
// **kwargs : `~matplotlib.patches.Polygon` properties
//
// Properties:
//
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	closed: bool
//	color: color
//	edgecolor or ec: color or None
//	facecolor or fc: color or None
//	figure: `~matplotlib.figure.Figure`
//	fill: bool
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float or None
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	visible: bool
//	xy: (N, 2) array-like
//	zorder: float
//
// See Also
// --------
// axvspan : Add a vertical span across the Axes.
//
//go:linkname Axhspan py.axhspan
func Axhspan(ymin *py.Object, ymax *py.Object, xmin *py.Object, xmax *py.Object) *py.Object

// Convenience method to get or set some axis properties.
//
// Call signatures::
//
//	xmin, xmax, ymin, ymax = axis()
//	xmin, xmax, ymin, ymax = axis([xmin, xmax, ymin, ymax])
//	xmin, xmax, ymin, ymax = axis(option)
//	xmin, xmax, ymin, ymax = axis(**kwargs)
//
// Parameters
// ----------
// xmin, xmax, ymin, ymax : float, optional
//
//	The axis limits to be set.  This can also be achieved using ::
//
//	    ax.set(xlim=(xmin, xmax), ylim=(ymin, ymax))
//
// option : bool or str
//
//	If a bool, turns axis lines and labels on or off. If a string,
//	possible values are:
//
//	================ ===========================================================
//	Value            Description
//	================ ===========================================================
//	'off' or `False` Hide all axis decorations, i.e. axis labels, spines,
//	                 tick marks, tick labels, and grid lines.
//	                 This is the same as `~.Axes.set_axis_off()`.
//	'on' or `True`   Do not hide all axis decorations, i.e. axis labels, spines,
//	                 tick marks, tick labels, and grid lines.
//	                 This is the same as `~.Axes.set_axis_on()`.
//	'equal'          Set equal scaling (i.e., make circles circular) by
//	                 changing the axis limits. This is the same as
//	                 ``ax.set_aspect('equal', adjustable='datalim')``.
//	                 Explicit data limits may not be respected in this case.
//	'scaled'         Set equal scaling (i.e., make circles circular) by
//	                 changing dimensions of the plot box. This is the same as
//	                 ``ax.set_aspect('equal', adjustable='box', anchor='C')``.
//	                 Additionally, further autoscaling will be disabled.
//	'tight'          Set limits just large enough to show all data, then
//	                 disable further autoscaling.
//	'auto'           Automatic scaling (fill plot box with data).
//	'image'          'scaled' with axis limits equal to data limits.
//	'square'         Square plot; similar to 'scaled', but initially forcing
//	                 ``xmax-xmin == ymax-ymin``.
//	================ ===========================================================
//
// emit : bool, default: True
//
//	Whether observers are notified of the axis limit change.
//	This option is passed on to `~.Axes.set_xlim` and
//	`~.Axes.set_ylim`.
//
// Returns
// -------
// xmin, xmax, ymin, ymax : float
//
//	The axis limits.
//
// See Also
// --------
// matplotlib.axes.Axes.set_xlim
// matplotlib.axes.Axes.set_ylim
//
// Notes
// -----
// For 3D axes, this method additionally takes *zmin*, *zmax* as
// parameters and likewise returns them.
//
//go:linkname Axis py.axis
func Axis(arg *py.Object) *py.Object

// Add an infinitely long straight line.
//
// The line can be defined either by two points *xy1* and *xy2*, or
// by one point *xy1* and a *slope*.
//
// This draws a straight line "on the screen", regardless of the x and y
// scales, and is thus also suitable for drawing exponential decays in
// semilog plots, power laws in loglog plots, etc. However, *slope*
// should only be used with linear scales; It has no clear meaning for
// all other scales, and thus the behavior is undefined. Please specify
// the line using the points *xy1*, *xy2* for non-linear scales.
//
// The *transform* keyword argument only applies to the points *xy1*,
// *xy2*. The *slope* (if given) is always in data coordinates. This can
// be used e.g. with “ax.transAxes“ for drawing grid lines with a fixed
// slope.
//
// Parameters
// ----------
// xy1, xy2 : (float, float)
//
//	Points for the line to pass through.
//	Either *xy2* or *slope* has to be given.
//
// slope : float, optional
//
//	The slope of the line. Either *xy2* or *slope* has to be given.
//
// Returns
// -------
// `.AxLine`
//
// Other Parameters
// ----------------
// **kwargs
//
//	Valid kwargs are `.Line2D` properties
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// axhline : for horizontal lines
// axvline : for vertical lines
//
// Examples
// --------
// Draw a thick red line passing through (0, 0) and (1, 1)::
//
//	>>> axline((0, 0), (1, 1), linewidth=4, color='r')
//
//go:linkname Axline py.axline
func Axline(xy1 *py.Object, xy2 *py.Object) *py.Object

// Add a vertical line across the Axes.
//
// Parameters
// ----------
// x : float, default: 0
//
//	x position in data coordinates of the vertical line.
//
// ymin : float, default: 0
//
//	Should be between 0 and 1, 0 being the bottom of the plot, 1 the
//	top of the plot.
//
// ymax : float, default: 1
//
//	Should be between 0 and 1, 0 being the bottom of the plot, 1 the
//	top of the plot.
//
// Returns
// -------
// `~matplotlib.lines.Line2D`
//
// Other Parameters
// ----------------
// **kwargs
//
//	Valid keyword arguments are `.Line2D` properties, except for
//	'transform':
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// vlines : Add vertical lines in data coordinates.
// axvspan : Add a vertical span (rectangle) across the axis.
// axline : Add a line with an arbitrary slope.
//
// Examples
// --------
// * draw a thick red vline at *x* = 0 that spans the yrange::
//
//	>>> axvline(linewidth=4, color='r')
//
// * draw a default vline at *x* = 1 that spans the yrange::
//
//		>>> axvline(x=1)
//
//	  - draw a default vline at *x* = .5 that spans the middle half of
//	    the yrange::
//
//	    >>> axvline(x=.5, ymin=0.25, ymax=0.75)
//
//go:linkname Axvline py.axvline
func Axvline(x *py.Object, ymin *py.Object, ymax *py.Object) *py.Object

// Add a vertical span (rectangle) across the Axes.
//
// The rectangle spans from *xmin* to *xmax* horizontally, and, by
// default, the whole y-axis vertically.  The y-span can be set using
// *ymin* (default: 0) and *ymax* (default: 1) which are in axis units;
// e.g. “ymin = 0.5“ always refers to the middle of the y-axis
// regardless of the limits set by `~.Axes.set_ylim`.
//
// Parameters
// ----------
// xmin : float
//
//	Lower x-coordinate of the span, in data units.
//
// xmax : float
//
//	Upper x-coordinate of the span, in data units.
//
// ymin : float, default: 0
//
//	Lower y-coordinate of the span, in y-axis units (0-1).
//
// ymax : float, default: 1
//
//	Upper y-coordinate of the span, in y-axis units (0-1).
//
// Returns
// -------
// `~matplotlib.patches.Polygon`
//
//	Vertical span (rectangle) from (xmin, ymin) to (xmax, ymax).
//
// Other Parameters
// ----------------
// **kwargs : `~matplotlib.patches.Polygon` properties
//
// Properties:
//
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	closed: bool
//	color: color
//	edgecolor or ec: color or None
//	facecolor or fc: color or None
//	figure: `~matplotlib.figure.Figure`
//	fill: bool
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float or None
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	visible: bool
//	xy: (N, 2) array-like
//	zorder: float
//
// See Also
// --------
// axhspan : Add a horizontal span across the Axes.
//
// Examples
// --------
// Draw a vertical, green, translucent rectangle from x = 1.25 to
// x = 1.55 that spans the yrange of the Axes.
//
// >>> axvspan(1.25, 1.55, facecolor='g', alpha=0.5)
//
//go:linkname Axvspan py.axvspan
func Axvspan(xmin *py.Object, xmax *py.Object, ymin *py.Object, ymax *py.Object) *py.Object

// Make a bar plot.
//
// The bars are positioned at *x* with the given *align*\ment. Their
// dimensions are given by *height* and *width*. The vertical baseline
// is *bottom* (default 0).
//
// Many parameters can take either a single value applying to all bars
// or a sequence of values, one for each bar.
//
// Parameters
// ----------
// x : float or array-like
//
//	The x coordinates of the bars. See also *align* for the
//	alignment of the bars to the coordinates.
//
// height : float or array-like
//
//	The height(s) of the bars.
//
//	Note that if *bottom* has units (e.g. datetime), *height* should be in
//	units that are a difference from the value of *bottom* (e.g. timedelta).
//
// width : float or array-like, default: 0.8
//
//	The width(s) of the bars.
//
//	Note that if *x* has units (e.g. datetime), then *width* should be in
//	units that are a difference (e.g. timedelta) around the *x* values.
//
// bottom : float or array-like, default: 0
//
//	The y coordinate(s) of the bottom side(s) of the bars.
//
//	Note that if *bottom* has units, then the y-axis will get a Locator and
//	Formatter appropriate for the units (e.g. dates, or categorical).
//
// align : {'center', 'edge'}, default: 'center'
//
//	Alignment of the bars to the *x* coordinates:
//
//	- 'center': Center the base on the *x* positions.
//	- 'edge': Align the left edges of the bars with the *x* positions.
//
//	To align the bars on the right edge pass a negative *width* and
//	``align='edge'``.
//
// Returns
// -------
// `.BarContainer`
//
//	Container with all the bars and optionally errorbars.
//
// Other Parameters
// ----------------
// color : color or list of color, optional
//
//	The colors of the bar faces.
//
// edgecolor : color or list of color, optional
//
//	The colors of the bar edges.
//
// linewidth : float or array-like, optional
//
//	Width of the bar edge(s). If 0, don't draw edges.
//
// tick_label : str or list of str, optional
//
//	The tick labels of the bars.
//	Default: None (Use default numeric labels.)
//
// label : str or list of str, optional
//
//	A single label is attached to the resulting `.BarContainer` as a
//	label for the whole dataset.
//	If a list is provided, it must be the same length as *x* and
//	labels the individual bars. Repeated labels are not de-duplicated
//	and will cause repeated label entries, so this is best used when
//	bars also differ in style (e.g., by passing a list to *color*.)
//
// xerr, yerr : float or array-like of shape(N,) or shape(2, N), optional
//
//	If not *None*, add horizontal / vertical errorbars to the bar tips.
//	The values are +/- sizes relative to the data:
//
//	- scalar: symmetric +/- values for all bars
//	- shape(N,): symmetric +/- values for each bar
//	- shape(2, N): Separate - and + values for each bar. First row
//	  contains the lower errors, the second row contains the upper
//	  errors.
//	- *None*: No errorbar. (Default)
//
//	See :doc:`/gallery/statistics/errorbar_features` for an example on
//	the usage of *xerr* and *yerr*.
//
// ecolor : color or list of color, default: 'black'
//
//	The line color of the errorbars.
//
// capsize : float, default: :rc:`errorbar.capsize`
//
//	The length of the error bar caps in points.
//
// error_kw : dict, optional
//
//	Dictionary of keyword arguments to be passed to the
//	`~.Axes.errorbar` method. Values of *ecolor* or *capsize* defined
//	here take precedence over the independent keyword arguments.
//
// log : bool, default: False
//
//	If *True*, set the y-axis to be log scale.
//
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs : `.Rectangle` properties
//
// Properties:
//
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	angle: unknown
//	animated: bool
//	antialiased or aa: bool or None
//	bounds: (left, bottom, width, height)
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color: color
//	edgecolor or ec: color or None
//	facecolor or fc: color or None
//	figure: `~matplotlib.figure.Figure`
//	fill: bool
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	height: unknown
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float or None
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	visible: bool
//	width: unknown
//	x: unknown
//	xy: (float, float)
//	y: unknown
//	zorder: float
//
// See Also
// --------
// barh : Plot a horizontal bar plot.
//
// Notes
// -----
// Stacked bars can be achieved by passing individual *bottom* values per
// bar. See :doc:`/gallery/lines_bars_and_markers/bar_stacked`.
//
//go:linkname Bar py.bar
func Bar(x *py.Object, height *py.Object, width *py.Object, bottom *py.Object) *py.Object

// Plot a 2D field of barbs.
//
// Call signature::
//
//	barbs([X, Y], U, V, [C], **kwargs)
//
// Where *X*, *Y* define the barb locations, *U*, *V* define the barb
// directions, and *C* optionally sets the color.
//
// All arguments may be 1D or 2D. *U*, *V*, *C* may be masked arrays, but masked
// *X*, *Y* are not supported at present.
//
// Barbs are traditionally used in meteorology as a way to plot the speed
// and direction of wind observations, but can technically be used to
// plot any two dimensional vector quantity.  As opposed to arrows, which
// give vector magnitude by the length of the arrow, the barbs give more
// quantitative information about the vector magnitude by putting slanted
// lines or a triangle for various increments in magnitude, as show
// schematically below::
//
//	:                   /\    \
//	:                  /  \    \
//	:                 /    \    \    \
//	:                /      \    \    \
//	:               ------------------------------
//
// The largest increment is given by a triangle (or "flag"). After those
// come full lines (barbs). The smallest increment is a half line.  There
// is only, of course, ever at most 1 half line.  If the magnitude is
// small and only needs a single half-line and no full lines or
// triangles, the half-line is offset from the end of the barb so that it
// can be easily distinguished from barbs with a single full line.  The
// magnitude for the barb shown above would nominally be 65, using the
// standard increments of 50, 10, and 5.
//
// See also https://en.wikipedia.org/wiki/Wind_barb.
//
// Parameters
// ----------
// X, Y : 1D or 2D array-like, optional
//
//	The x and y coordinates of the barb locations. See *pivot* for how the
//	barbs are drawn to the x, y positions.
//
//	If not given, they will be generated as a uniform integer meshgrid based
//	on the dimensions of *U* and *V*.
//
//	If *X* and *Y* are 1D but *U*, *V* are 2D, *X*, *Y* are expanded to 2D
//	using ``X, Y = np.meshgrid(X, Y)``. In this case ``len(X)`` and ``len(Y)``
//	must match the column and row dimensions of *U* and *V*.
//
// U, V : 1D or 2D array-like
//
//	The x and y components of the barb shaft.
//
// C : 1D or 2D array-like, optional
//
//	Numeric data that defines the barb colors by colormapping via *norm* and
//	*cmap*.
//
//	This does not support explicit colors. If you want to set colors directly,
//	use *barbcolor* instead.
//
// length : float, default: 7
//
//	Length of the barb in points; the other parts of the barb
//	are scaled against this.
//
// pivot : {'tip', 'middle'} or float, default: 'tip'
//
//	The part of the arrow that is anchored to the *X*, *Y* grid. The barb
//	rotates about this point. This can also be a number, which shifts the
//	start of the barb that many points away from grid point.
//
// barbcolor : color or color sequence
//
//	The color of all parts of the barb except for the flags.  This parameter
//	is analogous to the *edgecolor* parameter for polygons, which can be used
//	instead. However this parameter will override facecolor.
//
// flagcolor : color or color sequence
//
//	The color of any flags on the barb.  This parameter is analogous to the
//	*facecolor* parameter for polygons, which can be used instead. However,
//	this parameter will override facecolor.  If this is not set (and *C* has
//	not either) then *flagcolor* will be set to match *barbcolor* so that the
//	barb has a uniform color. If *C* has been set, *flagcolor* has no effect.
//
// sizes : dict, optional
//
//	A dictionary of coefficients specifying the ratio of a given
//	feature to the length of the barb. Only those values one wishes to
//	override need to be included.  These features include:
//
//	- 'spacing' - space between features (flags, full/half barbs)
//	- 'height' - height (distance from shaft to top) of a flag or full barb
//	- 'width' - width of a flag, twice the width of a full barb
//	- 'emptybarb' - radius of the circle used for low magnitudes
//
// fill_empty : bool, default: False
//
//	Whether the empty barbs (circles) that are drawn should be filled with
//	the flag color.  If they are not filled, the center is transparent.
//
// rounding : bool, default: True
//
//	Whether the vector magnitude should be rounded when allocating barb
//	components.  If True, the magnitude is rounded to the nearest multiple
//	of the half-barb increment.  If False, the magnitude is simply truncated
//	to the next lowest multiple.
//
// barb_increments : dict, optional
//
//	A dictionary of increments specifying values to associate with
//	different parts of the barb. Only those values one wishes to
//	override need to be included.
//
//	- 'half' - half barbs (Default is 5)
//	- 'full' - full barbs (Default is 10)
//	- 'flag' - flags (default is 50)
//
// flip_barb : bool or array-like of bool, default: False
//
//	Whether the lines and flags should point opposite to normal.
//	Normal behavior is for the barbs and lines to point right (comes from wind
//	barbs having these features point towards low pressure in the Northern
//	Hemisphere).
//
//	A single value is applied to all barbs. Individual barbs can be flipped by
//	passing a bool array of the same size as *U* and *V*.
//
// Returns
// -------
// barbs : `~matplotlib.quiver.Barbs`
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs
//
//	The barbs can further be customized using `.PolyCollection` keyword
//	arguments:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: array-like or scalar or None
//	animated: bool
//	antialiased or aa or antialiaseds: bool or list of bools
//	array: array-like or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clim: (vmin: float, vmax: float)
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	cmap: `.Colormap` or str or None
//	color: color or list of RGBA tuples
//	edgecolor or ec or edgecolors: color or list of colors or 'face'
//	facecolor or facecolors or fc: color or list of colors
//	figure: `~matplotlib.figure.Figure`
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or dashes or linestyles or ls: str or tuple or list thereof
//	linewidth or linewidths or lw: float or list of floats
//	mouseover: bool
//	norm: `.Normalize` or str or None
//	offset_transform or transOffset: `.Transform`
//	offsets: (N, 2) or (2,) array-like
//	path_effects: list of `.AbstractPathEffect`
//	paths: list of array-like
//	picker: None or bool or float or callable
//	pickradius: float
//	rasterized: bool
//	sizes: `numpy.ndarray` or None
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	urls: list of str or None
//	verts: list of array-like
//	verts_and_codes: unknown
//	visible: bool
//	zorder: float
//
//go:linkname Barbs py.barbs
func Barbs(__llgo_va_list ...interface{}) *py.Object

// Make a horizontal bar plot.
//
// The bars are positioned at *y* with the given *align*\ment. Their
// dimensions are given by *width* and *height*. The horizontal baseline
// is *left* (default 0).
//
// Many parameters can take either a single value applying to all bars
// or a sequence of values, one for each bar.
//
// Parameters
// ----------
// y : float or array-like
//
//	The y coordinates of the bars. See also *align* for the
//	alignment of the bars to the coordinates.
//
// width : float or array-like
//
//	The width(s) of the bars.
//
//	Note that if *left* has units (e.g. datetime), *width* should be in
//	units that are a difference from the value of *left* (e.g. timedelta).
//
// height : float or array-like, default: 0.8
//
//	The heights of the bars.
//
//	Note that if *y* has units (e.g. datetime), then *height* should be in
//	units that are a difference (e.g. timedelta) around the *y* values.
//
// left : float or array-like, default: 0
//
//	The x coordinates of the left side(s) of the bars.
//
//	Note that if *left* has units, then the x-axis will get a Locator and
//	Formatter appropriate for the units (e.g. dates, or categorical).
//
// align : {'center', 'edge'}, default: 'center'
//
//	Alignment of the base to the *y* coordinates*:
//
//	- 'center': Center the bars on the *y* positions.
//	- 'edge': Align the bottom edges of the bars with the *y*
//	  positions.
//
//	To align the bars on the top edge pass a negative *height* and
//	``align='edge'``.
//
// Returns
// -------
// `.BarContainer`
//
//	Container with all the bars and optionally errorbars.
//
// Other Parameters
// ----------------
// color : color or list of color, optional
//
//	The colors of the bar faces.
//
// edgecolor : color or list of color, optional
//
//	The colors of the bar edges.
//
// linewidth : float or array-like, optional
//
//	Width of the bar edge(s). If 0, don't draw edges.
//
// tick_label : str or list of str, optional
//
//	The tick labels of the bars.
//	Default: None (Use default numeric labels.)
//
// label : str or list of str, optional
//
//	A single label is attached to the resulting `.BarContainer` as a
//	label for the whole dataset.
//	If a list is provided, it must be the same length as *y* and
//	labels the individual bars. Repeated labels are not de-duplicated
//	and will cause repeated label entries, so this is best used when
//	bars also differ in style (e.g., by passing a list to *color*.)
//
// xerr, yerr : float or array-like of shape(N,) or shape(2, N), optional
//
//	If not *None*, add horizontal / vertical errorbars to the bar tips.
//	The values are +/- sizes relative to the data:
//
//	- scalar: symmetric +/- values for all bars
//	- shape(N,): symmetric +/- values for each bar
//	- shape(2, N): Separate - and + values for each bar. First row
//	  contains the lower errors, the second row contains the upper
//	  errors.
//	- *None*: No errorbar. (default)
//
//	See :doc:`/gallery/statistics/errorbar_features` for an example on
//	the usage of *xerr* and *yerr*.
//
// ecolor : color or list of color, default: 'black'
//
//	The line color of the errorbars.
//
// capsize : float, default: :rc:`errorbar.capsize`
//
//	The length of the error bar caps in points.
//
// error_kw : dict, optional
//
//	Dictionary of keyword arguments to be passed to the
//	`~.Axes.errorbar` method. Values of *ecolor* or *capsize* defined
//	here take precedence over the independent keyword arguments.
//
// log : bool, default: False
//
//	If ``True``, set the x-axis to be log scale.
//
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs : `.Rectangle` properties
//
// Properties:
//
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	angle: unknown
//	animated: bool
//	antialiased or aa: bool or None
//	bounds: (left, bottom, width, height)
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color: color
//	edgecolor or ec: color or None
//	facecolor or fc: color or None
//	figure: `~matplotlib.figure.Figure`
//	fill: bool
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	height: unknown
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float or None
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	visible: bool
//	width: unknown
//	x: unknown
//	xy: (float, float)
//	y: unknown
//	zorder: float
//
// See Also
// --------
// bar : Plot a vertical bar plot.
//
// Notes
// -----
// Stacked bars can be achieved by passing individual *left* values per
// bar. See
// :doc:`/gallery/lines_bars_and_markers/horizontal_barchart_distribution`.
//
//go:linkname Barh py.barh
func Barh(y *py.Object, width *py.Object, height *py.Object, left *py.Object) *py.Object

// Label a bar plot.
//
// Adds labels to bars in the given `.BarContainer`.
// You may need to adjust the axis limits to fit the labels.
//
// Parameters
// ----------
// container : `.BarContainer`
//
//	Container with all the bars and optionally errorbars, likely
//	returned from `.bar` or `.barh`.
//
// labels : array-like, optional
//
//	A list of label texts, that should be displayed. If not given, the
//	label texts will be the data values formatted with *fmt*.
//
// fmt : str or callable, default: '%g'
//
//	An unnamed %-style or {}-style format string for the label or a
//	function to call with the value as the first argument.
//	When *fmt* is a string and can be interpreted in both formats,
//	%-style takes precedence over {}-style.
//
//	.. versionadded:: 3.7
//	   Support for {}-style format string and callables.
//
// label_type : {'edge', 'center'}, default: 'edge'
//
//	The label type. Possible values:
//
//	- 'edge': label placed at the end-point of the bar segment, and the
//	  value displayed will be the position of that end-point.
//	- 'center': label placed in the center of the bar segment, and the
//	  value displayed will be the length of that segment.
//	  (useful for stacked bars, i.e.,
//	  :doc:`/gallery/lines_bars_and_markers/bar_label_demo`)
//
// padding : float, default: 0
//
//	Distance of label from the end of the bar, in points.
//
// **kwargs
//
//	Any remaining keyword arguments are passed through to
//	`.Axes.annotate`. The alignment parameters (
//	*horizontalalignment* / *ha*, *verticalalignment* / *va*) are
//	not supported because the labels are automatically aligned to
//	the bars.
//
// Returns
// -------
// list of `.Annotation`
//
//	A list of `.Annotation` instances for the labels.
//
//go:linkname BarLabel py.bar_label
func BarLabel(container *py.Object, labels *py.Object) *py.Object

// Draw a box and whisker plot.
//
// The box extends from the first quartile (Q1) to the third
// quartile (Q3) of the data, with a line at the median.
// The whiskers extend from the box to the farthest data point
// lying within 1.5x the inter-quartile range (IQR) from the box.
// Flier points are those past the end of the whiskers.
// See https://en.wikipedia.org/wiki/Box_plot for reference.
//
// .. code-block:: none
//
//	     Q1-1.5IQR   Q1   median  Q3   Q3+1.5IQR
//	                  |-----:-----|
//	  o      |--------|     :     |--------|    o  o
//	                  |-----:-----|
//	flier             <----------->            fliers
//	                       IQR
//
// Parameters
// ----------
// x : Array or a sequence of vectors.
//
//	The input data.  If a 2D array, a boxplot is drawn for each column
//	in *x*.  If a sequence of 1D arrays, a boxplot is drawn for each
//	array in *x*.
//
// notch : bool, default: False
//
//	Whether to draw a notched boxplot (`True`), or a rectangular
//	boxplot (`False`).  The notches represent the confidence interval
//	(CI) around the median.  The documentation for *bootstrap*
//	describes how the locations of the notches are computed by
//	default, but their locations may also be overridden by setting the
//	*conf_intervals* parameter.
//
//	.. note::
//
//	    In cases where the values of the CI are less than the
//	    lower quartile or greater than the upper quartile, the
//	    notches will extend beyond the box, giving it a
//	    distinctive "flipped" appearance. This is expected
//	    behavior and consistent with other statistical
//	    visualization packages.
//
// sym : str, optional
//
//	The default symbol for flier points.  An empty string ('') hides
//	the fliers.  If `None`, then the fliers default to 'b+'.  More
//	control is provided by the *flierprops* parameter.
//
// vert : bool, default: True
//
//	If `True`, draws vertical boxes.
//	If `False`, draw horizontal boxes.
//
// whis : float or (float, float), default: 1.5
//
//	The position of the whiskers.
//
//	If a float, the lower whisker is at the lowest datum above
//	``Q1 - whis*(Q3-Q1)``, and the upper whisker at the highest datum
//	below ``Q3 + whis*(Q3-Q1)``, where Q1 and Q3 are the first and
//	third quartiles.  The default value of ``whis = 1.5`` corresponds
//	to Tukey's original definition of boxplots.
//
//	If a pair of floats, they indicate the percentiles at which to
//	draw the whiskers (e.g., (5, 95)).  In particular, setting this to
//	(0, 100) results in whiskers covering the whole range of the data.
//
//	In the edge case where ``Q1 == Q3``, *whis* is automatically set
//	to (0, 100) (cover the whole range of the data) if *autorange* is
//	True.
//
//	Beyond the whiskers, data are considered outliers and are plotted
//	as individual points.
//
// bootstrap : int, optional
//
//	Specifies whether to bootstrap the confidence intervals
//	around the median for notched boxplots. If *bootstrap* is
//	None, no bootstrapping is performed, and notches are
//	calculated using a Gaussian-based asymptotic approximation
//	(see McGill, R., Tukey, J.W., and Larsen, W.A., 1978, and
//	Kendall and Stuart, 1967). Otherwise, bootstrap specifies
//	the number of times to bootstrap the median to determine its
//	95% confidence intervals. Values between 1000 and 10000 are
//	recommended.
//
// usermedians : 1D array-like, optional
//
//	A 1D array-like of length ``len(x)``.  Each entry that is not
//	`None` forces the value of the median for the corresponding
//	dataset.  For entries that are `None`, the medians are computed
//	by Matplotlib as normal.
//
// conf_intervals : array-like, optional
//
//	A 2D array-like of shape ``(len(x), 2)``.  Each entry that is not
//	None forces the location of the corresponding notch (which is
//	only drawn if *notch* is `True`).  For entries that are `None`,
//	the notches are computed by the method specified by the other
//	parameters (e.g., *bootstrap*).
//
// positions : array-like, optional
//
//	The positions of the boxes. The ticks and limits are
//	automatically set to match the positions. Defaults to
//	``range(1, N+1)`` where N is the number of boxes to be drawn.
//
// widths : float or array-like
//
//	The widths of the boxes.  The default is 0.5, or ``0.15*(distance
//	between extreme positions)``, if that is smaller.
//
// patch_artist : bool, default: False
//
//	If `False` produces boxes with the Line2D artist. Otherwise,
//	boxes are drawn with Patch artists.
//
// labels : sequence, optional
//
//	Labels for each dataset (one per dataset).
//
// manage_ticks : bool, default: True
//
//	If True, the tick locations and labels will be adjusted to match
//	the boxplot positions.
//
// autorange : bool, default: False
//
//	When `True` and the data are distributed such that the 25th and
//	75th percentiles are equal, *whis* is set to (0, 100) such
//	that the whisker ends are at the minimum and maximum of the data.
//
// meanline : bool, default: False
//
//	If `True` (and *showmeans* is `True`), will try to render the
//	mean as a line spanning the full width of the box according to
//	*meanprops* (see below).  Not recommended if *shownotches* is also
//	True.  Otherwise, means will be shown as points.
//
// zorder : float, default: “Line2D.zorder = 2“
//
//	The zorder of the boxplot.
//
// Returns
// -------
// dict
//
//	A dictionary mapping each component of the boxplot to a list
//	of the `.Line2D` instances created. That dictionary has the
//	following keys (assuming vertical boxplots):
//
//	- ``boxes``: the main body of the boxplot showing the
//	  quartiles and the median's confidence intervals if
//	  enabled.
//
//	- ``medians``: horizontal lines at the median of each box.
//
//	- ``whiskers``: the vertical lines extending to the most
//	  extreme, non-outlier data points.
//
//	- ``caps``: the horizontal lines at the ends of the
//	  whiskers.
//
//	- ``fliers``: points representing data that extend beyond
//	  the whiskers (fliers).
//
//	- ``means``: points or lines representing the means.
//
// Other Parameters
// ----------------
// showcaps : bool, default: True
//
//	Show the caps on the ends of whiskers.
//
// showbox : bool, default: True
//
//	Show the central box.
//
// showfliers : bool, default: True
//
//	Show the outliers beyond the caps.
//
// showmeans : bool, default: False
//
//	Show the arithmetic means.
//
// capprops : dict, default: None
//
//	The style of the caps.
//
// capwidths : float or array, default: None
//
//	The widths of the caps.
//
// boxprops : dict, default: None
//
//	The style of the box.
//
// whiskerprops : dict, default: None
//
//	The style of the whiskers.
//
// flierprops : dict, default: None
//
//	The style of the fliers.
//
// medianprops : dict, default: None
//
//	The style of the median.
//
// meanprops : dict, default: None
//
//	The style of the mean.
//
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// See Also
// --------
// violinplot : Draw an estimate of the probability density function.
//
//go:linkname Boxplot py.boxplot
func Boxplot(x *py.Object, notch *py.Object, sym *py.Object, vert *py.Object, whis *py.Object, positions *py.Object, widths *py.Object, patchArtist *py.Object, bootstrap *py.Object, usermedians *py.Object, confIntervals *py.Object, meanline *py.Object, showmeans *py.Object, showcaps *py.Object, showbox *py.Object, showfliers *py.Object, boxprops *py.Object, labels *py.Object, flierprops *py.Object, medianprops *py.Object, meanprops *py.Object, capprops *py.Object, whiskerprops *py.Object, manageTicks *py.Object, autorange *py.Object, zorder *py.Object, capwidths *py.Object) *py.Object

// Plot a horizontal sequence of rectangles.
//
// A rectangle is drawn for each element of *xranges*. All rectangles
// have the same vertical position and size defined by *yrange*.
//
// Parameters
// ----------
// xranges : sequence of tuples (*xmin*, *xwidth*)
//
//	The x-positions and extents of the rectangles. For each tuple
//	(*xmin*, *xwidth*) a rectangle is drawn from *xmin* to *xmin* +
//	*xwidth*.
//
// yrange : (*ymin*, *yheight*)
//
//	The y-position and extent for all the rectangles.
//
// Returns
// -------
// `~.collections.PolyCollection`
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs : `.PolyCollection` properties
//
//	Each *kwarg* can be either a single argument applying to all
//	rectangles, e.g.::
//
//	    facecolors='black'
//
//	or a sequence of arguments over which is cycled, e.g.::
//
//	    facecolors=('black', 'blue')
//
//	would create interleaving black and blue rectangles.
//
//	Supported keywords:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: array-like or scalar or None
//	animated: bool
//	antialiased or aa or antialiaseds: bool or list of bools
//	array: array-like or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clim: (vmin: float, vmax: float)
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	cmap: `.Colormap` or str or None
//	color: color or list of RGBA tuples
//	edgecolor or ec or edgecolors: color or list of colors or 'face'
//	facecolor or facecolors or fc: color or list of colors
//	figure: `~matplotlib.figure.Figure`
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or dashes or linestyles or ls: str or tuple or list thereof
//	linewidth or linewidths or lw: float or list of floats
//	mouseover: bool
//	norm: `.Normalize` or str or None
//	offset_transform or transOffset: `.Transform`
//	offsets: (N, 2) or (2,) array-like
//	path_effects: list of `.AbstractPathEffect`
//	paths: list of array-like
//	picker: None or bool or float or callable
//	pickradius: float
//	rasterized: bool
//	sizes: `numpy.ndarray` or None
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	urls: list of str or None
//	verts: list of array-like
//	verts_and_codes: unknown
//	visible: bool
//	zorder: float
//
//go:linkname BrokenBarh py.broken_barh
func BrokenBarh(xranges *py.Object, yrange *py.Object) *py.Object

// Label a contour plot.
//
// Adds labels to line contours in given `.ContourSet`.
//
// Parameters
// ----------
// CS : `.ContourSet` instance
//
//	Line contours to label.
//
// levels : array-like, optional
//
//	A list of level values, that should be labeled. The list must be
//	a subset of ``CS.levels``. If not given, all levels are labeled.
//
// **kwargs
//
//	All other parameters are documented in `~.ContourLabeler.clabel`.
//
//go:linkname Clabel py.clabel
func Clabel(CS *py.Object, levels *py.Object) *py.Object

// Plot the coherence between *x* and *y*.
//
// Coherence is the normalized cross spectral density:
//
// .. math::
//
//	C_{xy} = \frac{|P_{xy}|^2}{P_{xx}P_{yy}}
//
// Parameters
// ----------
// Fs : float, default: 2
//
//	The sampling frequency (samples per time unit).  It is used to calculate
//	the Fourier frequencies, *freqs*, in cycles per time unit.
//
// window : callable or ndarray, default: `.window_hanning`
//
//	A function or a vector of length *NFFT*.  To create window vectors see
//	`.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
//	`numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
//	function is passed as the argument, it must take a data segment as an
//	argument and return the windowed version of the segment.
//
// sides : {'default', 'onesided', 'twosided'}, optional
//
//	Which sides of the spectrum to return. 'default' is one-sided for real
//	data and two-sided for complex data. 'onesided' forces the return of a
//	one-sided spectrum, while 'twosided' forces two-sided.
//
// pad_to : int, optional
//
//	The number of points to which the data segment is padded when performing
//	the FFT.  This can be different from *NFFT*, which specifies the number
//	of data points used.  While not increasing the actual resolution of the
//	spectrum (the minimum distance between resolvable peaks), this can give
//	more points in the plot, allowing for more detail. This corresponds to
//	the *n* parameter in the call to `~numpy.fft.fft`. The default is None,
//	which sets *pad_to* equal to *NFFT*
//
// NFFT : int, default: 256
//
//	The number of data points used in each block for the FFT.  A power 2 is
//	most efficient.  This should *NOT* be used to get zero padding, or the
//	scaling of the result will be incorrect; use *pad_to* for this instead.
//
// detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
//
//	The function applied to each segment before fft-ing, designed to remove
//	the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
//	is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
//	module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
//	but you can use a custom function as well.  You can also use a string to
//	choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
//	`.detrend_mean`. 'linear' calls `.detrend_linear`.
//
// scale_by_freq : bool, default: True
//
//	Whether the resulting density values should be scaled by the scaling
//	frequency, which gives density in units of 1/Hz.  This allows for
//	integration over the returned frequency values.  The default is True for
//	MATLAB compatibility.
//
// noverlap : int, default: 0 (no overlap)
//
//	The number of points of overlap between blocks.
//
// Fc : int, default: 0
//
//	The center frequency of *x*, which offsets the x extents of the
//	plot to reflect the frequency range used when a signal is acquired
//	and then filtered and downsampled to baseband.
//
// Returns
// -------
// Cxy : 1-D array
//
//	The coherence vector.
//
// freqs : 1-D array
//
//	The frequencies for the elements in *Cxy*.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y*
//
// **kwargs
//
//	Keyword arguments control the `.Line2D` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// References
// ----------
// Bendat & Piersol -- Random Data: Analysis and Measurement Procedures,
// John Wiley & Sons (1986)
//
//go:linkname Cohere py.cohere
func Cohere(x *py.Object, y *py.Object, NFFT *py.Object, Fs *py.Object, Fc *py.Object, detrend *py.Object, window *py.Object, noverlap *py.Object, padTo *py.Object, sides *py.Object, scaleByFreq *py.Object) *py.Object

// Plot contour lines.
//
// Call signature::
//
//	contour([X, Y,] Z, [levels], **kwargs)
//
// `.contour` and `.contourf` draw contour lines and filled contours,
// respectively.  Except as noted, function signatures and return values
// are the same for both versions.
//
// Parameters
// ----------
// X, Y : array-like, optional
//
//	The coordinates of the values in *Z*.
//
//	*X* and *Y* must both be 2D with the same shape as *Z* (e.g.
//	created via `numpy.meshgrid`), or they must both be 1-D such
//	that ``len(X) == N`` is the number of columns in *Z* and
//	``len(Y) == M`` is the number of rows in *Z*.
//
//	*X* and *Y* must both be ordered monotonically.
//
//	If not given, they are assumed to be integer indices, i.e.
//	``X = range(N)``, ``Y = range(M)``.
//
// Z : (M, N) array-like
//
//	The height values over which the contour is drawn.  Color-mapping is
//	controlled by *cmap*, *norm*, *vmin*, and *vmax*.
//
// levels : int or array-like, optional
//
//	Determines the number and positions of the contour lines / regions.
//
//	If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries
//	to automatically choose no more than *n+1* "nice" contour levels
//	between minimum and maximum numeric values of *Z*.
//
//	If array-like, draw contour lines at the specified levels.
//	The values must be in increasing order.
//
// Returns
// -------
// `~.contour.QuadContourSet`
//
// Other Parameters
// ----------------
// corner_mask : bool, default: :rc:`contour.corner_mask`
//
//	Enable/disable corner masking, which only has an effect if *Z* is
//	a masked array.  If ``False``, any quad touching a masked point is
//	masked out.  If ``True``, only the triangular corners of quads
//	nearest those points are always masked out, other triangular
//	corners comprising three unmasked points are contoured as usual.
//
// colors : color string or sequence of colors, optional
//
//	The colors of the levels, i.e. the lines for `.contour` and the
//	areas for `.contourf`.
//
//	The sequence is cycled for the levels in ascending order. If the
//	sequence is shorter than the number of levels, it's repeated.
//
//	As a shortcut, single color strings may be used in place of
//	one-element lists, i.e. ``'red'`` instead of ``['red']`` to color
//	all levels with the same color. This shortcut does only work for
//	color strings, not for other ways of specifying colors.
//
//	By default (value *None*), the colormap specified by *cmap*
//	will be used.
//
// alpha : float, default: 1
//
//	The alpha blending value, between 0 (transparent) and 1 (opaque).
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
//	This parameter is ignored if *colors* is set.
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
//	This parameter is ignored if *colors* is set.
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
//	If *vmin* or *vmax* are not given, the default color scaling is based on
//	*levels*.
//
//	This parameter is ignored if *colors* is set.
//
// origin : {*None*, 'upper', 'lower', 'image'}, default: None
//
//	Determines the orientation and exact position of *Z* by specifying
//	the position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y*
//	are not given.
//
//	- *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
//	- 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
//	- 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left
//	  corner.
//	- 'image': Use the value from :rc:`image.origin`.
//
// extent : (x0, x1, y0, y1), optional
//
//	If *origin* is not *None*, then *extent* is interpreted as in
//	`.imshow`: it gives the outer pixel boundaries. In this case, the
//	position of Z[0, 0] is the center of the pixel, not a corner. If
//	*origin* is *None*, then (*x0*, *y0*) is the position of Z[0, 0],
//	and (*x1*, *y1*) is the position of Z[-1, -1].
//
//	This argument is ignored if *X* and *Y* are specified in the call
//	to contour.
//
// locator : ticker.Locator subclass, optional
//
//	The locator is used to determine the contour levels if they
//	are not given explicitly via *levels*.
//	Defaults to `~.ticker.MaxNLocator`.
//
// extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
//
//	Determines the ``contourf``-coloring of values that are outside the
//	*levels* range.
//
//	If 'neither', values outside the *levels* range are not colored.
//	If 'min', 'max' or 'both', color the values below, above or below
//	and above the *levels* range.
//
//	Values below ``min(levels)`` and above ``max(levels)`` are mapped
//	to the under/over values of the `.Colormap`. Note that most
//	colormaps do not have dedicated colors for these by default, so
//	that the over and under values are the edge values of the colormap.
//	You may want to set these values explicitly using
//	`.Colormap.set_under` and `.Colormap.set_over`.
//
//	.. note::
//
//	    An existing `.QuadContourSet` does not get notified if
//	    properties of its colormap are changed. Therefore, an explicit
//	    call `.QuadContourSet.changed()` is needed after modifying the
//	    colormap. The explicit call can be left out, if a colorbar is
//	    assigned to the `.QuadContourSet` because it internally calls
//	    `.QuadContourSet.changed()`.
//
//	Example::
//
//	    x = np.arange(1, 10)
//	    y = x.reshape(-1, 1)
//	    h = x * y
//
//	    cs = plt.contourf(h, levels=[10, 30, 50],
//	        colors=['#808080', '#A0A0A0', '#C0C0C0'], extend='both')
//	    cs.cmap.set_over('red')
//	    cs.cmap.set_under('blue')
//	    cs.changed()
//
// xunits, yunits : registered units, optional
//
//	Override axis units by specifying an instance of a
//	:class:`matplotlib.units.ConversionInterface`.
//
// antialiased : bool, optional
//
//	Enable antialiasing, overriding the defaults.  For
//	filled contours, the default is *False*.  For line contours,
//	it is taken from :rc:`lines.antialiased`.
//
// nchunk : int >= 0, optional
//
//	If 0, no subdivision of the domain.  Specify a positive integer to
//	divide the domain into subdomains of *nchunk* by *nchunk* quads.
//	Chunking reduces the maximum length of polygons generated by the
//	contouring algorithm which reduces the rendering workload passed
//	on to the backend and also requires slightly less RAM.  It can
//	however introduce rendering artifacts at chunk boundaries depending
//	on the backend, the *antialiased* flag and value of *alpha*.
//
// linewidths : float or array-like, default: :rc:`contour.linewidth`
//
//	*Only applies to* `.contour`.
//
//	The line width of the contour lines.
//
//	If a number, all levels will be plotted with this linewidth.
//
//	If a sequence, the levels in ascending order will be plotted with
//	the linewidths in the order specified.
//
//	If None, this falls back to :rc:`lines.linewidth`.
//
// linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'}, optional
//
//	*Only applies to* `.contour`.
//
//	If *linestyles* is *None*, the default is 'solid' unless the lines are
//	monochrome. In that case, negative contours will instead take their
//	linestyle from the *negative_linestyles* argument.
//
//	*linestyles* can also be an iterable of the above strings specifying a set
//	of linestyles to be used. If this iterable is shorter than the number of
//	contour levels it will be repeated as necessary.
//
// negative_linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'},                        optional
//
//	*Only applies to* `.contour`.
//
//	If *linestyles* is *None* and the lines are monochrome, this argument
//	specifies the line style for negative contours.
//
//	If *negative_linestyles* is *None*, the default is taken from
//	:rc:`contour.negative_linestyles`.
//
//	*negative_linestyles* can also be an iterable of the above strings
//	specifying a set of linestyles to be used. If this iterable is shorter than
//	the number of contour levels it will be repeated as necessary.
//
// hatches : list[str], optional
//
//	*Only applies to* `.contourf`.
//
//	A list of cross hatch patterns to use on the filled areas.
//	If None, no hatching will be added to the contour.
//	Hatching is supported in the PostScript, PDF, SVG and Agg
//	backends only.
//
// algorithm : {'mpl2005', 'mpl2014', 'serial', 'threaded'}, optional
//
//	Which contouring algorithm to use to calculate the contour lines and
//	polygons. The algorithms are implemented in
//	`ContourPy <https://github.com/contourpy/contourpy>`_, consult the
//	`ContourPy documentation <https://contourpy.readthedocs.io>`_ for
//	further information.
//
//	The default is taken from :rc:`contour.algorithm`.
//
// clip_path : `~matplotlib.patches.Patch` or `.Path` or `.TransformedPath`
//
//	Set the clip path.  See `~matplotlib.artist.Artist.set_clip_path`.
//
//	.. versionadded:: 3.8
//
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// Notes
// -----
//
//  1. `.contourf` differs from the MATLAB version in that it does not draw
//     the polygon edges. To draw edges, add line contours with calls to
//     `.contour`.
//
//  2. `.contourf` fills intervals that are closed at the top; that is, for
//     boundaries *z1* and *z2*, the filled region is::
//
//     z1 < Z <= z2
//
//     except for the lowest interval, which is closed on both sides (i.e.
//     it includes the lowest value).
//
//  3. `.contour` and `.contourf` use a `marching squares
//     <https://en.wikipedia.org/wiki/Marching_squares>`_ algorithm to
//     compute contour locations.  More information can be found in
//     `ContourPy documentation <https://contourpy.readthedocs.io>`_.
//
//go:linkname Contour py.contour
func Contour(__llgo_va_list ...interface{}) *py.Object

// Plot filled contours.
//
// Call signature::
//
//	contourf([X, Y,] Z, [levels], **kwargs)
//
// `.contour` and `.contourf` draw contour lines and filled contours,
// respectively.  Except as noted, function signatures and return values
// are the same for both versions.
//
// Parameters
// ----------
// X, Y : array-like, optional
//
//	The coordinates of the values in *Z*.
//
//	*X* and *Y* must both be 2D with the same shape as *Z* (e.g.
//	created via `numpy.meshgrid`), or they must both be 1-D such
//	that ``len(X) == N`` is the number of columns in *Z* and
//	``len(Y) == M`` is the number of rows in *Z*.
//
//	*X* and *Y* must both be ordered monotonically.
//
//	If not given, they are assumed to be integer indices, i.e.
//	``X = range(N)``, ``Y = range(M)``.
//
// Z : (M, N) array-like
//
//	The height values over which the contour is drawn.  Color-mapping is
//	controlled by *cmap*, *norm*, *vmin*, and *vmax*.
//
// levels : int or array-like, optional
//
//	Determines the number and positions of the contour lines / regions.
//
//	If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries
//	to automatically choose no more than *n+1* "nice" contour levels
//	between minimum and maximum numeric values of *Z*.
//
//	If array-like, draw contour lines at the specified levels.
//	The values must be in increasing order.
//
// Returns
// -------
// `~.contour.QuadContourSet`
//
// Other Parameters
// ----------------
// corner_mask : bool, default: :rc:`contour.corner_mask`
//
//	Enable/disable corner masking, which only has an effect if *Z* is
//	a masked array.  If ``False``, any quad touching a masked point is
//	masked out.  If ``True``, only the triangular corners of quads
//	nearest those points are always masked out, other triangular
//	corners comprising three unmasked points are contoured as usual.
//
// colors : color string or sequence of colors, optional
//
//	The colors of the levels, i.e. the lines for `.contour` and the
//	areas for `.contourf`.
//
//	The sequence is cycled for the levels in ascending order. If the
//	sequence is shorter than the number of levels, it's repeated.
//
//	As a shortcut, single color strings may be used in place of
//	one-element lists, i.e. ``'red'`` instead of ``['red']`` to color
//	all levels with the same color. This shortcut does only work for
//	color strings, not for other ways of specifying colors.
//
//	By default (value *None*), the colormap specified by *cmap*
//	will be used.
//
// alpha : float, default: 1
//
//	The alpha blending value, between 0 (transparent) and 1 (opaque).
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
//	This parameter is ignored if *colors* is set.
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
//	This parameter is ignored if *colors* is set.
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
//	If *vmin* or *vmax* are not given, the default color scaling is based on
//	*levels*.
//
//	This parameter is ignored if *colors* is set.
//
// origin : {*None*, 'upper', 'lower', 'image'}, default: None
//
//	Determines the orientation and exact position of *Z* by specifying
//	the position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y*
//	are not given.
//
//	- *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
//	- 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
//	- 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left
//	  corner.
//	- 'image': Use the value from :rc:`image.origin`.
//
// extent : (x0, x1, y0, y1), optional
//
//	If *origin* is not *None*, then *extent* is interpreted as in
//	`.imshow`: it gives the outer pixel boundaries. In this case, the
//	position of Z[0, 0] is the center of the pixel, not a corner. If
//	*origin* is *None*, then (*x0*, *y0*) is the position of Z[0, 0],
//	and (*x1*, *y1*) is the position of Z[-1, -1].
//
//	This argument is ignored if *X* and *Y* are specified in the call
//	to contour.
//
// locator : ticker.Locator subclass, optional
//
//	The locator is used to determine the contour levels if they
//	are not given explicitly via *levels*.
//	Defaults to `~.ticker.MaxNLocator`.
//
// extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
//
//	Determines the ``contourf``-coloring of values that are outside the
//	*levels* range.
//
//	If 'neither', values outside the *levels* range are not colored.
//	If 'min', 'max' or 'both', color the values below, above or below
//	and above the *levels* range.
//
//	Values below ``min(levels)`` and above ``max(levels)`` are mapped
//	to the under/over values of the `.Colormap`. Note that most
//	colormaps do not have dedicated colors for these by default, so
//	that the over and under values are the edge values of the colormap.
//	You may want to set these values explicitly using
//	`.Colormap.set_under` and `.Colormap.set_over`.
//
//	.. note::
//
//	    An existing `.QuadContourSet` does not get notified if
//	    properties of its colormap are changed. Therefore, an explicit
//	    call `.QuadContourSet.changed()` is needed after modifying the
//	    colormap. The explicit call can be left out, if a colorbar is
//	    assigned to the `.QuadContourSet` because it internally calls
//	    `.QuadContourSet.changed()`.
//
//	Example::
//
//	    x = np.arange(1, 10)
//	    y = x.reshape(-1, 1)
//	    h = x * y
//
//	    cs = plt.contourf(h, levels=[10, 30, 50],
//	        colors=['#808080', '#A0A0A0', '#C0C0C0'], extend='both')
//	    cs.cmap.set_over('red')
//	    cs.cmap.set_under('blue')
//	    cs.changed()
//
// xunits, yunits : registered units, optional
//
//	Override axis units by specifying an instance of a
//	:class:`matplotlib.units.ConversionInterface`.
//
// antialiased : bool, optional
//
//	Enable antialiasing, overriding the defaults.  For
//	filled contours, the default is *False*.  For line contours,
//	it is taken from :rc:`lines.antialiased`.
//
// nchunk : int >= 0, optional
//
//	If 0, no subdivision of the domain.  Specify a positive integer to
//	divide the domain into subdomains of *nchunk* by *nchunk* quads.
//	Chunking reduces the maximum length of polygons generated by the
//	contouring algorithm which reduces the rendering workload passed
//	on to the backend and also requires slightly less RAM.  It can
//	however introduce rendering artifacts at chunk boundaries depending
//	on the backend, the *antialiased* flag and value of *alpha*.
//
// linewidths : float or array-like, default: :rc:`contour.linewidth`
//
//	*Only applies to* `.contour`.
//
//	The line width of the contour lines.
//
//	If a number, all levels will be plotted with this linewidth.
//
//	If a sequence, the levels in ascending order will be plotted with
//	the linewidths in the order specified.
//
//	If None, this falls back to :rc:`lines.linewidth`.
//
// linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'}, optional
//
//	*Only applies to* `.contour`.
//
//	If *linestyles* is *None*, the default is 'solid' unless the lines are
//	monochrome. In that case, negative contours will instead take their
//	linestyle from the *negative_linestyles* argument.
//
//	*linestyles* can also be an iterable of the above strings specifying a set
//	of linestyles to be used. If this iterable is shorter than the number of
//	contour levels it will be repeated as necessary.
//
// negative_linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'},                        optional
//
//	*Only applies to* `.contour`.
//
//	If *linestyles* is *None* and the lines are monochrome, this argument
//	specifies the line style for negative contours.
//
//	If *negative_linestyles* is *None*, the default is taken from
//	:rc:`contour.negative_linestyles`.
//
//	*negative_linestyles* can also be an iterable of the above strings
//	specifying a set of linestyles to be used. If this iterable is shorter than
//	the number of contour levels it will be repeated as necessary.
//
// hatches : list[str], optional
//
//	*Only applies to* `.contourf`.
//
//	A list of cross hatch patterns to use on the filled areas.
//	If None, no hatching will be added to the contour.
//	Hatching is supported in the PostScript, PDF, SVG and Agg
//	backends only.
//
// algorithm : {'mpl2005', 'mpl2014', 'serial', 'threaded'}, optional
//
//	Which contouring algorithm to use to calculate the contour lines and
//	polygons. The algorithms are implemented in
//	`ContourPy <https://github.com/contourpy/contourpy>`_, consult the
//	`ContourPy documentation <https://contourpy.readthedocs.io>`_ for
//	further information.
//
//	The default is taken from :rc:`contour.algorithm`.
//
// clip_path : `~matplotlib.patches.Patch` or `.Path` or `.TransformedPath`
//
//	Set the clip path.  See `~matplotlib.artist.Artist.set_clip_path`.
//
//	.. versionadded:: 3.8
//
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// Notes
// -----
//
//  1. `.contourf` differs from the MATLAB version in that it does not draw
//     the polygon edges. To draw edges, add line contours with calls to
//     `.contour`.
//
//  2. `.contourf` fills intervals that are closed at the top; that is, for
//     boundaries *z1* and *z2*, the filled region is::
//
//     z1 < Z <= z2
//
//     except for the lowest interval, which is closed on both sides (i.e.
//     it includes the lowest value).
//
//  3. `.contour` and `.contourf` use a `marching squares
//     <https://en.wikipedia.org/wiki/Marching_squares>`_ algorithm to
//     compute contour locations.  More information can be found in
//     `ContourPy documentation <https://contourpy.readthedocs.io>`_.
//
//go:linkname Contourf py.contourf
func Contourf(__llgo_va_list ...interface{}) *py.Object

// Plot the cross-spectral density.
//
// The cross spectral density :math:`P_{xy}` by Welch's average
// periodogram method.  The vectors *x* and *y* are divided into
// *NFFT* length segments.  Each segment is detrended by function
// *detrend* and windowed by function *window*.  *noverlap* gives
// the length of the overlap between segments.  The product of
// the direct FFTs of *x* and *y* are averaged over each segment
// to compute :math:`P_{xy}`, with a scaling to correct for power
// loss due to windowing.
//
// If len(*x*) < *NFFT* or len(*y*) < *NFFT*, they will be zero
// padded to *NFFT*.
//
// Parameters
// ----------
// x, y : 1-D arrays or sequences
//
//	Arrays or sequences containing the data.
//
// Fs : float, default: 2
//
//	The sampling frequency (samples per time unit).  It is used to calculate
//	the Fourier frequencies, *freqs*, in cycles per time unit.
//
// window : callable or ndarray, default: `.window_hanning`
//
//	A function or a vector of length *NFFT*.  To create window vectors see
//	`.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
//	`numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
//	function is passed as the argument, it must take a data segment as an
//	argument and return the windowed version of the segment.
//
// sides : {'default', 'onesided', 'twosided'}, optional
//
//	Which sides of the spectrum to return. 'default' is one-sided for real
//	data and two-sided for complex data. 'onesided' forces the return of a
//	one-sided spectrum, while 'twosided' forces two-sided.
//
// pad_to : int, optional
//
//	The number of points to which the data segment is padded when performing
//	the FFT.  This can be different from *NFFT*, which specifies the number
//	of data points used.  While not increasing the actual resolution of the
//	spectrum (the minimum distance between resolvable peaks), this can give
//	more points in the plot, allowing for more detail. This corresponds to
//	the *n* parameter in the call to `~numpy.fft.fft`. The default is None,
//	which sets *pad_to* equal to *NFFT*
//
// NFFT : int, default: 256
//
//	The number of data points used in each block for the FFT.  A power 2 is
//	most efficient.  This should *NOT* be used to get zero padding, or the
//	scaling of the result will be incorrect; use *pad_to* for this instead.
//
// detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
//
//	The function applied to each segment before fft-ing, designed to remove
//	the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
//	is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
//	module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
//	but you can use a custom function as well.  You can also use a string to
//	choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
//	`.detrend_mean`. 'linear' calls `.detrend_linear`.
//
// scale_by_freq : bool, default: True
//
//	Whether the resulting density values should be scaled by the scaling
//	frequency, which gives density in units of 1/Hz.  This allows for
//	integration over the returned frequency values.  The default is True for
//	MATLAB compatibility.
//
// noverlap : int, default: 0 (no overlap)
//
//	The number of points of overlap between segments.
//
// Fc : int, default: 0
//
//	The center frequency of *x*, which offsets the x extents of the
//	plot to reflect the frequency range used when a signal is acquired
//	and then filtered and downsampled to baseband.
//
// return_line : bool, default: False
//
//	Whether to include the line object plotted in the returned values.
//
// Returns
// -------
// Pxy : 1-D array
//
//	The values for the cross spectrum :math:`P_{xy}` before scaling
//	(complex valued).
//
// freqs : 1-D array
//
//	The frequencies corresponding to the elements in *Pxy*.
//
// line : `~matplotlib.lines.Line2D`
//
//	The line created by this function.
//	Only returned if *return_line* is True.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y*
//
// **kwargs
//
//	Keyword arguments control the `.Line2D` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// psd : is equivalent to setting “y = x“.
//
// Notes
// -----
// For plotting, the power is plotted as
// :math:`10 \log_{10}(P_{xy})` for decibels, though :math:`P_{xy}` itself
// is returned.
//
// References
// ----------
// Bendat & Piersol -- Random Data: Analysis and Measurement Procedures,
// John Wiley & Sons (1986)
//
//go:linkname Csd py.csd
func Csd(x *py.Object, y *py.Object, NFFT *py.Object, Fs *py.Object, Fc *py.Object, detrend *py.Object, window *py.Object, noverlap *py.Object, padTo *py.Object, sides *py.Object, scaleByFreq *py.Object, returnLine *py.Object) *py.Object

// Compute and plot the empirical cumulative distribution function of *x*.
//
// .. versionadded:: 3.8
//
// Parameters
// ----------
// x : 1d array-like
//
//	The input data.  Infinite entries are kept (and move the relevant
//	end of the ecdf from 0/1), but NaNs and masked values are errors.
//
// weights : 1d array-like or None, default: None
//
//	The weights of the entries; must have the same shape as *x*.
//	Weights corresponding to NaN data points are dropped, and then the
//	remaining weights are normalized to sum to 1.  If unset, all
//	entries have the same weight.
//
// complementary : bool, default: False
//
//	Whether to plot a cumulative distribution function, which increases
//	from 0 to 1 (the default), or a complementary cumulative
//	distribution function, which decreases from 1 to 0.
//
// orientation : {"vertical", "horizontal"}, default: "vertical"
//
//	Whether the entries are plotted along the x-axis ("vertical", the
//	default) or the y-axis ("horizontal").  This parameter takes the
//	same values as in `~.Axes.hist`.
//
// compress : bool, default: False
//
//	Whether multiple entries with the same values are grouped together
//	(with a summed weight) before plotting.  This is mainly useful if
//	*x* contains many identical data points, to decrease the rendering
//	complexity of the plot. If *x* contains no duplicate points, this
//	has no effect and just uses some time and memory.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *weights*
//
// **kwargs
//
//	Keyword arguments control the `.Line2D` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// Returns
// -------
// `.Line2D`
//
// Notes
// -----
// The ecdf plot can be thought of as a cumulative histogram with one bin
// per data entry; i.e. it reports on the entire dataset without any
// arbitrary binning.
//
// If *x* contains NaNs or masked entries, either remove them first from
// the array (if they should not taken into account), or replace them by
// -inf or +inf (if they should be sorted at the beginning or the end of
// the array).
//
//go:linkname Ecdf py.ecdf
func Ecdf(x *py.Object, weights *py.Object) *py.Object

// Plot y versus x as lines and/or markers with attached errorbars.
//
// *x*, *y* define the data locations, *xerr*, *yerr* define the errorbar
// sizes. By default, this draws the data markers/lines as well as the
// errorbars. Use fmt='none' to draw errorbars without any data markers.
//
// .. versionadded:: 3.7
//
//	Caps and error lines are drawn in polar coordinates on polar plots.
//
// Parameters
// ----------
// x, y : float or array-like
//
//	The data positions.
//
// xerr, yerr : float or array-like, shape(N,) or shape(2, N), optional
//
//	The errorbar sizes:
//
//	- scalar: Symmetric +/- values for all data points.
//	- shape(N,): Symmetric +/-values for each data point.
//	- shape(2, N): Separate - and + values for each bar. First row
//	  contains the lower errors, the second row contains the upper
//	  errors.
//	- *None*: No errorbar.
//
//	All values must be >= 0.
//
//	See :doc:`/gallery/statistics/errorbar_features`
//	for an example on the usage of ``xerr`` and ``yerr``.
//
// fmt : str, default: ”
//
//	The format for the data points / data lines. See `.plot` for
//	details.
//
//	Use 'none' (case-insensitive) to plot errorbars without any data
//	markers.
//
// ecolor : color, default: None
//
//	The color of the errorbar lines.  If None, use the color of the
//	line connecting the markers.
//
// elinewidth : float, default: None
//
//	The linewidth of the errorbar lines. If None, the linewidth of
//	the current style is used.
//
// capsize : float, default: :rc:`errorbar.capsize`
//
//	The length of the error bar caps in points.
//
// capthick : float, default: None
//
//	An alias to the keyword argument *markeredgewidth* (a.k.a. *mew*).
//	This setting is a more sensible name for the property that
//	controls the thickness of the error bar cap in points. For
//	backwards compatibility, if *mew* or *markeredgewidth* are given,
//	then they will over-ride *capthick*. This may change in future
//	releases.
//
// barsabove : bool, default: False
//
//	If True, will plot the errorbars above the plot
//	symbols. Default is below.
//
// lolims, uplims, xlolims, xuplims : bool or array-like, default: False
//
//	These arguments can be used to indicate that a value gives only
//	upper/lower limits.  In that case a caret symbol is used to
//	indicate this. *lims*-arguments may be scalars, or array-likes of
//	the same length as *xerr* and *yerr*.  To use limits with inverted
//	axes, `~.Axes.set_xlim` or `~.Axes.set_ylim` must be called before
//	:meth:`errorbar`.  Note the tricky parameter names: setting e.g.
//	*lolims* to True means that the y-value is a *lower* limit of the
//	True value, so, only an *upward*-pointing arrow will be drawn!
//
// errorevery : int or (int, int), default: 1
//
//	draws error bars on a subset of the data. *errorevery* =N draws
//	error bars on the points (x[::N], y[::N]).
//	*errorevery* =(start, N) draws error bars on the points
//	(x[start::N], y[start::N]). e.g. errorevery=(6, 3)
//	adds error bars to the data at (x[6], x[9], x[12], x[15], ...).
//	Used to avoid overlapping error bars when two series share x-axis
//	values.
//
// Returns
// -------
// `.ErrorbarContainer`
//
//	The container contains:
//
//	- plotline: `~matplotlib.lines.Line2D` instance of x, y plot markers
//	  and/or line.
//	- caplines: A tuple of `~matplotlib.lines.Line2D` instances of the error
//	  bar caps.
//	- barlinecols: A tuple of `.LineCollection` with the horizontal and
//	  vertical error ranges.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y*, *xerr*, *yerr*
//
// **kwargs
//
//	All other keyword arguments are passed on to the `~.Axes.plot` call
//	drawing the markers. For example, this code makes big red squares
//	with thick green edges::
//
//	    x, y, yerr = rand(3, 10)
//	    errorbar(x, y, yerr, marker='s', mfc='red',
//	             mec='green', ms=20, mew=4)
//
//	where *mfc*, *mec*, *ms* and *mew* are aliases for the longer
//	property names, *markerfacecolor*, *markeredgecolor*, *markersize*
//	and *markeredgewidth*.
//
//	Valid kwargs for the marker properties are:
//
//	- *dashes*
//	- *dash_capstyle*
//	- *dash_joinstyle*
//	- *drawstyle*
//	- *fillstyle*
//	- *linestyle*
//	- *marker*
//	- *markeredgecolor*
//	- *markeredgewidth*
//	- *markerfacecolor*
//	- *markerfacecoloralt*
//	- *markersize*
//	- *markevery*
//	- *solid_capstyle*
//	- *solid_joinstyle*
//
//	Refer to the corresponding `.Line2D` property for more details:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
//go:linkname Errorbar py.errorbar
func Errorbar(x *py.Object, y *py.Object, yerr *py.Object, xerr *py.Object, fmt *py.Object, ecolor *py.Object, elinewidth *py.Object, capsize *py.Object, barsabove *py.Object, lolims *py.Object, uplims *py.Object, xlolims *py.Object, xuplims *py.Object, errorevery *py.Object, capthick *py.Object) *py.Object

// Plot identical parallel lines at the given positions.
//
// This type of plot is commonly used in neuroscience for representing
// neural events, where it is usually called a spike raster, dot raster,
// or raster plot.
//
// However, it is useful in any situation where you wish to show the
// timing or position of multiple sets of discrete events, such as the
// arrival times of people to a business on each day of the month or the
// date of hurricanes each year of the last century.
//
// Parameters
// ----------
// positions : array-like or list of array-like
//
//	A 1D array-like defines the positions of one sequence of events.
//
//	Multiple groups of events may be passed as a list of array-likes.
//	Each group can be styled independently by passing lists of values
//	to *lineoffsets*, *linelengths*, *linewidths*, *colors* and
//	*linestyles*.
//
//	Note that *positions* can be a 2D array, but in practice different
//	event groups usually have different counts so that one will use a
//	list of different-length arrays rather than a 2D array.
//
// orientation : {'horizontal', 'vertical'}, default: 'horizontal'
//
//	The direction of the event sequence:
//
//	- 'horizontal': the events are arranged horizontally.
//	  The indicator lines are vertical.
//	- 'vertical': the events are arranged vertically.
//	  The indicator lines are horizontal.
//
// lineoffsets : float or array-like, default: 1
//
//	The offset of the center of the lines from the origin, in the
//	direction orthogonal to *orientation*.
//
//	If *positions* is 2D, this can be a sequence with length matching
//	the length of *positions*.
//
// linelengths : float or array-like, default: 1
//
//	The total height of the lines (i.e. the lines stretches from
//	``lineoffset - linelength/2`` to ``lineoffset + linelength/2``).
//
//	If *positions* is 2D, this can be a sequence with length matching
//	the length of *positions*.
//
// linewidths : float or array-like, default: :rc:`lines.linewidth`
//
//	The line width(s) of the event lines, in points.
//
//	If *positions* is 2D, this can be a sequence with length matching
//	the length of *positions*.
//
// colors : color or list of colors, default: :rc:`lines.color`
//
//	The color(s) of the event lines.
//
//	If *positions* is 2D, this can be a sequence with length matching
//	the length of *positions*.
//
// alpha : float or array-like, default: 1
//
//	The alpha blending value(s), between 0 (transparent) and 1
//	(opaque).
//
//	If *positions* is 2D, this can be a sequence with length matching
//	the length of *positions*.
//
// linestyles : str or tuple or list of such values, default: 'solid'
//
//	Default is 'solid'. Valid strings are ['solid', 'dashed',
//	'dashdot', 'dotted', '-', '--', '-.', ':']. Dash tuples
//	should be of the form::
//
//	    (offset, onoffseq),
//
//	where *onoffseq* is an even length tuple of on and off ink
//	in points.
//
//	If *positions* is 2D, this can be a sequence with length matching
//	the length of *positions*.
//
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*positions*, *lineoffsets*, *linelengths*, *linewidths*, *colors*, *linestyles*
//
// **kwargs
//
//	Other keyword arguments are line collection properties.  See
//	`.LineCollection` for a list of the valid properties.
//
// Returns
// -------
// list of `.EventCollection`
//
//	The `.EventCollection` that were added.
//
// Notes
// -----
// For *linelengths*, *linewidths*, *colors*, *alpha* and *linestyles*, if
// only a single value is given, that value is applied to all lines. If an
// array-like is given, it must have the same length as *positions*, and
// each value will be applied to the corresponding row of the array.
//
// Examples
// --------
// .. plot:: gallery/lines_bars_and_markers/eventplot_demo.py
//
//go:linkname Eventplot py.eventplot
func Eventplot(positions *py.Object, orientation *py.Object, lineoffsets *py.Object, linelengths *py.Object, linewidths *py.Object, colors *py.Object, alpha *py.Object, linestyles *py.Object) *py.Object

// Plot filled polygons.
//
// Parameters
// ----------
// *args : sequence of x, y, [color]
//
//	Each polygon is defined by the lists of *x* and *y* positions of
//	its nodes, optionally followed by a *color* specifier. See
//	:mod:`matplotlib.colors` for supported color specifiers. The
//	standard color cycle is used for polygons without a color
//	specifier.
//
//	You can plot multiple polygons by providing multiple *x*, *y*,
//	*[color]* groups.
//
//	For example, each of the following is legal::
//
//	    ax.fill(x, y)                    # a polygon with default color
//	    ax.fill(x, y, "b")               # a blue polygon
//	    ax.fill(x, y, x2, y2)            # two polygons
//	    ax.fill(x, y, "b", x2, y2, "r")  # a blue and a red polygon
//
// data : indexable object, optional
//
//	An object with labelled data. If given, provide the label names to
//	plot in *x* and *y*, e.g.::
//
//	    ax.fill("time", "signal",
//	            data={"time": [0, 1, 2], "signal": [0, 1, 0]})
//
// Returns
// -------
// list of `~matplotlib.patches.Polygon`
//
// Other Parameters
// ----------------
// **kwargs : `~matplotlib.patches.Polygon` properties
//
// Notes
// -----
// Use :meth:`fill_between` if you would like to fill the region between
// two curves.
//
//go:linkname Fill py.fill
func Fill(__llgo_va_list ...interface{}) *py.Object

// Fill the area between two horizontal curves.
//
// The curves are defined by the points (*x*, *y1*) and (*x*,
// *y2*).  This creates one or multiple polygons describing the filled
// area.
//
// You may exclude some horizontal sections from filling using *where*.
//
// By default, the edges connect the given points directly.  Use *step*
// if the filling should be a step function, i.e. constant in between
// *x*.
//
// Parameters
// ----------
// x : array (length N)
//
//	The x coordinates of the nodes defining the curves.
//
// y1 : array (length N) or scalar
//
//	The y coordinates of the nodes defining the first curve.
//
// y2 : array (length N) or scalar, default: 0
//
//	The y coordinates of the nodes defining the second curve.
//
// where : array of bool (length N), optional
//
//	Define *where* to exclude some horizontal regions from being filled.
//	The filled regions are defined by the coordinates ``x[where]``.
//	More precisely, fill between ``x[i]`` and ``x[i+1]`` if
//	``where[i] and where[i+1]``.  Note that this definition implies
//	that an isolated *True* value between two *False* values in *where*
//	will not result in filling.  Both sides of the *True* position
//	remain unfilled due to the adjacent *False* values.
//
// interpolate : bool, default: False
//
//	This option is only relevant if *where* is used and the two curves
//	are crossing each other.
//
//	Semantically, *where* is often used for *y1* > *y2* or
//	similar.  By default, the nodes of the polygon defining the filled
//	region will only be placed at the positions in the *x* array.
//	Such a polygon cannot describe the above semantics close to the
//	intersection.  The x-sections containing the intersection are
//	simply clipped.
//
//	Setting *interpolate* to *True* will calculate the actual
//	intersection point and extend the filled region up to this point.
//
// step : {'pre', 'post', 'mid'}, optional
//
//	Define *step* if the filling should be a step function,
//	i.e. constant in between *x*.  The value determines where the
//	step will occur:
//
//	- 'pre': The y value is continued constantly to the left from
//	  every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
//	  value ``y[i]``.
//	- 'post': The y value is continued constantly to the right from
//	  every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
//	  value ``y[i]``.
//	- 'mid': Steps occur half-way between the *x* positions.
//
// Returns
// -------
// `.PolyCollection`
//
//	A `.PolyCollection` containing the plotted polygons.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y1*, *y2*, *where*
//
// **kwargs
//
//	All other keyword arguments are passed on to `.PolyCollection`.
//	They control the `.Polygon` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: array-like or scalar or None
//	animated: bool
//	antialiased or aa or antialiaseds: bool or list of bools
//	array: array-like or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clim: (vmin: float, vmax: float)
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	cmap: `.Colormap` or str or None
//	color: color or list of RGBA tuples
//	edgecolor or ec or edgecolors: color or list of colors or 'face'
//	facecolor or facecolors or fc: color or list of colors
//	figure: `~matplotlib.figure.Figure`
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or dashes or linestyles or ls: str or tuple or list thereof
//	linewidth or linewidths or lw: float or list of floats
//	mouseover: bool
//	norm: `.Normalize` or str or None
//	offset_transform or transOffset: `.Transform`
//	offsets: (N, 2) or (2,) array-like
//	path_effects: list of `.AbstractPathEffect`
//	paths: list of array-like
//	picker: None or bool or float or callable
//	pickradius: float
//	rasterized: bool
//	sizes: `numpy.ndarray` or None
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	urls: list of str or None
//	verts: list of array-like
//	verts_and_codes: unknown
//	visible: bool
//	zorder: float
//
// See Also
// --------
// fill_between : Fill between two sets of y-values.
// fill_betweenx : Fill between two sets of x-values.
//
//go:linkname FillBetween py.fill_between
func FillBetween(x *py.Object, y1 *py.Object, y2 *py.Object, where *py.Object, interpolate *py.Object, step *py.Object) *py.Object

// Fill the area between two vertical curves.
//
// The curves are defined by the points (*y*, *x1*) and (*y*,
// *x2*).  This creates one or multiple polygons describing the filled
// area.
//
// You may exclude some vertical sections from filling using *where*.
//
// By default, the edges connect the given points directly.  Use *step*
// if the filling should be a step function, i.e. constant in between
// *y*.
//
// Parameters
// ----------
// y : array (length N)
//
//	The y coordinates of the nodes defining the curves.
//
// x1 : array (length N) or scalar
//
//	The x coordinates of the nodes defining the first curve.
//
// x2 : array (length N) or scalar, default: 0
//
//	The x coordinates of the nodes defining the second curve.
//
// where : array of bool (length N), optional
//
//	Define *where* to exclude some vertical regions from being filled.
//	The filled regions are defined by the coordinates ``y[where]``.
//	More precisely, fill between ``y[i]`` and ``y[i+1]`` if
//	``where[i] and where[i+1]``.  Note that this definition implies
//	that an isolated *True* value between two *False* values in *where*
//	will not result in filling.  Both sides of the *True* position
//	remain unfilled due to the adjacent *False* values.
//
// interpolate : bool, default: False
//
//	This option is only relevant if *where* is used and the two curves
//	are crossing each other.
//
//	Semantically, *where* is often used for *x1* > *x2* or
//	similar.  By default, the nodes of the polygon defining the filled
//	region will only be placed at the positions in the *y* array.
//	Such a polygon cannot describe the above semantics close to the
//	intersection.  The y-sections containing the intersection are
//	simply clipped.
//
//	Setting *interpolate* to *True* will calculate the actual
//	intersection point and extend the filled region up to this point.
//
// step : {'pre', 'post', 'mid'}, optional
//
//	Define *step* if the filling should be a step function,
//	i.e. constant in between *y*.  The value determines where the
//	step will occur:
//
//	- 'pre': The y value is continued constantly to the left from
//	  every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
//	  value ``y[i]``.
//	- 'post': The y value is continued constantly to the right from
//	  every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
//	  value ``y[i]``.
//	- 'mid': Steps occur half-way between the *x* positions.
//
// Returns
// -------
// `.PolyCollection`
//
//	A `.PolyCollection` containing the plotted polygons.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*y*, *x1*, *x2*, *where*
//
// **kwargs
//
//	All other keyword arguments are passed on to `.PolyCollection`.
//	They control the `.Polygon` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: array-like or scalar or None
//	animated: bool
//	antialiased or aa or antialiaseds: bool or list of bools
//	array: array-like or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clim: (vmin: float, vmax: float)
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	cmap: `.Colormap` or str or None
//	color: color or list of RGBA tuples
//	edgecolor or ec or edgecolors: color or list of colors or 'face'
//	facecolor or facecolors or fc: color or list of colors
//	figure: `~matplotlib.figure.Figure`
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or dashes or linestyles or ls: str or tuple or list thereof
//	linewidth or linewidths or lw: float or list of floats
//	mouseover: bool
//	norm: `.Normalize` or str or None
//	offset_transform or transOffset: `.Transform`
//	offsets: (N, 2) or (2,) array-like
//	path_effects: list of `.AbstractPathEffect`
//	paths: list of array-like
//	picker: None or bool or float or callable
//	pickradius: float
//	rasterized: bool
//	sizes: `numpy.ndarray` or None
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	urls: list of str or None
//	verts: list of array-like
//	verts_and_codes: unknown
//	visible: bool
//	zorder: float
//
// See Also
// --------
// fill_between : Fill between two sets of y-values.
// fill_betweenx : Fill between two sets of x-values.
//
//go:linkname FillBetweenx py.fill_betweenx
func FillBetweenx(y *py.Object, x1 *py.Object, x2 *py.Object, where *py.Object, step *py.Object, interpolate *py.Object) *py.Object

// Configure the grid lines.
//
// Parameters
// ----------
// visible : bool or None, optional
//
//	Whether to show the grid lines.  If any *kwargs* are supplied, it
//	is assumed you want the grid on and *visible* will be set to True.
//
//	If *visible* is *None* and there are no *kwargs*, this toggles the
//	visibility of the lines.
//
// which : {'major', 'minor', 'both'}, optional
//
//	The grid lines to apply the changes on.
//
// axis : {'both', 'x', 'y'}, optional
//
//	The axis to apply the changes on.
//
// **kwargs : `~matplotlib.lines.Line2D` properties
//
//	Define the line properties of the grid, e.g.::
//
//	    grid(color='r', linestyle='-', linewidth=2)
//
//	Valid keyword arguments are:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// Notes
// -----
// The axis is drawn as a unit, so the effective zorder for drawing the
// grid is determined by the zorder of each axis, not by the zorder of the
// `.Line2D` objects comprising the grid.  Therefore, to set grid zorder,
// use `.set_axisbelow` or, for more control, call the
// `~.Artist.set_zorder` method of each axis.
//
//go:linkname Grid py.grid
func Grid(visible *py.Object, which *py.Object, axis *py.Object) *py.Object

// Make a 2D hexagonal binning plot of points *x*, *y*.
//
// If *C* is *None*, the value of the hexagon is determined by the number
// of points in the hexagon. Otherwise, *C* specifies values at the
// coordinate (x[i], y[i]). For each hexagon, these values are reduced
// using *reduce_C_function*.
//
// Parameters
// ----------
// x, y : array-like
//
//	The data positions. *x* and *y* must be of the same length.
//
// C : array-like, optional
//
//	If given, these values are accumulated in the bins. Otherwise,
//	every point has a value of 1. Must be of the same length as *x*
//	and *y*.
//
// gridsize : int or (int, int), default: 100
//
//	If a single int, the number of hexagons in the *x*-direction.
//	The number of hexagons in the *y*-direction is chosen such that
//	the hexagons are approximately regular.
//
//	Alternatively, if a tuple (*nx*, *ny*), the number of hexagons
//	in the *x*-direction and the *y*-direction. In the
//	*y*-direction, counting is done along vertically aligned
//	hexagons, not along the zig-zag chains of hexagons; see the
//	following illustration.
//
//	.. plot::
//
//	   import numpy
//	   import matplotlib.pyplot as plt
//
//	   np.random.seed(19680801)
//	   n= 300
//	   x = np.random.standard_normal(n)
//	   y = np.random.standard_normal(n)
//
//	   fig, ax = plt.subplots(figsize=(4, 4))
//	   h = ax.hexbin(x, y, gridsize=(5, 3))
//	   hx, hy = h.get_offsets().T
//	   ax.plot(hx[24::3], hy[24::3], 'ro-')
//	   ax.plot(hx[-3:], hy[-3:], 'ro-')
//	   ax.set_title('gridsize=(5, 3)')
//	   ax.axis('off')
//
//	To get approximately regular hexagons, choose
//	:math:`n_x = \sqrt{3}\,n_y`.
//
// bins : 'log' or int or sequence, default: None
//
//	Discretization of the hexagon values.
//
//	- If *None*, no binning is applied; the color of each hexagon
//	  directly corresponds to its count value.
//	- If 'log', use a logarithmic scale for the colormap.
//	  Internally, :math:`log_{10}(i+1)` is used to determine the
//	  hexagon color. This is equivalent to ``norm=LogNorm()``.
//	- If an integer, divide the counts in the specified number
//	  of bins, and color the hexagons accordingly.
//	- If a sequence of values, the values of the lower bound of
//	  the bins to be used.
//
// xscale : {'linear', 'log'}, default: 'linear'
//
//	Use a linear or log10 scale on the horizontal axis.
//
// yscale : {'linear', 'log'}, default: 'linear'
//
//	Use a linear or log10 scale on the vertical axis.
//
// mincnt : int >= 0, default: *None*
//
//	If not *None*, only display cells with at least *mincnt*
//	number of points in the cell.
//
// marginals : bool, default: *False*
//
//	If marginals is *True*, plot the marginal density as
//	colormapped rectangles along the bottom of the x-axis and
//	left of the y-axis.
//
// extent : 4-tuple of float, default: *None*
//
//	The limits of the bins (xmin, xmax, ymin, ymax).
//	The default assigns the limits based on
//	*gridsize*, *x*, *y*, *xscale* and *yscale*.
//
//	If *xscale* or *yscale* is set to 'log', the limits are
//	expected to be the exponent for a power of 10. E.g. for
//	x-limits of 1 and 50 in 'linear' scale and y-limits
//	of 10 and 1000 in 'log' scale, enter (1, 50, 1, 3).
//
// Returns
// -------
// `~matplotlib.collections.PolyCollection`
//
//	A `.PolyCollection` defining the hexagonal bins.
//
//	- `.PolyCollection.get_offsets` contains a Mx2 array containing
//	  the x, y positions of the M hexagon centers.
//	- `.PolyCollection.get_array` contains the values of the M
//	  hexagons.
//
//	If *marginals* is *True*, horizontal
//	bar and vertical bar (both PolyCollections) will be attached
//	to the return collection as attributes *hbar* and *vbar*.
//
// Other Parameters
// ----------------
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
// alpha : float between 0 and 1, optional
//
//	The alpha blending value, between 0 (transparent) and 1 (opaque).
//
// linewidths : float, default: *None*
//
//	If *None*, defaults to :rc:`patch.linewidth`.
//
// edgecolors : {'face', 'none', *None*} or color, default: 'face'
//
//	The color of the hexagon edges. Possible values are:
//
//	- 'face': Draw the edges in the same color as the fill color.
//	- 'none': No edges are drawn. This can sometimes lead to unsightly
//	  unpainted pixels between the hexagons.
//	- *None*: Draw outlines in the default color.
//	- An explicit color.
//
// reduce_C_function : callable, default: `numpy.mean`
//
//	The function to aggregate *C* within the bins. It is ignored if
//	*C* is not given. This must have the signature::
//
//	    def reduce_C_function(C: array) -> float
//
//	Commonly used functions are:
//
//	- `numpy.mean`: average of the points
//	- `numpy.sum`: integral of the point values
//	- `numpy.amax`: value taken from the largest point
//
//	By default will only reduce cells with at least 1 point because some
//	reduction functions (such as `numpy.amax`) will error/warn with empty
//	input. Changing *mincnt* will adjust the cutoff, and if set to 0 will
//	pass empty input to the reduction function.
//
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y*, *C*
//
// **kwargs : `~matplotlib.collections.PolyCollection` properties
//
//	All other keyword arguments are passed on to `.PolyCollection`:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: array-like or scalar or None
//	animated: bool
//	antialiased or aa or antialiaseds: bool or list of bools
//	array: array-like or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clim: (vmin: float, vmax: float)
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	cmap: `.Colormap` or str or None
//	color: color or list of RGBA tuples
//	edgecolor or ec or edgecolors: color or list of colors or 'face'
//	facecolor or facecolors or fc: color or list of colors
//	figure: `~matplotlib.figure.Figure`
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or dashes or linestyles or ls: str or tuple or list thereof
//	linewidth or linewidths or lw: float or list of floats
//	mouseover: bool
//	norm: `.Normalize` or str or None
//	offset_transform or transOffset: `.Transform`
//	offsets: (N, 2) or (2,) array-like
//	path_effects: list of `.AbstractPathEffect`
//	paths: list of array-like
//	picker: None or bool or float or callable
//	pickradius: float
//	rasterized: bool
//	sizes: `numpy.ndarray` or None
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	urls: list of str or None
//	verts: list of array-like
//	verts_and_codes: unknown
//	visible: bool
//	zorder: float
//
// See Also
// --------
// hist2d : 2D histogram rectangular bins
//
//go:linkname Hexbin py.hexbin
func Hexbin(x *py.Object, y *py.Object, C *py.Object, gridsize *py.Object, bins *py.Object, xscale *py.Object, yscale *py.Object, extent *py.Object, cmap *py.Object, norm *py.Object, vmin *py.Object, vmax *py.Object, alpha *py.Object, linewidths *py.Object, edgecolors *py.Object, reduceCFunction *py.Object, mincnt *py.Object, marginals *py.Object) *py.Object

// Compute and plot a histogram.
//
// This method uses `numpy.histogram` to bin the data in *x* and count the
// number of values in each bin, then draws the distribution either as a
// `.BarContainer` or `.Polygon`. The *bins*, *range*, *density*, and
// *weights* parameters are forwarded to `numpy.histogram`.
//
// If the data has already been binned and counted, use `~.bar` or
// `~.stairs` to plot the distribution::
//
//	counts, bins = np.histogram(x)
//	plt.stairs(counts, bins)
//
// Alternatively, plot pre-computed bins and counts using “hist()“ by
// treating each bin as a single point with a weight equal to its count::
//
//	plt.hist(bins[:-1], bins, weights=counts)
//
// The data input *x* can be a singular array, a list of datasets of
// potentially different lengths ([*x0*, *x1*, ...]), or a 2D ndarray in
// which each column is a dataset. Note that the ndarray form is
// transposed relative to the list form. If the input is an array, then
// the return value is a tuple (*n*, *bins*, *patches*); if the input is a
// sequence of arrays, then the return value is a tuple
// ([*n0*, *n1*, ...], *bins*, [*patches0*, *patches1*, ...]).
//
// Masked arrays are not supported.
//
// Parameters
// ----------
// x : (n,) array or sequence of (n,) arrays
//
//	Input values, this takes either a single array or a sequence of
//	arrays which are not required to be of the same length.
//
// bins : int or sequence or str, default: :rc:`hist.bins`
//
//	If *bins* is an integer, it defines the number of equal-width bins
//	in the range.
//
//	If *bins* is a sequence, it defines the bin edges, including the
//	left edge of the first bin and the right edge of the last bin;
//	in this case, bins may be unequally spaced.  All but the last
//	(righthand-most) bin is half-open.  In other words, if *bins* is::
//
//	    [1, 2, 3, 4]
//
//	then the first bin is ``[1, 2)`` (including 1, but excluding 2) and
//	the second ``[2, 3)``.  The last bin, however, is ``[3, 4]``, which
//	*includes* 4.
//
//	If *bins* is a string, it is one of the binning strategies
//	supported by `numpy.histogram_bin_edges`: 'auto', 'fd', 'doane',
//	'scott', 'stone', 'rice', 'sturges', or 'sqrt'.
//
// range : tuple or None, default: None
//
//	The lower and upper range of the bins. Lower and upper outliers
//	are ignored. If not provided, *range* is ``(x.min(), x.max())``.
//	Range has no effect if *bins* is a sequence.
//
//	If *bins* is a sequence or *range* is specified, autoscaling
//	is based on the specified bin range instead of the
//	range of x.
//
// density : bool, default: False
//
//	If ``True``, draw and return a probability density: each bin
//	will display the bin's raw count divided by the total number of
//	counts *and the bin width*
//	(``density = counts / (sum(counts) * np.diff(bins))``),
//	so that the area under the histogram integrates to 1
//	(``np.sum(density * np.diff(bins)) == 1``).
//
//	If *stacked* is also ``True``, the sum of the histograms is
//	normalized to 1.
//
// weights : (n,) array-like or None, default: None
//
//	An array of weights, of the same shape as *x*.  Each value in
//	*x* only contributes its associated weight towards the bin count
//	(instead of 1).  If *density* is ``True``, the weights are
//	normalized, so that the integral of the density over the range
//	remains 1.
//
// cumulative : bool or -1, default: False
//
//	If ``True``, then a histogram is computed where each bin gives the
//	counts in that bin plus all bins for smaller values. The last bin
//	gives the total number of datapoints.
//
//	If *density* is also ``True`` then the histogram is normalized such
//	that the last bin equals 1.
//
//	If *cumulative* is a number less than 0 (e.g., -1), the direction
//	of accumulation is reversed.  In this case, if *density* is also
//	``True``, then the histogram is normalized such that the first bin
//	equals 1.
//
// bottom : array-like, scalar, or None, default: None
//
//	Location of the bottom of each bin, i.e. bins are drawn from
//	``bottom`` to ``bottom + hist(x, bins)`` If a scalar, the bottom
//	of each bin is shifted by the same amount. If an array, each bin
//	is shifted independently and the length of bottom must match the
//	number of bins. If None, defaults to 0.
//
// histtype : {'bar', 'barstacked', 'step', 'stepfilled'}, default: 'bar'
//
//	The type of histogram to draw.
//
//	- 'bar' is a traditional bar-type histogram.  If multiple data
//	  are given the bars are arranged side by side.
//	- 'barstacked' is a bar-type histogram where multiple
//	  data are stacked on top of each other.
//	- 'step' generates a lineplot that is by default unfilled.
//	- 'stepfilled' generates a lineplot that is by default filled.
//
// align : {'left', 'mid', 'right'}, default: 'mid'
//
//	The horizontal alignment of the histogram bars.
//
//	- 'left': bars are centered on the left bin edges.
//	- 'mid': bars are centered between the bin edges.
//	- 'right': bars are centered on the right bin edges.
//
// orientation : {'vertical', 'horizontal'}, default: 'vertical'
//
//	If 'horizontal', `~.Axes.barh` will be used for bar-type histograms
//	and the *bottom* kwarg will be the left edges.
//
// rwidth : float or None, default: None
//
//	The relative width of the bars as a fraction of the bin width.  If
//	``None``, automatically compute the width.
//
//	Ignored if *histtype* is 'step' or 'stepfilled'.
//
// log : bool, default: False
//
//	If ``True``, the histogram axis will be set to a log scale.
//
// color : color or array-like of colors or None, default: None
//
//	Color or sequence of colors, one per dataset.  Default (``None``)
//	uses the standard line color sequence.
//
// label : str or None, default: None
//
//	String, or sequence of strings to match multiple datasets.  Bar
//	charts yield multiple patches per dataset, but only the first gets
//	the label, so that `~.Axes.legend` will work as expected.
//
// stacked : bool, default: False
//
//	If ``True``, multiple data are stacked on top of each other If
//	``False`` multiple data are arranged side by side if histtype is
//	'bar' or on top of each other if histtype is 'step'
//
// Returns
// -------
// n : array or list of arrays
//
//	The values of the histogram bins. See *density* and *weights* for a
//	description of the possible semantics.  If input *x* is an array,
//	then this is an array of length *nbins*. If input is a sequence of
//	arrays ``[data1, data2, ...]``, then this is a list of arrays with
//	the values of the histograms for each of the arrays in the same
//	order.  The dtype of the array *n* (or of its element arrays) will
//	always be float even if no weighting or normalization is used.
//
// bins : array
//
//	The edges of the bins. Length nbins + 1 (nbins left edges and right
//	edge of last bin).  Always a single array even when multiple data
//	sets are passed in.
//
// patches : `.BarContainer` or list of a single `.Polygon` or list of such objects
//
//	Container of individual artists used to create the histogram
//	or list of such containers if there are multiple input datasets.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *weights*
//
// **kwargs
//
//	`~matplotlib.patches.Patch` properties
//
// See Also
// --------
// hist2d : 2D histogram with rectangular bins
// hexbin : 2D histogram with hexagonal bins
// stairs : Plot a pre-computed histogram
// bar : Plot a pre-computed histogram
//
// Notes
// -----
// For large numbers of bins (>1000), plotting can be significantly
// accelerated by using `~.Axes.stairs` to plot a pre-computed histogram
// (“plt.stairs(*np.histogram(data))“), or by setting *histtype* to
// 'step' or 'stepfilled' rather than 'bar' or 'barstacked'.
//
//go:linkname Hist py.hist
func Hist(x *py.Object, bins *py.Object, range_ *py.Object, density *py.Object, weights *py.Object, cumulative *py.Object, bottom *py.Object, histtype *py.Object, align *py.Object, orientation *py.Object, rwidth *py.Object, log *py.Object, color *py.Object, label *py.Object, stacked *py.Object) *py.Object

// A stepwise constant function as a line with bounding edges
// or a filled plot.
//
// Parameters
// ----------
// values : array-like
//
//	The step heights.
//
// edges : array-like
//
//	The edge positions, with ``len(edges) == len(vals) + 1``,
//	between which the curve takes on vals values.
//
// orientation : {'vertical', 'horizontal'}, default: 'vertical'
//
//	The direction of the steps. Vertical means that *values* are along
//	the y-axis, and edges are along the x-axis.
//
// baseline : float, array-like or None, default: 0
//
//	The bottom value of the bounding edges or when
//	``fill=True``, position of lower edge. If *fill* is
//	True or an array is passed to *baseline*, a closed
//	path is drawn.
//
// fill : bool, default: False
//
//	Whether the area under the step curve should be filled.
//
// Returns
// -------
// StepPatch : `~matplotlib.patches.StepPatch`
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs
//
//	`~matplotlib.patches.StepPatch` properties
//
//go:linkname Stairs py.stairs
func Stairs(values *py.Object, edges *py.Object) *py.Object

// Make a 2D histogram plot.
//
// Parameters
// ----------
// x, y : array-like, shape (n, )
//
//	Input values
//
// bins : None or int or [int, int] or array-like or [array, array]
//
//	The bin specification:
//
//	- If int, the number of bins for the two dimensions
//	  (``nx = ny = bins``).
//	- If ``[int, int]``, the number of bins in each dimension
//	  (``nx, ny = bins``).
//	- If array-like, the bin edges for the two dimensions
//	  (``x_edges = y_edges = bins``).
//	- If ``[array, array]``, the bin edges in each dimension
//	  (``x_edges, y_edges = bins``).
//
//	The default value is 10.
//
// range : array-like shape(2, 2), optional
//
//	The leftmost and rightmost edges of the bins along each dimension
//	(if not specified explicitly in the bins parameters): ``[[xmin,
//	xmax], [ymin, ymax]]``. All values outside of this range will be
//	considered outliers and not tallied in the histogram.
//
// density : bool, default: False
//
//	Normalize histogram.  See the documentation for the *density*
//	parameter of `~.Axes.hist` for more details.
//
// weights : array-like, shape (n, ), optional
//
//	An array of values w_i weighing each sample (x_i, y_i).
//
// cmin, cmax : float, default: None
//
//	All bins that has count less than *cmin* or more than *cmax* will not be
//	displayed (set to NaN before passing to `~.Axes.pcolormesh`) and these count
//	values in the return value count histogram will also be set to nan upon
//	return.
//
// Returns
// -------
// h : 2D array
//
//	The bi-dimensional histogram of samples x and y. Values in x are
//	histogrammed along the first dimension and values in y are
//	histogrammed along the second dimension.
//
// xedges : 1D array
//
//	The bin edges along the x-axis.
//
// yedges : 1D array
//
//	The bin edges along the y-axis.
//
// image : `~.matplotlib.collections.QuadMesh`
//
// Other Parameters
// ----------------
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
// alpha : “0 <= scalar <= 1“ or “None“, optional
//
//	The alpha blending value.
//
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y*, *weights*
//
// **kwargs
//
//	Additional parameters are passed along to the
//	`~.Axes.pcolormesh` method and `~matplotlib.collections.QuadMesh`
//	constructor.
//
// See Also
// --------
// hist : 1D histogram plotting
// hexbin : 2D histogram with hexagonal bins
//
// Notes
// -----
//   - Currently “hist2d“ calculates its own axis limits, and any limits
//     previously set are ignored.
//   - Rendering the histogram with a logarithmic color scale is
//     accomplished by passing a `.colors.LogNorm` instance to the *norm*
//     keyword argument. Likewise, power-law normalization (similar
//     in effect to gamma correction) can be accomplished with
//     `.colors.PowerNorm`.
//
//go:linkname Hist2d py.hist2d
func Hist2d(x *py.Object, y *py.Object, bins *py.Object, range_ *py.Object, density *py.Object, weights *py.Object, cmin *py.Object, cmax *py.Object) *py.Object

// Plot horizontal lines at each *y* from *xmin* to *xmax*.
//
// Parameters
// ----------
// y : float or array-like
//
//	y-indexes where to plot the lines.
//
// xmin, xmax : float or array-like
//
//	Respective beginning and end of each line. If scalars are
//	provided, all lines will have the same length.
//
// colors : color or list of colors, default: :rc:`lines.color`
//
// linestyles : {'solid', 'dashed', 'dashdot', 'dotted'}, default: 'solid'
//
// label : str, default: ”
//
// Returns
// -------
// `~matplotlib.collections.LineCollection`
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*y*, *xmin*, *xmax*, *colors*
//
// **kwargs :  `~matplotlib.collections.LineCollection` properties.
//
// See Also
// --------
// vlines : vertical lines
// axhline : horizontal line across the Axes
//
//go:linkname Hlines py.hlines
func Hlines(y *py.Object, xmin *py.Object, xmax *py.Object, colors *py.Object, linestyles *py.Object, label *py.Object) *py.Object

// Display data as an image, i.e., on a 2D regular raster.
//
// The input may either be actual RGB(A) data, or 2D scalar data, which
// will be rendered as a pseudocolor image. For displaying a grayscale
// image, set up the colormapping using the parameters
// “cmap='gray', vmin=0, vmax=255“.
//
// The number of pixels used to render an image is set by the Axes size
// and the figure *dpi*. This can lead to aliasing artifacts when
// the image is resampled, because the displayed image size will usually
// not match the size of *X* (see
// :doc:`/gallery/images_contours_and_fields/image_antialiasing`).
// The resampling can be controlled via the *interpolation* parameter
// and/or :rc:`image.interpolation`.
//
// Parameters
// ----------
// X : array-like or PIL image
//
//	The image data. Supported array shapes are:
//
//	- (M, N): an image with scalar data. The values are mapped to
//	  colors using normalization and a colormap. See parameters *norm*,
//	  *cmap*, *vmin*, *vmax*.
//	- (M, N, 3): an image with RGB values (0-1 float or 0-255 int).
//	- (M, N, 4): an image with RGBA values (0-1 float or 0-255 int),
//	  i.e. including transparency.
//
//	The first two dimensions (M, N) define the rows and columns of
//	the image.
//
//	Out-of-range RGB(A) values are clipped.
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
//	This parameter is ignored if *X* is RGB(A).
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
//	This parameter is ignored if *X* is RGB(A).
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
//	This parameter is ignored if *X* is RGB(A).
//
// aspect : {'equal', 'auto'} or float or None, default: None
//
//	The aspect ratio of the Axes.  This parameter is particularly
//	relevant for images since it determines whether data pixels are
//	square.
//
//	This parameter is a shortcut for explicitly calling
//	`.Axes.set_aspect`. See there for further details.
//
//	- 'equal': Ensures an aspect ratio of 1. Pixels will be square
//	  (unless pixel sizes are explicitly made non-square in data
//	  coordinates using *extent*).
//	- 'auto': The Axes is kept fixed and the aspect is adjusted so
//	  that the data fit in the Axes. In general, this will result in
//	  non-square pixels.
//
//	Normally, None (the default) means to use :rc:`image.aspect`.  However, if
//	the image uses a transform that does not contain the axes data transform,
//	then None means to not modify the axes aspect at all (in that case, directly
//	call `.Axes.set_aspect` if desired).
//
// interpolation : str, default: :rc:`image.interpolation`
//
//	The interpolation method used.
//
//	Supported values are 'none', 'antialiased', 'nearest', 'bilinear',
//	'bicubic', 'spline16', 'spline36', 'hanning', 'hamming', 'hermite',
//	'kaiser', 'quadric', 'catrom', 'gaussian', 'bessel', 'mitchell',
//	'sinc', 'lanczos', 'blackman'.
//
//	The data *X* is resampled to the pixel size of the image on the
//	figure canvas, using the interpolation method to either up- or
//	downsample the data.
//
//	If *interpolation* is 'none', then for the ps, pdf, and svg
//	backends no down- or upsampling occurs, and the image data is
//	passed to the backend as a native image.  Note that different ps,
//	pdf, and svg viewers may display these raw pixels differently. On
//	other backends, 'none' is the same as 'nearest'.
//
//	If *interpolation* is the default 'antialiased', then 'nearest'
//	interpolation is used if the image is upsampled by more than a
//	factor of three (i.e. the number of display pixels is at least
//	three times the size of the data array).  If the upsampling rate is
//	smaller than 3, or the image is downsampled, then 'hanning'
//	interpolation is used to act as an anti-aliasing filter, unless the
//	image happens to be upsampled by exactly a factor of two or one.
//
//	See
//	:doc:`/gallery/images_contours_and_fields/interpolation_methods`
//	for an overview of the supported interpolation methods, and
//	:doc:`/gallery/images_contours_and_fields/image_antialiasing` for
//	a discussion of image antialiasing.
//
//	Some interpolation methods require an additional radius parameter,
//	which can be set by *filterrad*. Additionally, the antigrain image
//	resize filter is controlled by the parameter *filternorm*.
//
// interpolation_stage : {'data', 'rgba'}, default: 'data'
//
//	If 'data', interpolation
//	is carried out on the data provided by the user.  If 'rgba', the
//	interpolation is carried out after the colormapping has been
//	applied (visual interpolation).
//
// alpha : float or array-like, optional
//
//	The alpha blending value, between 0 (transparent) and 1 (opaque).
//	If *alpha* is an array, the alpha blending values are applied pixel
//	by pixel, and *alpha* must have the same shape as *X*.
//
// origin : {'upper', 'lower'}, default: :rc:`image.origin`
//
//	Place the [0, 0] index of the array in the upper left or lower
//	left corner of the Axes. The convention (the default) 'upper' is
//	typically used for matrices and images.
//
//	Note that the vertical axis points upward for 'lower'
//	but downward for 'upper'.
//
//	See the :ref:`imshow_extent` tutorial for
//	examples and a more detailed description.
//
// extent : floats (left, right, bottom, top), optional
//
//	The bounding box in data coordinates that the image will fill.
//	These values may be unitful and match the units of the Axes.
//	The image is stretched individually along x and y to fill the box.
//
//	The default extent is determined by the following conditions.
//	Pixels have unit size in data coordinates. Their centers are on
//	integer coordinates, and their center coordinates range from 0 to
//	columns-1 horizontally and from 0 to rows-1 vertically.
//
//	Note that the direction of the vertical axis and thus the default
//	values for top and bottom depend on *origin*:
//
//	- For ``origin == 'upper'`` the default is
//	  ``(-0.5, numcols-0.5, numrows-0.5, -0.5)``.
//	- For ``origin == 'lower'`` the default is
//	  ``(-0.5, numcols-0.5, -0.5, numrows-0.5)``.
//
//	See the :ref:`imshow_extent` tutorial for
//	examples and a more detailed description.
//
// filternorm : bool, default: True
//
//	A parameter for the antigrain image resize filter (see the
//	antigrain documentation).  If *filternorm* is set, the filter
//	normalizes integer values and corrects the rounding errors. It
//	doesn't do anything with the source floating point values, it
//	corrects only integers according to the rule of 1.0 which means
//	that any sum of pixel weights must be equal to 1.0.  So, the
//	filter function must produce a graph of the proper shape.
//
// filterrad : float > 0, default: 4.0
//
//	The filter radius for filters that have a radius parameter, i.e.
//	when interpolation is one of: 'sinc', 'lanczos' or 'blackman'.
//
// resample : bool, default: :rc:`image.resample`
//
//	When *True*, use a full resampling method.  When *False*, only
//	resample when the output image is larger than the input image.
//
// url : str, optional
//
//	Set the url of the created `.AxesImage`. See `.Artist.set_url`.
//
// Returns
// -------
// `~matplotlib.image.AxesImage`
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs : `~matplotlib.artist.Artist` properties
//
//	These parameters are passed on to the constructor of the
//	`.AxesImage` artist.
//
// See Also
// --------
// matshow : Plot a matrix or an array as an image.
//
// Notes
// -----
// Unless *extent* is used, pixel centers will be located at integer
// coordinates. In other words: the origin will coincide with the center
// of pixel (0, 0).
//
// There are two common representations for RGB images with an alpha
// channel:
//
//   - Straight (unassociated) alpha: R, G, and B channels represent the
//     color of the pixel, disregarding its opacity.
//   - Premultiplied (associated) alpha: R, G, and B channels represent
//     the color of the pixel, adjusted for its opacity by multiplication.
//
// `~matplotlib.pyplot.imshow` expects RGB images adopting the straight
// (unassociated) alpha representation.
//
//go:linkname Imshow py.imshow
func Imshow(X *py.Object, cmap *py.Object, norm *py.Object) *py.Object

// Place a legend on the Axes.
//
// Call signatures::
//
//	legend()
//	legend(handles, labels)
//	legend(handles=handles)
//	legend(labels)
//
// The call signatures correspond to the following different ways to use
// this method:
//
// **1. Automatic detection of elements to be shown in the legend**
//
// The elements to be added to the legend are automatically determined,
// when you do not pass in any extra arguments.
//
// In this case, the labels are taken from the artist. You can specify
// them either at artist creation or by calling the
// :meth:`~.Artist.set_label` method on the artist::
//
//	ax.plot([1, 2, 3], label='Inline label')
//	ax.legend()
//
// or::
//
//	line, = ax.plot([1, 2, 3])
//	line.set_label('Label via method')
//	ax.legend()
//
// .. note::
//
//	Specific artists can be excluded from the automatic legend element
//	selection by using a label starting with an underscore, "_".
//	A string starting with an underscore is the default label for all
//	artists, so calling `.Axes.legend` without any arguments and
//	without setting the labels manually will result in no legend being
//	drawn.
//
// **2. Explicitly listing the artists and labels in the legend**
//
// For full control of which artists have a legend entry, it is possible
// to pass an iterable of legend artists followed by an iterable of
// legend labels respectively::
//
//	ax.legend([line1, line2, line3], ['label1', 'label2', 'label3'])
//
// **3. Explicitly listing the artists in the legend**
//
// This is similar to 2, but the labels are taken from the artists'
// label properties. Example::
//
//	line1, = ax.plot([1, 2, 3], label='label1')
//	line2, = ax.plot([1, 2, 3], label='label2')
//	ax.legend(handles=[line1, line2])
//
// **4. Labeling existing plot elements**
//
// .. admonition:: Discouraged
//
//	This call signature is discouraged, because the relation between
//	plot elements and labels is only implicit by their order and can
//	easily be mixed up.
//
// To make a legend for all artists on an Axes, call this function with
// an iterable of strings, one for each legend item. For example::
//
//	ax.plot([1, 2, 3])
//	ax.plot([5, 6, 7])
//	ax.legend(['First line', 'Second line'])
//
// Parameters
// ----------
// handles : list of (`.Artist` or tuple of `.Artist`), optional
//
//	A list of Artists (lines, patches) to be added to the legend.
//	Use this together with *labels*, if you need full control on what
//	is shown in the legend and the automatic mechanism described above
//	is not sufficient.
//
//	The length of handles and labels should be the same in this
//	case. If they are not, they are truncated to the smaller length.
//
//	If an entry contains a tuple, then the legend handler for all Artists in the
//	tuple will be placed alongside a single label.
//
// labels : list of str, optional
//
//	A list of labels to show next to the artists.
//	Use this together with *handles*, if you need full control on what
//	is shown in the legend and the automatic mechanism described above
//	is not sufficient.
//
// Returns
// -------
// `~matplotlib.legend.Legend`
//
// Other Parameters
// ----------------
//
// loc : str or pair of floats, default: :rc:`legend.loc`
//
//	The location of the legend.
//
//	The strings ``'upper left'``, ``'upper right'``, ``'lower left'``,
//	``'lower right'`` place the legend at the corresponding corner of the
//	axes.
//
//	The strings ``'upper center'``, ``'lower center'``, ``'center left'``,
//	``'center right'`` place the legend at the center of the corresponding edge
//	of the axes.
//
//	The string ``'center'`` places the legend at the center of the axes.
//
//	The string ``'best'`` places the legend at the location, among the nine
//	locations defined so far, with the minimum overlap with other drawn
//	artists.  This option can be quite slow for plots with large amounts of
//	data; your plotting speed may benefit from providing a specific location.
//
//	The location can also be a 2-tuple giving the coordinates of the lower-left
//	corner of the legend in axes coordinates (in which case *bbox_to_anchor*
//	will be ignored).
//
//	For back-compatibility, ``'center right'`` (but no other location) can also
//	be spelled ``'right'``, and each "string" location can also be given as a
//	numeric value:
//
//	==================   =============
//	Location String      Location Code
//	==================   =============
//	'best' (Axes only)   0
//	'upper right'        1
//	'upper left'         2
//	'lower left'         3
//	'lower right'        4
//	'right'              5
//	'center left'        6
//	'center right'       7
//	'lower center'       8
//	'upper center'       9
//	'center'             10
//	==================   =============
//
// bbox_to_anchor : `.BboxBase`, 2-tuple, or 4-tuple of floats
//
//	Box that is used to position the legend in conjunction with *loc*.
//	Defaults to `axes.bbox` (if called as a method to `.Axes.legend`) or
//	`figure.bbox` (if `.Figure.legend`).  This argument allows arbitrary
//	placement of the legend.
//
//	Bbox coordinates are interpreted in the coordinate system given by
//	*bbox_transform*, with the default transform
//	Axes or Figure coordinates, depending on which ``legend`` is called.
//
//	If a 4-tuple or `.BboxBase` is given, then it specifies the bbox
//	``(x, y, width, height)`` that the legend is placed in.
//	To put the legend in the best location in the bottom right
//	quadrant of the axes (or figure)::
//
//	    loc='best', bbox_to_anchor=(0.5, 0., 0.5, 0.5)
//
//	A 2-tuple ``(x, y)`` places the corner of the legend specified by *loc* at
//	x, y.  For example, to put the legend's upper right-hand corner in the
//	center of the axes (or figure) the following keywords can be used::
//
//	    loc='upper right', bbox_to_anchor=(0.5, 0.5)
//
// ncols : int, default: 1
//
//	The number of columns that the legend has.
//
//	For backward compatibility, the spelling *ncol* is also supported
//	but it is discouraged. If both are given, *ncols* takes precedence.
//
// prop : None or `~matplotlib.font_manager.FontProperties` or dict
//
//	The font properties of the legend. If None (default), the current
//	:data:`matplotlib.rcParams` will be used.
//
// fontsize : int or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
//
//	The font size of the legend. If the value is numeric the size will be the
//	absolute font size in points. String values are relative to the current
//	default font size. This argument is only used if *prop* is not specified.
//
// labelcolor : str or list, default: :rc:`legend.labelcolor`
//
//	The color of the text in the legend. Either a valid color string
//	(for example, 'red'), or a list of color strings. The labelcolor can
//	also be made to match the color of the line or marker using 'linecolor',
//	'markerfacecolor' (or 'mfc'), or 'markeredgecolor' (or 'mec').
//
//	Labelcolor can be set globally using :rc:`legend.labelcolor`. If None,
//	use :rc:`text.color`.
//
// numpoints : int, default: :rc:`legend.numpoints`
//
//	The number of marker points in the legend when creating a legend
//	entry for a `.Line2D` (line).
//
// scatterpoints : int, default: :rc:`legend.scatterpoints`
//
//	The number of marker points in the legend when creating
//	a legend entry for a `.PathCollection` (scatter plot).
//
// scatteryoffsets : iterable of floats, default: “[0.375, 0.5, 0.3125]“
//
//	The vertical offset (relative to the font size) for the markers
//	created for a scatter plot legend entry. 0.0 is at the base the
//	legend text, and 1.0 is at the top. To draw all markers at the
//	same height, set to ``[0.5]``.
//
// markerscale : float, default: :rc:`legend.markerscale`
//
//	The relative size of legend markers compared to the originally drawn ones.
//
// markerfirst : bool, default: True
//
//	If *True*, legend marker is placed to the left of the legend label.
//	If *False*, legend marker is placed to the right of the legend label.
//
// reverse : bool, default: False
//
//	If *True*, the legend labels are displayed in reverse order from the input.
//	If *False*, the legend labels are displayed in the same order as the input.
//
//	.. versionadded:: 3.7
//
// frameon : bool, default: :rc:`legend.frameon`
//
//	Whether the legend should be drawn on a patch (frame).
//
// fancybox : bool, default: :rc:`legend.fancybox`
//
//	Whether round edges should be enabled around the `.FancyBboxPatch` which
//	makes up the legend's background.
//
// shadow : None, bool or dict, default: :rc:`legend.shadow`
//
//	Whether to draw a shadow behind the legend.
//	The shadow can be configured using `.Patch` keywords.
//	Customization via :rc:`legend.shadow` is currently not supported.
//
// framealpha : float, default: :rc:`legend.framealpha`
//
//	The alpha transparency of the legend's background.
//	If *shadow* is activated and *framealpha* is ``None``, the default value is
//	ignored.
//
// facecolor : "inherit" or color, default: :rc:`legend.facecolor`
//
//	The legend's background color.
//	If ``"inherit"``, use :rc:`axes.facecolor`.
//
// edgecolor : "inherit" or color, default: :rc:`legend.edgecolor`
//
//	The legend's background patch edge color.
//	If ``"inherit"``, use take :rc:`axes.edgecolor`.
//
// mode : {"expand", None}
//
//	If *mode* is set to ``"expand"`` the legend will be horizontally
//	expanded to fill the axes area (or *bbox_to_anchor* if defines
//	the legend's size).
//
// bbox_transform : None or `~matplotlib.transforms.Transform`
//
//	The transform for the bounding box (*bbox_to_anchor*). For a value
//	of ``None`` (default) the Axes'
//	:data:`~matplotlib.axes.Axes.transAxes` transform will be used.
//
// title : str or None
//
//	The legend's title. Default is no title (``None``).
//
// title_fontproperties : None or `~matplotlib.font_manager.FontProperties` or dict
//
//	The font properties of the legend's title. If None (default), the
//	*title_fontsize* argument will be used if present; if *title_fontsize* is
//	also None, the current :rc:`legend.title_fontsize` will be used.
//
// title_fontsize : int or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}, default: :rc:`legend.title_fontsize`
//
//	The font size of the legend's title.
//	Note: This cannot be combined with *title_fontproperties*. If you want
//	to set the fontsize alongside other font properties, use the *size*
//	parameter in *title_fontproperties*.
//
// alignment : {'center', 'left', 'right'}, default: 'center'
//
//	The alignment of the legend title and the box of entries. The entries
//	are aligned as a single block, so that markers always lined up.
//
// borderpad : float, default: :rc:`legend.borderpad`
//
//	The fractional whitespace inside the legend border, in font-size units.
//
// labelspacing : float, default: :rc:`legend.labelspacing`
//
//	The vertical space between the legend entries, in font-size units.
//
// handlelength : float, default: :rc:`legend.handlelength`
//
//	The length of the legend handles, in font-size units.
//
// handleheight : float, default: :rc:`legend.handleheight`
//
//	The height of the legend handles, in font-size units.
//
// handletextpad : float, default: :rc:`legend.handletextpad`
//
//	The pad between the legend handle and text, in font-size units.
//
// borderaxespad : float, default: :rc:`legend.borderaxespad`
//
//	The pad between the axes and legend border, in font-size units.
//
// columnspacing : float, default: :rc:`legend.columnspacing`
//
//	The spacing between columns, in font-size units.
//
// handler_map : dict or None
//
//	The custom dictionary mapping instances or types to a legend
//	handler. This *handler_map* updates the default handler map
//	found at `matplotlib.legend.Legend.get_legend_handler_map`.
//
// draggable : bool, default: False
//
//	Whether the legend can be dragged with the mouse.
//
// See Also
// --------
// .Figure.legend
//
// Notes
// -----
// Some artists are not supported by this function.  See
// :ref:`legend_guide` for details.
//
// Examples
// --------
// .. plot:: gallery/text_labels_and_annotations/legend.py
//
//go:linkname Legend py.legend
func Legend(__llgo_va_list ...interface{}) *py.Object

// Control behavior of major tick locators.
//
// Because the locator is involved in autoscaling, `~.Axes.autoscale_view`
// is called automatically after the parameters are changed.
//
// Parameters
// ----------
// axis : {'both', 'x', 'y'}, default: 'both'
//
//	The axis on which to operate.  (For 3D Axes, *axis* can also be
//	set to 'z', and 'both' refers to all three axes.)
//
// tight : bool or None, optional
//
//	Parameter passed to `~.Axes.autoscale_view`.
//	Default is None, for no change.
//
// Other Parameters
// ----------------
// **kwargs
//
//	Remaining keyword arguments are passed to directly to the
//	``set_params()`` method of the locator. Supported keywords depend
//	on the type of the locator. See for example
//	`~.ticker.MaxNLocator.set_params` for the `.ticker.MaxNLocator`
//	used by default for linear.
//
// Examples
// --------
// When plotting small subplots, one might want to reduce the maximum
// number of ticks and use tight bounds, for example::
//
//	ax.locator_params(tight=True, nbins=4)
//
//go:linkname LocatorParams py.locator_params
func LocatorParams(axis *py.Object, tight *py.Object) *py.Object

// Make a plot with log scaling on both the x- and y-axis.
//
// Call signatures::
//
//	loglog([x], y, [fmt], data=None, **kwargs)
//	loglog([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
//
// This is just a thin wrapper around `.plot` which additionally changes
// both the x-axis and the y-axis to log scaling. All the concepts and
// parameters of plot can be used here as well.
//
// The additional parameters *base*, *subs* and *nonpositive* control the
// x/y-axis properties. They are just forwarded to `.Axes.set_xscale` and
// `.Axes.set_yscale`. To use different properties on the x-axis and the
// y-axis, use e.g.
// “ax.set_xscale("log", base=10); ax.set_yscale("log", base=2)“.
//
// Parameters
// ----------
// base : float, default: 10
//
//	Base of the logarithm.
//
// subs : sequence, optional
//
//	The location of the minor ticks. If *None*, reasonable locations
//	are automatically chosen depending on the number of decades in the
//	plot. See `.Axes.set_xscale`/`.Axes.set_yscale` for details.
//
// nonpositive : {'mask', 'clip'}, default: 'clip'
//
//	Non-positive values can be masked as invalid, or clipped to a very
//	small positive number.
//
// **kwargs
//
//	All parameters supported by `.plot`.
//
// Returns
// -------
// list of `.Line2D`
//
//	Objects representing the plotted data.
//
//go:linkname Loglog py.loglog
func Loglog(__llgo_va_list ...interface{}) *py.Object

// Plot the magnitude spectrum.
//
// Compute the magnitude spectrum of *x*.  Data is padded to a
// length of *pad_to* and the windowing function *window* is applied to
// the signal.
//
// Parameters
// ----------
// x : 1-D array or sequence
//
//	Array or sequence containing the data.
//
// Fs : float, default: 2
//
//	The sampling frequency (samples per time unit).  It is used to calculate
//	the Fourier frequencies, *freqs*, in cycles per time unit.
//
// window : callable or ndarray, default: `.window_hanning`
//
//	A function or a vector of length *NFFT*.  To create window vectors see
//	`.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
//	`numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
//	function is passed as the argument, it must take a data segment as an
//	argument and return the windowed version of the segment.
//
// sides : {'default', 'onesided', 'twosided'}, optional
//
//	Which sides of the spectrum to return. 'default' is one-sided for real
//	data and two-sided for complex data. 'onesided' forces the return of a
//	one-sided spectrum, while 'twosided' forces two-sided.
//
// pad_to : int, optional
//
//	The number of points to which the data segment is padded when performing
//	the FFT.  While not increasing the actual resolution of the spectrum (the
//	minimum distance between resolvable peaks), this can give more points in
//	the plot, allowing for more detail. This corresponds to the *n* parameter
//	in the call to `~numpy.fft.fft`.  The default is None, which sets *pad_to*
//	equal to the length of the input signal (i.e. no padding).
//
// scale : {'default', 'linear', 'dB'}
//
//	The scaling of the values in the *spec*.  'linear' is no scaling.
//	'dB' returns the values in dB scale, i.e., the dB amplitude
//	(20 * log10). 'default' is 'linear'.
//
// Fc : int, default: 0
//
//	The center frequency of *x*, which offsets the x extents of the
//	plot to reflect the frequency range used when a signal is acquired
//	and then filtered and downsampled to baseband.
//
// Returns
// -------
// spectrum : 1-D array
//
//	The values for the magnitude spectrum before scaling (real valued).
//
// freqs : 1-D array
//
//	The frequencies corresponding to the elements in *spectrum*.
//
// line : `~matplotlib.lines.Line2D`
//
//	The line created by this function.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*
//
// **kwargs
//
//	Keyword arguments control the `.Line2D` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// psd
//
//	Plots the power spectral density.
//
// angle_spectrum
//
//	Plots the angles of the corresponding frequencies.
//
// phase_spectrum
//
//	Plots the phase (unwrapped angle) of the corresponding frequencies.
//
// specgram
//
//	Can plot the magnitude spectrum of segments within the signal in a
//	colormap.
//
//go:linkname MagnitudeSpectrum py.magnitude_spectrum
func MagnitudeSpectrum(x *py.Object, Fs *py.Object, Fc *py.Object, window *py.Object, padTo *py.Object, sides *py.Object, scale *py.Object) *py.Object

// Set or retrieve autoscaling margins.
//
// The padding added to each limit of the Axes is the *margin*
// times the data interval. All input parameters must be floats
// greater than -0.5. Passing both positional and keyword
// arguments is invalid and will raise a TypeError. If no
// arguments (positional or otherwise) are provided, the current
// margins will remain unchanged and simply be returned.
//
// Specifying any margin changes only the autoscaling; for example,
// if *xmargin* is not None, then *xmargin* times the X data
// interval will be added to each end of that interval before
// it is used in autoscaling.
//
// Parameters
// ----------
// *margins : float, optional
//
//	If a single positional argument is provided, it specifies
//	both margins of the x-axis and y-axis limits. If two
//	positional arguments are provided, they will be interpreted
//	as *xmargin*, *ymargin*. If setting the margin on a single
//	axis is desired, use the keyword arguments described below.
//
// x, y : float, optional
//
//	Specific margin values for the x-axis and y-axis,
//	respectively. These cannot be used with positional
//	arguments, but can be used individually to alter on e.g.,
//	only the y-axis.
//
// tight : bool or None, default: True
//
//	The *tight* parameter is passed to `~.axes.Axes.autoscale_view`,
//	which is executed after a margin is changed; the default
//	here is *True*, on the assumption that when margins are
//	specified, no additional padding to match tick marks is
//	usually desired.  Setting *tight* to *None* preserves
//	the previous setting.
//
// Returns
// -------
// xmargin, ymargin : float
//
// Notes
// -----
// If a previously used Axes method such as :meth:`pcolor` has set
// :attr:`use_sticky_edges` to `True`, only the limits not set by
// the "sticky artists" will be modified. To force all of the
// margins to be set, set :attr:`use_sticky_edges` to `False`
// before calling :meth:`margins`.
//
//go:linkname Margins py.margins
func Margins(__llgo_va_list ...interface{}) *py.Object

// Remove minor ticks from the Axes.
//
//go:linkname MinorticksOff py.minorticks_off
func MinorticksOff() *py.Object

// Display minor ticks on the Axes.
//
// Displaying minor ticks may reduce performance; you may turn them off
// using `minorticks_off()` if drawing speed is a problem.
//
//go:linkname MinorticksOn py.minorticks_on
func MinorticksOn() *py.Object

// Create a pseudocolor plot with a non-regular rectangular grid.
//
// Call signature::
//
//	pcolor([X, Y,] C, **kwargs)
//
// *X* and *Y* can be used to specify the corners of the quadrilaterals.
//
// .. hint::
//
//	``pcolor()`` can be very slow for large arrays. In most
//	cases you should use the similar but much faster
//	`~.Axes.pcolormesh` instead. See
//	:ref:`Differences between pcolor() and pcolormesh()
//	<differences-pcolor-pcolormesh>` for a discussion of the
//	differences.
//
// Parameters
// ----------
// C : 2D array-like
//
//	The color-mapped values.  Color-mapping is controlled by *cmap*,
//	*norm*, *vmin*, and *vmax*.
//
// X, Y : array-like, optional
//
//	The coordinates of the corners of quadrilaterals of a pcolormesh::
//
//	    (X[i+1, j], Y[i+1, j])       (X[i+1, j+1], Y[i+1, j+1])
//	                          ●╶───╴●
//	                          │     │
//	                          ●╶───╴●
//	        (X[i, j], Y[i, j])       (X[i, j+1], Y[i, j+1])
//
//	Note that the column index corresponds to the x-coordinate, and
//	the row index corresponds to y. For details, see the
//	:ref:`Notes <axes-pcolormesh-grid-orientation>` section below.
//
//	If ``shading='flat'`` the dimensions of *X* and *Y* should be one
//	greater than those of *C*, and the quadrilateral is colored due
//	to the value at ``C[i, j]``.  If *X*, *Y* and *C* have equal
//	dimensions, a warning will be raised and the last row and column
//	of *C* will be ignored.
//
//	If ``shading='nearest'``, the dimensions of *X* and *Y* should be
//	the same as those of *C* (if not, a ValueError will be raised). The
//	color ``C[i, j]`` will be centered on ``(X[i, j], Y[i, j])``.
//
//	If *X* and/or *Y* are 1-D arrays or column vectors they will be
//	expanded as needed into the appropriate 2D arrays, making a
//	rectangular grid.
//
// shading : {'flat', 'nearest', 'auto'}, default: :rc:`pcolor.shading`
//
//	The fill style for the quadrilateral. Possible values:
//
//	- 'flat': A solid color is used for each quad. The color of the
//	  quad (i, j), (i+1, j), (i, j+1), (i+1, j+1) is given by
//	  ``C[i, j]``. The dimensions of *X* and *Y* should be
//	  one greater than those of *C*; if they are the same as *C*,
//	  then a deprecation warning is raised, and the last row
//	  and column of *C* are dropped.
//	- 'nearest': Each grid point will have a color centered on it,
//	  extending halfway between the adjacent grid centers.  The
//	  dimensions of *X* and *Y* must be the same as *C*.
//	- 'auto': Choose 'flat' if dimensions of *X* and *Y* are one
//	  larger than *C*.  Choose 'nearest' if dimensions are the same.
//
//	See :doc:`/gallery/images_contours_and_fields/pcolormesh_grids`
//	for more description.
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
// edgecolors : {'none', None, 'face', color, color sequence}, optional
//
//	The color of the edges. Defaults to 'none'. Possible values:
//
//	- 'none' or '': No edge.
//	- *None*: :rc:`patch.edgecolor` will be used. Note that currently
//	  :rc:`patch.force_edgecolor` has to be True for this to work.
//	- 'face': Use the adjacent face color.
//	- A color or sequence of colors will set the edge color.
//
//	The singular form *edgecolor* works as an alias.
//
// alpha : float, default: None
//
//	The alpha blending value of the face color, between 0 (transparent)
//	and 1 (opaque). Note: The edgecolor is currently not affected by
//	this.
//
// snap : bool, default: False
//
//	Whether to snap the mesh to pixel boundaries.
//
// Returns
// -------
// `matplotlib.collections.PolyQuadMesh`
//
// Other Parameters
// ----------------
// antialiaseds : bool, default: False
//
//	The default *antialiaseds* is False if the default
//	*edgecolors*\ ="none" is used.  This eliminates artificial lines
//	at patch boundaries, and works regardless of the value of alpha.
//	If *edgecolors* is not "none", then the default *antialiaseds*
//	is taken from :rc:`patch.antialiased`.
//	Stroking the edges may be preferred if *alpha* is 1, but will
//	cause artifacts otherwise.
//
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs
//
//	Additionally, the following arguments are allowed. They are passed
//	along to the `~matplotlib.collections.PolyQuadMesh` constructor:
//
// Properties:
//
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: array-like or scalar or None
//	animated: bool
//	antialiased or aa or antialiaseds: bool or list of bools
//	array: array-like or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clim: (vmin: float, vmax: float)
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	cmap: `.Colormap` or str or None
//	color: color or list of RGBA tuples
//	edgecolor or ec or edgecolors: color or list of colors or 'face'
//	facecolor or facecolors or fc: color or list of colors
//	figure: `~matplotlib.figure.Figure`
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or dashes or linestyles or ls: str or tuple or list thereof
//	linewidth or linewidths or lw: float or list of floats
//	mouseover: bool
//	norm: `.Normalize` or str or None
//	offset_transform or transOffset: `.Transform`
//	offsets: (N, 2) or (2,) array-like
//	path_effects: list of `.AbstractPathEffect`
//	paths: list of array-like
//	picker: None or bool or float or callable
//	pickradius: float
//	rasterized: bool
//	sizes: `numpy.ndarray` or None
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	urls: list of str or None
//	verts: list of array-like
//	verts_and_codes: unknown
//	visible: bool
//	zorder: float
//
// See Also
// --------
// pcolormesh : for an explanation of the differences between
//
//	pcolor and pcolormesh.
//
// imshow : If *X* and *Y* are each equidistant, `~.Axes.imshow` can be a
//
//	faster alternative.
//
// Notes
// -----
// **Masked arrays**
//
// *X*, *Y* and *C* may be masked arrays. If either “C[i, j]“, or one
// of the vertices surrounding “C[i, j]“ (*X* or *Y* at
// “[i, j], [i+1, j], [i, j+1], [i+1, j+1]“) is masked, nothing is
// plotted.
//
// .. _axes-pcolor-grid-orientation:
//
// **Grid orientation**
//
// The grid orientation follows the standard matrix convention: An array
// *C* with shape (nrows, ncolumns) is plotted with the column number as
// *X* and the row number as *Y*.
//
//go:linkname Pcolor py.pcolor
func Pcolor(__llgo_va_list ...interface{}) *py.Object

// Create a pseudocolor plot with a non-regular rectangular grid.
//
// Call signature::
//
//	pcolormesh([X, Y,] C, **kwargs)
//
// *X* and *Y* can be used to specify the corners of the quadrilaterals.
//
// .. hint::
//
//	`~.Axes.pcolormesh` is similar to `~.Axes.pcolor`. It is much faster
//	and preferred in most cases. For a detailed discussion on the
//	differences see :ref:`Differences between pcolor() and pcolormesh()
//	<differences-pcolor-pcolormesh>`.
//
// Parameters
// ----------
// C : array-like
//
//	The mesh data. Supported array shapes are:
//
//	- (M, N) or M*N: a mesh with scalar data. The values are mapped to
//	  colors using normalization and a colormap. See parameters *norm*,
//	  *cmap*, *vmin*, *vmax*.
//	- (M, N, 3): an image with RGB values (0-1 float or 0-255 int).
//	- (M, N, 4): an image with RGBA values (0-1 float or 0-255 int),
//	  i.e. including transparency.
//
//	The first two dimensions (M, N) define the rows and columns of
//	the mesh data.
//
// X, Y : array-like, optional
//
//	The coordinates of the corners of quadrilaterals of a pcolormesh::
//
//	    (X[i+1, j], Y[i+1, j])       (X[i+1, j+1], Y[i+1, j+1])
//	                          ●╶───╴●
//	                          │     │
//	                          ●╶───╴●
//	        (X[i, j], Y[i, j])       (X[i, j+1], Y[i, j+1])
//
//	Note that the column index corresponds to the x-coordinate, and
//	the row index corresponds to y. For details, see the
//	:ref:`Notes <axes-pcolormesh-grid-orientation>` section below.
//
//	If ``shading='flat'`` the dimensions of *X* and *Y* should be one
//	greater than those of *C*, and the quadrilateral is colored due
//	to the value at ``C[i, j]``.  If *X*, *Y* and *C* have equal
//	dimensions, a warning will be raised and the last row and column
//	of *C* will be ignored.
//
//	If ``shading='nearest'`` or ``'gouraud'``, the dimensions of *X*
//	and *Y* should be the same as those of *C* (if not, a ValueError
//	will be raised).  For ``'nearest'`` the color ``C[i, j]`` is
//	centered on ``(X[i, j], Y[i, j])``.  For ``'gouraud'``, a smooth
//	interpolation is caried out between the quadrilateral corners.
//
//	If *X* and/or *Y* are 1-D arrays or column vectors they will be
//	expanded as needed into the appropriate 2D arrays, making a
//	rectangular grid.
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
// edgecolors : {'none', None, 'face', color, color sequence}, optional
//
//	The color of the edges. Defaults to 'none'. Possible values:
//
//	- 'none' or '': No edge.
//	- *None*: :rc:`patch.edgecolor` will be used. Note that currently
//	  :rc:`patch.force_edgecolor` has to be True for this to work.
//	- 'face': Use the adjacent face color.
//	- A color or sequence of colors will set the edge color.
//
//	The singular form *edgecolor* works as an alias.
//
// alpha : float, default: None
//
//	The alpha blending value, between 0 (transparent) and 1 (opaque).
//
// shading : {'flat', 'nearest', 'gouraud', 'auto'}, optional
//
//	The fill style for the quadrilateral; defaults to
//	:rc:`pcolor.shading`. Possible values:
//
//	- 'flat': A solid color is used for each quad. The color of the
//	  quad (i, j), (i+1, j), (i, j+1), (i+1, j+1) is given by
//	  ``C[i, j]``. The dimensions of *X* and *Y* should be
//	  one greater than those of *C*; if they are the same as *C*,
//	  then a deprecation warning is raised, and the last row
//	  and column of *C* are dropped.
//	- 'nearest': Each grid point will have a color centered on it,
//	  extending halfway between the adjacent grid centers.  The
//	  dimensions of *X* and *Y* must be the same as *C*.
//	- 'gouraud': Each quad will be Gouraud shaded: The color of the
//	  corners (i', j') are given by ``C[i', j']``. The color values of
//	  the area in between is interpolated from the corner values.
//	  The dimensions of *X* and *Y* must be the same as *C*. When
//	  Gouraud shading is used, *edgecolors* is ignored.
//	- 'auto': Choose 'flat' if dimensions of *X* and *Y* are one
//	  larger than *C*.  Choose 'nearest' if dimensions are the same.
//
//	See :doc:`/gallery/images_contours_and_fields/pcolormesh_grids`
//	for more description.
//
// snap : bool, default: False
//
//	Whether to snap the mesh to pixel boundaries.
//
// rasterized : bool, optional
//
//	Rasterize the pcolormesh when drawing vector graphics.  This can
//	speed up rendering and produce smaller files for large data sets.
//	See also :doc:`/gallery/misc/rasterization_demo`.
//
// Returns
// -------
// `matplotlib.collections.QuadMesh`
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs
//
//	Additionally, the following arguments are allowed. They are passed
//	along to the `~matplotlib.collections.QuadMesh` constructor:
//
// Properties:
//
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: array-like or scalar or None
//	animated: bool
//	antialiased or aa or antialiaseds: bool or list of bools
//	array: array-like
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clim: (vmin: float, vmax: float)
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	cmap: `.Colormap` or str or None
//	color: color or list of RGBA tuples
//	edgecolor or ec or edgecolors: color or list of colors or 'face'
//	facecolor or facecolors or fc: color or list of colors
//	figure: `~matplotlib.figure.Figure`
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or dashes or linestyles or ls: str or tuple or list thereof
//	linewidth or linewidths or lw: float or list of floats
//	mouseover: bool
//	norm: `.Normalize` or str or None
//	offset_transform or transOffset: `.Transform`
//	offsets: (N, 2) or (2,) array-like
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	urls: list of str or None
//	visible: bool
//	zorder: float
//
// See Also
// --------
// pcolor : An alternative implementation with slightly different
//
//	features. For a detailed discussion on the differences see
//	:ref:`Differences between pcolor() and pcolormesh()
//	<differences-pcolor-pcolormesh>`.
//
// imshow : If *X* and *Y* are each equidistant, `~.Axes.imshow` can be a
//
//	faster alternative.
//
// Notes
// -----
// **Masked arrays**
//
// *C* may be a masked array. If “C[i, j]“ is masked, the corresponding
// quadrilateral will be transparent. Masking of *X* and *Y* is not
// supported. Use `~.Axes.pcolor` if you need this functionality.
//
// .. _axes-pcolormesh-grid-orientation:
//
// **Grid orientation**
//
// The grid orientation follows the standard matrix convention: An array
// *C* with shape (nrows, ncolumns) is plotted with the column number as
// *X* and the row number as *Y*.
//
// .. _differences-pcolor-pcolormesh:
//
// **Differences between pcolor() and pcolormesh()**
//
// Both methods are used to create a pseudocolor plot of a 2D array
// using quadrilaterals.
//
// The main difference lies in the created object and internal data
// handling:
// While `~.Axes.pcolor` returns a `.PolyQuadMesh`, `~.Axes.pcolormesh`
// returns a `.QuadMesh`. The latter is more specialized for the given
// purpose and thus is faster. It should almost always be preferred.
//
// There is also a slight difference in the handling of masked arrays.
// Both `~.Axes.pcolor` and `~.Axes.pcolormesh` support masked arrays
// for *C*. However, only `~.Axes.pcolor` supports masked arrays for *X*
// and *Y*. The reason lies in the internal handling of the masked values.
// `~.Axes.pcolor` leaves out the respective polygons from the
// PolyQuadMesh. `~.Axes.pcolormesh` sets the facecolor of the masked
// elements to transparent. You can see the difference when using
// edgecolors. While all edges are drawn irrespective of masking in a
// QuadMesh, the edge between two adjacent masked quadrilaterals in
// `~.Axes.pcolor` is not drawn as the corresponding polygons do not
// exist in the PolyQuadMesh. Because PolyQuadMesh draws each individual
// polygon, it also supports applying hatches and linestyles to the collection.
//
// Another difference is the support of Gouraud shading in
// `~.Axes.pcolormesh`, which is not available with `~.Axes.pcolor`.
//
//go:linkname Pcolormesh py.pcolormesh
func Pcolormesh(__llgo_va_list ...interface{}) *py.Object

// Plot the phase spectrum.
//
// Compute the phase spectrum (unwrapped angle spectrum) of *x*.
// Data is padded to a length of *pad_to* and the windowing function
// *window* is applied to the signal.
//
// Parameters
// ----------
// x : 1-D array or sequence
//
//	Array or sequence containing the data
//
// Fs : float, default: 2
//
//	The sampling frequency (samples per time unit).  It is used to calculate
//	the Fourier frequencies, *freqs*, in cycles per time unit.
//
// window : callable or ndarray, default: `.window_hanning`
//
//	A function or a vector of length *NFFT*.  To create window vectors see
//	`.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
//	`numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
//	function is passed as the argument, it must take a data segment as an
//	argument and return the windowed version of the segment.
//
// sides : {'default', 'onesided', 'twosided'}, optional
//
//	Which sides of the spectrum to return. 'default' is one-sided for real
//	data and two-sided for complex data. 'onesided' forces the return of a
//	one-sided spectrum, while 'twosided' forces two-sided.
//
// pad_to : int, optional
//
//	The number of points to which the data segment is padded when performing
//	the FFT.  While not increasing the actual resolution of the spectrum (the
//	minimum distance between resolvable peaks), this can give more points in
//	the plot, allowing for more detail. This corresponds to the *n* parameter
//	in the call to `~numpy.fft.fft`.  The default is None, which sets *pad_to*
//	equal to the length of the input signal (i.e. no padding).
//
// Fc : int, default: 0
//
//	The center frequency of *x*, which offsets the x extents of the
//	plot to reflect the frequency range used when a signal is acquired
//	and then filtered and downsampled to baseband.
//
// Returns
// -------
// spectrum : 1-D array
//
//	The values for the phase spectrum in radians (real valued).
//
// freqs : 1-D array
//
//	The frequencies corresponding to the elements in *spectrum*.
//
// line : `~matplotlib.lines.Line2D`
//
//	The line created by this function.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*
//
// **kwargs
//
//	Keyword arguments control the `.Line2D` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// magnitude_spectrum
//
//	Plots the magnitudes of the corresponding frequencies.
//
// angle_spectrum
//
//	Plots the wrapped version of this function.
//
// specgram
//
//	Can plot the phase spectrum of segments within the signal in a
//	colormap.
//
//go:linkname PhaseSpectrum py.phase_spectrum
func PhaseSpectrum(x *py.Object, Fs *py.Object, Fc *py.Object, window *py.Object, padTo *py.Object, sides *py.Object) *py.Object

// Plot a pie chart.
//
// Make a pie chart of array *x*.  The fractional area of each wedge is
// given by “x/sum(x)“.
//
// The wedges are plotted counterclockwise, by default starting from the
// x-axis.
//
// Parameters
// ----------
// x : 1D array-like
//
//	The wedge sizes.
//
// explode : array-like, default: None
//
//	If not *None*, is a ``len(x)`` array which specifies the fraction
//	of the radius with which to offset each wedge.
//
// labels : list, default: None
//
//	A sequence of strings providing the labels for each wedge
//
// colors : color or array-like of color, default: None
//
//	A sequence of colors through which the pie chart will cycle.  If
//	*None*, will use the colors in the currently active cycle.
//
// hatch : str or list, default: None
//
//	Hatching pattern applied to all pie wedges or sequence of patterns
//	through which the chart will cycle. For a list of valid patterns,
//	see :doc:`/gallery/shapes_and_collections/hatch_style_reference`.
//
//	.. versionadded:: 3.7
//
// autopct : None or str or callable, default: None
//
//	If not *None*, *autopct* is a string or function used to label the
//	wedges with their numeric value. The label will be placed inside
//	the wedge. If *autopct* is a format string, the label will be
//	``fmt % pct``. If *autopct* is a function, then it will be called.
//
// pctdistance : float, default: 0.6
//
//	The relative distance along the radius at which the text
//	generated by *autopct* is drawn. To draw the text outside the pie,
//	set *pctdistance* > 1. This parameter is ignored if *autopct* is
//	``None``.
//
// labeldistance : float or None, default: 1.1
//
//	The relative distance along the radius at which the labels are
//	drawn. To draw the labels inside the pie, set  *labeldistance* < 1.
//	If set to ``None``, labels are not drawn but are still stored for
//	use in `.legend`.
//
// shadow : bool or dict, default: False
//
//	If bool, whether to draw a shadow beneath the pie. If dict, draw a shadow
//	passing the properties in the dict to `.Shadow`.
//
//	.. versionadded:: 3.8
//	    *shadow* can be a dict.
//
// startangle : float, default: 0 degrees
//
//	The angle by which the start of the pie is rotated,
//	counterclockwise from the x-axis.
//
// radius : float, default: 1
//
//	The radius of the pie.
//
// counterclock : bool, default: True
//
//	Specify fractions direction, clockwise or counterclockwise.
//
// wedgeprops : dict, default: None
//
//	Dict of arguments passed to each `.patches.Wedge` of the pie.
//	For example, ``wedgeprops = {'linewidth': 3}`` sets the width of
//	the wedge border lines equal to 3. By default, ``clip_on=False``.
//	When there is a conflict between these properties and other
//	keywords, properties passed to *wedgeprops* take precedence.
//
// textprops : dict, default: None
//
//	Dict of arguments to pass to the text objects.
//
// center : (float, float), default: (0, 0)
//
//	The coordinates of the center of the chart.
//
// frame : bool, default: False
//
//	Plot Axes frame with the chart if true.
//
// rotatelabels : bool, default: False
//
//	Rotate each label to the angle of the corresponding slice if true.
//
// normalize : bool, default: True
//
//	When *True*, always make a full pie by normalizing x so that
//	``sum(x) == 1``. *False* makes a partial pie if ``sum(x) <= 1``
//	and raises a `ValueError` for ``sum(x) > 1``.
//
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *explode*, *labels*, *colors*
//
// Returns
// -------
// patches : list
//
//	A sequence of `matplotlib.patches.Wedge` instances
//
// texts : list
//
//	A list of the label `.Text` instances.
//
// autotexts : list
//
//	A list of `.Text` instances for the numeric labels. This will only
//	be returned if the parameter *autopct* is not *None*.
//
// Notes
// -----
// The pie chart will probably look best if the figure and Axes are
// square, or the Axes aspect is equal.
// This method sets the aspect ratio of the axis to "equal".
// The Axes aspect ratio can be controlled with `.Axes.set_aspect`.
//
//go:linkname Pie py.pie
func Pie(x *py.Object, explode *py.Object, labels *py.Object, colors *py.Object, autopct *py.Object, pctdistance *py.Object, shadow *py.Object, labeldistance *py.Object, startangle *py.Object, radius *py.Object, counterclock *py.Object, wedgeprops *py.Object, textprops *py.Object, center *py.Object, frame *py.Object, rotatelabels *py.Object) *py.Object

// Plot y versus x as lines and/or markers.
//
// Call signatures::
//
//	plot([x], y, [fmt], *, data=None, **kwargs)
//	plot([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
//
// The coordinates of the points or line nodes are given by *x*, *y*.
//
// The optional parameter *fmt* is a convenient way for defining basic
// formatting like color, marker and linestyle. It's a shortcut string
// notation described in the *Notes* section below.
//
// >>> plot(x, y)        # plot x and y using default line style and color
// >>> plot(x, y, 'bo')  # plot x and y using blue circle markers
// >>> plot(y)           # plot y using x as index array 0..N-1
// >>> plot(y, 'r+')     # ditto, but with red plusses
//
// You can use `.Line2D` properties as keyword arguments for more
// control on the appearance. Line properties and *fmt* can be mixed.
// The following two calls yield identical results:
//
// >>> plot(x, y, 'go--', linewidth=2, markersize=12)
// >>> plot(x, y, color='green', marker='o', linestyle='dashed',
// ...      linewidth=2, markersize=12)
//
// When conflicting with *fmt*, keyword arguments take precedence.
//
// **Plotting labelled data**
//
// There's a convenient way for plotting objects with labelled data (i.e.
// data that can be accessed by index “obj['y']“). Instead of giving
// the data in *x* and *y*, you can provide the object in the *data*
// parameter and just give the labels for *x* and *y*::
//
// >>> plot('xlabel', 'ylabel', data=obj)
//
// All indexable objects are supported. This could e.g. be a `dict`, a
// `pandas.DataFrame` or a structured numpy array.
//
// **Plotting multiple sets of data**
//
// There are various ways to plot multiple sets of data.
//
//   - The most straight forward way is just to call `plot` multiple times.
//     Example:
//
//     >>> plot(x1, y1, 'bo')
//     >>> plot(x2, y2, 'go')
//
//   - If *x* and/or *y* are 2D arrays a separate data set will be drawn
//     for every column. If both *x* and *y* are 2D, they must have the
//     same shape. If only one of them is 2D with shape (N, m) the other
//     must have length N and will be used for every data set m.
//
//     Example:
//
//     >>> x = [1, 2, 3]
//     >>> y = np.array([[1, 2], [3, 4], [5, 6]])
//     >>> plot(x, y)
//
//     is equivalent to:
//
//     >>> for col in range(y.shape[1]):
//     ...     plot(x, y[:, col])
//
//   - The third way is to specify multiple sets of *[x]*, *y*, *[fmt]*
//     groups::
//
//     >>> plot(x1, y1, 'g^', x2, y2, 'g-')
//
//     In this case, any additional keyword argument applies to all
//     datasets. Also, this syntax cannot be combined with the *data*
//     parameter.
//
// By default, each line is assigned a different style specified by a
// 'style cycle'. The *fmt* and line property parameters are only
// necessary if you want explicit deviations from these defaults.
// Alternatively, you can also change the style cycle using
// :rc:`axes.prop_cycle`.
//
// Parameters
// ----------
// x, y : array-like or scalar
//
//	The horizontal / vertical coordinates of the data points.
//	*x* values are optional and default to ``range(len(y))``.
//
//	Commonly, these parameters are 1D arrays.
//
//	They can also be scalars, or two-dimensional (in that case, the
//	columns represent separate data sets).
//
//	These arguments cannot be passed as keywords.
//
// fmt : str, optional
//
//	A format string, e.g. 'ro' for red circles. See the *Notes*
//	section for a full description of the format strings.
//
//	Format strings are just an abbreviation for quickly setting
//	basic line properties. All of these and more can also be
//	controlled by keyword arguments.
//
//	This argument cannot be passed as keyword.
//
// data : indexable object, optional
//
//	An object with labelled data. If given, provide the label names to
//	plot in *x* and *y*.
//
//	.. note::
//	    Technically there's a slight ambiguity in calls where the
//	    second label is a valid *fmt*. ``plot('n', 'o', data=obj)``
//	    could be ``plt(x, y)`` or ``plt(y, fmt)``. In such cases,
//	    the former interpretation is chosen, but a warning is issued.
//	    You may suppress the warning by adding an empty format string
//	    ``plot('n', 'o', '', data=obj)``.
//
// Returns
// -------
// list of `.Line2D`
//
//	A list of lines representing the plotted data.
//
// Other Parameters
// ----------------
// scalex, scaley : bool, default: True
//
//	These parameters determine if the view limits are adapted to the
//	data limits. The values are passed on to
//	`~.axes.Axes.autoscale_view`.
//
// **kwargs : `~matplotlib.lines.Line2D` properties, optional
//
//	*kwargs* are used to specify properties like a line label (for
//	auto legends), linewidth, antialiasing, marker face color.
//	Example::
//
//	>>> plot([1, 2, 3], [1, 2, 3], 'go-', label='line 1', linewidth=2)
//	>>> plot([1, 2, 3], [1, 4, 9], 'rs', label='line 2')
//
//	If you specify multiple lines with one plot call, the kwargs apply
//	to all those lines. In case the label object is iterable, each
//	element is used as labels for each set of data.
//
//	Here is a list of available `.Line2D` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// scatter : XY scatter plot with markers of varying size and/or color (
//
//	sometimes also called bubble chart).
//
// Notes
// -----
// **Format Strings**
//
// A format string consists of a part for color, marker and line::
//
//	fmt = '[marker][line][color]'
//
// Each of them is optional. If not provided, the value from the style
// cycle is used. Exception: If “line“ is given, but no “marker“,
// the data will be a line without markers.
//
// Other combinations such as “[color][marker][line]“ are also
// supported, but note that their parsing may be ambiguous.
//
// **Markers**
//
// =============   ===============================
// character       description
// =============   ===============================
// “'.'“         point marker
// “','“         pixel marker
// “'o'“         circle marker
// “'v'“         triangle_down marker
// “'^'“         triangle_up marker
// “'<'“         triangle_left marker
// “'>'“         triangle_right marker
// “'1'“         tri_down marker
// “'2'“         tri_up marker
// “'3'“         tri_left marker
// “'4'“         tri_right marker
// “'8'“         octagon marker
// “'s'“         square marker
// “'p'“         pentagon marker
// “'P'“         plus (filled) marker
// “'*'“         star marker
// “'h'“         hexagon1 marker
// “'H'“         hexagon2 marker
// “'+'“         plus marker
// “'x'“         x marker
// “'X'“         x (filled) marker
// “'D'“         diamond marker
// “'d'“         thin_diamond marker
// “'|'“         vline marker
// “'_'“         hline marker
// =============   ===============================
//
// **Line Styles**
//
// =============    ===============================
// character        description
// =============    ===============================
// “'-'“          solid line style
// “'--'“         dashed line style
// “'-.'“         dash-dot line style
// “':'“          dotted line style
// =============    ===============================
//
// Example format strings::
//
//	'b'    # blue markers with default shape
//	'or'   # red circles
//	'-g'   # green solid line
//	'--'   # dashed line with default color
//	'^k:'  # black triangle_up markers connected by a dotted line
//
// **Colors**
//
// # The supported color abbreviations are the single letter codes
//
// =============    ===============================
// character        color
// =============    ===============================
// “'b'“          blue
// “'g'“          green
// “'r'“          red
// “'c'“          cyan
// “'m'“          magenta
// “'y'“          yellow
// “'k'“          black
// “'w'“          white
// =============    ===============================
//
// and the “'CN'“ colors that index into the default property cycle.
//
// If the color is the only part of the format string, you can
// additionally use any  `matplotlib.colors` spec, e.g. full names
// (“'green'“) or hex strings (“'#008000'“).
//
//go:linkname Plot py.plot
func Plot(__llgo_va_list ...interface{}) *py.Object

// [*Discouraged*] Plot coercing the axis to treat floats as dates.
//
// .. admonition:: Discouraged
//
//	This method exists for historic reasons and will be deprecated in
//	the future.
//
//	- ``datetime``-like data should directly be plotted using
//	  `~.Axes.plot`.
//	-  If you need to plot plain numeric data as :ref:`date-format` or
//	   need to set a timezone, call ``ax.xaxis.axis_date`` /
//	   ``ax.yaxis.axis_date`` before `~.Axes.plot`. See
//	   `.Axis.axis_date`.
//
// Similar to `.plot`, this plots *y* vs. *x* as lines or markers.
// However, the axis labels are formatted as dates depending on *xdate*
// and *ydate*.  Note that `.plot` will work with `datetime` and
// `numpy.datetime64` objects without resorting to this method.
//
// Parameters
// ----------
// x, y : array-like
//
//	The coordinates of the data points. If *xdate* or *ydate* is
//	*True*, the respective values *x* or *y* are interpreted as
//	:ref:`Matplotlib dates <date-format>`.
//
// fmt : str, optional
//
//	The plot format string. For details, see the corresponding
//	parameter in `.plot`.
//
// tz : timezone string or `datetime.tzinfo`, default: :rc:`timezone`
//
//	The time zone to use in labeling dates.
//
// xdate : bool, default: True
//
//	If *True*, the *x*-axis will be interpreted as Matplotlib dates.
//
// ydate : bool, default: False
//
//	If *True*, the *y*-axis will be interpreted as Matplotlib dates.
//
// Returns
// -------
// list of `.Line2D`
//
//	Objects representing the plotted data.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y*
//
// **kwargs
//
//	Keyword arguments control the `.Line2D` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// matplotlib.dates : Helper functions on dates.
// matplotlib.dates.date2num : Convert dates to num.
// matplotlib.dates.num2date : Convert num to dates.
// matplotlib.dates.drange : Create an equally spaced sequence of dates.
//
// Notes
// -----
// If you are using custom date tickers and formatters, it may be
// necessary to set the formatters/locators after the call to
// `.plot_date`. `.plot_date` will set the default tick locator to
// `.AutoDateLocator` (if the tick locator is not already set to a
// `.DateLocator` instance) and the default tick formatter to
// `.AutoDateFormatter` (if the tick formatter is not already set to a
// `.DateFormatter` instance).
//
//go:linkname PlotDate py.plot_date
func PlotDate(x *py.Object, y *py.Object, fmt *py.Object, tz *py.Object, xdate *py.Object, ydate *py.Object) *py.Object

// Plot the power spectral density.
//
// The power spectral density :math:`P_{xx}` by Welch's average
// periodogram method.  The vector *x* is divided into *NFFT* length
// segments.  Each segment is detrended by function *detrend* and
// windowed by function *window*.  *noverlap* gives the length of
// the overlap between segments.  The :math:`|\mathrm{fft}(i)|^2`
// of each segment :math:`i` are averaged to compute :math:`P_{xx}`,
// with a scaling to correct for power loss due to windowing.
//
// If len(*x*) < *NFFT*, it will be zero padded to *NFFT*.
//
// Parameters
// ----------
// x : 1-D array or sequence
//
//	Array or sequence containing the data
//
// Fs : float, default: 2
//
//	The sampling frequency (samples per time unit).  It is used to calculate
//	the Fourier frequencies, *freqs*, in cycles per time unit.
//
// window : callable or ndarray, default: `.window_hanning`
//
//	A function or a vector of length *NFFT*.  To create window vectors see
//	`.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
//	`numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
//	function is passed as the argument, it must take a data segment as an
//	argument and return the windowed version of the segment.
//
// sides : {'default', 'onesided', 'twosided'}, optional
//
//	Which sides of the spectrum to return. 'default' is one-sided for real
//	data and two-sided for complex data. 'onesided' forces the return of a
//	one-sided spectrum, while 'twosided' forces two-sided.
//
// pad_to : int, optional
//
//	The number of points to which the data segment is padded when performing
//	the FFT.  This can be different from *NFFT*, which specifies the number
//	of data points used.  While not increasing the actual resolution of the
//	spectrum (the minimum distance between resolvable peaks), this can give
//	more points in the plot, allowing for more detail. This corresponds to
//	the *n* parameter in the call to `~numpy.fft.fft`. The default is None,
//	which sets *pad_to* equal to *NFFT*
//
// NFFT : int, default: 256
//
//	The number of data points used in each block for the FFT.  A power 2 is
//	most efficient.  This should *NOT* be used to get zero padding, or the
//	scaling of the result will be incorrect; use *pad_to* for this instead.
//
// detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
//
//	The function applied to each segment before fft-ing, designed to remove
//	the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
//	is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
//	module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
//	but you can use a custom function as well.  You can also use a string to
//	choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
//	`.detrend_mean`. 'linear' calls `.detrend_linear`.
//
// scale_by_freq : bool, default: True
//
//	Whether the resulting density values should be scaled by the scaling
//	frequency, which gives density in units of 1/Hz.  This allows for
//	integration over the returned frequency values.  The default is True for
//	MATLAB compatibility.
//
// noverlap : int, default: 0 (no overlap)
//
//	The number of points of overlap between segments.
//
// Fc : int, default: 0
//
//	The center frequency of *x*, which offsets the x extents of the
//	plot to reflect the frequency range used when a signal is acquired
//	and then filtered and downsampled to baseband.
//
// return_line : bool, default: False
//
//	Whether to include the line object plotted in the returned values.
//
// Returns
// -------
// Pxx : 1-D array
//
//	The values for the power spectrum :math:`P_{xx}` before scaling
//	(real valued).
//
// freqs : 1-D array
//
//	The frequencies corresponding to the elements in *Pxx*.
//
// line : `~matplotlib.lines.Line2D`
//
//	The line created by this function.
//	Only returned if *return_line* is True.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*
//
// **kwargs
//
//	Keyword arguments control the `.Line2D` properties:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
// See Also
// --------
// specgram
//
//	Differs in the default overlap; in not returning the mean of the
//	segment periodograms; in returning the times of the segments; and
//	in plotting a colormap instead of a line.
//
// magnitude_spectrum
//
//	Plots the magnitude spectrum.
//
// csd
//
//	Plots the spectral density between two signals.
//
// Notes
// -----
// For plotting, the power is plotted as
// :math:`10\log_{10}(P_{xx})` for decibels, though *Pxx* itself
// is returned.
//
// References
// ----------
// Bendat & Piersol -- Random Data: Analysis and Measurement Procedures,
// John Wiley & Sons (1986)
//
//go:linkname Psd py.psd
func Psd(x *py.Object, NFFT *py.Object, Fs *py.Object, Fc *py.Object, detrend *py.Object, window *py.Object, noverlap *py.Object, padTo *py.Object, sides *py.Object, scaleByFreq *py.Object, returnLine *py.Object) *py.Object

// Plot a 2D field of arrows.
//
// Call signature::
//
//	quiver([X, Y], U, V, [C], **kwargs)
//
// *X*, *Y* define the arrow locations, *U*, *V* define the arrow directions, and
// *C* optionally sets the color.
//
// **Arrow length**
//
// The default settings auto-scales the length of the arrows to a reasonable size.
// To change this behavior see the *scale* and *scale_units* parameters.
//
// **Arrow shape**
//
// The arrow shape is determined by *width*, *headwidth*, *headlength* and
// *headaxislength*. See the notes below.
//
// **Arrow styling**
//
// Each arrow is internally represented by a filled polygon with a default edge
// linewidth of 0. As a result, an arrow is rather a filled area, not a line with
// a head, and `.PolyCollection` properties like *linewidth*, *edgecolor*,
// *facecolor*, etc. act accordingly.
//
// Parameters
// ----------
// X, Y : 1D or 2D array-like, optional
//
//	The x and y coordinates of the arrow locations.
//
//	If not given, they will be generated as a uniform integer meshgrid based
//	on the dimensions of *U* and *V*.
//
//	If *X* and *Y* are 1D but *U*, *V* are 2D, *X*, *Y* are expanded to 2D
//	using ``X, Y = np.meshgrid(X, Y)``. In this case ``len(X)`` and ``len(Y)``
//	must match the column and row dimensions of *U* and *V*.
//
// U, V : 1D or 2D array-like
//
//	The x and y direction components of the arrow vectors. The interpretation
//	of these components (in data or in screen space) depends on *angles*.
//
//	*U* and *V* must have the same number of elements, matching the number of
//	arrow locations in  *X*, *Y*. *U* and *V* may be masked. Locations masked
//	in any of *U*, *V*, and *C* will not be drawn.
//
// C : 1D or 2D array-like, optional
//
//	Numeric data that defines the arrow colors by colormapping via *norm* and
//	*cmap*.
//
//	This does not support explicit colors. If you want to set colors directly,
//	use *color* instead.  The size of *C* must match the number of arrow
//	locations.
//
// angles : {'uv', 'xy'} or array-like, default: 'uv'
//
//	Method for determining the angle of the arrows.
//
//	- 'uv': Arrow direction in screen coordinates. Use this if the arrows
//	  symbolize a quantity that is not based on *X*, *Y* data coordinates.
//
//	  If *U* == *V* the orientation of the arrow on the plot is 45 degrees
//	  counter-clockwise from the  horizontal axis (positive to the right).
//
//	- 'xy': Arrow direction in data coordinates, i.e. the arrows point from
//	  (x, y) to (x+u, y+v). Use this e.g. for plotting a gradient field.
//
//	- Arbitrary angles may be specified explicitly as an array of values
//	  in degrees, counter-clockwise from the horizontal axis.
//
//	  In this case *U*, *V* is only used to determine the length of the
//	  arrows.
//
//	Note: inverting a data axis will correspondingly invert the
//	arrows only with ``angles='xy'``.
//
// pivot : {'tail', 'mid', 'middle', 'tip'}, default: 'tail'
//
//	The part of the arrow that is anchored to the *X*, *Y* grid. The arrow
//	rotates about this point.
//
//	'mid' is a synonym for 'middle'.
//
// scale : float, optional
//
//	Scales the length of the arrow inversely.
//
//	Number of data units per arrow length unit, e.g., m/s per plot width; a
//	smaller scale parameter makes the arrow longer. Default is *None*.
//
//	If *None*, a simple autoscaling algorithm is used, based on the average
//	vector length and the number of vectors. The arrow length unit is given by
//	the *scale_units* parameter.
//
// scale_units : {'width', 'height', 'dots', 'inches', 'x', 'y', 'xy'}, optional
//
//	If the *scale* kwarg is *None*, the arrow length unit. Default is *None*.
//
//	e.g. *scale_units* is 'inches', *scale* is 2.0, and ``(u, v) = (1, 0)``,
//	then the vector will be 0.5 inches long.
//
//	If *scale_units* is 'width' or 'height', then the vector will be half the
//	width/height of the axes.
//
//	If *scale_units* is 'x' then the vector will be 0.5 x-axis
//	units. To plot vectors in the x-y plane, with u and v having
//	the same units as x and y, use
//	``angles='xy', scale_units='xy', scale=1``.
//
// units : {'width', 'height', 'dots', 'inches', 'x', 'y', 'xy'}, default: 'width'
//
//	Affects the arrow size (except for the length). In particular, the shaft
//	*width* is measured in multiples of this unit.
//
//	Supported values are:
//
//	- 'width', 'height': The width or height of the Axes.
//	- 'dots', 'inches': Pixels or inches based on the figure dpi.
//	- 'x', 'y', 'xy': *X*, *Y* or :math:`\sqrt{X^2 + Y^2}` in data units.
//
//	The following table summarizes how these values affect the visible arrow
//	size under zooming and figure size changes:
//
//	=================  =================   ==================
//	units              zoom                figure size change
//	=================  =================   ==================
//	'x', 'y', 'xy'     arrow size scales   —
//	'width', 'height'  —                   arrow size scales
//	'dots', 'inches'   —                   —
//	=================  =================   ==================
//
// width : float, optional
//
//	Shaft width in arrow units. All head parameters are relative to *width*.
//
//	The default depends on choice of *units* above, and number of vectors;
//	a typical starting value is about 0.005 times the width of the plot.
//
// headwidth : float, default: 3
//
//	Head width as multiple of shaft *width*. See the notes below.
//
// headlength : float, default: 5
//
//	Head length as multiple of shaft *width*. See the notes below.
//
// headaxislength : float, default: 4.5
//
//	Head length at shaft intersection as multiple of shaft *width*.
//	See the notes below.
//
// minshaft : float, default: 1
//
//	Length below which arrow scales, in units of head length. Do not
//	set this to less than 1, or small arrows will look terrible!
//
// minlength : float, default: 1
//
//	Minimum length as a multiple of shaft width; if an arrow length
//	is less than this, plot a dot (hexagon) of this diameter instead.
//
// color : color or color sequence, optional
//
//	Explicit color(s) for the arrows. If *C* has been set, *color* has no
//	effect.
//
//	This is a synonym for the `.PolyCollection` *facecolor* parameter.
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs : `~matplotlib.collections.PolyCollection` properties, optional
//
//	All other keyword arguments are passed on to `.PolyCollection`:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: array-like or scalar or None
//	animated: bool
//	antialiased or aa or antialiaseds: bool or list of bools
//	array: array-like or None
//	capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	clim: (vmin: float, vmax: float)
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	cmap: `.Colormap` or str or None
//	color: color or list of RGBA tuples
//	edgecolor or ec or edgecolors: color or list of colors or 'face'
//	facecolor or facecolors or fc: color or list of colors
//	figure: `~matplotlib.figure.Figure`
//	gid: str
//	hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
//	in_layout: bool
//	joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	label: object
//	linestyle or dashes or linestyles or ls: str or tuple or list thereof
//	linewidth or linewidths or lw: float or list of floats
//	mouseover: bool
//	norm: `.Normalize` or str or None
//	offset_transform or transOffset: `.Transform`
//	offsets: (N, 2) or (2,) array-like
//	path_effects: list of `.AbstractPathEffect`
//	paths: list of array-like
//	picker: None or bool or float or callable
//	pickradius: float
//	rasterized: bool
//	sizes: `numpy.ndarray` or None
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	urls: list of str or None
//	verts: list of array-like
//	verts_and_codes: unknown
//	visible: bool
//	zorder: float
//
// Returns
// -------
// `~matplotlib.quiver.Quiver`
//
// See Also
// --------
// .Axes.quiverkey : Add a key to a quiver plot.
//
// Notes
// -----
//
// **Arrow shape**
//
// The arrow is drawn as a polygon using the nodes as shown below. The values
// *headwidth*, *headlength*, and *headaxislength* are in units of *width*.
//
// .. image:: /_static/quiver_sizes.svg
//
//	:width: 500px
//
// The defaults give a slightly swept-back arrow. Here are some guidelines how to
// get other head shapes:
//
//   - To make the head a triangle, make *headaxislength* the same as *headlength*.
//   - To make the arrow more pointed, reduce *headwidth* or increase *headlength*
//     and *headaxislength*.
//   - To make the head smaller relative to the shaft, scale down all the head
//     parameters proportionally.
//   - To remove the head completely, set all *head* parameters to 0.
//   - To get a diamond-shaped head, make *headaxislength* larger than *headlength*.
//   - Warning: For *headaxislength* < (*headlength* / *headwidth*), the "headaxis"
//     nodes (i.e. the ones connecting the head with the shaft) will protrude out
//     of the head in forward direction so that the arrow head looks broken.
//
//go:linkname Quiver py.quiver
func Quiver(__llgo_va_list ...interface{}) *py.Object

// Add a key to a quiver plot.
//
// The positioning of the key depends on *X*, *Y*, *coordinates*, and
// *labelpos*.  If *labelpos* is 'N' or 'S', *X*, *Y* give the position of
// the middle of the key arrow.  If *labelpos* is 'E', *X*, *Y* positions
// the head, and if *labelpos* is 'W', *X*, *Y* positions the tail; in
// either of these two cases, *X*, *Y* is somewhere in the middle of the
// arrow+label key object.
//
// Parameters
// ----------
// Q : `~matplotlib.quiver.Quiver`
//
//	A `.Quiver` object as returned by a call to `~.Axes.quiver()`.
//
// X, Y : float
//
//	The location of the key.
//
// U : float
//
//	The length of the key.
//
// label : str
//
//	The key label (e.g., length and units of the key).
//
// angle : float, default: 0
//
//	The angle of the key arrow, in degrees anti-clockwise from the
//	horizontal axis.
//
// coordinates : {'axes', 'figure', 'data', 'inches'}, default: 'axes'
//
//	Coordinate system and units for *X*, *Y*: 'axes' and 'figure' are
//	normalized coordinate systems with (0, 0) in the lower left and
//	(1, 1) in the upper right; 'data' are the axes data coordinates
//	(used for the locations of the vectors in the quiver plot itself);
//	'inches' is position in the figure in inches, with (0, 0) at the
//	lower left corner.
//
// color : color
//
//	Overrides face and edge colors from *Q*.
//
// labelpos : {'N', 'S', 'E', 'W'}
//
//	Position the label above, below, to the right, to the left of the
//	arrow, respectively.
//
// labelsep : float, default: 0.1
//
//	Distance in inches between the arrow and the label.
//
// labelcolor : color, default: :rc:`text.color`
//
//	Label color.
//
// fontproperties : dict, optional
//
//	A dictionary with keyword arguments accepted by the
//	`~matplotlib.font_manager.FontProperties` initializer:
//	*family*, *style*, *variant*, *size*, *weight*.
//
// **kwargs
//
//	Any additional keyword arguments are used to override vector
//	properties taken from *Q*.
//
//go:linkname Quiverkey py.quiverkey
func Quiverkey(Q *py.Object, X *py.Object, Y *py.Object, U *py.Object, label *py.Object) *py.Object

// A scatter plot of *y* vs. *x* with varying marker size and/or color.
//
// Parameters
// ----------
// x, y : float or array-like, shape (n, )
//
//	The data positions.
//
// s : float or array-like, shape (n, ), optional
//
//	The marker size in points**2 (typographic points are 1/72 in.).
//	Default is ``rcParams['lines.markersize'] ** 2``.
//
//	The linewidth and edgecolor can visually interact with the marker
//	size, and can lead to artifacts if the marker size is smaller than
//	the linewidth.
//
//	If the linewidth is greater than 0 and the edgecolor is anything
//	but *'none'*, then the effective size of the marker will be
//	increased by half the linewidth because the stroke will be centered
//	on the edge of the shape.
//
//	To eliminate the marker edge either set *linewidth=0* or
//	*edgecolor='none'*.
//
// c : array-like or list of colors or color, optional
//
//	The marker colors. Possible values:
//
//	- A scalar or sequence of n numbers to be mapped to colors using
//	  *cmap* and *norm*.
//	- A 2D array in which the rows are RGB or RGBA.
//	- A sequence of colors of length n.
//	- A single color format string.
//
//	Note that *c* should not be a single numeric RGB or RGBA sequence
//	because that is indistinguishable from an array of values to be
//	colormapped. If you want to specify the same RGB or RGBA value for
//	all points, use a 2D array with a single row.  Otherwise,
//	value-matching will have precedence in case of a size matching with
//	*x* and *y*.
//
//	If you wish to specify a single color for all points
//	prefer the *color* keyword argument.
//
//	Defaults to `None`. In that case the marker color is determined
//	by the value of *color*, *facecolor* or *facecolors*. In case
//	those are not specified or `None`, the marker color is determined
//	by the next color of the ``Axes``' current "shape and fill" color
//	cycle. This cycle defaults to :rc:`axes.prop_cycle`.
//
// marker : `~.markers.MarkerStyle`, default: :rc:`scatter.marker`
//
//	The marker style. *marker* can be either an instance of the class
//	or the text shorthand for a particular marker.
//	See :mod:`matplotlib.markers` for more information about marker
//	styles.
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
//	This parameter is ignored if *c* is RGB(A).
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
//	This parameter is ignored if *c* is RGB(A).
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
//	This parameter is ignored if *c* is RGB(A).
//
// alpha : float, default: None
//
//	The alpha blending value, between 0 (transparent) and 1 (opaque).
//
// linewidths : float or array-like, default: :rc:`lines.linewidth`
//
//	The linewidth of the marker edges. Note: The default *edgecolors*
//	is 'face'. You may want to change this as well.
//
// edgecolors : {'face', 'none', *None*} or color or sequence of color, default: :rc:`scatter.edgecolors`
//
//	The edge color of the marker. Possible values:
//
//	- 'face': The edge color will always be the same as the face color.
//	- 'none': No patch boundary will be drawn.
//	- A color or sequence of colors.
//
//	For non-filled markers, *edgecolors* is ignored. Instead, the color
//	is determined like with 'face', i.e. from *c*, *colors*, or
//	*facecolors*.
//
// plotnonfinite : bool, default: False
//
//	Whether to plot points with nonfinite *c* (i.e. ``inf``, ``-inf``
//	or ``nan``). If ``True`` the points are drawn with the *bad*
//	colormap color (see `.Colormap.set_bad`).
//
// Returns
// -------
// `~matplotlib.collections.PathCollection`
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y*, *s*, *linewidths*, *edgecolors*, *c*, *facecolor*, *facecolors*, *color*
//
// **kwargs : `~matplotlib.collections.Collection` properties
//
// See Also
// --------
// plot : To plot scatter plots when markers are identical in size and
//
//	color.
//
// Notes
// -----
//
//   - The `.plot` function will be faster for scatterplots where markers
//     don't vary in size or color.
//
//   - Any or all of *x*, *y*, *s*, and *c* may be masked arrays, in which
//     case all masks will be combined and only unmasked points will be
//     plotted.
//
//   - Fundamentally, scatter works with 1D arrays; *x*, *y*, *s*, and *c*
//     may be input as N-D arrays, but within scatter they will be
//     flattened. The exception is *c*, which will be flattened only if its
//     size matches the size of *x* and *y*.
//
//go:linkname Scatter py.scatter
func Scatter(x *py.Object, y *py.Object, s *py.Object, c *py.Object, marker *py.Object, cmap *py.Object, norm *py.Object, vmin *py.Object, vmax *py.Object, alpha *py.Object, linewidths *py.Object) *py.Object

// Make a plot with log scaling on the x-axis.
//
// Call signatures::
//
//	semilogx([x], y, [fmt], data=None, **kwargs)
//	semilogx([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
//
// This is just a thin wrapper around `.plot` which additionally changes
// the x-axis to log scaling. All the concepts and parameters of plot can
// be used here as well.
//
// The additional parameters *base*, *subs*, and *nonpositive* control the
// x-axis properties. They are just forwarded to `.Axes.set_xscale`.
//
// Parameters
// ----------
// base : float, default: 10
//
//	Base of the x logarithm.
//
// subs : array-like, optional
//
//	The location of the minor xticks. If *None*, reasonable locations
//	are automatically chosen depending on the number of decades in the
//	plot. See `.Axes.set_xscale` for details.
//
// nonpositive : {'mask', 'clip'}, default: 'clip'
//
//	Non-positive values in x can be masked as invalid, or clipped to a
//	very small positive number.
//
// **kwargs
//
//	All parameters supported by `.plot`.
//
// Returns
// -------
// list of `.Line2D`
//
//	Objects representing the plotted data.
//
//go:linkname Semilogx py.semilogx
func Semilogx(__llgo_va_list ...interface{}) *py.Object

// Make a plot with log scaling on the y-axis.
//
// Call signatures::
//
//	semilogy([x], y, [fmt], data=None, **kwargs)
//	semilogy([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
//
// This is just a thin wrapper around `.plot` which additionally changes
// the y-axis to log scaling. All the concepts and parameters of plot can
// be used here as well.
//
// The additional parameters *base*, *subs*, and *nonpositive* control the
// y-axis properties. They are just forwarded to `.Axes.set_yscale`.
//
// Parameters
// ----------
// base : float, default: 10
//
//	Base of the y logarithm.
//
// subs : array-like, optional
//
//	The location of the minor yticks. If *None*, reasonable locations
//	are automatically chosen depending on the number of decades in the
//	plot. See `.Axes.set_yscale` for details.
//
// nonpositive : {'mask', 'clip'}, default: 'clip'
//
//	Non-positive values in y can be masked as invalid, or clipped to a
//	very small positive number.
//
// **kwargs
//
//	All parameters supported by `.plot`.
//
// Returns
// -------
// list of `.Line2D`
//
//	Objects representing the plotted data.
//
//go:linkname Semilogy py.semilogy
func Semilogy(__llgo_va_list ...interface{}) *py.Object

// Plot a spectrogram.
//
// Compute and plot a spectrogram of data in *x*.  Data are split into
// *NFFT* length segments and the spectrum of each section is
// computed.  The windowing function *window* is applied to each
// segment, and the amount of overlap of each segment is
// specified with *noverlap*. The spectrogram is plotted as a colormap
// (using imshow).
//
// Parameters
// ----------
// x : 1-D array or sequence
//
//	Array or sequence containing the data.
//
// Fs : float, default: 2
//
//	The sampling frequency (samples per time unit).  It is used to calculate
//	the Fourier frequencies, *freqs*, in cycles per time unit.
//
// window : callable or ndarray, default: `.window_hanning`
//
//	A function or a vector of length *NFFT*.  To create window vectors see
//	`.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
//	`numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
//	function is passed as the argument, it must take a data segment as an
//	argument and return the windowed version of the segment.
//
// sides : {'default', 'onesided', 'twosided'}, optional
//
//	Which sides of the spectrum to return. 'default' is one-sided for real
//	data and two-sided for complex data. 'onesided' forces the return of a
//	one-sided spectrum, while 'twosided' forces two-sided.
//
// pad_to : int, optional
//
//	The number of points to which the data segment is padded when performing
//	the FFT.  This can be different from *NFFT*, which specifies the number
//	of data points used.  While not increasing the actual resolution of the
//	spectrum (the minimum distance between resolvable peaks), this can give
//	more points in the plot, allowing for more detail. This corresponds to
//	the *n* parameter in the call to `~numpy.fft.fft`. The default is None,
//	which sets *pad_to* equal to *NFFT*
//
// NFFT : int, default: 256
//
//	The number of data points used in each block for the FFT.  A power 2 is
//	most efficient.  This should *NOT* be used to get zero padding, or the
//	scaling of the result will be incorrect; use *pad_to* for this instead.
//
// detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
//
//	The function applied to each segment before fft-ing, designed to remove
//	the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
//	is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
//	module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
//	but you can use a custom function as well.  You can also use a string to
//	choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
//	`.detrend_mean`. 'linear' calls `.detrend_linear`.
//
// scale_by_freq : bool, default: True
//
//	Whether the resulting density values should be scaled by the scaling
//	frequency, which gives density in units of 1/Hz.  This allows for
//	integration over the returned frequency values.  The default is True for
//	MATLAB compatibility.
//
// mode : {'default', 'psd', 'magnitude', 'angle', 'phase'}
//
//	What sort of spectrum to use.  Default is 'psd', which takes the
//	power spectral density.  'magnitude' returns the magnitude
//	spectrum.  'angle' returns the phase spectrum without unwrapping.
//	'phase' returns the phase spectrum with unwrapping.
//
// noverlap : int, default: 128
//
//	The number of points of overlap between blocks.
//
// scale : {'default', 'linear', 'dB'}
//
//	The scaling of the values in the *spec*.  'linear' is no scaling.
//	'dB' returns the values in dB scale.  When *mode* is 'psd',
//	this is dB power (10 * log10).  Otherwise, this is dB amplitude
//	(20 * log10). 'default' is 'dB' if *mode* is 'psd' or
//	'magnitude' and 'linear' otherwise.  This must be 'linear'
//	if *mode* is 'angle' or 'phase'.
//
// Fc : int, default: 0
//
//	The center frequency of *x*, which offsets the x extents of the
//	plot to reflect the frequency range used when a signal is acquired
//	and then filtered and downsampled to baseband.
//
// cmap : `.Colormap`, default: :rc:`image.cmap`
//
// xextent : *None* or (xmin, xmax)
//
//	The image extent along the x-axis. The default sets *xmin* to the
//	left border of the first bin (*spectrum* column) and *xmax* to the
//	right border of the last bin. Note that for *noverlap>0* the width
//	of the bins is smaller than those of the segments.
//
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*
//
// **kwargs
//
//	Additional keyword arguments are passed on to `~.axes.Axes.imshow`
//	which makes the specgram image. The origin keyword argument
//	is not supported.
//
// Returns
// -------
// spectrum : 2D array
//
//	Columns are the periodograms of successive segments.
//
// freqs : 1-D array
//
//	The frequencies corresponding to the rows in *spectrum*.
//
// t : 1-D array
//
//	The times corresponding to midpoints of segments (i.e., the columns
//	in *spectrum*).
//
// im : `.AxesImage`
//
//	The image created by imshow containing the spectrogram.
//
// See Also
// --------
// psd
//
//	Differs in the default overlap; in returning the mean of the
//	segment periodograms; in not returning times; and in generating a
//	line plot instead of colormap.
//
// magnitude_spectrum
//
//	A single spectrum, similar to having a single segment when *mode*
//	is 'magnitude'. Plots a line instead of a colormap.
//
// angle_spectrum
//
//	A single spectrum, similar to having a single segment when *mode*
//	is 'angle'. Plots a line instead of a colormap.
//
// phase_spectrum
//
//	A single spectrum, similar to having a single segment when *mode*
//	is 'phase'. Plots a line instead of a colormap.
//
// Notes
// -----
// The parameters *detrend* and *scale_by_freq* do only apply when *mode*
// is set to 'psd'.
//
//go:linkname Specgram py.specgram
func Specgram(x *py.Object, NFFT *py.Object, Fs *py.Object, Fc *py.Object, detrend *py.Object, window *py.Object, noverlap *py.Object, cmap *py.Object, xextent *py.Object, padTo *py.Object, sides *py.Object, scaleByFreq *py.Object, mode *py.Object, scale *py.Object, vmin *py.Object, vmax *py.Object) *py.Object

// Plot the sparsity pattern of a 2D array.
//
// This visualizes the non-zero values of the array.
//
// Two plotting styles are available: image and marker. Both
// are available for full arrays, but only the marker style
// works for `scipy.sparse.spmatrix` instances.
//
// **Image style**
//
// If *marker* and *markersize* are *None*, `~.Axes.imshow` is used. Any
// extra remaining keyword arguments are passed to this method.
//
// **Marker style**
//
// If *Z* is a `scipy.sparse.spmatrix` or *marker* or *markersize* are
// *None*, a `.Line2D` object will be returned with the value of marker
// determining the marker type, and any remaining keyword arguments
// passed to `~.Axes.plot`.
//
// Parameters
// ----------
// Z : (M, N) array-like
//
//	The array to be plotted.
//
// precision : float or 'present', default: 0
//
//	If *precision* is 0, any non-zero value will be plotted. Otherwise,
//	values of :math:`|Z| > precision` will be plotted.
//
//	For `scipy.sparse.spmatrix` instances, you can also
//	pass 'present'. In this case any value present in the array
//	will be plotted, even if it is identically zero.
//
// aspect : {'equal', 'auto', None} or float, default: 'equal'
//
//	The aspect ratio of the Axes.  This parameter is particularly
//	relevant for images since it determines whether data pixels are
//	square.
//
//	This parameter is a shortcut for explicitly calling
//	`.Axes.set_aspect`. See there for further details.
//
//	- 'equal': Ensures an aspect ratio of 1. Pixels will be square.
//	- 'auto': The Axes is kept fixed and the aspect is adjusted so
//	  that the data fit in the Axes. In general, this will result in
//	  non-square pixels.
//	- *None*: Use :rc:`image.aspect`.
//
// origin : {'upper', 'lower'}, default: :rc:`image.origin`
//
//	Place the [0, 0] index of the array in the upper left or lower left
//	corner of the Axes. The convention 'upper' is typically used for
//	matrices and images.
//
// Returns
// -------
// `~matplotlib.image.AxesImage` or `.Line2D`
//
//	The return type depends on the plotting style (see above).
//
// Other Parameters
// ----------------
// **kwargs
//
//	The supported additional parameters depend on the plotting style.
//
//	For the image style, you can pass the following additional
//	parameters of `~.Axes.imshow`:
//
//	- *cmap*
//	- *alpha*
//	- *url*
//	- any `.Artist` properties (passed on to the `.AxesImage`)
//
//	For the marker style, you can pass any `.Line2D` property except
//	for *linestyle*:
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased or aa: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	color or c: color
//	dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	dashes: sequence of floats (on/off ink in points) or (None, None)
//	data: (2, N) array or two 1D arrays
//	drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
//	figure: `~matplotlib.figure.Figure`
//	fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
//	gapcolor: color or None
//	gid: str
//	in_layout: bool
//	label: object
//	linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
//	linewidth or lw: float
//	marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
//	markeredgecolor or mec: color
//	markeredgewidth or mew: float
//	markerfacecolor or mfc: color
//	markerfacecoloralt or mfcalt: color
//	markersize or ms: float
//	markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: float or callable[[Artist, Event], tuple[bool, dict]]
//	pickradius: float
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
//	solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
//	transform: unknown
//	url: str
//	visible: bool
//	xdata: 1D array
//	ydata: 1D array
//	zorder: float
//
//go:linkname Spy py.spy
func Spy(Z *py.Object, precision *py.Object, marker *py.Object, markersize *py.Object, aspect *py.Object, origin *py.Object) *py.Object

// Draw a stacked area plot.
//
// Parameters
// ----------
// x : (N,) array-like
//
// y : (M, N) array-like
//
//	The data is assumed to be unstacked. Each of the following
//	calls is legal::
//
//	    stackplot(x, y)           # where y has shape (M, N)
//	    stackplot(x, y1, y2, y3)  # where y1, y2, y3, y4 have length N
//
// baseline : {'zero', 'sym', 'wiggle', 'weighted_wiggle'}
//
//	Method used to calculate the baseline:
//
//	- ``'zero'``: Constant zero baseline, i.e. a simple stacked plot.
//	- ``'sym'``:  Symmetric around zero and is sometimes called
//	  'ThemeRiver'.
//	- ``'wiggle'``: Minimizes the sum of the squared slopes.
//	- ``'weighted_wiggle'``: Does the same but weights to account for
//	  size of each layer. It is also called 'Streamgraph'-layout. More
//	  details can be found at http://leebyron.com/streamgraph/.
//
// labels : list of str, optional
//
//	A sequence of labels to assign to each data series. If unspecified,
//	then no labels will be applied to artists.
//
// colors : list of color, optional
//
//	A sequence of colors to be cycled through and used to color the stacked
//	areas. The sequence need not be exactly the same length as the number
//	of provided *y*, in which case the colors will repeat from the
//	beginning.
//
//	If not specified, the colors from the Axes property cycle will be used.
//
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// **kwargs
//
//	All other keyword arguments are passed to `.Axes.fill_between`.
//
// Returns
// -------
// list of `.PolyCollection`
//
//	A list of `.PolyCollection` instances, one for each element in the
//	stacked area plot.
//
//go:linkname Stackplot py.stackplot
func Stackplot(x *py.Object, __llgo_va_list ...interface{}) *py.Object

// Create a stem plot.
//
// A stem plot draws lines perpendicular to a baseline at each location
// *locs* from the baseline to *heads*, and places a marker there. For
// vertical stem plots (the default), the *locs* are *x* positions, and
// the *heads* are *y* values. For horizontal stem plots, the *locs* are
// *y* positions, and the *heads* are *x* values.
//
// Call signature::
//
//	stem([locs,] heads, linefmt=None, markerfmt=None, basefmt=None)
//
// The *locs*-positions are optional. *linefmt* may be provided as
// positional, but all other formats must be provided as keyword
// arguments.
//
// Parameters
// ----------
// locs : array-like, default: (0, 1, ..., len(heads) - 1)
//
//	For vertical stem plots, the x-positions of the stems.
//	For horizontal stem plots, the y-positions of the stems.
//
// heads : array-like
//
//	For vertical stem plots, the y-values of the stem heads.
//	For horizontal stem plots, the x-values of the stem heads.
//
// linefmt : str, optional
//
//	A string defining the color and/or linestyle of the vertical lines:
//
//	=========  =============
//	Character  Line Style
//	=========  =============
//	``'-'``    solid line
//	``'--'``   dashed line
//	``'-.'``   dash-dot line
//	``':'``    dotted line
//	=========  =============
//
//	Default: 'C0-', i.e. solid line with the first color of the color
//	cycle.
//
//	Note: Markers specified through this parameter (e.g. 'x') will be
//	silently ignored. Instead, markers should be specified using
//	*markerfmt*.
//
// markerfmt : str, optional
//
//	A string defining the color and/or shape of the markers at the stem
//	heads. If the marker is not given, use the marker 'o', i.e. filled
//	circles. If the color is not given, use the color from *linefmt*.
//
// basefmt : str, default: 'C3-' ('C2-' in classic mode)
//
//	A format string defining the properties of the baseline.
//
// orientation : {'vertical', 'horizontal'}, default: 'vertical'
//
//	If 'vertical', will produce a plot with stems oriented vertically,
//	If 'horizontal', the stems will be oriented horizontally.
//
// bottom : float, default: 0
//
//	The y/x-position of the baseline (depending on orientation).
//
// label : str, default: None
//
//	The label to use for the stems in legends.
//
// data : indexable object, optional
//
//	If given, all parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception).
//
// Returns
// -------
// `.StemContainer`
//
//	The container may be treated like a tuple
//	(*markerline*, *stemlines*, *baseline*)
//
// Notes
// -----
// .. seealso::
//
//	The MATLAB function
//	`stem <https://www.mathworks.com/help/matlab/ref/stem.html>`_
//	which inspired this method.
//
//go:linkname Stem py.stem
func Stem(__llgo_va_list ...interface{}) *py.Object

// Make a step plot.
//
// Call signatures::
//
//	step(x, y, [fmt], *, data=None, where='pre', **kwargs)
//	step(x, y, [fmt], x2, y2, [fmt2], ..., *, where='pre', **kwargs)
//
// This is just a thin wrapper around `.plot` which changes some
// formatting options. Most of the concepts and parameters of plot can be
// used here as well.
//
// .. note::
//
//	This method uses a standard plot with a step drawstyle: The *x*
//	values are the reference positions and steps extend left/right/both
//	directions depending on *where*.
//
//	For the common case where you know the values and edges of the
//	steps, use `~.Axes.stairs` instead.
//
// Parameters
// ----------
// x : array-like
//
//	1D sequence of x positions. It is assumed, but not checked, that
//	it is uniformly increasing.
//
// y : array-like
//
//	1D sequence of y levels.
//
// fmt : str, optional
//
//	A format string, e.g. 'g' for a green line. See `.plot` for a more
//	detailed description.
//
//	Note: While full format strings are accepted, it is recommended to
//	only specify the color. Line styles are currently ignored (use
//	the keyword argument *linestyle* instead). Markers are accepted
//	and plotted on the given positions, however, this is a rarely
//	needed feature for step plots.
//
// where : {'pre', 'post', 'mid'}, default: 'pre'
//
//	Define where the steps should be placed:
//
//	- 'pre': The y value is continued constantly to the left from
//	  every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
//	  value ``y[i]``.
//	- 'post': The y value is continued constantly to the right from
//	  every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
//	  value ``y[i]``.
//	- 'mid': Steps occur half-way between the *x* positions.
//
// data : indexable object, optional
//
//	An object with labelled data. If given, provide the label names to
//	plot in *x* and *y*.
//
// **kwargs
//
//	Additional parameters are the same as those for `.plot`.
//
// Returns
// -------
// list of `.Line2D`
//
//	Objects representing the plotted data.
//
//go:linkname Step py.step
func Step(x *py.Object, y *py.Object, __llgo_va_list ...interface{}) *py.Object

// Draw streamlines of a vector flow.
//
// Parameters
// ----------
// x, y : 1D/2D arrays
//
//	Evenly spaced strictly increasing arrays to make a grid.  If 2D, all
//	rows of *x* must be equal and all columns of *y* must be equal; i.e.,
//	they must be as if generated by ``np.meshgrid(x_1d, y_1d)``.
//
// u, v : 2D arrays
//
//	*x* and *y*-velocities. The number of rows and columns must match
//	the length of *y* and *x*, respectively.
//
// density : float or (float, float)
//
//	Controls the closeness of streamlines. When ``density = 1``, the domain
//	is divided into a 30x30 grid. *density* linearly scales this grid.
//	Each cell in the grid can have, at most, one traversing streamline.
//	For different densities in each direction, use a tuple
//	(density_x, density_y).
//
// linewidth : float or 2D array
//
//	The width of the streamlines. With a 2D array the line width can be
//	varied across the grid. The array must have the same shape as *u*
//	and *v*.
//
// color : color or 2D array
//
//	The streamline color. If given an array, its values are converted to
//	colors using *cmap* and *norm*.  The array must have the same shape
//	as *u* and *v*.
//
// cmap, norm
//
//	Data normalization and colormapping parameters for *color*; only used
//	if *color* is an array of floats. See `~.Axes.imshow` for a detailed
//	description.
//
// arrowsize : float
//
//	Scaling factor for the arrow size.
//
// arrowstyle : str
//
//	Arrow style specification.
//	See `~matplotlib.patches.FancyArrowPatch`.
//
// minlength : float
//
//	Minimum length of streamline in axes coordinates.
//
// start_points : (N, 2) array
//
//	Coordinates of starting points for the streamlines in data coordinates
//	(the same coordinates as the *x* and *y* arrays).
//
// zorder : float
//
//	The zorder of the streamlines and arrows.
//	Artists with lower zorder values are drawn first.
//
// maxlength : float
//
//	Maximum length of streamline in axes coordinates.
//
// integration_direction : {'forward', 'backward', 'both'}, default: 'both'
//
//	Integrate the streamline in forward, backward or both directions.
//
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y*, *u*, *v*, *start_points*
//
// broken_streamlines : boolean, default: True
//
//	If False, forces streamlines to continue until they
//	leave the plot domain.  If True, they may be terminated if they
//	come too close to another streamline.
//
// Returns
// -------
// StreamplotSet
//
//	Container object with attributes
//
//	- ``lines``: `.LineCollection` of streamlines
//
//	- ``arrows``: `.PatchCollection` containing `.FancyArrowPatch`
//	  objects representing the arrows half-way along streamlines.
//
//	This container will probably change in the future to allow changes
//	to the colormap, alpha, etc. for both lines and arrows, but these
//	changes should be backward compatible.
//
//go:linkname Streamplot py.streamplot
func Streamplot(x *py.Object, y *py.Object, u *py.Object, v *py.Object, density *py.Object, linewidth *py.Object, color *py.Object, cmap *py.Object, norm *py.Object, arrowsize *py.Object, arrowstyle *py.Object, minlength *py.Object, transform *py.Object, zorder *py.Object, startPoints *py.Object, maxlength *py.Object, integrationDirection *py.Object, brokenStreamlines *py.Object) *py.Object

// Add a table to an `~.axes.Axes`.
//
// At least one of *cellText* or *cellColours* must be specified. These
// parameters must be 2D lists, in which the outer lists define the rows and
// the inner list define the column values per row. Each row must have the
// same number of elements.
//
// The table can optionally have row and column headers, which are configured
// using *rowLabels*, *rowColours*, *rowLoc* and *colLabels*, *colColours*,
// *colLoc* respectively.
//
// For finer grained control over tables, use the `.Table` class and add it to
// the axes with `.Axes.add_table`.
//
// Parameters
// ----------
// cellText : 2D list of str, optional
//
//	The texts to place into the table cells.
//
//	*Note*: Line breaks in the strings are currently not accounted for and
//	will result in the text exceeding the cell boundaries.
//
// cellColours : 2D list of colors, optional
//
//	The background colors of the cells.
//
// cellLoc : {'left', 'center', 'right'}, default: 'right'
//
//	The alignment of the text within the cells.
//
// colWidths : list of float, optional
//
//	The column widths in units of the axes. If not given, all columns will
//	have a width of *1 / ncols*.
//
// rowLabels : list of str, optional
//
//	The text of the row header cells.
//
// rowColours : list of colors, optional
//
//	The colors of the row header cells.
//
// rowLoc : {'left', 'center', 'right'}, default: 'left'
//
//	The text alignment of the row header cells.
//
// colLabels : list of str, optional
//
//	The text of the column header cells.
//
// colColours : list of colors, optional
//
//	The colors of the column header cells.
//
// colLoc : {'left', 'center', 'right'}, default: 'left'
//
//	The text alignment of the column header cells.
//
// loc : str, optional
//
//	The position of the cell with respect to *ax*. This must be one of
//	the `~.Table.codes`.
//
// bbox : `.Bbox` or [xmin, ymin, width, height], optional
//
//	A bounding box to draw the table into. If this is not *None*, this
//	overrides *loc*.
//
// edges : substring of 'BRTL' or {'open', 'closed', 'horizontal', 'vertical'}
//
//	The cell edges to be drawn with a line. See also
//	`~.Cell.visible_edges`.
//
// Returns
// -------
// `~matplotlib.table.Table`
//
//	The created table.
//
// Other Parameters
// ----------------
// **kwargs
//
//	`.Table` properties.
//
// Properties:
//
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	clip_box: `~matplotlib.transforms.BboxBase` or None
//	clip_on: bool
//	clip_path: Patch or (Path, Transform) or None
//	figure: `~matplotlib.figure.Figure`
//	fontsize: float
//	gid: str
//	in_layout: bool
//	label: object
//	mouseover: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	rasterized: bool
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	transform: `~matplotlib.transforms.Transform`
//	url: str
//	visible: bool
//	zorder: float
//
//go:linkname Table py.table
func Table(cellText *py.Object, cellColours *py.Object, cellLoc *py.Object, colWidths *py.Object, rowLabels *py.Object, rowColours *py.Object, rowLoc *py.Object, colLabels *py.Object, colColours *py.Object, colLoc *py.Object, loc *py.Object, bbox *py.Object, edges *py.Object) *py.Object

// Add text to the Axes.
//
// Add the text *s* to the Axes at location *x*, *y* in data coordinates,
// with a default “horizontalalignment“ on the “left“ and
// “verticalalignment“ at the “baseline“. See
// :doc:`/gallery/text_labels_and_annotations/text_alignment`.
//
// Parameters
// ----------
// x, y : float
//
//	The position to place the text. By default, this is in data
//	coordinates. The coordinate system can be changed using the
//	*transform* parameter.
//
// s : str
//
//	The text.
//
// fontdict : dict, default: None
//
//	.. admonition:: Discouraged
//
//	   The use of *fontdict* is discouraged. Parameters should be passed as
//	   individual keyword arguments or using dictionary-unpacking
//	   ``text(..., **fontdict)``.
//
//	A dictionary to override the default text properties. If fontdict
//	is None, the defaults are determined by `.rcParams`.
//
// Returns
// -------
// `.Text`
//
//	The created `.Text` instance.
//
// Other Parameters
// ----------------
// **kwargs : `~matplotlib.text.Text` properties.
//
//	Other miscellaneous text parameters.
//
//	Properties:
//	agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array and two offsets from the bottom left corner of the image
//	alpha: scalar or None
//	animated: bool
//	antialiased: bool
//	backgroundcolor: color
//	bbox: dict with properties for `.patches.FancyBboxPatch`
//	clip_box: unknown
//	clip_on: unknown
//	clip_path: unknown
//	color or c: color
//	figure: `~matplotlib.figure.Figure`
//	fontfamily or family or fontname: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
//	fontproperties or font or font_properties: `.font_manager.FontProperties` or `str` or `pathlib.Path`
//	fontsize or size: float or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
//	fontstretch or stretch: {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
//	fontstyle or style: {'normal', 'italic', 'oblique'}
//	fontvariant or variant: {'normal', 'small-caps'}
//	fontweight or weight: {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
//	gid: str
//	horizontalalignment or ha: {'left', 'center', 'right'}
//	in_layout: bool
//	label: object
//	linespacing: float (multiple of font size)
//	math_fontfamily: str
//	mouseover: bool
//	multialignment or ma: {'left', 'right', 'center'}
//	parse_math: bool
//	path_effects: list of `.AbstractPathEffect`
//	picker: None or bool or float or callable
//	position: (float, float)
//	rasterized: bool
//	rotation: float or {'vertical', 'horizontal'}
//	rotation_mode: {None, 'default', 'anchor'}
//	sketch_params: (scale: float, length: float, randomness: float)
//	snap: bool or None
//	text: object
//	transform: `~matplotlib.transforms.Transform`
//	transform_rotates_text: bool
//	url: str
//	usetex: bool or None
//	verticalalignment or va: {'baseline', 'bottom', 'center', 'center_baseline', 'top'}
//	visible: bool
//	wrap: bool
//	x: float
//	y: float
//	zorder: float
//
// Examples
// --------
// Individual keyword arguments can be used to override any given
// parameter::
//
//	>>> text(x, y, s, fontsize=12)
//
// The default transform specifies that text is in data coords,
// alternatively, you can specify text in axis coords ((0, 0) is
// lower-left and (1, 1) is upper-right).  The example below places
// text in the center of the Axes::
//
//	>>> text(0.5, 0.5, 'matplotlib', horizontalalignment='center',
//	...      verticalalignment='center', transform=ax.transAxes)
//
// You can put a rectangular box around the text instance (e.g., to
// set a background color) by using the keyword *bbox*.  *bbox* is
// a dictionary of `~matplotlib.patches.Rectangle`
// properties.  For example::
//
//	>>> text(x, y, s, bbox=dict(facecolor='red', alpha=0.5))
//
//go:linkname Text py.text
func Text(x *py.Object, y *py.Object, s *py.Object, fontdict *py.Object) *py.Object

// Change the appearance of ticks, tick labels, and gridlines.
//
// Tick properties that are not explicitly set using the keyword
// arguments remain unchanged unless *reset* is True. For the current
// style settings, see `.Axis.get_tick_params`.
//
// Parameters
// ----------
// axis : {'x', 'y', 'both'}, default: 'both'
//
//	The axis to which the parameters are applied.
//
// which : {'major', 'minor', 'both'}, default: 'major'
//
//	The group of ticks to which the parameters are applied.
//
// reset : bool, default: False
//
//	Whether to reset the ticks to defaults before updating them.
//
// Other Parameters
// ----------------
// direction : {'in', 'out', 'inout'}
//
//	Puts ticks inside the Axes, outside the Axes, or both.
//
// length : float
//
//	Tick length in points.
//
// width : float
//
//	Tick width in points.
//
// color : color
//
//	Tick color.
//
// pad : float
//
//	Distance in points between tick and label.
//
// labelsize : float or str
//
//	Tick label font size in points or as a string (e.g., 'large').
//
// labelcolor : color
//
//	Tick label color.
//
// labelfontfamily : str
//
//	Tick label font.
//
// colors : color
//
//	Tick color and label color.
//
// zorder : float
//
//	Tick and label zorder.
//
// bottom, top, left, right : bool
//
//	Whether to draw the respective ticks.
//
// labelbottom, labeltop, labelleft, labelright : bool
//
//	Whether to draw the respective tick labels.
//
// labelrotation : float
//
//	Tick label rotation
//
// grid_color : color
//
//	Gridline color.
//
// grid_alpha : float
//
//	Transparency of gridlines: 0 (transparent) to 1 (opaque).
//
// grid_linewidth : float
//
//	Width of gridlines in points.
//
// grid_linestyle : str
//
//	Any valid `.Line2D` line style spec.
//
// Examples
// --------
// ::
//
//	ax.tick_params(direction='out', length=6, width=2, colors='r',
//	               grid_color='r', grid_alpha=0.5)
//
// This will make all major ticks be red, pointing out of the box,
// and with dimensions 6 points by 2 points.  Tick labels will
// also be red.  Gridlines will be red and translucent.
//
//go:linkname TickParams py.tick_params
func TickParams(axis *py.Object) *py.Object

// Configure the `.ScalarFormatter` used by default for linear Axes.
//
// If a parameter is not set, the corresponding property of the formatter
// is left unchanged.
//
// Parameters
// ----------
// axis : {'x', 'y', 'both'}, default: 'both'
//
//	The axis to configure.  Only major ticks are affected.
//
// style : {'sci', 'scientific', 'plain'}
//
//	Whether to use scientific notation.
//	The formatter default is to use scientific notation.
//
// scilimits : pair of ints (m, n)
//
//	Scientific notation is used only for numbers outside the range
//	10\ :sup:`m` to 10\ :sup:`n` (and only if the formatter is
//	configured to use scientific notation at all).  Use (0, 0) to
//	include all numbers.  Use (m, m) where m != 0 to fix the order of
//	magnitude to 10\ :sup:`m`.
//	The formatter default is :rc:`axes.formatter.limits`.
//
// useOffset : bool or float
//
//	If True, the offset is calculated as needed.
//	If False, no offset is used.
//	If a numeric value, it sets the offset.
//	The formatter default is :rc:`axes.formatter.useoffset`.
//
// useLocale : bool
//
//	Whether to format the number using the current locale or using the
//	C (English) locale.  This affects e.g. the decimal separator.  The
//	formatter default is :rc:`axes.formatter.use_locale`.
//
// useMathText : bool
//
//	Render the offset and scientific notation in mathtext.
//	The formatter default is :rc:`axes.formatter.use_mathtext`.
//
// Raises
// ------
// AttributeError
//
//	If the current formatter is not a `.ScalarFormatter`.
//
//go:linkname TicklabelFormat py.ticklabel_format
func TicklabelFormat() *py.Object

// Draw contour lines on an unstructured triangular grid.
//
// Call signatures::
//
//	tricontour(triangulation, z, [levels], ...)
//	tricontour(x, y, z, [levels], *, [triangles=triangles], [mask=mask], ...)
//
// The triangular grid can be specified either by passing a `.Triangulation`
// object as the first parameter, or by passing the points *x*, *y* and
// optionally the *triangles* and a *mask*. See `.Triangulation` for an
// explanation of these parameters. If neither of *triangulation* or
// *triangles* are given, the triangulation is calculated on the fly.
//
// It is possible to pass *triangles* positionally, i.e.
// “tricontour(x, y, triangles, z, ...)“. However, this is discouraged. For more
// clarity, pass *triangles* via keyword argument.
//
// Parameters
// ----------
// triangulation : `.Triangulation`, optional
//
//	An already created triangular grid.
//
// x, y, triangles, mask
//
//	Parameters defining the triangular grid. See `.Triangulation`.
//	This is mutually exclusive with specifying *triangulation*.
//
// z : array-like
//
//	The height values over which the contour is drawn.  Color-mapping is
//	controlled by *cmap*, *norm*, *vmin*, and *vmax*.
//
//	.. note::
//	    All values in *z* must be finite. Hence, nan and inf values must
//	    either be removed or `~.Triangulation.set_mask` be used.
//
// levels : int or array-like, optional
//
//	Determines the number and positions of the contour lines / regions.
//
//	If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries to
//	automatically choose no more than *n+1* "nice" contour levels between
//	between minimum and maximum numeric values of *Z*.
//
//	If array-like, draw contour lines at the specified levels.  The values must
//	be in increasing order.
//
// Returns
// -------
// `~matplotlib.tri.TriContourSet`
//
// Other Parameters
// ----------------
// colors : color string or sequence of colors, optional
//
//	The colors of the levels, i.e., the contour lines.
//
//	The sequence is cycled for the levels in ascending order. If the sequence
//	is shorter than the number of levels, it is repeated.
//
//	As a shortcut, single color strings may be used in place of one-element
//	lists, i.e. ``'red'`` instead of ``['red']`` to color all levels with the
//	same color. This shortcut does only work for color strings, not for other
//	ways of specifying colors.
//
//	By default (value *None*), the colormap specified by *cmap* will be used.
//
// alpha : float, default: 1
//
//	The alpha blending value, between 0 (transparent) and 1 (opaque).
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
//	This parameter is ignored if *colors* is set.
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
//	This parameter is ignored if *colors* is set.
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
//	If *vmin* or *vmax* are not given, the default color scaling is based on
//	*levels*.
//
//	This parameter is ignored if *colors* is set.
//
// origin : {*None*, 'upper', 'lower', 'image'}, default: None
//
//	Determines the orientation and exact position of *z* by specifying the
//	position of ``z[0, 0]``.  This is only relevant, if *X*, *Y* are not given.
//
//	- *None*: ``z[0, 0]`` is at X=0, Y=0 in the lower left corner.
//	- 'lower': ``z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
//	- 'upper': ``z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left corner.
//	- 'image': Use the value from :rc:`image.origin`.
//
// extent : (x0, x1, y0, y1), optional
//
//	If *origin* is not *None*, then *extent* is interpreted as in `.imshow`: it
//	gives the outer pixel boundaries. In this case, the position of z[0, 0] is
//	the center of the pixel, not a corner. If *origin* is *None*, then
//	(*x0*, *y0*) is the position of z[0, 0], and (*x1*, *y1*) is the position
//	of z[-1, -1].
//
//	This argument is ignored if *X* and *Y* are specified in the call to
//	contour.
//
// locator : ticker.Locator subclass, optional
//
//	The locator is used to determine the contour levels if they are not given
//	explicitly via *levels*.
//	Defaults to `~.ticker.MaxNLocator`.
//
// extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
//
//	Determines the ``tricontour``-coloring of values that are outside the
//	*levels* range.
//
//	If 'neither', values outside the *levels* range are not colored.  If 'min',
//	'max' or 'both', color the values below, above or below and above the
//	*levels* range.
//
//	Values below ``min(levels)`` and above ``max(levels)`` are mapped to the
//	under/over values of the `.Colormap`. Note that most colormaps do not have
//	dedicated colors for these by default, so that the over and under values
//	are the edge values of the colormap.  You may want to set these values
//	explicitly using `.Colormap.set_under` and `.Colormap.set_over`.
//
//	.. note::
//
//	    An existing `.TriContourSet` does not get notified if properties of its
//	    colormap are changed. Therefore, an explicit call to
//	    `.ContourSet.changed()` is needed after modifying the colormap. The
//	    explicit call can be left out, if a colorbar is assigned to the
//	    `.TriContourSet` because it internally calls `.ContourSet.changed()`.
//
// xunits, yunits : registered units, optional
//
//	Override axis units by specifying an instance of a
//	:class:`matplotlib.units.ConversionInterface`.
//
// antialiased : bool, optional
//
//	Enable antialiasing, overriding the defaults.  For
//	filled contours, the default is *True*.  For line contours,
//	it is taken from :rc:`lines.antialiased`.
//
// linewidths : float or array-like, default: :rc:`contour.linewidth`
//
//	The line width of the contour lines.
//
//	If a number, all levels will be plotted with this linewidth.
//
//	If a sequence, the levels in ascending order will be plotted with
//	the linewidths in the order specified.
//
//	If None, this falls back to :rc:`lines.linewidth`.
//
// linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'}, optional
//
//	If *linestyles* is *None*, the default is 'solid' unless the lines are
//	monochrome.  In that case, negative contours will take their linestyle
//	from :rc:`contour.negative_linestyle` setting.
//
//	*linestyles* can also be an iterable of the above strings specifying a
//	set of linestyles to be used. If this iterable is shorter than the
//	number of contour levels it will be repeated as necessary.
//
//go:linkname Tricontour py.tricontour
func Tricontour(__llgo_va_list ...interface{}) *py.Object

// Draw contour regions on an unstructured triangular grid.
//
// Call signatures::
//
//	tricontourf(triangulation, z, [levels], ...)
//	tricontourf(x, y, z, [levels], *, [triangles=triangles], [mask=mask], ...)
//
// The triangular grid can be specified either by passing a `.Triangulation`
// object as the first parameter, or by passing the points *x*, *y* and
// optionally the *triangles* and a *mask*. See `.Triangulation` for an
// explanation of these parameters. If neither of *triangulation* or
// *triangles* are given, the triangulation is calculated on the fly.
//
// It is possible to pass *triangles* positionally, i.e.
// “tricontourf(x, y, triangles, z, ...)“. However, this is discouraged. For more
// clarity, pass *triangles* via keyword argument.
//
// Parameters
// ----------
// triangulation : `.Triangulation`, optional
//
//	An already created triangular grid.
//
// x, y, triangles, mask
//
//	Parameters defining the triangular grid. See `.Triangulation`.
//	This is mutually exclusive with specifying *triangulation*.
//
// z : array-like
//
//	The height values over which the contour is drawn.  Color-mapping is
//	controlled by *cmap*, *norm*, *vmin*, and *vmax*.
//
//	.. note::
//	    All values in *z* must be finite. Hence, nan and inf values must
//	    either be removed or `~.Triangulation.set_mask` be used.
//
// levels : int or array-like, optional
//
//	Determines the number and positions of the contour lines / regions.
//
//	If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries to
//	automatically choose no more than *n+1* "nice" contour levels between
//	between minimum and maximum numeric values of *Z*.
//
//	If array-like, draw contour lines at the specified levels.  The values must
//	be in increasing order.
//
// Returns
// -------
// `~matplotlib.tri.TriContourSet`
//
// Other Parameters
// ----------------
// colors : color string or sequence of colors, optional
//
//	The colors of the levels, i.e., the contour regions.
//
//	The sequence is cycled for the levels in ascending order. If the sequence
//	is shorter than the number of levels, it is repeated.
//
//	As a shortcut, single color strings may be used in place of one-element
//	lists, i.e. ``'red'`` instead of ``['red']`` to color all levels with the
//	same color. This shortcut does only work for color strings, not for other
//	ways of specifying colors.
//
//	By default (value *None*), the colormap specified by *cmap* will be used.
//
// alpha : float, default: 1
//
//	The alpha blending value, between 0 (transparent) and 1 (opaque).
//
// cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
//
//	The Colormap instance or registered colormap name used to map scalar data
//	to colors.
//
//	This parameter is ignored if *colors* is set.
//
// norm : str or `~matplotlib.colors.Normalize`, optional
//
//	The normalization method used to scale scalar data to the [0, 1] range
//	before mapping to colors using *cmap*. By default, a linear scaling is
//	used, mapping the lowest value to 0 and the highest to 1.
//
//	If given, this can be one of the following:
//
//	- An instance of `.Normalize` or one of its subclasses
//	  (see :ref:`colormapnorms`).
//	- A scale name, i.e. one of "linear", "log", "symlog", "logit", etc.  For a
//	  list of available scales, call `matplotlib.scale.get_scale_names()`.
//	  In that case, a suitable `.Normalize` subclass is dynamically generated
//	  and instantiated.
//
//	This parameter is ignored if *colors* is set.
//
// vmin, vmax : float, optional
//
//	When using scalar data and no explicit *norm*, *vmin* and *vmax* define
//	the data range that the colormap covers. By default, the colormap covers
//	the complete value range of the supplied data. It is an error to use
//	*vmin*/*vmax* when a *norm* instance is given (but using a `str` *norm*
//	name together with *vmin*/*vmax* is acceptable).
//
//	If *vmin* or *vmax* are not given, the default color scaling is based on
//	*levels*.
//
//	This parameter is ignored if *colors* is set.
//
// origin : {*None*, 'upper', 'lower', 'image'}, default: None
//
//	Determines the orientation and exact position of *z* by specifying the
//	position of ``z[0, 0]``.  This is only relevant, if *X*, *Y* are not given.
//
//	- *None*: ``z[0, 0]`` is at X=0, Y=0 in the lower left corner.
//	- 'lower': ``z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
//	- 'upper': ``z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left corner.
//	- 'image': Use the value from :rc:`image.origin`.
//
// extent : (x0, x1, y0, y1), optional
//
//	If *origin* is not *None*, then *extent* is interpreted as in `.imshow`: it
//	gives the outer pixel boundaries. In this case, the position of z[0, 0] is
//	the center of the pixel, not a corner. If *origin* is *None*, then
//	(*x0*, *y0*) is the position of z[0, 0], and (*x1*, *y1*) is the position
//	of z[-1, -1].
//
//	This argument is ignored if *X* and *Y* are specified in the call to
//	contour.
//
// locator : ticker.Locator subclass, optional
//
//	The locator is used to determine the contour levels if they are not given
//	explicitly via *levels*.
//	Defaults to `~.ticker.MaxNLocator`.
//
// extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
//
//	Determines the ``tricontourf``-coloring of values that are outside the
//	*levels* range.
//
//	If 'neither', values outside the *levels* range are not colored.  If 'min',
//	'max' or 'both', color the values below, above or below and above the
//	*levels* range.
//
//	Values below ``min(levels)`` and above ``max(levels)`` are mapped to the
//	under/over values of the `.Colormap`. Note that most colormaps do not have
//	dedicated colors for these by default, so that the over and under values
//	are the edge values of the colormap.  You may want to set these values
//	explicitly using `.Colormap.set_under` and `.Colormap.set_over`.
//
//	.. note::
//
//	    An existing `.TriContourSet` does not get notified if properties of its
//	    colormap are changed. Therefore, an explicit call to
//	    `.ContourSet.changed()` is needed after modifying the colormap. The
//	    explicit call can be left out, if a colorbar is assigned to the
//	    `.TriContourSet` because it internally calls `.ContourSet.changed()`.
//
// xunits, yunits : registered units, optional
//
//	Override axis units by specifying an instance of a
//	:class:`matplotlib.units.ConversionInterface`.
//
// antialiased : bool, optional
//
//	Enable antialiasing, overriding the defaults.  For
//	filled contours, the default is *True*.  For line contours,
//	it is taken from :rc:`lines.antialiased`.
//
// hatches : list[str], optional
//
//	A list of crosshatch patterns to use on the filled areas.
//	If None, no hatching will be added to the contour.
//	Hatching is supported in the PostScript, PDF, SVG and Agg
//	backends only.
//
// Notes
// -----
// `.tricontourf` fills intervals that are closed at the top; that is, for
// boundaries *z1* and *z2*, the filled region is::
//
//	z1 < Z <= z2
//
// except for the lowest interval, which is closed on both sides (i.e. it
// includes the lowest value).
//
//go:linkname Tricontourf py.tricontourf
func Tricontourf(__llgo_va_list ...interface{}) *py.Object

// Create a pseudocolor plot of an unstructured triangular grid.
//
// Call signatures::
//
//	tripcolor(triangulation, c, *, ...)
//	tripcolor(x, y, c, *, [triangles=triangles], [mask=mask], ...)
//
// The triangular grid can be specified either by passing a `.Triangulation`
// object as the first parameter, or by passing the points *x*, *y* and
// optionally the *triangles* and a *mask*. See `.Triangulation` for an
// explanation of these parameters.
//
// It is possible to pass the triangles positionally, i.e.
// “tripcolor(x, y, triangles, c, ...)“. However, this is discouraged.
// For more clarity, pass *triangles* via keyword argument.
//
// If neither of *triangulation* or *triangles* are given, the triangulation
// is calculated on the fly. In this case, it does not make sense to provide
// colors at the triangle faces via *c* or *facecolors* because there are
// multiple possible triangulations for a group of points and you don't know
// which triangles will be constructed.
//
// Parameters
// ----------
// triangulation : `.Triangulation`
//
//	An already created triangular grid.
//
// x, y, triangles, mask
//
//	Parameters defining the triangular grid. See `.Triangulation`.
//	This is mutually exclusive with specifying *triangulation*.
//
// c : array-like
//
//	The color values, either for the points or for the triangles. Which one
//	is automatically inferred from the length of *c*, i.e. does it match
//	the number of points or the number of triangles. If there are the same
//	number of points and triangles in the triangulation it is assumed that
//	color values are defined at points; to force the use of color values at
//	triangles use the keyword argument ``facecolors=c`` instead of just
//	``c``.
//	This parameter is position-only.
//
// facecolors : array-like, optional
//
//	Can be used alternatively to *c* to specify colors at the triangle
//	faces. This parameter takes precedence over *c*.
//
// shading : {'flat', 'gouraud'}, default: 'flat'
//
//	If  'flat' and the color values *c* are defined at points, the color
//	values used for each triangle are from the mean c of the triangle's
//	three points. If *shading* is 'gouraud' then color values must be
//	defined at points.
//
// other_parameters
//
//	All other parameters are the same as for `~.Axes.pcolor`.
//
//go:linkname Tripcolor py.tripcolor
func Tripcolor(__llgo_va_list ...interface{}) *py.Object

// Draw an unstructured triangular grid as lines and/or markers.
//
// Call signatures::
//
//	triplot(triangulation, ...)
//	triplot(x, y, [triangles], *, [mask=mask], ...)
//
// The triangular grid can be specified either by passing a `.Triangulation`
// object as the first parameter, or by passing the points *x*, *y* and
// optionally the *triangles* and a *mask*. If neither of *triangulation* or
// *triangles* are given, the triangulation is calculated on the fly.
//
// Parameters
// ----------
// triangulation : `.Triangulation`
//
//	An already created triangular grid.
//
// x, y, triangles, mask
//
//	Parameters defining the triangular grid. See `.Triangulation`.
//	This is mutually exclusive with specifying *triangulation*.
//
// other_parameters
//
//	All other args and kwargs are forwarded to `~.Axes.plot`.
//
// Returns
// -------
// lines : `~matplotlib.lines.Line2D`
//
//	The drawn triangles edges.
//
// markers : `~matplotlib.lines.Line2D`
//
//	The drawn marker nodes.
//
//go:linkname Triplot py.triplot
func Triplot(__llgo_va_list ...interface{}) *py.Object

// Make a violin plot.
//
// Make a violin plot for each column of *dataset* or each vector in
// sequence *dataset*.  Each filled area extends to represent the
// entire data range, with optional lines at the mean, the median,
// the minimum, the maximum, and user-specified quantiles.
//
// Parameters
// ----------
// dataset : Array or a sequence of vectors.
//
//	The input data.
//
// positions : array-like, default: [1, 2, ..., n]
//
//	The positions of the violins. The ticks and limits are
//	automatically set to match the positions.
//
// vert : bool, default: True.
//
//	If true, creates a vertical violin plot.
//	Otherwise, creates a horizontal violin plot.
//
// widths : array-like, default: 0.5
//
//	Either a scalar or a vector that sets the maximal width of
//	each violin. The default is 0.5, which uses about half of the
//	available horizontal space.
//
// showmeans : bool, default: False
//
//	If `True`, will toggle rendering of the means.
//
// showextrema : bool, default: True
//
//	If `True`, will toggle rendering of the extrema.
//
// showmedians : bool, default: False
//
//	If `True`, will toggle rendering of the medians.
//
// quantiles : array-like, default: None
//
//	If not None, set a list of floats in interval [0, 1] for each violin,
//	which stands for the quantiles that will be rendered for that
//	violin.
//
// points : int, default: 100
//
//	Defines the number of points to evaluate each of the
//	gaussian kernel density estimations at.
//
// bw_method : str, scalar or callable, optional
//
//	The method used to calculate the estimator bandwidth.  This can be
//	'scott', 'silverman', a scalar constant or a callable.  If a
//	scalar, this will be used directly as `kde.factor`.  If a
//	callable, it should take a `matplotlib.mlab.GaussianKDE` instance as
//	its only parameter and return a scalar. If None (default), 'scott'
//	is used.
//
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*dataset*
//
// Returns
// -------
// dict
//
//	A dictionary mapping each component of the violinplot to a
//	list of the corresponding collection instances created. The
//	dictionary has the following keys:
//
//	- ``bodies``: A list of the `~.collections.PolyCollection`
//	  instances containing the filled area of each violin.
//
//	- ``cmeans``: A `~.collections.LineCollection` instance that marks
//	  the mean values of each of the violin's distribution.
//
//	- ``cmins``: A `~.collections.LineCollection` instance that marks
//	  the bottom of each violin's distribution.
//
//	- ``cmaxes``: A `~.collections.LineCollection` instance that marks
//	  the top of each violin's distribution.
//
//	- ``cbars``: A `~.collections.LineCollection` instance that marks
//	  the centers of each violin's distribution.
//
//	- ``cmedians``: A `~.collections.LineCollection` instance that
//	  marks the median values of each of the violin's distribution.
//
//	- ``cquantiles``: A `~.collections.LineCollection` instance created
//	  to identify the quantile values of each of the violin's
//	  distribution.
//
//go:linkname Violinplot py.violinplot
func Violinplot(dataset *py.Object, positions *py.Object, vert *py.Object, widths *py.Object, showmeans *py.Object, showextrema *py.Object, showmedians *py.Object, quantiles *py.Object, points *py.Object, bwMethod *py.Object) *py.Object

// Plot vertical lines at each *x* from *ymin* to *ymax*.
//
// Parameters
// ----------
// x : float or array-like
//
//	x-indexes where to plot the lines.
//
// ymin, ymax : float or array-like
//
//	Respective beginning and end of each line. If scalars are
//	provided, all lines will have the same length.
//
// colors : color or list of colors, default: :rc:`lines.color`
//
// linestyles : {'solid', 'dashed', 'dashdot', 'dotted'}, default: 'solid'
//
// label : str, default: ”
//
// Returns
// -------
// `~matplotlib.collections.LineCollection`
//
// Other Parameters
// ----------------
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *ymin*, *ymax*, *colors*
//
// **kwargs : `~matplotlib.collections.LineCollection` properties.
//
// See Also
// --------
// hlines : horizontal lines
// axvline : vertical line across the Axes
//
//go:linkname Vlines py.vlines
func Vlines(x *py.Object, ymin *py.Object, ymax *py.Object, colors *py.Object, linestyles *py.Object, label *py.Object) *py.Object

// Plot the cross correlation between *x* and *y*.
//
// The correlation with lag k is defined as
// :math:`\sum_n x[n+k] \cdot y^*[n]`, where :math:`y^*` is the complex
// conjugate of :math:`y`.
//
// Parameters
// ----------
// x, y : array-like of length n
//
// detrend : callable, default: `.mlab.detrend_none` (no detrending)
//
//	A detrending function applied to *x* and *y*.  It must have the
//	signature ::
//
//	    detrend(x: np.ndarray) -> np.ndarray
//
// normed : bool, default: True
//
//	If ``True``, input vectors are normalised to unit length.
//
// usevlines : bool, default: True
//
//	Determines the plot style.
//
//	If ``True``, vertical lines are plotted from 0 to the xcorr value
//	using `.Axes.vlines`. Additionally, a horizontal line is plotted
//	at y=0 using `.Axes.axhline`.
//
//	If ``False``, markers are plotted at the xcorr values using
//	`.Axes.plot`.
//
// maxlags : int, default: 10
//
//	Number of lags to show. If None, will return all ``2 * len(x) - 1``
//	lags.
//
// Returns
// -------
// lags : array (length “2*maxlags+1“)
//
//	The lag vector.
//
// c : array  (length “2*maxlags+1“)
//
//	The auto correlation vector.
//
// line : `.LineCollection` or `.Line2D`
//
//	`.Artist` added to the Axes of the correlation:
//
//	- `.LineCollection` if *usevlines* is True.
//	- `.Line2D` if *usevlines* is False.
//
// b : `~matplotlib.lines.Line2D` or None
//
//	Horizontal line at 0 if *usevlines* is True
//	None *usevlines* is False.
//
// Other Parameters
// ----------------
// linestyle : `~matplotlib.lines.Line2D` property, optional
//
//	The linestyle for plotting the data points.
//	Only used if *usevlines* is ``False``.
//
// marker : str, default: 'o'
//
//	The marker for plotting the data points.
//	Only used if *usevlines* is ``False``.
//
// data : indexable object, optional
//
//	If given, the following parameters also accept a string ``s``, which is
//	interpreted as ``data[s]`` (unless this raises an exception):
//
//	*x*, *y*
//
// **kwargs
//
//	Additional parameters are passed to `.Axes.vlines` and
//	`.Axes.axhline` if *usevlines* is ``True``; otherwise they are
//	passed to `.Axes.plot`.
//
// Notes
// -----
// The cross correlation is performed with `numpy.correlate` with
// “mode = "full"“.
//
//go:linkname Xcorr py.xcorr
func Xcorr(x *py.Object, y *py.Object, normed *py.Object, detrend *py.Object, usevlines *py.Object, maxlags *py.Object) *py.Object

// Set the current image.
//
// This image will be the target of colormap functions like
// “pyplot.viridis“, and other functions such as `~.pyplot.clim`.  The
// current image is an attribute of the current Axes.
//
//go:linkname Sci py.sci
func Sci(im *py.Object) *py.Object

// Set a title for the Axes.
//
// Set one of the three available Axes titles. The available titles
// are positioned above the Axes in the center, flush with the left
// edge, and flush with the right edge.
//
// Parameters
// ----------
// label : str
//
//	Text to use for the title
//
// fontdict : dict
//
//	.. admonition:: Discouraged
//
//	   The use of *fontdict* is discouraged. Parameters should be passed as
//	   individual keyword arguments or using dictionary-unpacking
//	   ``set_title(..., **fontdict)``.
//
//	A dictionary controlling the appearance of the title text,
//	the default *fontdict* is::
//
//	   {'fontsize': rcParams['axes.titlesize'],
//	    'fontweight': rcParams['axes.titleweight'],
//	    'color': rcParams['axes.titlecolor'],
//	    'verticalalignment': 'baseline',
//	    'horizontalalignment': loc}
//
// loc : {'center', 'left', 'right'}, default: :rc:`axes.titlelocation`
//
//	Which title to set.
//
// y : float, default: :rc:`axes.titley`
//
//	Vertical Axes location for the title (1.0 is the top).  If
//	None (the default) and :rc:`axes.titley` is also None, y is
//	determined automatically to avoid decorators on the Axes.
//
// pad : float, default: :rc:`axes.titlepad`
//
//	The offset of the title from the top of the Axes, in points.
//
// Returns
// -------
// `.Text`
//
//	The matplotlib text instance representing the title
//
// Other Parameters
// ----------------
// **kwargs : `~matplotlib.text.Text` properties
//
//	Other keyword arguments are text properties, see `.Text` for a list
//	of valid text properties.
//
//go:linkname Title py.title
func Title(label *py.Object, fontdict *py.Object, loc *py.Object, pad *py.Object) *py.Object

// Set the label for the x-axis.
//
// Parameters
// ----------
// xlabel : str
//
//	The label text.
//
// labelpad : float, default: :rc:`axes.labelpad`
//
//	Spacing in points from the Axes bounding box including ticks
//	and tick labels.  If None, the previous value is left as is.
//
// loc : {'left', 'center', 'right'}, default: :rc:`xaxis.labellocation`
//
//	The label position. This is a high-level alternative for passing
//	parameters *x* and *horizontalalignment*.
//
// Other Parameters
// ----------------
// **kwargs : `~matplotlib.text.Text` properties
//
//	`.Text` properties control the appearance of the label.
//
// See Also
// --------
// text : Documents the properties supported by `.Text`.
//
//go:linkname Xlabel py.xlabel
func Xlabel(xlabel *py.Object, fontdict *py.Object, labelpad *py.Object) *py.Object

// Set the label for the y-axis.
//
// Parameters
// ----------
// ylabel : str
//
//	The label text.
//
// labelpad : float, default: :rc:`axes.labelpad`
//
//	Spacing in points from the Axes bounding box including ticks
//	and tick labels.  If None, the previous value is left as is.
//
// loc : {'bottom', 'center', 'top'}, default: :rc:`yaxis.labellocation`
//
//	The label position. This is a high-level alternative for passing
//	parameters *y* and *horizontalalignment*.
//
// Other Parameters
// ----------------
// **kwargs : `~matplotlib.text.Text` properties
//
//	`.Text` properties control the appearance of the label.
//
// See Also
// --------
// text : Documents the properties supported by `.Text`.
//
//go:linkname Ylabel py.ylabel
func Ylabel(ylabel *py.Object, fontdict *py.Object, labelpad *py.Object) *py.Object

// Set the xaxis' scale.
//
// Parameters
// ----------
// value : {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
//
//	The axis scale type to apply.
//
// **kwargs
//
//	Different keyword arguments are accepted, depending on the scale.
//	See the respective class keyword arguments:
//
//	- `matplotlib.scale.LinearScale`
//	- `matplotlib.scale.LogScale`
//	- `matplotlib.scale.SymmetricalLogScale`
//	- `matplotlib.scale.LogitScale`
//	- `matplotlib.scale.FuncScale`
//
// Notes
// -----
// By default, Matplotlib supports the above-mentioned scales.
// Additionally, custom scales may be registered using
// `matplotlib.scale.register_scale`. These scales can then also
// be used here.
//
//go:linkname Xscale py.xscale
func Xscale(value *py.Object) *py.Object

// Set the yaxis' scale.
//
// Parameters
// ----------
// value : {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
//
//	The axis scale type to apply.
//
// **kwargs
//
//	Different keyword arguments are accepted, depending on the scale.
//	See the respective class keyword arguments:
//
//	- `matplotlib.scale.LinearScale`
//	- `matplotlib.scale.LogScale`
//	- `matplotlib.scale.SymmetricalLogScale`
//	- `matplotlib.scale.LogitScale`
//	- `matplotlib.scale.FuncScale`
//
// Notes
// -----
// By default, Matplotlib supports the above-mentioned scales.
// Additionally, custom scales may be registered using
// `matplotlib.scale.register_scale`. These scales can then also
// be used here.
//
//go:linkname Yscale py.yscale
func Yscale(value *py.Object) *py.Object

// Set the colormap to 'autumn'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Autumn py.autumn
func Autumn() *py.Object

// Set the colormap to 'bone'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Bone py.bone
func Bone() *py.Object

// Set the colormap to 'cool'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Cool py.cool
func Cool() *py.Object

// Set the colormap to 'copper'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Copper py.copper
func Copper() *py.Object

// Set the colormap to 'flag'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Flag py.flag
func Flag() *py.Object

// Set the colormap to 'gray'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Gray py.gray
func Gray() *py.Object

// Set the colormap to 'hot'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Hot py.hot
func Hot() *py.Object

// Set the colormap to 'hsv'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Hsv py.hsv
func Hsv() *py.Object

// Set the colormap to 'jet'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Jet py.jet
func Jet() *py.Object

// Set the colormap to 'pink'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Pink py.pink
func Pink() *py.Object

// Set the colormap to 'prism'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Prism py.prism
func Prism() *py.Object

// Set the colormap to 'spring'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Spring py.spring
func Spring() *py.Object

// Set the colormap to 'summer'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Summer py.summer
func Summer() *py.Object

// Set the colormap to 'winter'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Winter py.winter
func Winter() *py.Object

// Set the colormap to 'magma'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Magma py.magma
func Magma() *py.Object

// Set the colormap to 'inferno'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Inferno py.inferno
func Inferno() *py.Object

// Set the colormap to 'plasma'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Plasma py.plasma
func Plasma() *py.Object

// Set the colormap to 'viridis'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname Viridis py.viridis
func Viridis() *py.Object

// Set the colormap to 'nipy_spectral'.
//
// This changes the default colormap as well as the colormap of the current
// image if there is one. See “help(colormaps)“ for more information.
//
//go:linkname NipySpectral py.nipy_spectral
func NipySpectral() *py.Object
