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

package unix

/*
#include <unistd.h>
*/
import "C"
import (
	"syscall"
	_ "unsafe"

	psyscall "github.com/goplus/llgo/runtime/internal/lib/syscall"
)

func faccessat(dirfd int, path string, mode uint32, flags int) error {
	p, err := psyscall.CharPtrFromString(path)
	if err != nil {
		return err
	}
	if ret := C.faccessat(C.int(dirfd), (*C.char)(p), C.int(mode), C.int(flags)); ret != 0 {
		return syscall.Errno(ret)
	}
	return nil
}
