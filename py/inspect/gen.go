package inspect

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.inspect"

// Compute the annotations dict for an object.
//
//	obj may be a callable, class, or module.
//	Passing in an object of any other type raises TypeError.
//
//	Returns a dict.  get_annotations() returns a new dict every time
//	it's called; calling it twice on the same object will return two
//	different but equivalent dicts.
//
//	This function handles several details for you:
//
//	  * If eval_str is true, values of type str will
//	    be un-stringized using eval().  This is intended
//	    for use with stringized annotations
//	    ("from __future__ import annotations").
//	  * If obj doesn't have an annotations dict, returns an
//	    empty dict.  (Functions and methods always have an
//	    annotations dict; classes, modules, and other types of
//	    callables may not.)
//	  * Ignores inherited annotations on classes.  If a class
//	    doesn't have its own annotations dict, returns an empty dict.
//	  * All accesses to object members and dict values are done
//	    using getattr() and dict.get() for safety.
//	  * Always, always, always returns a freshly-created dict.
//
//	eval_str controls whether or not values of type str are replaced
//	with the result of calling eval() on those values:
//
//	  * If eval_str is true, eval() is called on values of type str.
//	  * If eval_str is false (the default), values of type str are unchanged.
//
//	globals and locals are passed in to eval(); see the documentation
//	for eval() for more information.  If either globals or locals is
//	None, this function may replace that value with a context-specific
//	default, contingent on type(obj):
//
//	  * If obj is a module, globals defaults to obj.__dict__.
//	  * If obj is a class, globals defaults to
//	    sys.modules[obj.__module__].__dict__ and locals
//	    defaults to the obj class namespace.
//	  * If obj is a callable, globals defaults to obj.__globals__,
//	    although if obj is a wrapped function (using
//	    functools.update_wrapper()) it is first unwrapped.
//
//go:linkname GetAnnotations py.get_annotations
func GetAnnotations(obj *py.Object) *py.Object

// Return true if the object is a module.
//
//go:linkname Ismodule py.ismodule
func Ismodule(object *py.Object) *py.Object

// Return true if the object is a class.
//
//go:linkname Isclass py.isclass
func Isclass(object *py.Object) *py.Object

// Return true if the object is an instance method.
//
//go:linkname Ismethod py.ismethod
func Ismethod(object *py.Object) *py.Object

// Return true if the object is a method descriptor.
//
//	But not if ismethod() or isclass() or isfunction() are true.
//
//	This is new in Python 2.2, and, for example, is true of int.__add__.
//	An object passing this test has a __get__ attribute but not a __set__
//	attribute, but beyond that the set of attributes varies.  __name__ is
//	usually sensible, and __doc__ often is.
//
//	Methods implemented via descriptors that also pass one of the other
//	tests return false from the ismethoddescriptor() test, simply because
//	the other tests promise more -- you can, e.g., count on having the
//	__func__ attribute (etc) when an object passes ismethod().
//
//go:linkname Ismethoddescriptor py.ismethoddescriptor
func Ismethoddescriptor(object *py.Object) *py.Object

// Return true if the object is a data descriptor.
//
//	Data descriptors have a __set__ or a __delete__ attribute.  Examples are
//	properties (defined in Python) and getsets and members (defined in C).
//	Typically, data descriptors will also have __name__ and __doc__ attributes
//	(properties, getsets, and members have both of these attributes), but this
//	is not guaranteed.
//
//go:linkname Isdatadescriptor py.isdatadescriptor
func Isdatadescriptor(object *py.Object) *py.Object

// Return true if the object is a member descriptor.
//
//	Member descriptors are specialized descriptors defined in extension
//	modules.
//
//go:linkname Ismemberdescriptor py.ismemberdescriptor
func Ismemberdescriptor(object *py.Object) *py.Object

// Return true if the object is a getset descriptor.
//
//	getset descriptors are specialized descriptors defined in extension
//	modules.
//
//go:linkname Isgetsetdescriptor py.isgetsetdescriptor
func Isgetsetdescriptor(object *py.Object) *py.Object

// Return true if the object is a user-defined function.
//
//	Function objects provide these attributes:
//	    __doc__         documentation string
//	    __name__        name with which this function was defined
//	    __code__        code object containing compiled function bytecode
//	    __defaults__    tuple of any default values for arguments
//	    __globals__     global namespace in which this function was defined
//	    __annotations__ dict of parameter annotations
//	    __kwdefaults__  dict of keyword only parameters with defaults
//
//go:linkname Isfunction py.isfunction
func Isfunction(object *py.Object) *py.Object

