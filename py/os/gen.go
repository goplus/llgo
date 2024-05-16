package os

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.os"

// Perform a stat system call on the given path.
//
//	path
//	  Path to be examined; can be string, bytes, a path-like object or
//	  open-file-descriptor int.
//	dir_fd
//	  If not None, it should be a file descriptor open to a directory,
//	  and path should be a relative string; path will then be relative to
//	  that directory.
//	follow_symlinks
//	  If False, and the last element of the path is a symbolic link,
//	  stat will examine the symbolic link itself instead of the file
//	  the link points to.
//
// dir_fd and follow_symlinks may not be implemented
//
//	on your platform.  If they are unavailable, using them will raise a
//	NotImplementedError.
//
// It's an error to use dir_fd or follow_symlinks when specifying path as
//
//	an open file descriptor.
//
//go:linkname Stat py.stat
func Stat(path *py.Object) *py.Object

// Use the real uid/gid to test for access to a path.
//
//	path
//	  Path to be tested; can be string, bytes, or a path-like object.
//	mode
//	  Operating-system mode bitfield.  Can be F_OK to test existence,
//	  or the inclusive-OR of R_OK, W_OK, and X_OK.
//	dir_fd
//	  If not None, it should be a file descriptor open to a directory,
//	  and path should be relative; path will then be relative to that
//	  directory.
//	effective_ids
//	  If True, access will use the effective uid/gid instead of
//	  the real uid/gid.
//	follow_symlinks
//	  If False, and the last element of the path is a symbolic link,
//	  access will examine the symbolic link itself instead of the file
//	  the link points to.
//
// dir_fd, effective_ids, and follow_symlinks may not be implemented
//
//	on your platform.  If they are unavailable, using them will raise a
//	NotImplementedError.
//
// Note that most operations will use the effective uid/gid, therefore this
//
//	routine can be used in a suid/sgid environment to test if the invoking user
//	has the specified access to the path.
//
//go:linkname Access py.access
func Access(path *py.Object, mode *py.Object) *py.Object

// Return the name of the terminal device connected to 'fd'.
//
//	fd
//	  Integer file descriptor handle.
//
//go:linkname Ttyname py.ttyname
func Ttyname(fd *py.Object) *py.Object

// Change the current working directory to the specified path.
//
// path may always be specified as a string.
// On some platforms, path may also be specified as an open file descriptor.
//
//	If this functionality is unavailable, using it raises an exception.
//
//go:linkname Chdir py.chdir
func Chdir(path *py.Object) *py.Object

// Set file flags.
//
// If follow_symlinks is False, and the last element of the path is a symbolic
//
//	link, chflags will change flags on the symbolic link itself instead of the
//	file the link points to.
//
// follow_symlinks may not be implemented on your platform.  If it is
// unavailable, using it will raise a NotImplementedError.
//
//go:linkname Chflags py.chflags
func Chflags(path *py.Object, flags *py.Object, followSymlinks *py.Object) *py.Object

// Change the access permissions of a file.
//
//	path
//	  Path to be modified.  May always be specified as a str, bytes, or a path-like object.
//	  On some platforms, path may also be specified as an open file descriptor.
//	  If this functionality is unavailable, using it raises an exception.
//	mode
//	  Operating-system mode bitfield.
//	  Be careful when using number literals for *mode*. The conventional UNIX notation for
//	  numeric modes uses an octal base, which needs to be indicated with a ``0o`` prefix in
//	  Python.
//	dir_fd
//	  If not None, it should be a file descriptor open to a directory,
//	  and path should be relative; path will then be relative to that
//	  directory.
//	follow_symlinks
//	  If False, and the last element of the path is a symbolic link,
//	  chmod will modify the symbolic link itself instead of the file
//	  the link points to.
//
// It is an error to use dir_fd or follow_symlinks when specifying path as
//
//	an open file descriptor.
//
// dir_fd and follow_symlinks may not be implemented on your platform.
//
//	If they are unavailable, using them will raise a NotImplementedError.
//
//go:linkname Chmod py.chmod
func Chmod(path *py.Object, mode *py.Object) *py.Object

// Change the access permissions of the file given by file descriptor fd.
//
//	fd
//	  The file descriptor of the file to be modified.
//	mode
//	  Operating-system mode bitfield.
//	  Be careful when using number literals for *mode*. The conventional UNIX notation for
//	  numeric modes uses an octal base, which needs to be indicated with a ``0o`` prefix in
//	  Python.
//
// Equivalent to os.chmod(fd, mode).
//
//go:linkname Fchmod py.fchmod
func Fchmod(fd *py.Object, mode *py.Object) *py.Object

// Change the access permissions of a file, without following symbolic links.
//
// If path is a symlink, this affects the link itself rather than the target.
// Equivalent to chmod(path, mode, follow_symlinks=False)."
//
//go:linkname Lchmod py.lchmod
func Lchmod(path *py.Object, mode *py.Object) *py.Object

// Change the owner and group id of path to the numeric uid and gid.\
//
//	path
//	  Path to be examined; can be string, bytes, a path-like object, or open-file-descriptor int.
//	dir_fd
//	  If not None, it should be a file descriptor open to a directory,
//	  and path should be relative; path will then be relative to that
//	  directory.
//	follow_symlinks
//	  If False, and the last element of the path is a symbolic link,
//	  stat will examine the symbolic link itself instead of the file
//	  the link points to.
//
// path may always be specified as a string.
// On some platforms, path may also be specified as an open file descriptor.
//
//	If this functionality is unavailable, using it raises an exception.
//
// If dir_fd is not None, it should be a file descriptor open to a directory,
//
//	and path should be relative; path will then be relative to that directory.
//
// If follow_symlinks is False, and the last element of the path is a symbolic
//
//	link, chown will modify the symbolic link itself instead of the file the
//	link points to.
//
// It is an error to use dir_fd or follow_symlinks when specifying path as
//
//	an open file descriptor.
//
// dir_fd and follow_symlinks may not be implemented on your platform.
//
//	If they are unavailable, using them will raise a NotImplementedError.
//
//go:linkname Chown py.chown
func Chown(path *py.Object, uid *py.Object, gid *py.Object) *py.Object

