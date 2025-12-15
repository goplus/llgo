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

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/clite/setjmp"
)

// Sigsetjmp saves the current execution context for non-local jumps.
// Platform-specific implementation is handled by clite/setjmp via build tags:
// - Default: uses sigsetjmp/siglongjmp
// - Linux: uses __sigsetjmp/siglongjmp
// - Baremetal/wasm: uses setjmp/longjmp
func Sigsetjmp(env unsafe.Pointer, savemask int32) int32 {
	return int32(setjmp.Sigsetjmp((*setjmp.SigjmpBuf)(env), savemask))
}

// Siglongjmp performs a non-local jump to the context saved by Sigsetjmp.
func Siglongjmp(env unsafe.Pointer, val int32) {
	setjmp.Siglongjmp((*setjmp.SigjmpBuf)(env), val)
}
