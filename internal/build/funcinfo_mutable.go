/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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

package build

/*
// The current Go binding does not expose this LLVM C API property.
void LLVMSetExternallyInitialized(void *global, int value);
*/
import "C"

import (
	"unsafe"

	"github.com/xgo-dev/llvm"
)

// Metadata is rewritten after LTO, before program initialization. Tell LLVM
// that neither the pointer nor its initial count may be propagated into code.
func setFuncInfoExternallyInitialized(global llvm.Value) {
	C.LLVMSetExternallyInitialized(unsafe.Pointer(global.C), 1)
}