// Change the owner and group id of the file specified by file descriptor.
//
// Equivalent to os.chown(fd, uid, gid).
//
//go:linkname Fchown py.fchown
func Fchown(fd *py.Object, uid *py.Object, gid *py.Object) *py.Object

// Change the owner and group id of path to the numeric uid and gid.
//
// This function will not follow symbolic links.
// Equivalent to os.chown(path, uid, gid, follow_symlinks=False).
//
//go:linkname Lchown py.lchown
func Lchown(path *py.Object, uid *py.Object, gid *py.Object) *py.Object

// Set file flags.
//
// This function will not follow symbolic links.
// Equivalent to chflags(path, flags, follow_symlinks=False).
//
//go:linkname Lchflags py.lchflags
func Lchflags(path *py.Object, flags *py.Object) *py.Object

// Change root directory to path.
//
//go:linkname Chroot py.chroot
func Chroot(path *py.Object) *py.Object

// Return the name of the controlling terminal for this process.
//
//go:linkname Ctermid py.ctermid
func Ctermid() *py.Object

// Return a unicode string representing the current working directory.
//
//go:linkname Getcwd py.getcwd
func Getcwd() *py.Object

// Return a bytes string representing the current working directory.
//
//go:linkname Getcwdb py.getcwdb
func Getcwdb() *py.Object

// Create a hard link to a file.
//
// If either src_dir_fd or dst_dir_fd is not None, it should be a file
//
//	descriptor open to a directory, and the respective path string (src or dst)
//	should be relative; the path will then be relative to that directory.
//
// If follow_symlinks is False, and the last element of src is a symbolic
//
//	link, link will create a link to the symbolic link itself instead of the
//	file the link points to.
//
// src_dir_fd, dst_dir_fd, and follow_symlinks may not be implemented on your
//
//	platform.  If they are unavailable, using them will raise a
//	NotImplementedError.
//
//go:linkname Link py.link
func Link(src *py.Object, dst *py.Object) *py.Object

// Return a list containing the names of the files in the directory.
//
// path can be specified as either str, bytes, or a path-like object.  If path is bytes,
//
//	the filenames returned will also be bytes; in all other circumstances
//	the filenames returned will be str.
//
// If path is None, uses the path='.'.
//
//	On some platforms, path may also be specified as an open file descriptor;\
//	  the file descriptor must refer to a directory.
//	  If this functionality is unavailable, using it raises NotImplementedError.
//
// The list is in arbitrary order.  It does not include the special
// entries '.' and '..' even if they are present in the directory.
//
//go:linkname Listdir py.listdir
func Listdir(path *py.Object) *py.Object

// Perform a stat system call on the given path, without following symbolic links.
//
// Like stat(), but do not follow symbolic links.
// Equivalent to stat(path, follow_symlinks=False).
//
//go:linkname Lstat py.lstat
func Lstat(path *py.Object) *py.Object

// Create a directory.
//
// If dir_fd is not None, it should be a file descriptor open to a directory,
//
//	and path should be relative; path will then be relative to that directory.
//
// dir_fd may not be implemented on your platform.
//
//	If it is unavailable, using it will raise a NotImplementedError.
//
// The mode argument is ignored on Windows. Where it is used, the current umask
// value is first masked out.
//
//go:linkname Mkdir py.mkdir
func Mkdir(path *py.Object, mode *py.Object) *py.Object

// Add increment to the priority of process and return the new priority.
//
//go:linkname Nice py.nice
func Nice(increment *py.Object) *py.Object

// Return program scheduling priority.
//
//go:linkname Getpriority py.getpriority
func Getpriority(which *py.Object, who *py.Object) *py.Object

// Set program scheduling priority.
//
//go:linkname Setpriority py.setpriority
func Setpriority(which *py.Object, who *py.Object, priority *py.Object) *py.Object

// Remove a directory.
//
// If dir_fd is not None, it should be a file descriptor open to a directory,
//
//	and path should be relative; path will then be relative to that directory.
//
// dir_fd may not be implemented on your platform.
//
//	If it is unavailable, using it will raise a NotImplementedError.
//
//go:linkname Rmdir py.rmdir
func Rmdir(path *py.Object) *py.Object

// Create a symbolic link pointing to src named dst.
//
// target_is_directory is required on Windows if the target is to be
//
//	interpreted as a directory.  (On Windows, symlink requires
//	Windows 6.0 or greater, and raises a NotImplementedError otherwise.)
//	target_is_directory is ignored on non-Windows platforms.
//
// If dir_fd is not None, it should be a file descriptor open to a directory,
//
//	and path should be relative; path will then be relative to that directory.
//
// dir_fd may not be implemented on your platform.
//
//	If it is unavailable, using it will raise a NotImplementedError.
//
//go:linkname Symlink py.symlink
func Symlink(src *py.Object, dst *py.Object, targetIsDirectory *py.Object) *py.Object

// Execute the command in a subshell.
//
//go:linkname System py.system
func System(command *py.Object) *py.Object

// Set the current numeric umask and return the previous umask.
//
//go:linkname Umask py.umask
func Umask(mask *py.Object) *py.Object

// Return an object identifying the current operating system.
//
// The object behaves like a named tuple with the following fields:
//
//	(sysname, nodename, release, version, machine)
//
//go:linkname Uname py.uname
func Uname() *py.Object

// Remove a file (same as remove()).
//
// If dir_fd is not None, it should be a file descriptor open to a directory,
//
//	and path should be relative; path will then be relative to that directory.
//
// dir_fd may not be implemented on your platform.
//
//	If it is unavailable, using it will raise a NotImplementedError.
//
//go:linkname Unlink py.unlink
func Unlink(path *py.Object) *py.Object