// Return true if the object is a user-defined generator function.
//
//	Generator function objects provide the same attributes as functions.
//	See help(isfunction) for a list of attributes.
//
//go:linkname Isgeneratorfunction py.isgeneratorfunction
func Isgeneratorfunction(obj *py.Object) *py.Object

// Decorator to ensure callable is recognised as a coroutine function.
//
//go:linkname Markcoroutinefunction py.markcoroutinefunction
func Markcoroutinefunction(func_ *py.Object) *py.Object

// Return true if the object is a coroutine function.
//
//	Coroutine functions are normally defined with "async def" syntax, but may
//	be marked via markcoroutinefunction.
//
//go:linkname Iscoroutinefunction py.iscoroutinefunction
func Iscoroutinefunction(obj *py.Object) *py.Object

// Return true if the object is an asynchronous generator function.
//
//	Asynchronous generator functions are defined with "async def"
//	syntax and have "yield" expressions in their body.
//
//go:linkname Isasyncgenfunction py.isasyncgenfunction
func Isasyncgenfunction(obj *py.Object) *py.Object

// Return true if the object is an asynchronous generator.
//
//go:linkname Isasyncgen py.isasyncgen
func Isasyncgen(object *py.Object) *py.Object

// Return true if the object is a generator.
//
//	Generator objects provide these attributes:
//	    __iter__        defined to support iteration over container
//	    close           raises a new GeneratorExit exception inside the
//	                    generator to terminate the iteration
//	    gi_code         code object
//	    gi_frame        frame object or possibly None once the generator has
//	                    been exhausted
//	    gi_running      set to 1 when generator is executing, 0 otherwise
//	    next            return the next item from the container
//	    send            resumes the generator and "sends" a value that becomes
//	                    the result of the current yield-expression
//	    throw           used to raise an exception inside the generator
//
//go:linkname Isgenerator py.isgenerator
func Isgenerator(object *py.Object) *py.Object

// Return true if the object is a coroutine.
//
//go:linkname Iscoroutine py.iscoroutine
func Iscoroutine(object *py.Object) *py.Object

// Return true if object can be passed to an “await“ expression.
//
//go:linkname Isawaitable py.isawaitable
func Isawaitable(object *py.Object) *py.Object

// Return true if the object is a traceback.
//
//	Traceback objects provide these attributes:
//	    tb_frame        frame object at this level
//	    tb_lasti        index of last attempted instruction in bytecode
//	    tb_lineno       current line number in Python source code
//	    tb_next         next inner traceback object (called by this level)
//
//go:linkname Istraceback py.istraceback
func Istraceback(object *py.Object) *py.Object

// Return true if the object is a frame object.
//
//	Frame objects provide these attributes:
//	    f_back          next outer frame object (this frame's caller)
//	    f_builtins      built-in namespace seen by this frame
//	    f_code          code object being executed in this frame
//	    f_globals       global namespace seen by this frame
//	    f_lasti         index of last attempted instruction in bytecode
//	    f_lineno        current line number in Python source code
//	    f_locals        local namespace seen by this frame
//	    f_trace         tracing function for this frame, or None
//
//go:linkname Isframe py.isframe
func Isframe(object *py.Object) *py.Object

// Return true if the object is a code object.
//
//	Code objects provide these attributes:
//	    co_argcount         number of arguments (not including *, ** args
//	                        or keyword only arguments)
//	    co_code             string of raw compiled bytecode
//	    co_cellvars         tuple of names of cell variables
//	    co_consts           tuple of constants used in the bytecode
//	    co_filename         name of file in which this code object was created
//	    co_firstlineno      number of first line in Python source code
//	    co_flags            bitmap: 1=optimized | 2=newlocals | 4=*arg | 8=**arg
//	                        | 16=nested | 32=generator | 64=nofree | 128=coroutine
//	                        | 256=iterable_coroutine | 512=async_generator
//	    co_freevars         tuple of names of free variables
//	    co_posonlyargcount  number of positional only arguments
//	    co_kwonlyargcount   number of keyword only arguments (not including ** arg)
//	    co_lnotab           encoded mapping of line numbers to bytecode indices
//	    co_name             name with which this code object was defined
//	    co_names            tuple of names other than arguments and function locals
//	    co_nlocals          number of local variables
//	    co_stacksize        virtual machine stack space required
//	    co_varnames         tuple of names of arguments and local variables
//
//go:linkname Iscode py.iscode
func Iscode(object *py.Object) *py.Object

