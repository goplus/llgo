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

import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/internal/lib/errors"
)

var (
	Stdin  = 0
	Stdout = 1
	Stderr = 2
)

type Errno uintptr

func (e Errno) Error() string {
	ret := c.Strerror(c.Int(e))
	return unsafe.String((*byte)(unsafe.Pointer(ret)), c.Strlen(ret))
}

func (e Errno) Is(target error) bool {
	switch target {
	case ErrPermission:
		return e == EACCES || e == EPERM
	case ErrExist:
		return e == EEXIST || e == ENOTEMPTY
	case ErrNotExist:
		return e == ENOENT
	case errors.ErrUnsupported:
		return e == ENOSYS || e == ENOTSUP || e == EOPNOTSUPP
	}
	return false
}

func (e Errno) Temporary() bool {
	return e == EINTR || e == EMFILE || e == ENFILE || e.Timeout()
}

func (e Errno) Timeout() bool {
	return e == EAGAIN || e == EWOULDBLOCK || e == ETIMEDOUT
}