// Remove a file (same as unlink()).
//
// If dir_fd is not None, it should be a file descriptor open to a directory,
//
//	and path should be relative; path will then be relative to that directory.
//
// dir_fd may not be implemented on your platform.
//
//	If it is unavailable, using it will raise a NotImplementedError.
//
//go:linkname Remove py.remove
func Remove(path *py.Object) *py.Object

// Return a collection containing process timing information.
//
// The object returned behaves like a named tuple with these fields:
//
//	(utime, stime, cutime, cstime, elapsed_time)
//
// All fields are floating point numbers.
//
//go:linkname Times py.times
func Times() *py.Object

// Execute an executable path with arguments, replacing current process.
//
//	path
//	  Path of executable file.
//	argv
//	  Tuple or list of strings.
//
//go:linkname Execv py.execv
func Execv(path *py.Object, argv *py.Object) *py.Object

// Execute an executable path with arguments, replacing current process.
//
//	path
//	  Path of executable file.
//	argv
//	  Tuple or list of strings.
//	env
//	  Dictionary of strings mapping to strings.
//
//go:linkname Execve py.execve
func Execve(path *py.Object, argv *py.Object, env *py.Object) *py.Object

// Fork a child process.
//
// Return 0 to child process and PID of child to parent process.
//
//go:linkname Fork py.fork
func Fork() *py.Object

// Get the minimum scheduling priority for policy.
//
//go:linkname SchedGetPriorityMin py.sched_get_priority_min
func SchedGetPriorityMin(policy *py.Object) *py.Object

// Voluntarily relinquish the CPU.
//
//go:linkname SchedYield py.sched_yield
func SchedYield() *py.Object

// Open a pseudo-terminal.
//
// Return a tuple of (master_fd, slave_fd) containing open file descriptors
// for both the master and slave ends.
//
//go:linkname Openpty py.openpty
func Openpty() *py.Object

// Prepare the tty of which fd is a file descriptor for a new login session.
//
// Make the calling process a session leader; make the tty the
// controlling tty, the stdin, the stdout, and the stderr of the
// calling process; close fd.
//
//go:linkname LoginTty py.login_tty
func LoginTty(fd *py.Object) *py.Object

// Fork a new process with a new pseudo-terminal as controlling tty.
//
// Returns a tuple of (pid, master_fd).
// Like fork(), return pid of 0 to the child process,
// and pid of child to the parent process.
// To both, return fd of newly opened pseudo-terminal.
//
//go:linkname Forkpty py.forkpty
func Forkpty() *py.Object

// Return the current process's effective group id.
//
//go:linkname Getegid py.getegid
func Getegid() *py.Object

// Return the current process's effective user id.
//
//go:linkname Geteuid py.geteuid
func Geteuid() *py.Object

// Return the current process's group id.
//
//go:linkname Getgid py.getgid
func Getgid() *py.Object

// Returns a list of groups to which a user belongs.
//
//	user
//	  username to lookup
//	group
//	  base group id of the user
//
//go:linkname Getgrouplist py.getgrouplist
func Getgrouplist(user *py.Object, group *py.Object) *py.Object

// Return list of supplemental group IDs for the process.
//
//go:linkname Getgroups py.getgroups
func Getgroups() *py.Object

// Return the current process id.
//
//go:linkname Getpid py.getpid
func Getpid() *py.Object

// Return the current process group id.
//
//go:linkname Getpgrp py.getpgrp
func Getpgrp() *py.Object

// Return the parent's process id.
//
// If the parent process has already exited, Windows machines will still
// return its id; others systems will return the id of the 'init' process (1).
//
//go:linkname Getppid py.getppid
func Getppid() *py.Object

// Return the current process's user id.
//
//go:linkname Getuid py.getuid
func Getuid() *py.Object

// Return the actual login name.
//
//go:linkname Getlogin py.getlogin
func Getlogin() *py.Object

// Kill a process with a signal.
//
//go:linkname Kill py.kill
func Kill(pid *py.Object, signal *py.Object) *py.Object

// Kill a process group with a signal.
//
//go:linkname Killpg py.killpg
func Killpg(pgid *py.Object, signal *py.Object) *py.Object

// Set the current process's user id.
//
//go:linkname Setuid py.setuid
func Setuid(uid *py.Object) *py.Object

// Set the current process's effective user id.
//
//go:linkname Seteuid py.seteuid
func Seteuid(euid *py.Object) *py.Object

// Set the current process's real and effective user ids.
//
//go:linkname Setreuid py.setreuid
func Setreuid(ruid *py.Object, euid *py.Object) *py.Object

// Set the current process's group id.
//
//go:linkname Setgid py.setgid
func Setgid(gid *py.Object) *py.Object

// Set the current process's effective group id.
//
//go:linkname Setegid py.setegid
func Setegid(egid *py.Object) *py.Object

// Set the current process's real and effective group ids.
//
//go:linkname Setregid py.setregid
func Setregid(rgid *py.Object, egid *py.Object) *py.Object

// Set the groups of the current process to list.
//
//go:linkname Setgroups py.setgroups
func Setgroups(groups *py.Object) *py.Object

// Initialize the group access list.
//
// Call the system initgroups() to initialize the group access list with all of
// the groups of which the specified username is a member, plus the specified
// group id.
//
//go:linkname Initgroups py.initgroups
func Initgroups(username *py.Object, gid *py.Object) *py.Object

// Call the system call getpgid(), and return the result.
//
//go:linkname Getpgid py.getpgid
func Getpgid(pid *py.Object) *py.Object

// Make the current process the leader of its process group.
//
//go:linkname Setpgrp py.setpgrp
func Setpgrp() *py.Object

// Wait for completion of a child process.
//
// Returns a tuple of information about the child process:
//
//	(pid, status)
//
//go:linkname Wait py.wait
func Wait() *py.Object

