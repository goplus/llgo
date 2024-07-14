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

package clang

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

/**
 * A character string.
 *
 * The \c CXString type is used to return strings from the interface when
 * the ownership of that string might differ from one call to the next.
 * Use \c clang_getCString() to retrieve the string data and, once finished
 * with the string data, call \c clang_disposeString() to free the string.
 */
type String struct {
	Data         c.Pointer
	PrivateFlags c.Uint
}

/**
 * Retrieve the character data associated with the given string.
 */
// llgo:link String.CStr C.clang_getCString
func (String) CStr() *c.Char { return nil }

/**
 * Free the given string.
 */
// llgo:link String.Dispose C.clang_disposeString
func (String) Dispose() {}

type StringSet struct {
	Strings *String
	Count   c.Uint
}

/**
 * Free the given string set.
 */
// llgo:link (*StringSet).Dispose C.clang_disposeStringSet
func (*StringSet) Dispose() {}
