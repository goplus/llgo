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

// #include <sys/stat.h>
// #include <limits.h>
import "C"

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/syscall"
)

const (
	LLGoPackage = "decl"
)

const (
	PATH_MAX = C.PATH_MAX
)

const (
	/* get file status flags */
	F_GETFL = 3
	/* set file status flags */
	F_SETFL = 4

	/* open for reading only */
	O_RDONLY = 0x0000
	/* open for writing only */
	O_WRONLY = 0x0001
	/* open for reading and writing */
	O_RDWR = 0x0002
	/* mask for above modes */
	O_ACCMODE = 0x0003

	/* no delay */
	O_NONBLOCK = 0x00000004
	/* create if nonexistant */
	O_CREAT = 0x00000200
	/* truncate to zero length */
	O_TRUNC = 0x00000400
)

type (
	ModeT C.mode_t
	UidT  C.uid_t
	GidT  C.gid_t
	OffT  C.off_t
	DevT  C.dev_t
)

type (
	StatT = syscall.Stat_t
)

//go:linkname Errno errno
var Errno c.Int

//go:linkname Umask C.umask
func Umask(cmask ModeT) ModeT

//go:linkname Mkdir C.mkdir
func Mkdir(path *c.Char, mode ModeT) c.Int

//go:linkname Rmdir C.rmdir
func Rmdir(path *c.Char) c.Int

//go:linkname Link C.link
func Link(oldpath *c.Char, newpath *c.Char) c.Int

//go:linkname Symlink C.symlink
func Symlink(target *c.Char, linkpath *c.Char) c.Int

//go:linkname Readlink C.readlink
func Readlink(path *c.Char, buf c.Pointer, bufsize uintptr) int

//go:linkname Unlink C.unlink
func Unlink(path *c.Char) c.Int

//go:linkname Remove C.remove
func Remove(path *c.Char) c.Int

//go:linkname Rename C.rename
func Rename(oldpath *c.Char, newpath *c.Char) c.Int

//go:linkname Stat C.stat
func Stat(path *c.Char, buf *StatT) c.Int

//go:linkname Lstat C.lstat
func Lstat(path *c.Char, buf *StatT) c.Int

//go:linkname Truncate C.truncate
func Truncate(path *c.Char, length OffT) c.Int

//go:linkname Chmod C.chmod
func Chmod(path *c.Char, mode ModeT) c.Int

//go:linkname Chown C.chown
func Chown(path *c.Char, owner UidT, group GidT) c.Int

//go:linkname Lchown C.lchown
func Lchown(path *c.Char, owner UidT, group GidT) c.Int

// -----------------------------------------------------------------------------

//go:linkname Getcwd C.getcwd
func Getcwd(buffer c.Pointer, size uintptr) *c.Char

//go:linkname Chdir C.chdir
func Chdir(path *c.Char) c.Int

//go:linkname Chroot C.chroot
func Chroot(path *c.Char) c.Int

// -----------------------------------------------------------------------------

//go:linkname Environ environ
var Environ **c.Char

//go:linkname Getenv C.getenv
func Getenv(name *c.Char) *c.Char

//go:linkname Setenv C.setenv
func Setenv(name *c.Char, value *c.Char, overwrite c.Int) c.Int

//go:linkname Putenv C.putenv
func Putenv(env *c.Char) c.Int

//go:linkname Unsetenv C.unsetenv
func Unsetenv(name *c.Char) c.Int

//go:linkname Clearenv C.clearenv
func Clearenv()

// -----------------------------------------------------------------------------

//go:linkname Fchdir C.fchdir
func Fchdir(dirfd c.Int) c.Int

//go:linkname Faccessat C.faccessat
func Faccessat(dirfd c.Int, path *c.Char, mode c.Int, flags c.Int) c.Int

//go:linkname Fchmodat C.fchmodat
func Fchmodat(dirfd c.Int, path *c.Char, mode ModeT, flags c.Int) c.Int

//go:linkname Fchownat C.fchownat
func Fchownat(dirfd c.Int, path *c.Char, owner UidT, group GidT, flags c.Int) c.Int

