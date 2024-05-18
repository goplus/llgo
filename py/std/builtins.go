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
