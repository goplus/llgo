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

package os

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

// https://docs.python.org/3/library/os.html

// Rename the file or directory src to dst. If dst exists, the operation will
// fail with an OSError subclass in a number of cases:
//
// On Windows, if dst exists a FileExistsError is always raised. The operation
// may fail if src and dst are on different filesystems. Use shutil.move() to
// support moves to a different filesystem.
//
// On Unix, if src is a file and dst is a directory or vice-versa, an IsADirectoryError
// or a NotADirectoryError will be raised respectively. If both are directories and dst
// is empty, dst will be silently replaced. If dst is a non-empty directory, an OSError
// is raised. If both are files, dst will be replaced silently if the user has permission.
// The operation may fail on some Unix flavors if src and dst are on different filesystems.
// If successful, the renaming will be an atomic operation (this is a POSIX requirement).
//
//go:linkname Rename py.rename
func Rename(src, dst *py.Object) *py.Object
