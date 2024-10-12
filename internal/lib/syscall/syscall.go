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
	"github.com/goplus/llgo/c/syscall"
)

type Timespec syscall.Timespec
type Timeval syscall.Timeval

// Unix returns the time stored in ts as seconds plus nanoseconds.
func (ts *Timespec) Unix() (sec int64, nsec int64) {
	return int64(ts.Sec), int64(ts.Nsec)
}

// Unix returns the time stored in tv as seconds plus nanoseconds.
func (tv *Timeval) Unix() (sec int64, nsec int64) {
	return int64(tv.Sec), int64(tv.Usec) * 1000
}

// Nano returns the time stored in ts as nanoseconds.
func (ts *Timespec) Nano() int64 {
	return int64(ts.Sec)*1e9 + int64(ts.Nsec)
}

// Nano returns the time stored in tv as nanoseconds.
func (tv *Timeval) Nano() int64 {
	return int64(tv.Sec)*1e9 + int64(tv.Usec)*1000
}

func Getpagesize() int {
	panic("todo: syscall.Getpagesize")
}

func Exit(code int) {
	os.Exit(c.Int(code))
}

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

func Getpid() (pid int) {
	return int(os.Getpid())
}

func Kill(pid int, signum Signal) (err error) {
	ret := os.Kill(os.PidT(pid), c.Int(signum))
	if ret == 0 {
		return nil
	}
	return Errno(ret)
}

func fork() (uintptr, Errno) {
	ret := os.Fork()
	if ret >= 0 {
		return uintptr(ret), Errno(0)
	}
	return 0, Errno(os.Errno)
}

func wait4(pid int, wstatus *c.Int, options int, rusage *syscall.Rusage) (wpid int, err error) {
	ret := os.Wait4(os.PidT(pid), wstatus, c.Int(options), rusage)
	if ret >= 0 {
		return int(ret), nil
	}
	return 0, Errno(os.Errno)
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

func readlen(fd int, buf *byte, nbuf int) (n int, err error) {
	ret := os.Read(c.Int(fd), unsafe.Pointer(buf), uintptr(nbuf))
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
	return Errno(ret)
}

type Stat_t = syscall.Stat_t

func Lstat(path string, stat *Stat_t) (err error) {
	ret := os.Lstat(c.AllocaCStr(path), stat)
	if ret == 0 {
		return nil
	}
	return Errno(os.Errno)
}

func Stat(path string, stat *Stat_t) (err error) {
	ret := os.Stat(c.AllocaCStr(path), stat)
	if ret == 0 {
		return nil
	}
	return Errno(os.Errno)
}

func Pipe(p []int) (err error) {
	if len(p) != 2 {
		return Errno(syscall.EINVAL)
	}
	var q [2]c.Int
	ret := os.Pipe(&q)
	if ret == 0 {
		p[0] = int(q[0])
		p[1] = int(q[1])
		return nil
	}
	return Errno(ret)
}

type Rlimit syscall.Rlimit

func Getrlimit(which int, lim *Rlimit) (err error) {
	ret := os.Getrlimit(c.Int(which), (*syscall.Rlimit)(lim))
	if ret == 0 {
		return nil
	}
	return Errno(ret)
}

func setrlimit(which int, lim *Rlimit) (err error) {
	ret := os.Setrlimit(c.Int(which), (*syscall.Rlimit)(lim))
	if ret == 0 {
		return nil
	}
	return Errno(ret)
}