// Wait for completion of a child process.
//
// Returns a tuple of information about the child process:
//
//	(pid, status, rusage)
//
//go:linkname Wait3 py.wait3
func Wait3(options *py.Object) *py.Object

// Wait for completion of a specific child process.
//
// Returns a tuple of information about the child process:
//
//	(pid, status, rusage)
//
//go:linkname Wait4 py.wait4
func Wait4(pid *py.Object, options *py.Object) *py.Object

// Wait for completion of a given child process.
//
// Returns a tuple of information regarding the child process:
//
//	(pid, status)
//
// The options argument is ignored on Windows.
//
//go:linkname Waitpid py.waitpid
func Waitpid(pid *py.Object, options *py.Object) *py.Object

// Call the system call getsid(pid) and return the result.
//
//go:linkname Getsid py.getsid
func Getsid(pid *py.Object) *py.Object

// Call the system call setsid().
//
//go:linkname Setsid py.setsid
func Setsid() *py.Object

// Call the system call setpgid(pid, pgrp).
//
//go:linkname Setpgid py.setpgid
func Setpgid(pid *py.Object, pgrp *py.Object) *py.Object

// Return the process group associated with the terminal specified by fd.
//
//go:linkname Tcgetpgrp py.tcgetpgrp
func Tcgetpgrp(fd *py.Object) *py.Object

// Set the process group associated with the terminal specified by fd.
//
//go:linkname Tcsetpgrp py.tcsetpgrp
func Tcsetpgrp(fd *py.Object, pgid *py.Object) *py.Object

// Open a file for low level IO.  Returns a file descriptor (integer).
//
// If dir_fd is not None, it should be a file descriptor open to a directory,
//
//	and path should be relative; path will then be relative to that directory.
//
// dir_fd may not be implemented on your platform.
//
//	If it is unavailable, using it will raise a NotImplementedError.
//
//go:linkname Open py.open
func Open(path *py.Object, flags *py.Object, mode *py.Object) *py.Object

// Close a file descriptor.
//
//go:linkname Close py.close
func Close(fd *py.Object) *py.Object

// Closes all file descriptors in [fd_low, fd_high), ignoring errors.
//
//go:linkname Closerange py.closerange
func Closerange(fdLow *py.Object, fdHigh *py.Object) *py.Object

// Return a string describing the encoding of a terminal's file descriptor.
//
// The file descriptor must be attached to a terminal.
// If the device is not a terminal, return None.
//
//go:linkname DeviceEncoding py.device_encoding
func DeviceEncoding(fd *py.Object) *py.Object

// Return a duplicate of a file descriptor.
//
//go:linkname Dup py.dup
func Dup(fd *py.Object) *py.Object

// Duplicate file descriptor.
//
//go:linkname Dup2 py.dup2
func Dup2(fd *py.Object, fd2 *py.Object, inheritable *py.Object) *py.Object

// Apply, test or remove a POSIX lock on an open file descriptor.
//
//	fd
//	  An open file descriptor.
//	command
//	  One of F_LOCK, F_TLOCK, F_ULOCK or F_TEST.
//	length
//	  The number of bytes to lock, starting at the current position.
//
//go:linkname Lockf py.lockf
func Lockf(fd *py.Object, command *py.Object, length *py.Object) *py.Object

// Set the position of a file descriptor.  Return the new position.
//
//	fd
//	  An open file descriptor, as returned by os.open().
//	position
//	  Position, interpreted relative to 'whence'.
//	whence
//	  The relative position to seek from. Valid values are:
//	  - SEEK_SET: seek from the start of the file.
//	  - SEEK_CUR: seek from the current file position.
//	  - SEEK_END: seek from the end of the file.
//
// The return value is the number of bytes relative to the beginning of the file.
//
//go:linkname Lseek py.lseek
func Lseek(fd *py.Object, position *py.Object, whence *py.Object) *py.Object

// Read from a file descriptor.  Returns a bytes object.
//
//go:linkname Read py.read
func Read(fd *py.Object, length *py.Object) *py.Object

// Read from a file descriptor fd into an iterable of buffers.
//
// The buffers should be mutable buffers accepting bytes.
// readv will transfer data into each buffer until it is full
// and then move on to the next buffer in the sequence to hold
// the rest of the data.
//
// readv returns the total number of bytes read,
// which may be less than the total capacity of all the buffers.
//
//go:linkname Readv py.readv
func Readv(fd *py.Object, buffers *py.Object) *py.Object

// Read a number of bytes from a file descriptor starting at a particular offset.
//
// Read length bytes from file descriptor fd, starting at offset bytes from
// the beginning of the file.  The file offset remains unchanged.
//
//go:linkname Pread py.pread
func Pread(fd *py.Object, length *py.Object, offset *py.Object) *py.Object

// Reads from a file descriptor into a number of mutable bytes-like objects.
//
// Combines the functionality of readv() and pread(). As readv(), it will
// transfer data into each buffer until it is full and then move on to the next
// buffer in the sequence to hold the rest of the data. Its fourth argument,
// specifies the file offset at which the input operation is to be performed. It
// will return the total number of bytes read (which can be less than the total
// capacity of all the objects).
//
// The flags argument contains a bitwise OR of zero or more of the following flags:
//
// - RWF_HIPRI
// - RWF_NOWAIT
//
// Using non-zero flags requires Linux 4.6 or newer.
//
//go:linkname Preadv py.preadv
func Preadv(fd *py.Object, buffers *py.Object, offset *py.Object, flags *py.Object) *py.Object

// Write a bytes object to a file descriptor.
//
//go:linkname Write py.write
func Write(fd *py.Object, data *py.Object) *py.Object

// Iterate over buffers, and write the contents of each to a file descriptor.
//
// Returns the total number of bytes written.
// buffers must be a sequence of bytes-like objects.
//
//go:linkname Writev py.writev
func Writev(fd *py.Object, buffers *py.Object) *py.Object