// Return true if the object is a built-in function or method.
//
//	Built-in functions and methods provide these attributes:
//	    __doc__         documentation string
//	    __name__        original name of this function or method
//	    __self__        instance to which a method is bound, or None
//
//go:linkname Isbuiltin py.isbuiltin
func Isbuiltin(object *py.Object) *py.Object

// Return true if the object is a method wrapper.
//
//go:linkname Ismethodwrapper py.ismethodwrapper
func Ismethodwrapper(object *py.Object) *py.Object

// Return true if the object is any kind of function or method.
//
//go:linkname Isroutine py.isroutine
func Isroutine(object *py.Object) *py.Object

// Return true if the object is an abstract base class (ABC).
//
//go:linkname Isabstract py.isabstract
func Isabstract(object *py.Object) *py.Object

// Return all members of an object as (name, value) pairs sorted by name.
//
//	Optionally, only return members that satisfy a given predicate.
//
//go:linkname Getmembers py.getmembers
func Getmembers(object *py.Object, predicate *py.Object) *py.Object

// Return all members of an object as (name, value) pairs sorted by name
//
//	without triggering dynamic lookup via the descriptor protocol,
//	__getattr__ or __getattribute__. Optionally, only return members that
//	satisfy a given predicate.
//
//	Note: this function may not be able to retrieve all members
//	   that getmembers can fetch (like dynamically created attributes)
//	   and may find members that getmembers can't (like descriptors
//	   that raise AttributeError). It can also return descriptor objects
//	   instead of instance members in some cases.
//
//go:linkname GetmembersStatic py.getmembers_static
func GetmembersStatic(object *py.Object, predicate *py.Object) *py.Object

// Return list of attribute-descriptor tuples.
//
//	For each name in dir(cls), the return list contains a 4-tuple
//	with these elements:
//
//	    0. The name (a string).
//
//	    1. The kind of attribute this is, one of these strings:
//	           'class method'    created via classmethod()
//	           'static method'   created via staticmethod()
//	           'property'        created via property()
//	           'method'          any other flavor of method or descriptor
//	           'data'            not a method
//
//	    2. The class which defined this attribute (a class).
//
//	    3. The object as obtained by calling getattr; if this fails, or if the
//	       resulting object does not live anywhere in the class' mro (including
//	       metaclasses) then the object is looked up in the defining class's
//	       dict (found by walking the mro).
//
//	If one of the items in dir(cls) is stored in the metaclass it will now
//	be discovered and not have None be listed as the class in which it was
//	defined.  Any items whose home class cannot be discovered are skipped.
//
//go:linkname ClassifyClassAttrs py.classify_class_attrs
func ClassifyClassAttrs(cls *py.Object) *py.Object

// Return tuple of base classes (including cls) in method resolution order.
//
//go:linkname Getmro py.getmro
func Getmro(cls *py.Object) *py.Object

// Get the object wrapped by *func*.
//
//	Follows the chain of :attr:`__wrapped__` attributes returning the last
//	object in the chain.
//
//	*stop* is an optional callback accepting an object in the wrapper chain
//	as its sole argument that allows the unwrapping to be terminated early if
//	the callback returns a true value. If the callback never returns a true
//	value, the last object in the chain is returned as usual. For example,
//	:func:`signature` uses this to stop unwrapping if any object in the
//	chain has a ``__signature__`` attribute defined.
//
//	:exc:`ValueError` is raised if a cycle is encountered.
//
//go:linkname Unwrap py.unwrap
func Unwrap(func_ *py.Object) *py.Object

// Return the indent size, in spaces, at the start of a line of text.
//
//go:linkname Indentsize py.indentsize
func Indentsize(line *py.Object) *py.Object

// Get the documentation string for an object.
//
//	All tabs are expanded to spaces.  To clean up docstrings that are
//	indented to line up with blocks of code, any whitespace than can be
//	uniformly removed from the second line onwards is removed.
//
//go:linkname Getdoc py.getdoc
func Getdoc(object *py.Object) *py.Object

// Clean up indentation from docstrings.
//
//	Any whitespace that can be uniformly removed from the second line
//	onwards is removed.
//
//go:linkname Cleandoc py.cleandoc
func Cleandoc(doc *py.Object) *py.Object

// Work out which source or compiled file an object was defined in.
//
//go:linkname Getfile py.getfile
func Getfile(object *py.Object) *py.Object

// Return the module name for a given file, or None.
//
//go:linkname Getmodulename py.getmodulename
func Getmodulename(path *py.Object) *py.Object

