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

/*
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <signal.h>
#include <dirent.h>
#include <errno.h>
#include <sys/stat.h>
#include <sys/resource.h>
#include <sys/socket.h>
#include <sys/uio.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/sysctl.h>

static int llgo_errno(void) {
	return errno;
}

static void llgo_reset_errno() {
	errno = 0;
}

static int llgo_open(const char *path, int mode, mode_t perm) {
	return open(path, mode, perm);
}

static int llgo_fcntl(int fd, int cmd, uintptr_t arg) {
	return fcntl(fd, cmd, arg);
}

static int llgo_openat(int dirfd, const char *path, int flags, mode_t mode) {
	return openat(dirfd, path, flags, mode);
}
*/
import "C"

import (
	"syscall"
	"unsafe"
)

const (
	LLGoPackage = "noinit"
)

var _zero uintptr

func CharPtrFromString(s string) (*C.char, error) {
	a, err := syscall.ByteSliceFromString(s)
	if err != nil {
		return nil, err
	}
	return (*C.char)(unsafe.Pointer(&a[0])), nil
}

func Open(path string, mode int, perm uint32) (fd int, err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.llgo_open(_p0, C.int(mode), C.mode_t(perm)); ret >= 0 {
		return int(ret), nil
	}
	return 0, syscall.Errno(C.llgo_errno())
}

func Seek(fd int, offset int64, whence int) (newoffset int64, err error) {
	ret := C.lseek(C.int(fd), C.off_t(offset), C.int(whence))
	if ret >= 0 {
		return int64(ret), nil
	}
	return int64(ret), syscall.Errno(C.llgo_errno())
}

func Close(fd int) (err error) {
	ret := C.close(C.int(fd))
	if ret == 0 {
		return nil
	}
	return syscall.Errno(C.llgo_errno())
}

func Unlink(path string) (err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.unlink((*C.char)(_p0)); ret != 0 {
		err = syscall.Errno(ret)
	}
	return
}