// Write bytes to a file descriptor starting at a particular offset.
//
// Write buffer to fd, starting at offset bytes from the beginning of
// the file.  Returns the number of bytes writte.  Does not change the
// current file offset.
//
//go:linkname Pwrite py.pwrite
func Pwrite(fd *py.Object, buffer *py.Object, offset *py.Object) *py.Object

// Writes the contents of bytes-like objects to a file descriptor at a given offset.
//
// Combines the functionality of writev() and pwrite(). All buffers must be a sequence
// of bytes-like objects. Buffers are processed in array order. Entire contents of first
// buffer is written before proceeding to second, and so on. The operating system may
// set a limit (sysconf() value SC_IOV_MAX) on the number of buffers that can be used.
// This function writes the contents of each object to the file descriptor and returns
// the total number of bytes written.
//
// The flags argument contains a bitwise OR of zero or more of the following flags:
//
// - RWF_DSYNC
// - RWF_SYNC
// - RWF_APPEND
//
// Using non-zero flags requires Linux 4.7 or newer.
//
//go:linkname Pwritev py.pwritev
func Pwritev(fd *py.Object, buffers *py.Object, offset *py.Object, flags *py.Object) *py.Object

// Copy count bytes from file descriptor in_fd to file descriptor out_fd.
//
//go:linkname Sendfile py.sendfile
func Sendfile(outFd *py.Object, inFd *py.Object, offset *py.Object, count *py.Object, headers *py.Object, trailers *py.Object, flags *py.Object) *py.Object

// Perform a stat system call on the given file descriptor.
//
// Like stat(), but for an open file descriptor.
// Equivalent to os.stat(fd).
//
//go:linkname Fstat py.fstat
func Fstat(fd *py.Object) *py.Object

// Return True if the fd is connected to a terminal.
//
// Return True if the file descriptor is an open file descriptor
// connected to the slave end of a terminal.
//
//go:linkname Isatty py.isatty
func Isatty(fd *py.Object) *py.Object

// Create a pipe.
//
// Returns a tuple of two file descriptors:
//
//	(read_fd, write_fd)
//
//go:linkname Pipe py.pipe
func Pipe() *py.Object

// Create a "fifo" (a POSIX named pipe).
//
// If dir_fd is not None, it should be a file descriptor open to a directory,
//
//	and path should be relative; path will then be relative to that directory.
//
// dir_fd may not be implemented on your platform.
//
//	If it is unavailable, using it will raise a NotImplementedError.
//
//go:linkname Mkfifo py.mkfifo
func Mkfifo(path *py.Object, mode *py.Object) *py.Object

// Create a node in the file system.
//
// Create a node in the file system (file, device special file or named pipe)
// at path.  mode specifies both the permissions to use and the
// type of node to be created, being combined (bitwise OR) with one of
// S_IFREG, S_IFCHR, S_IFBLK, and S_IFIFO.  If S_IFCHR or S_IFBLK is set on mode,
// device defines the newly created device special file (probably using
// os.makedev()).  Otherwise device is ignored.
//
// If dir_fd is not None, it should be a file descriptor open to a directory,
//
//	and path should be relative; path will then be relative to that directory.
//
// dir_fd may not be implemented on your platform.
//
//	If it is unavailable, using it will raise a NotImplementedError.
//
//go:linkname Mknod py.mknod
func Mknod(path *py.Object, mode *py.Object, device *py.Object) *py.Object

// Extracts a device major number from a raw device number.
//
//go:linkname Major py.major
func Major(device *py.Object) *py.Object

// Extracts a device minor number from a raw device number.
//
//go:linkname Minor py.minor
func Minor(device *py.Object) *py.Object

// Composes a raw device number from the major and minor device numbers.
//
//go:linkname Makedev py.makedev
func Makedev(major *py.Object, minor *py.Object) *py.Object

// Truncate a file, specified by file descriptor, to a specific length.
//
//go:linkname Ftruncate py.ftruncate
func Ftruncate(fd *py.Object, length *py.Object) *py.Object

// Truncate a file, specified by path, to a specific length.
//
// On some platforms, path may also be specified as an open file descriptor.
//
//	If this functionality is unavailable, using it raises an exception.
//
//go:linkname Truncate py.truncate
func Truncate(path *py.Object, length *py.Object) *py.Object

// Change or add an environment variable.
//
//go:linkname Putenv py.putenv
func Putenv(name *py.Object, value *py.Object) *py.Object

// Delete an environment variable.
//
//go:linkname Unsetenv py.unsetenv
func Unsetenv(name *py.Object) *py.Object

// Translate an error code to a message string.
//
//go:linkname Strerror py.strerror
func Strerror(code *py.Object) *py.Object

// Change to the directory of the given file descriptor.
//
// fd must be opened on a directory, not a file.
// Equivalent to os.chdir(fd).
//
//go:linkname Fchdir py.fchdir
func Fchdir(fd *py.Object) *py.Object

// Force write of fd to disk.
//
//go:linkname Fsync py.fsync
func Fsync(fd *py.Object) *py.Object

// Force write of everything to disk.
//
//go:linkname Sync py.sync
func Sync() *py.Object

// Return True if the process returning status was dumped to a core file.
//
//go:linkname WCOREDUMP py.WCOREDUMP
func WCOREDUMP(status *py.Object) *py.Object

// Return True if a particular process was continued from a job control stop.
//
// Return True if the process returning status was continued from a
// job control stop.
//
//go:linkname WIFCONTINUED py.WIFCONTINUED
func WIFCONTINUED(status *py.Object) *py.Object

// Return True if the process returning status was stopped.
//
//go:linkname WIFSTOPPED py.WIFSTOPPED
func WIFSTOPPED(status *py.Object) *py.Object

// Return True if the process returning status was terminated by a signal.
//
//go:linkname WIFSIGNALED py.WIFSIGNALED
func WIFSIGNALED(status *py.Object) *py.Object

