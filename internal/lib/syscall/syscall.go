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

package syscall

// llgo:skipall
import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/os"
)

func errnoErr(errno c.Int) error {
	panic("todo")
}

func Getcwd(buf []byte) (n int, err error) {
	ptr := unsafe.Pointer(unsafe.SliceData(buf))
	ret := os.Getcwd(ptr, uintptr(len(buf)))
	if ret != nil {
		return int(c.Strlen(ret)), nil
	}
	return 0, errnoErr(os.Errno)
}

func Getwd() (string, error) {
	wd := os.Getcwd(c.Alloca(os.PATH_MAX), os.PATH_MAX)
	if wd != nil {
		return c.GoString(wd), nil
	}
	return "", errnoErr(os.Errno)
}