// Return the filename that can be used to locate an object's source.
//
//	Return None if no way can be identified to get the source.
//
//go:linkname Getsourcefile py.getsourcefile
func Getsourcefile(object *py.Object) *py.Object

// Return an absolute path to the source or compiled file for an object.
//
//	The idea is for each object to have a unique origin, so this routine
//	normalizes the result as much as possible.
//
//go:linkname Getabsfile py.getabsfile
func Getabsfile(object *py.Object, Filename *py.Object) *py.Object

// Return the module an object was defined in, or None if not found.
//
//go:linkname Getmodule py.getmodule
func Getmodule(object *py.Object, Filename *py.Object) *py.Object

// Return the entire source file and starting line number for an object.
//
//	The argument may be a module, class, method, function, traceback, frame,
//	or code object.  The source code is returned as a list of all the lines
//	in the file and the line number indexes a line in that list.  An OSError
//	is raised if the source code cannot be retrieved.
//
//go:linkname Findsource py.findsource
func Findsource(object *py.Object) *py.Object

// Get lines of comments immediately preceding an object's source code.
//
//	Returns None when source can't be found.
//
//go:linkname Getcomments py.getcomments
func Getcomments(object *py.Object) *py.Object

// Extract the block of code at the top of the given list of lines.
//
//go:linkname Getblock py.getblock
func Getblock(lines *py.Object) *py.Object

// Return a list of source lines and starting line number for an object.
//
//	The argument may be a module, class, method, function, traceback, frame,
//	or code object.  The source code is returned as a list of the lines
//	corresponding to the object and the line number indicates where in the
//	original source file the first line of code was found.  An OSError is
//	raised if the source code cannot be retrieved.
//
//go:linkname Getsourcelines py.getsourcelines
func Getsourcelines(object *py.Object) *py.Object

// Return the text of the source code for an object.
//
//	The argument may be a module, class, method, function, traceback, frame,
//	or code object.  The source code is returned as a single string.  An
//	OSError is raised if the source code cannot be retrieved.
//
//go:linkname Getsource py.getsource
func Getsource(object *py.Object) *py.Object

// Recursive helper function for getclasstree().
//
//go:linkname Walktree py.walktree
func Walktree(classes *py.Object, children *py.Object, parent *py.Object) *py.Object

// Arrange the given list of classes into a hierarchy of nested lists.
//
//	Where a nested list appears, it contains classes derived from the class
//	whose entry immediately precedes the list.  Each entry is a 2-tuple
//	containing a class and a tuple of its base classes.  If the 'unique'
//	argument is true, exactly one entry appears in the returned structure
//	for each class in the given list.  Otherwise, classes using multiple
//	inheritance and their descendants will appear multiple times.
//
//go:linkname Getclasstree py.getclasstree
func Getclasstree(classes *py.Object, unique *py.Object) *py.Object

// Get information about the arguments accepted by a code object.
//
//	Three things are returned: (args, varargs, varkw), where
//	'args' is the list of argument names. Keyword-only arguments are
//	appended. 'varargs' and 'varkw' are the names of the * and **
//	arguments or None.
//
//go:linkname Getargs py.getargs
func Getargs(co *py.Object) *py.Object

// Get the names and default values of a callable object's parameters.
//
//	A tuple of seven things is returned:
//	(args, varargs, varkw, defaults, kwonlyargs, kwonlydefaults, annotations).
//	'args' is a list of the parameter names.
//	'varargs' and 'varkw' are the names of the * and ** parameters or None.
//	'defaults' is an n-tuple of the default values of the last n parameters.
//	'kwonlyargs' is a list of keyword-only parameter names.
//	'kwonlydefaults' is a dictionary mapping names from kwonlyargs to defaults.
//	'annotations' is a dictionary mapping parameter names to annotations.
//
//	Notable differences from inspect.signature():
//	  - the "self" parameter is always reported, even for bound methods
//	  - wrapper chains defined by __wrapped__ *not* unwrapped automatically
//
//go:linkname Getfullargspec py.getfullargspec
func Getfullargspec(func_ *py.Object) *py.Object

// Get information about arguments passed into a particular frame.
//
//	A tuple of four things is returned: (args, varargs, varkw, locals).
//	'args' is a list of the argument names.
//	'varargs' and 'varkw' are the names of the * and ** arguments or None.
//	'locals' is the locals dictionary of the given frame.
//
//go:linkname Getargvalues py.getargvalues
func Getargvalues(frame *py.Object) *py.Object