// Return True if the process returning status exited via the exit() system call.
//
//go:linkname WIFEXITED py.WIFEXITED
func WIFEXITED(status *py.Object) *py.Object

// Return the process return code from status.
//
//go:linkname WEXITSTATUS py.WEXITSTATUS
func WEXITSTATUS(status *py.Object) *py.Object

// Return the signal that terminated the process that provided the status value.
//
//go:linkname WTERMSIG py.WTERMSIG
func WTERMSIG(status *py.Object) *py.Object

// Return the signal that stopped the process that provided the status value.
//
//go:linkname WSTOPSIG py.WSTOPSIG
func WSTOPSIG(status *py.Object) *py.Object

// Perform an fstatvfs system call on the given fd.
//
// Equivalent to statvfs(fd).
//
//go:linkname Fstatvfs py.fstatvfs
func Fstatvfs(fd *py.Object) *py.Object

// Perform a statvfs system call on the given path.
//
// path may always be specified as a string.
// On some platforms, path may also be specified as an open file descriptor.
//
//	If this functionality is unavailable, using it raises an exception.
//
//go:linkname Statvfs py.statvfs
func Statvfs(path *py.Object) *py.Object

// Return a string-valued system configuration variable.
//
//go:linkname Confstr py.confstr
func Confstr(name *py.Object) *py.Object

// Return an integer-valued system configuration variable.
//
//go:linkname Sysconf py.sysconf
func Sysconf(name *py.Object) *py.Object

// Return the configuration limit name for the file descriptor fd.
//
// If there is no limit, return -1.
//
//go:linkname Fpathconf py.fpathconf
func Fpathconf(fd *py.Object, name *py.Object) *py.Object

// Return the configuration limit name for the file or directory path.
//
// If there is no limit, return -1.
// On some platforms, path may also be specified as an open file descriptor.
//
//	If this functionality is unavailable, using it raises an exception.
//
//go:linkname Pathconf py.pathconf
func Pathconf(path *py.Object, name *py.Object) *py.Object

// Abort the interpreter immediately.
//
// This function 'dumps core' or otherwise fails in the hardest way possible
// on the hosting operating system.  This function never returns.
//
//go:linkname Abort py.abort
func Abort() *py.Object

// Return average recent system load information.
//
// Return the number of processes in the system run queue averaged over
// the last 1, 5, and 15 minutes as a tuple of three floats.
// Raises OSError if the load average was unobtainable.
//
//go:linkname Getloadavg py.getloadavg
func Getloadavg() *py.Object

// Return a bytes object containing random bytes suitable for cryptographic use.
//
//go:linkname Urandom py.urandom
func Urandom(size *py.Object) *py.Object

// Return the number of CPUs in the system; return None if indeterminable.
//
// This number is not equivalent to the number of CPUs the current process can
// use.  The number of usable CPUs can be obtained with
// “len(os.sched_getaffinity(0))“
//
//go:linkname CpuCount py.cpu_count
func CpuCount() *py.Object

// Get the close-on-exe flag of the specified file descriptor.
//
//go:linkname GetInheritable py.get_inheritable
func GetInheritable(fd *py.Object) *py.Object

// Set the inheritable flag of the specified file descriptor.
//
//go:linkname SetInheritable py.set_inheritable
func SetInheritable(fd *py.Object, inheritable *py.Object) *py.Object

// Get the blocking mode of the file descriptor.
//
// Return False if the O_NONBLOCK flag is set, True if the flag is cleared.
//
//go:linkname GetBlocking py.get_blocking
func GetBlocking(fd *py.Object) *py.Object

// Set the blocking mode of the specified file descriptor.
//
// Set the O_NONBLOCK flag if blocking is False,
// clear the O_NONBLOCK flag otherwise.
//
//go:linkname SetBlocking py.set_blocking
func SetBlocking(fd *py.Object, blocking *py.Object) *py.Object

// Return an iterator of DirEntry objects for given path.
//
// path can be specified as either str, bytes, or a path-like object.  If path
// is bytes, the names of yielded DirEntry objects will also be bytes; in
// all other circumstances they will be str.
//
// If path is None, uses the path='.'.
//
//go:linkname Scandir py.scandir
func Scandir(path *py.Object) *py.Object

// Return the file system path representation of the object.
//
// If the object is str or bytes, then allow it to pass through as-is. If the
// object defines __fspath__(), then return the result of that method. All other
// types raise a TypeError.
//
//go:linkname Fspath py.fspath
func Fspath(path *py.Object) *py.Object

// Convert a wait status to an exit code.
//
// On Unix:
//
// * If WIFEXITED(status) is true, return WEXITSTATUS(status).
// * If WIFSIGNALED(status) is true, return -WTERMSIG(status).
// * Otherwise, raise a ValueError.
//
// On Windows, return status shifted right by 8 bits.
//
// On Unix, if the process is being traced or if waitpid() was called with
// WUNTRACED option, the caller must first check if WIFSTOPPED(status) is true.
// This function must not be called if WIFSTOPPED(status) is true.
//
//go:linkname WaitstatusToExitcode py.waitstatus_to_exitcode
func WaitstatusToExitcode(status *py.Object) *py.Object

// makedirs(name [, mode=0o777][, exist_ok=False])
//
//	Super-mkdir; create a leaf directory and all intermediate ones.  Works like
//	mkdir, except that any intermediate path segment (not just the rightmost)
//	will be created if it does not exist. If the target directory already
//	exists, raise an OSError if exist_ok is False. Otherwise no exception is
//	raised.  This is recursive.
//
//go:linkname Makedirs py.makedirs
func Makedirs(name *py.Object, mode *py.Object, existOk *py.Object) *py.Object

