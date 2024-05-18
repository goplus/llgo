/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package std

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

// https://docs.python.org/3/library/functions.html
// https://docs.python.org/3/library/constants.html

//go:linkname Abs py.abs
func Abs(x *py.Object) *py.Object

// getattr(object, name)
//
//go:linkname GetAttr py.getattr
func GetAttr(object, name *py.Object) *py.Object

// getattr(object, name, default)
//
//go:linkname GetAttrEx py.getattr
func GetAttrEx(object, name, default_ *py.Object) *py.Object

// max(iterable, *, key=None)
// max(iterable, *, default, key=None)
// max(arg1, arg2, *args, key=None)
//
// If one positional argument is provided, it should be an iterable. The largest
// item in the iterable is returned. If two or more positional arguments are
// provided, the largest of the positional arguments is returned.
//
//go:linkname Max py.max
func Max(__llgo_va_list ...any) *py.Object

// min(iterable, *, key=None)
// min(iterable, *, default, key=None)
// min(arg1, arg2, *args, key=None)
//
//go:linkname Min py.min
func Min(__llgo_va_list ...any) *py.Object

// iter(object)
//
//go:linkname Iter py.iter
func Iter(object *py.Object) *py.Object

// next(iterator)
//
//go:linkname Next py.next
func Next(iterator *py.Object) *py.Object

// next(iterator, default)
//
// Retrieve the next item from the iterator by calling its __next__() method.
// If default is given, it is returned if the iterator is exhausted, otherwise
// StopIteration is raised.
//
//go:linkname NextEx py.next
func NextEx(iterator, default_ *py.Object) *py.Object

// awaitable anext(async_iterator)
//
//go:linkname Anext py.anext
func Anext(asyncIterator *py.Object) *py.Object

// awaitable anext(async_iterator, default)
//
// When awaited, return the next item from the given asynchronous iterator,
// or default if given and the iterator is exhausted.
//
// This is the async variant of the next() builtin, and behaves similarly.
//
// This calls the __anext__() method of async_iterator, returning an awaitable.
// Awaiting this returns the next value of the iterator. If default is given,
// it is returned if the iterator is exhausted, otherwise StopAsyncIteration is
// raised.
//
//go:linkname AnextEx py.anext
func AnextEx(asyncIterator, default_ *py.Object) *py.Object

// iter(object, sentinel)
//
//go:linkname IterEx py.iter
func IterEx(callable, sentinel *py.Object) *py.Object

// vars()
//
//go:linkname Vars py.vars
func Vars() *py.Object

// vars(object)
//
// Return the __dict__ attribute for a module, class, instance, or any other object
// with a __dict__ attribute.
//
// See https://docs.python.org/3/library/functions.html#vars
//
//go:linkname VarsEx py.vars
func VarsEx(object *py.Object) *py.Object

// dir()
//
//go:linkname Dir py.dir
func Dir() *py.Object

// dir(object)
//
//go:linkname DirEx py.dir
func DirEx(object *py.Object) *py.Object

// Invoke the built-in help system. (This function is intended for interactive
// use.) If no argument is given, the interactive help system starts on the
// interpreter console. If the argument is a string, then the string is looked
// up as the name of a module, function, class, method, keyword, or documentation
// topic, and a help page is printed on the console. If the argument is any other
// kind of object, a help page on the object is generated.
//
// Note that if a slash(/) appears in the parameter list of a function when invoking
// help(), it means that the parameters prior to the slash are positional-only. For
// more info, see the FAQ entry on positional-only parameters.
//
//go:linkname Help py.help
func Help(object *py.Object)

// breakpoint(*args, **kws)
//
// See https://docs.python.org/3/library/functions.html#breakpoint
//
//go:linkname Breakpoint py.breakpoint
func Breakpoint(__llgo_va_list ...any)