func Shutdown(s int, how int) (err error) {
	if ret := C.shutdown(C.int(s), C.int(how)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Lstat(path string, stat *syscall.Stat_t) (err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.lstat((*C.char)(_p0), (*C.struct_stat)(unsafe.Pointer(stat))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Stat(path string, stat *syscall.Stat_t) (err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.stat((*C.char)(_p0), (*C.struct_stat)(unsafe.Pointer(stat))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Rmdir(path string) (err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.rmdir((*C.char)(_p0)); ret != 0 {
		err = syscall.Errno(ret)
	}
	return
}

func Mkdir(path string, mode uint32) (err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.mkdir((*C.char)(_p0), C.mode_t(mode)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Chroot(path string) (err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.chroot((*C.char)(_p0)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Chmod(path string, mode uint32) (err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.chmod((*C.char)(_p0), C.mode_t(mode)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Chown(path string, uid int, gid int) (err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.chown((*C.char)(_p0), C.uid_t(uid), C.gid_t(gid)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Fchflags(fd int, flags int) (err error) {
	if ret := C.fchflags(C.int(fd), C.uint(flags)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Fchmod(fd int, mode uint32) (err error) {
	if ret := C.fchmod(C.int(fd), C.mode_t(mode)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Fchown(fd int, uid int, gid int) (err error) {
	if ret := C.fchown(C.int(fd), C.uid_t(uid), C.gid_t(gid)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Fchdir(fd int) (err error) {
	if ret := C.fchdir(C.int(fd)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Fstat(fd int, stat *syscall.Stat_t) (err error) {
	if ret := C.fstat(C.int(fd), (*C.struct_stat)(unsafe.Pointer(stat))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Fsync(fd int) (err error) {
	if ret := C.fsync(C.int(fd)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Ftruncate(fd int, length int64) (err error) {
	if ret := C.ftruncate(C.int(fd), C.off_t(length)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func Getpid() int {
	return int(C.getpid())
}

func Dup(fd int) (int, error) {
	return int(C.dup(C.int(fd))), nil
}

func fcntl(fd int, cmd int, arg int) (val int, err error) {
	if ret := C.llgo_fcntl(C.int(fd), C.int(cmd), C.uintptr_t(arg)); ret == -1 {
		err = syscall.Errno(C.llgo_errno())
		return
	}
	return
}

func Getrusage(who int, rusage *syscall.Rusage) (err error) {
	if ret := C.getrusage(C.int(who), (*C.struct_rusage)(unsafe.Pointer(rusage))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func accept(s int, rsa *syscall.RawSockaddrAny, addrlen *uint32) (fd int, err error) {
	if ret := C.accept(C.int(s), (*C.struct_sockaddr)(unsafe.Pointer(rsa)), (*C.socklen_t)(unsafe.Pointer(addrlen))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func fdopendir(fd int) (dir uintptr, err error) {
	ret := C.fdopendir(C.int(fd))
	if ret == nil {
		return 0, syscall.Errno(C.llgo_errno())
	}
	return uintptr(unsafe.Pointer(ret)), nil
}

func closedir(dir uintptr) (err error) {
	if ret := C.closedir((*C.DIR)(unsafe.Pointer(dir))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func getcwd(buf []byte) (n int, err error) {
	ret := C.getcwd((*C.char)(unsafe.Pointer(unsafe.SliceData(buf))), C.size_t(len(buf)))
	if ret == nil {
		return 0, syscall.Errno(C.llgo_errno())
	}
	return int(C.strlen(ret)), nil
}

func getsockopt(fd, level, opt int, optval unsafe.Pointer, optlen *uint32) (err error) {
	l := C.socklen_t(*optlen)
	if ret := C.getsockopt(C.int(fd), C.int(level), C.int(opt), optval, &l); ret < 0 {
		return syscall.Errno(C.llgo_errno())
	}
	*optlen = uint32(l)
	return nil
}

func setsockopt(fd, level, opt int, optval unsafe.Pointer, optlen uint32) (err error) {
	if ret := C.setsockopt(C.int(fd), C.int(level), C.int(opt), optval, C.socklen_t(optlen)); ret < 0 {
		return syscall.Errno(C.llgo_errno())
	}
	return nil
}

func kill(pid int, signum syscall.Signal) (err error) {
	if ret := C.kill(C.pid_t(pid), C.int(signum)); ret < 0 {
		return syscall.Errno(C.llgo_errno())
	}
	return nil
}

func openat(dirfd int, path string, flags int, mode uint32) (fd int, err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return 0, err
	}
	ret := C.llgo_openat(C.int(dirfd), _p0, C.int(flags), C.mode_t(mode))
	if ret < 0 {
		return 0, syscall.Errno(C.llgo_errno())
	}
	return int(ret), nil
}

func pipe(p *[2]int32) (err error) {
	if ret := C.pipe((*C.int)(unsafe.Pointer(p))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func pread(fd int, p []byte, offset int64) (n int, err error) {
	var _p0 unsafe.Pointer
	if len(p) > 0 {
		_p0 = unsafe.Pointer(&p[0])
	} else {
		_p0 = unsafe.Pointer(&_zero)
	}
	if ret := C.pread(C.int(fd), _p0, C.size_t(len(p)), C.off_t(offset)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	n = len(p)
	return
}

func pwrite(fd int, p []byte, offset int64) (n int, err error) {
	var _p0 unsafe.Pointer
	if len(p) > 0 {
		_p0 = unsafe.Pointer(&p[0])
	} else {
		_p0 = unsafe.Pointer(&_zero)
	}
	if ret := C.pwrite(C.int(fd), _p0, C.size_t(len(p)), C.off_t(offset)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	n = len(p)
	return
}

func read(fd int, p []byte) (n int, err error) {
	var _p0 unsafe.Pointer
	if len(p) > 0 {
		_p0 = unsafe.Pointer(&p[0])
	} else {
		_p0 = unsafe.Pointer(&_zero)
	}
	if ret := C.read(C.int(fd), _p0, C.size_t(len(p))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	n = len(p)
	return
}

func write(fd int, p []byte) (n int, err error) {
	var _p0 unsafe.Pointer
	if len(p) > 0 {
		_p0 = unsafe.Pointer(&p[0])
	} else {
		_p0 = unsafe.Pointer(&_zero)
	}
	if ret := C.write(C.int(fd), _p0, C.size_t(len(p))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	n = len(p)
	return
}

func readlen(fd int, buf *byte, nbuf int) (n int, err error) {
	if ret := C.read(C.int(fd), unsafe.Pointer(buf), C.size_t(nbuf)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	n = nbuf
	return
}

func readv(fd int, iov []syscall.Iovec) (n int, err error) {
	if ret := C.readv(C.int(fd), (*C.struct_iovec)(unsafe.Pointer(&iov[0])), C.int(len(iov))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	n = len(iov)
	return
}

func writev(fd int, iov []syscall.Iovec) (n int, err error) {
	if ret := C.writev(C.int(fd), (*C.struct_iovec)(unsafe.Pointer(&iov[0])), C.int(len(iov))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	n = len(iov)
	return
}

func readdir(dir uintptr) (ent *syscall.Dirent, err error) {
	C.llgo_reset_errno()
	ret := C.readdir((*C.DIR)(unsafe.Pointer(dir)))
	if errno := C.llgo_errno(); errno != 0 {
		return nil, syscall.Errno(errno)
	}
	return (*syscall.Dirent)(unsafe.Pointer(ret)), nil
}

func readdir_r(dir uintptr, entry *syscall.Dirent, result **syscall.Dirent) (res syscall.Errno) {
	if ret := C.readdir_r((*C.DIR)(unsafe.Pointer(dir)), (*C.struct_dirent)(unsafe.Pointer(entry)), (**C.struct_dirent)(unsafe.Pointer(result))); ret != 0 {
		return syscall.Errno(ret)
	}
	return
}

func recvfrom(fd int, p []byte, flags int, rsa *syscall.RawSockaddrAny, addrlen *uint32) (n int, err error) {
	var _p0 unsafe.Pointer
	if len(p) > 0 {
		_p0 = unsafe.Pointer(&p[0])
	} else {
		_p0 = unsafe.Pointer(&_zero)
	}
	ret := C.recvfrom(C.int(fd), _p0, C.size_t(len(p)), C.int(flags), (*C.struct_sockaddr)(unsafe.Pointer(rsa)), (*C.socklen_t)(unsafe.Pointer(addrlen)))
	if ret < 0 {
		return 0, syscall.Errno(C.llgo_errno())
	}
	n = int(ret)
	return
}

func sendto(fd int, p []byte, flags int, rsa *syscall.RawSockaddrAny, addrlen uint32) (err error) {
	var _p0 unsafe.Pointer
	if len(p) > 0 {
		_p0 = unsafe.Pointer(&p[0])
	} else {
		_p0 = unsafe.Pointer(&_zero)
	}
	ret := C.sendto(C.int(fd), _p0, C.size_t(len(p)), C.int(flags), (*C.struct_sockaddr)(unsafe.Pointer(rsa)), C.socklen_t(addrlen))
	if ret < 0 {
		return syscall.Errno(C.llgo_errno())
	}
	return
}

func recvmsg(fd int, msg *syscall.Msghdr, flags int) (n int, err error) {
	ret := C.recvmsg(C.int(fd), (*C.struct_msghdr)(unsafe.Pointer(msg)), C.int(flags))
	if ret < 0 {
		return 0, syscall.Errno(C.llgo_errno())
	}
	n = int(ret)
	return
}

func sendmsg(fd int, msg *syscall.Msghdr, flags int) (n int, err error) {
	ret := C.sendmsg(C.int(fd), (*C.struct_msghdr)(unsafe.Pointer(msg)), C.int(flags))
	if ret < 0 {
		return 0, syscall.Errno(C.llgo_errno())
	}
	n = int(ret)
	return
}

func setrlimit(which int, lim *syscall.Rlimit) (err error) {
	if ret := C.setrlimit(C.int(which), (*C.struct_rlimit)(unsafe.Pointer(lim))); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func unlinkat(fd int, path string, flags int) (err error) {
	var _p0 *C.char
	_p0, err = CharPtrFromString(path)
	if err != nil {
		return
	}
	if ret := C.unlinkat(C.int(fd), _p0, C.int(flags)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}

func wait4(pid int, wstatus *C.int, options int, rusage *syscall.Rusage) (wpid int, err error) {
	ret := C.wait4(C.pid_t(pid), (*C.int)(unsafe.Pointer(wstatus)), C.int(options), (*C.struct_rusage)(unsafe.Pointer(rusage)))
	if ret < 0 {
		return 0, syscall.Errno(C.llgo_errno())
	}
	return int(ret), nil
}

func sysctl(mib []C.int, old *byte, oldlen *uintptr, new *byte, newlen uintptr) (err error) {
	var _p0 *C.int
	if len(mib) > 0 {
		_p0 = &mib[0]
	} else {
		_p0 = (*C.int)(unsafe.Pointer(&_zero))
	}
	if ret := C.sysctl(_p0, C.uint(len(mib)), unsafe.Pointer(old), (*C.size_t)(unsafe.Pointer(oldlen)), unsafe.Pointer(new), C.size_t(newlen)); ret != 0 {
		err = syscall.Errno(ret)
		return
	}
	return
}
