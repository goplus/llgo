//go:build baremetal

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

package c

import (
	_ "unsafe"
)

var Stdin FilePtr = Fopen(Str("/dev/stdin"), Str("r"))
var Stdout FilePtr = Fopen(Str("/dev/stdout"), Str("w"))
var Stderr FilePtr = Stdout

//go:linkname setvbuf C.setvbuf
func setvbuf(fp FilePtr, buf *Char, typ Int, size SizeT)

const (
	_IONBF = 2 // No buffering - immediate output
)

func init() {
	// Disable buffering for baremetal targets to ensure immediate output
	setvbuf(Stdout, nil, _IONBF, 0)
	setvbuf(Stdin, nil, _IONBF, 0)
}
