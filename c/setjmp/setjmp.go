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

package setjmp

// #include <setjmp.h>
import "C"

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "decl"
)

type (
	JmpBuf    = C.jmp_buf    //cname:jmp_buf
	SigjmpBuf = C.sigjmp_buf //cname:sigjmp_buf
)

// -----------------------------------------------------------------------------

//go:linkname Setjmp C.setjmp
func Setjmp(env *JmpBuf) c.Int

//go:linkname Longjmp C.longjmp
func Longjmp(env *JmpBuf, val c.Int)

// -----------------------------------------------------------------------------

//go:linkname Siglongjmp C.siglongjmp
func Siglongjmp(env *SigjmpBuf, val c.Int)

// -----------------------------------------------------------------------------