// removedirs(name)
//
//	Super-rmdir; remove a leaf directory and all empty intermediate
//	ones.  Works like rmdir except that, if the leaf directory is
//	successfully removed, directories corresponding to rightmost path
//	segments will be pruned away until either the whole path is
//	consumed or an error occurs.  Errors during this latter phase are
//	ignored -- they generally mean that a directory was not empty.
//
//go:linkname Removedirs py.removedirs
func Removedirs(name *py.Object) *py.Object

// renames(old, new)
//
//	Super-rename; create directories as necessary and delete any left
//	empty.  Works like rename, except creation of any intermediate
//	directories needed to make the new pathname good is attempted
//	first.  After the rename, directories corresponding to rightmost
//	path segments of the old name will be pruned until either the
//	whole path is consumed or a nonempty directory is found.
//
//	Note: this function can fail with the new directory structure made
//	if you lack permissions needed to unlink the leaf directory or
//	file.
//
//go:linkname Renames py.renames
func Renames(old *py.Object, new *py.Object) *py.Object

// Directory tree generator.
//
//	For each directory in the directory tree rooted at top (including top
//	itself, but excluding '.' and '..'), yields a 3-tuple
//
//	    dirpath, dirnames, filenames
//
//	dirpath is a string, the path to the directory.  dirnames is a list of
//	the names of the subdirectories in dirpath (including symlinks to directories,
//	and excluding '.' and '..').
//	filenames is a list of the names of the non-directory files in dirpath.
//	Note that the names in the lists are just names, with no path components.
//	To get a full path (which begins with top) to a file or directory in
//	dirpath, do os.path.join(dirpath, name).
//
//	If optional arg 'topdown' is true or not specified, the triple for a
//	directory is generated before the triples for any of its subdirectories
//	(directories are generated top down).  If topdown is false, the triple
//	for a directory is generated after the triples for all of its
//	subdirectories (directories are generated bottom up).
//
//	When topdown is true, the caller can modify the dirnames list in-place
//	(e.g., via del or slice assignment), and walk will only recurse into the
//	subdirectories whose names remain in dirnames; this can be used to prune the
//	search, or to impose a specific order of visiting.  Modifying dirnames when
//	topdown is false has no effect on the behavior of os.walk(), since the
//	directories in dirnames have already been generated by the time dirnames
//	itself is generated. No matter the value of topdown, the list of
//	subdirectories is retrieved before the tuples for the directory and its
//	subdirectories are generated.
//
//	By default errors from the os.scandir() call are ignored.  If
//	optional arg 'onerror' is specified, it should be a function; it
//	will be called with one argument, an OSError instance.  It can
//	report the error to continue with the walk, or raise the exception
//	to abort the walk.  Note that the filename is available as the
//	filename attribute of the exception object.
//
//	By default, os.walk does not follow symbolic links to subdirectories on
//	systems that support them.  In order to get this functionality, set the
//	optional argument 'followlinks' to true.
//
//	Caution:  if you pass a relative pathname for top, don't change the
//	current working directory between resumptions of walk.  walk never
//	changes the current directory, and assumes that the client doesn't
//	either.
//
//	Example:
//
//	import os
//	from os.path import join, getsize
//	for root, dirs, files in os.walk('python/Lib/email'):
//	    print(root, "consumes ")
//	    print(sum(getsize(join(root, name)) for name in files), end=" ")
//	    print("bytes in", len(files), "non-directory files")
//	    if 'CVS' in dirs:
//	        dirs.remove('CVS')  # don't visit CVS directories
//
//go:linkname Walk py.walk
func Walk(top *py.Object, topdown *py.Object, onerror *py.Object, followlinks *py.Object) *py.Object

// Directory tree generator.
//
//	This behaves exactly like walk(), except that it yields a 4-tuple
//
//	    dirpath, dirnames, filenames, dirfd
//
//	`dirpath`, `dirnames` and `filenames` are identical to walk() output,
//	and `dirfd` is a file descriptor referring to the directory `dirpath`.
//
//	The advantage of fwalk() over walk() is that it's safe against symlink
//	races (when follow_symlinks is False).
//
//	If dir_fd is not None, it should be a file descriptor open to a directory,
//	  and top should be relative; top will then be relative to that directory.
//	  (dir_fd is always supported for fwalk.)
//
//	Caution:
//	Since fwalk() yields file descriptors, those are only valid until the
//	next iteration step, so you should dup() them if you want to keep them
//	for a longer period.
//
//	Example:
//
//	import os
//	for root, dirs, files, rootfd in os.fwalk('python/Lib/email'):
//	    print(root, "consumes", end="")
//	    print(sum(os.stat(name, dir_fd=rootfd).st_size for name in files),
//	          end="")
//	    print("bytes in", len(files), "non-directory files")
//	    if 'CVS' in dirs:
//	        dirs.remove('CVS')  # don't visit CVS directories
//
//go:linkname Fwalk py.fwalk
func Fwalk(top *py.Object, topdown *py.Object, onerror *py.Object) *py.Object

// execl(file, *args)
//
//	Execute the executable file with argument list args, replacing the
//	current process.
//
//go:linkname Execl py.execl
func Execl(file *py.Object, __llgo_va_list ...interface{}) *py.Object

// execle(file, *args, env)
//
//	Execute the executable file with argument list args and
//	environment env, replacing the current process.
//
//go:linkname Execle py.execle
func Execle(file *py.Object, __llgo_va_list ...interface{}) *py.Object

// execlp(file, *args)
//
//	Execute the executable file (which is searched for along $PATH)
//	with argument list args, replacing the current process.
//
//go:linkname Execlp py.execlp
func Execlp(file *py.Object, __llgo_va_list ...interface{}) *py.Object

// execlpe(file, *args, env)
//
//	Execute the executable file (which is searched for along $PATH)
//	with argument list args and environment env, replacing the current
//	process.
//
//go:linkname Execlpe py.execlpe
func Execlpe(file *py.Object, __llgo_va_list ...interface{}) *py.Object

