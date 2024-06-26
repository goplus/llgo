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

func Getcwd(buf []byte) (n int, err error) {
	ptr := unsafe.Pointer(unsafe.SliceData(buf))
	ret := os.Getcwd(ptr, uintptr(len(buf)))
	if ret != nil {
		return int(c.Strlen(ret)), nil
	}
	return 0, Errno(os.Errno)
}

func Getwd() (string, error) {
	wd := os.Getcwd(c.Alloca(os.PATH_MAX), os.PATH_MAX)
	if wd != nil {
		return c.GoString(wd), nil
	}
	return "", Errno(os.Errno)
}

func Getenv(key string) (value string, found bool) {
	ret := os.Getenv(c.AllocaCStr(key))
	if ret != nil {
		return c.GoString(ret), true
	}
	return "", false
}

func Getpid() (pid int) {
	return int(os.Getpid())
}

func Kill(pid int, signum Signal) (err error) {
	ret := os.Kill(c.Int(pid), c.Int(signum))
	if ret == 0 {
		return nil
	}
	return Errno(os.Errno)
}

func Open(path string, mode int, perm uint32) (fd int, err error) {
	ret := os.Open(c.AllocaCStr(path), c.Int(mode), os.ModeT(perm))
	if ret >= 0 {
		return int(ret), nil
	}
	return 0, Errno(os.Errno)
}

func Seek(fd int, offset int64, whence int) (newoffset int64, err error) {
	ret := os.Lseek(c.Int(fd), os.OffT(offset), c.Int(whence))
	if ret >= 0 {
		return int64(ret), nil
	}
	return -1, Errno(os.Errno)
}

func Read(fd int, p []byte) (n int, err error) {
	ret := os.Read(c.Int(fd), unsafe.Pointer(unsafe.SliceData(p)), uintptr(len(p)))
	if ret >= 0 {
		return ret, nil // TODO(xsw): confirm err == nil (not io.EOF) when ret == 0
	}
	return 0, Errno(os.Errno)
}

func Close(fd int) (err error) {
	ret := os.Close(c.Int(fd))
	if ret == 0 {
		return nil
	}
	return Errno(os.Errno)
}
