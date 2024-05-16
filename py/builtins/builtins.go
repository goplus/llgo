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

package builtins

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const (
	LLGoPackage = "py.inspect"
)

// https://docs.python.org/3/library/functions.html
// https://docs.python.org/3/library/constants.html

// print(*objects, sep=' ', end='\n', file=None, flush=False)
//
// Print objects to the text stream file, separated by sep and followed by
// end. sep, end, file, and flush, if present, must be given as keyword
// arguments.
//
// All non-keyword arguments are converted to strings like str() does and
// written to the stream, separated by sep and followed by end. Both sep
// and end must be strings; they can also be None, which means to use the
// default values. If no objects are given, print() will just write end.
//
//go:linkname Print py.print
func Print(objects ...*py.Object)

//go:linkname PrintEx py.print
func PrintEx(__llgo_kwargs *py.Object, objects ...*py.Object)

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