// execvp(file, args)
//
//	Execute the executable file (which is searched for along $PATH)
//	with argument list args, replacing the current process.
//	args may be a list or tuple of strings.
//
//go:linkname Execvp py.execvp
func Execvp(file *py.Object, args *py.Object) *py.Object

// execvpe(file, args, env)
//
//	Execute the executable file (which is searched for along $PATH)
//	with argument list args and environment env, replacing the
//	current process.
//	args may be a list or tuple of strings.
//
//go:linkname Execvpe py.execvpe
func Execvpe(file *py.Object, args *py.Object, env *py.Object) *py.Object

// Returns the sequence of directories that will be searched for the
//
//	named executable (similar to a shell) when launching a process.
//
//	*env* must be an environment variable dict or None.  If *env* is None,
//	os.environ will be used.
//
//go:linkname GetExecPath py.get_exec_path
func GetExecPath(env *py.Object) *py.Object

// Get an environment variable, return None if it doesn't exist.
//
//	The optional second argument can specify an alternate default.
//	key, default and the result are str.
//
//go:linkname Getenv py.getenv
func Getenv(key *py.Object, default_ *py.Object) *py.Object

// Get an environment variable, return None if it doesn't exist.
//
//	The optional second argument can specify an alternate default.
//	key, default and the result are bytes.
//
//go:linkname Getenvb py.getenvb
func Getenvb(key *py.Object, default_ *py.Object) *py.Object

// Encode filename (an os.PathLike, bytes, or str) to the filesystem
//
//	encoding with 'surrogateescape' error handler, return bytes unchanged.
//	On Windows, use 'strict' error handler if the file system encoding is
//	'mbcs' (which is the default encoding).
//
//go:linkname Fsencode py.fsencode
func Fsencode(filename *py.Object) *py.Object

// Decode filename (an os.PathLike, bytes, or str) from the filesystem
//
//	encoding with 'surrogateescape' error handler, return str unchanged. On
//	Windows, use 'strict' error handler if the file system encoding is
//	'mbcs' (which is the default encoding).
//
//go:linkname Fsdecode py.fsdecode
func Fsdecode(filename *py.Object) *py.Object

// spawnv(mode, file, args) -> integer
//
// Execute file with arguments from args in a subprocess.
// If mode == P_NOWAIT return the pid of the process.
// If mode == P_WAIT return the process's exit code if it exits normally;
// otherwise return -SIG, where SIG is the signal that killed it.
//
//go:linkname Spawnv py.spawnv
func Spawnv(mode *py.Object, file *py.Object, args *py.Object) *py.Object

// spawnve(mode, file, args, env) -> integer
//
// Execute file with arguments from args in a subprocess with the
// specified environment.
// If mode == P_NOWAIT return the pid of the process.
// If mode == P_WAIT return the process's exit code if it exits normally;
// otherwise return -SIG, where SIG is the signal that killed it.
//
//go:linkname Spawnve py.spawnve
func Spawnve(mode *py.Object, file *py.Object, args *py.Object, env *py.Object) *py.Object

// spawnvp(mode, file, args) -> integer
//
// Execute file (which is looked for along $PATH) with arguments from
// args in a subprocess.
// If mode == P_NOWAIT return the pid of the process.
// If mode == P_WAIT return the process's exit code if it exits normally;
// otherwise return -SIG, where SIG is the signal that killed it.
//
//go:linkname Spawnvp py.spawnvp
func Spawnvp(mode *py.Object, file *py.Object, args *py.Object) *py.Object

// spawnvpe(mode, file, args, env) -> integer
//
// Execute file (which is looked for along $PATH) with arguments from
// args in a subprocess with the supplied environment.
// If mode == P_NOWAIT return the pid of the process.
// If mode == P_WAIT return the process's exit code if it exits normally;
// otherwise return -SIG, where SIG is the signal that killed it.
//
//go:linkname Spawnvpe py.spawnvpe
func Spawnvpe(mode *py.Object, file *py.Object, args *py.Object, env *py.Object) *py.Object

// spawnl(mode, file, *args) -> integer
//
// Execute file with arguments from args in a subprocess.
// If mode == P_NOWAIT return the pid of the process.
// If mode == P_WAIT return the process's exit code if it exits normally;
// otherwise return -SIG, where SIG is the signal that killed it.
//
//go:linkname Spawnl py.spawnl
func Spawnl(mode *py.Object, file *py.Object, __llgo_va_list ...interface{}) *py.Object

// spawnle(mode, file, *args, env) -> integer
//
// Execute file with arguments from args in a subprocess with the
// supplied environment.
// If mode == P_NOWAIT return the pid of the process.
// If mode == P_WAIT return the process's exit code if it exits normally;
// otherwise return -SIG, where SIG is the signal that killed it.
//
//go:linkname Spawnle py.spawnle
func Spawnle(mode *py.Object, file *py.Object, __llgo_va_list ...interface{}) *py.Object

// spawnlp(mode, file, *args) -> integer
//
// Execute file (which is looked for along $PATH) with arguments from
// args in a subprocess with the supplied environment.
// If mode == P_NOWAIT return the pid of the process.
// If mode == P_WAIT return the process's exit code if it exits normally;
// otherwise return -SIG, where SIG is the signal that killed it.
//
//go:linkname Spawnlp py.spawnlp
func Spawnlp(mode *py.Object, file *py.Object, __llgo_va_list ...interface{}) *py.Object

// spawnlpe(mode, file, *args, env) -> integer
//
// Execute file (which is looked for along $PATH) with arguments from
// args in a subprocess with the supplied environment.
// If mode == P_NOWAIT return the pid of the process.
// If mode == P_WAIT return the process's exit code if it exits normally;
// otherwise return -SIG, where SIG is the signal that killed it.
//
//go:linkname Spawnlpe py.spawnlpe
func Spawnlpe(mode *py.Object, file *py.Object, __llgo_va_list ...interface{}) *py.Object
