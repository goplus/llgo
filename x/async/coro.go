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

package async

import (
	"unsafe"
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// llgo:link coDone llgo.coDone
func coDone(hdl unsafe.Pointer) c.Char {
	panic("should not executed")
}

// llgo:link coResume llgo.coResume
func coResume(hdl unsafe.Pointer) {
	panic("should not executed")
}

// llgo:link coReturn llgo.coReturn
func coReturn(hdl unsafe.Pointer) {
	panic("should not executed")
}