//go:linkname Fstatat C.fstatat
func Fstatat(dirfd c.Int, path *c.Char, buf *StatT, flags c.Int) c.Int

// -----------------------------------------------------------------------------

//go:linkname Open C.open
func Open(path *c.Char, flags c.Int, __llgo_va_list ...any) c.Int

//go:linkname Openat C.openat
func Openat(dirfd c.Int, path *c.Char, flags c.Int, mode ModeT) c.Int

//go:linkname Creat C.creat
func Creat(path *c.Char, mode ModeT) c.Int

//go:linkname Fcntl C.fcntl
func Fcntl(a c.Int, b c.Int, __llgo_va_list ...any) c.Int

//go:linkname Dup C.dup
func Dup(fd c.Int) c.Int

//go:linkname Dup2 C.dup2
func Dup2(oldfd c.Int, newfd c.Int) c.Int

/* TODO(xsw):
On Alpha, IA-64, MIPS, SuperH, and SPARC/SPARC64, pipe() has the following prototype:
struct fd_pair {
	long fd[2];
};
struct fd_pair pipe(void);
*/
//go:linkname Pipe C.pipe
func Pipe(fds *[2]c.Int) c.Int

//go:linkname Mkfifo C.mkfifo
func Mkfifo(path *c.Char, mode ModeT) c.Int

//go:linkname Mknod C.mknod
func Mknod(path *c.Char, mode ModeT, dev DevT) c.Int

//go:linkname Close C.close
func Close(fd c.Int) c.Int

//go:linkname Read C.read
func Read(fd c.Int, buf c.Pointer, count uintptr) int

//go:linkname Write C.write
func Write(fd c.Int, buf c.Pointer, count uintptr) int

//go:linkname Lseek C.lseek
func Lseek(fd c.Int, offset OffT, whence c.Int) OffT

//go:linkname Fsync C.fsync
func Fsync(fd c.Int) c.Int

//go:linkname Ftruncate C.ftruncate
func Ftruncate(fd c.Int, length OffT) c.Int

//go:linkname Fchmod C.fchmod
func Fchmod(fd c.Int, mode ModeT) c.Int

//go:linkname Fchown C.fchown
func Fchown(fd c.Int, owner UidT, group GidT) c.Int

//go:linkname Fstat C.fstat
func Fstat(fd c.Int, buf *StatT) c.Int

//go:linkname Isatty C.isatty
func Isatty(fd c.Int) c.Int

// -----------------------------------------------------------------------------

// Execl(const char *path, const char *arg0, ..., /*, (char *)0, */)
//
// Execl requires the full path of the program to be provided.
//
//go:linkname Execl C.execl
func Execl(path *c.Char, __llgo_va_list ...any) c.Int

// Execle(const char *path, const char *arg0, ..., /* (char *)0, char *const envp[] */)
//
//go:linkname Execle C.execle
func Execle(path *c.Char, __llgo_va_list ...any) c.Int

// Execlp(const char *file, const char *arg0, ..., /*, (char *)0, */)
//
// Execlp only needs to provide the program name and it will search for the program in the
// paths specified in the PATH environment variable.
//
//go:linkname Execlp C.execlp
func Execlp(file *c.Char, __llgo_va_list ...any) c.Int

//go:linkname Execv C.execv
func Execv(path *c.Char, argv **c.Char) c.Int

//go:linkname Execve C.execve
func Execve(path *c.Char, argv **c.Char, envp **c.Char) c.Int

//go:linkname Execvp C.execvp
func Execvp(file *c.Char, argv **c.Char) c.Int

//go:linkname Fork C.fork
func Fork() c.Int

//go:linkname Kill C.kill
func Kill(pid c.Int, sig c.Int) c.Int

//go:linkname Exit C.exit
func Exit(c.Int)

//go:linkname Getpid C.getpid
func Getpid() c.Int

//go:linkname Getppid C.getppid
func Getppid() c.Int

//go:linkname Getuid C.getuid
func Getuid() UidT

//go:linkname Geteuid C.geteuid
func Geteuid() UidT

//go:linkname Getgid C.getgid
func Getgid() GidT

//go:linkname Getegid C.getegid
func Getegid() GidT

// -----------------------------------------------------------------------------