// Get the mapping of arguments to values.
//
//	A dict is returned, with keys the function argument names (including the
//	names of the * and ** arguments, if any), and values the respective bound
//	values from 'positional' and 'named'.
//
//go:linkname Getcallargs py.getcallargs
func Getcallargs(func_ *py.Object, __llgo_va_list ...interface{}) *py.Object

// Get the mapping of free variables to their current values.
//
// Returns a named tuple of dicts mapping the current nonlocal, global
// and builtin references as seen by the body of the function. A final
// set of unbound names that could not be resolved is also provided.
//
//go:linkname Getclosurevars py.getclosurevars
func Getclosurevars(func_ *py.Object) *py.Object

// Get information about a frame or traceback object.
//
//	A tuple of five things is returned: the filename, the line number of
//	the current line, the function name, a list of lines of context from
//	the source code, and the index of the current line within that list.
//	The optional second argument specifies the number of lines of context
//	to return, which are centered around the current line.
//
//go:linkname Getframeinfo py.getframeinfo
func Getframeinfo(frame *py.Object, context *py.Object) *py.Object

// Get the line number from a frame object, allowing for optimization.
//
//go:linkname Getlineno py.getlineno
func Getlineno(frame *py.Object) *py.Object

// Get a list of records for a frame and all higher (calling) frames.
//
//	Each record contains a frame object, filename, line number, function
//	name, a list of lines of context, and index within the context.
//
//go:linkname Getouterframes py.getouterframes
func Getouterframes(frame *py.Object, context *py.Object) *py.Object

// Get a list of records for a traceback's frame and all lower frames.
//
//	Each record contains a frame object, filename, line number, function
//	name, a list of lines of context, and index within the context.
//
//go:linkname Getinnerframes py.getinnerframes
func Getinnerframes(tb *py.Object, context *py.Object) *py.Object

// Return the frame of the caller or None if this is not possible.
//
//go:linkname Currentframe py.currentframe
func Currentframe() *py.Object

// Return a list of records for the stack above the caller's frame.
//
//go:linkname Stack py.stack
func Stack(context *py.Object) *py.Object

// Return a list of records for the stack below the current exception.
//
//go:linkname Trace py.trace
func Trace(context *py.Object) *py.Object

// Get current state of a generator-iterator.
//
//	Possible states are:
//	  GEN_CREATED: Waiting to start execution.
//	  GEN_RUNNING: Currently being executed by the interpreter.
//	  GEN_SUSPENDED: Currently suspended at a yield expression.
//	  GEN_CLOSED: Execution has completed.
//
//go:linkname Getgeneratorstate py.getgeneratorstate
func Getgeneratorstate(generator *py.Object) *py.Object

// Get the mapping of generator local variables to their current values.
//
// A dict is returned, with the keys the local variable names and values the
// bound values.
//
//go:linkname Getgeneratorlocals py.getgeneratorlocals
func Getgeneratorlocals(generator *py.Object) *py.Object

// Get current state of a coroutine object.
//
//	Possible states are:
//	  CORO_CREATED: Waiting to start execution.
//	  CORO_RUNNING: Currently being executed by the interpreter.
//	  CORO_SUSPENDED: Currently suspended at an await expression.
//	  CORO_CLOSED: Execution has completed.
//
//go:linkname Getcoroutinestate py.getcoroutinestate
func Getcoroutinestate(coroutine *py.Object) *py.Object

// Get the mapping of coroutine local variables to their current values.
//
// A dict is returned, with the keys the local variable names and values the
// bound values.
//
//go:linkname Getcoroutinelocals py.getcoroutinelocals
func Getcoroutinelocals(coroutine *py.Object) *py.Object

// Get current state of an asynchronous generator object.
//
//	Possible states are:
//	  AGEN_CREATED: Waiting to start execution.
//	  AGEN_RUNNING: Currently being executed by the interpreter.
//	  AGEN_SUSPENDED: Currently suspended at a yield expression.
//	  AGEN_CLOSED: Execution has completed.
//
//go:linkname Getasyncgenstate py.getasyncgenstate
func Getasyncgenstate(agen *py.Object) *py.Object

// Get the mapping of asynchronous generator local variables to their current
// values.
//
// A dict is returned, with the keys the local variable names and values the
// bound values.
//
//go:linkname Getasyncgenlocals py.getasyncgenlocals
func Getasyncgenlocals(agen *py.Object) *py.Object

// Get a signature object for the passed callable.
//
//go:linkname Signature py.signature
func Signature(obj *py.Object) *py.Object
