// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build unix || (js && wasm) || wasip1

package os

import (
	"runtime"
	"syscall"

	"github.com/goplus/llgo/runtime/internal/lib/internal/syscall/unix"
)

// Fd returns the integer Unix file descriptor referencing the open file.
// If f is closed, the file descriptor becomes invalid.
// If f is garbage collected, a finalizer may close the file descriptor,
// making it invalid; see runtime.SetFinalizer for more information on when
// a finalizer might be run. On Unix systems this will cause the SetDeadline
// methods to stop working.
// Because file descriptors can be reused, the returned file descriptor may
// only be closed through the Close method of f, or by its finalizer during
// garbage collection. Otherwise, during garbage collection the finalizer
// may close an unrelated file descriptor with the same (reused) number.
//
// As an alternative, see the f.SyscallConn method.
func (f *File) Fd() uintptr {
	if f == nil {
		return ^(uintptr(0))
	}

	return f.fd
}

func NewFile(fd uintptr, name string) *File {
	return &File{fd: fd, name: name}
}

/* TODO(xsw):
// NewFile returns a new File with the given file descriptor and
// name. The returned value will be nil if fd is not a valid file
// descriptor. On Unix systems, if the file descriptor is in
// non-blocking mode, NewFile will attempt to return a pollable File
// (one for which the SetDeadline methods work).
//
// After passing it to NewFile, fd may become invalid under the same
// conditions described in the comments of the Fd method, and the same
// constraints apply.
func NewFile(fd uintptr, name string) *File {
	fdi := int(fd)
	if fdi < 0 {
		return nil
	}

	kind := kindNewFile
	appendMode := false
	if flags, err := unix.Fcntl(fdi, syscall.F_GETFL, 0); err == nil {
		if unix.HasNonblockFlag(flags) {
			kind = kindNonBlock
		}
		appendMode = flags&syscall.O_APPEND != 0
	}
	f := newFile(fdi, name, kind)
	f.appendMode = appendMode
	return f
}

// net_newUnixFile is a hidden entry point called by net.conn.File.
// This is used so that a nonblocking network connection will become
// blocking if code calls the Fd method. We don't want that for direct
// calls to NewFile: passing a nonblocking descriptor to NewFile should
// remain nonblocking if you get it back using Fd. But for net.conn.File
// the call to NewFile is hidden from the user. Historically in that case
// the Fd method has returned a blocking descriptor, and we want to
// retain that behavior because existing code expects it and depends on it.
//
//-go:linkname net_newUnixFile net.newUnixFile
func net_newUnixFile(fd int, name string) *File {
	if fd < 0 {
		panic("invalid FD")
	}

	f := newFile(fd, name, kindNonBlock)
	f.nonblock = true // tell Fd to return blocking descriptor
	return f
}
*/

// newFileKind describes the kind of file to newFile.
type newFileKind int

const (
	// kindNewFile means that the descriptor was passed to us via NewFile.
	kindNewFile newFileKind = iota
	// kindOpenFile means that the descriptor was opened using
	// Open, Create, or OpenFile (without O_NONBLOCK).
	kindOpenFile
	// kindPipe means that the descriptor was opened using Pipe.
	kindPipe
	// kindNonBlock means that the descriptor is already in
	// non-blocking mode.
	kindNonBlock
	// kindNoPoll means that we should not put the descriptor into
	// non-blocking mode, because we know it is not a pipe or FIFO.
	// Used by openFdAt for directories.
	kindNoPoll
)

// newFile is like NewFile, but if called from OpenFile or Pipe
// (as passed in the kind parameter) it tries to add the file to
// the runtime poller.
func newFile(fd int, name string, kind newFileKind) *File {
	f := &File{
		fd:          uintptr(fd),
		name:        name,
		stdoutOrErr: fd == 1 || fd == 2,
	}

	/* TODO(xsw):
	pollable := kind == kindOpenFile || kind == kindPipe || kind == kindNonBlock

	// If the caller passed a non-blocking filedes (kindNonBlock),
	// we assume they know what they are doing so we allow it to be
	// used with kqueue.
	if kind == kindOpenFile {
		switch runtime.GOOS {
		case "darwin", "ios", "dragonfly", "freebsd", "netbsd", "openbsd":
			var st syscall.Stat_t
			err := ignoringEINTR(func() error {
				return syscall.Fstat(fd, &st)
			})
			typ := st.Mode & syscall.S_IFMT
			// Don't try to use kqueue with regular files on *BSDs.
			// On FreeBSD a regular file is always
			// reported as ready for writing.
			// On Dragonfly, NetBSD and OpenBSD the fd is signaled
			// only once as ready (both read and write).
			// Issue 19093.
			// Also don't add directories to the netpoller.
			if err == nil && (typ == syscall.S_IFREG || typ == syscall.S_IFDIR) {
				pollable = false
			}

			// In addition to the behavior described above for regular files,
			// on Darwin, kqueue does not work properly with fifos:
			// closing the last writer does not cause a kqueue event
			// for any readers. See issue #24164.
			if (runtime.GOOS == "darwin" || runtime.GOOS == "ios") && typ == syscall.S_IFIFO {
				pollable = false
			}
		}
	}

	clearNonBlock := false
	if pollable {
		if kind == kindNonBlock {
			// The descriptor is already in non-blocking mode.
			// We only set f.nonblock if we put the file into
			// non-blocking mode.
		} else if err := syscall.SetNonblock(fd, true); err == nil {
			f.nonblock = true
			clearNonBlock = true
		} else {
			pollable = false
		}
	}

	// An error here indicates a failure to register
	// with the netpoll system. That can happen for
	// a file descriptor that is not supported by
	// epoll/kqueue; for example, disk files on
	// Linux systems. We assume that any real error
	// will show up in later I/O.
	// We do restore the blocking behavior if it was set by us.
	if pollErr := f.pfd.Init("file", pollable); pollErr != nil && clearNonBlock {
		if err := syscall.SetNonblock(fd, false); err == nil {
			f.nonblock = false
		}
	}

	runtime.SetFinalizer(f.file, (*file).close)
	*/
	return f
}

// TODO(xsw):
// func sigpipe() // implemented in package runtime

// epipecheck raises SIGPIPE if we get an EPIPE error on standard
// output or standard error. See the SIGPIPE docs in os/signal, and
// issue 11845.
func epipecheck(file *File, e error) {
	/* TODO(xsw):
	if e == syscall.EPIPE && file.stdoutOrErr {
		sigpipe()
	}
	*/
	panic("todo: os.epipecheck")
}

// DevNull is the name of the operating system's “null device.”
// On Unix-like systems, it is "/dev/null"; on Windows, "NUL".
const DevNull = "/dev/null"

// openFileNolog is the Unix implementation of OpenFile.
// Changes here should be reflected in openFdAt, if relevant.
func openFileNolog(name string, flag int, perm FileMode) (*File, error) {
	setSticky := false
	if !supportsCreateWithStickyBit && flag&O_CREATE != 0 && perm&ModeSticky != 0 {
		if _, err := Stat(name); IsNotExist(err) {
			setSticky = true
		}
	}

	var r int
	for {
		var e error
		r, e = syscall.Open(name, flag|syscall.O_CLOEXEC, syscallMode(perm))
		if e == nil {
			break
		}

		// We have to check EINTR here, per issues 11180 and 39237.
		if e == syscall.EINTR {
			continue
		}

		return nil, &PathError{Op: "open", Path: name, Err: e}
	}

	// open(2) itself won't handle the sticky bit on *BSD and Solaris
	if setSticky {
		setStickyBit(name)
	}

	// There's a race here with fork/exec, which we are
	// content to live with. See ../syscall/exec_unix.go.
	if !supportsCloseOnExec {
		syscall.CloseOnExec(r)
	}

	kind := kindOpenFile
	if unix.HasNonblockFlag(flag) {
		kind = kindNonBlock
		panic("todo: os.openFileNolog: unix.HasNonblockFlag")
	}

	f := newFile(r, name, kind)
	return f, nil
}

func (file *File) close() error {
	return syscall.Close(int(file.fd))
	/* TODO(xsw):
	if file.dirinfo != nil {
		file.dirinfo.close()
		file.dirinfo = nil
	}
	var err error
	if e := file.pfd.Close(); e != nil {
		if e == poll.ErrFileClosing {
			e = ErrClosed
		}
		err = &PathError{Op: "close", Path: file.name, Err: e}
	}

	// no need for a finalizer anymore
	runtime.SetFinalizer(file, nil)
	return err
	*/
}

func tempDir() string {
	dir := Getenv("TMPDIR")
	if dir == "" {
		if runtime.GOOS == "android" {
			dir = "/data/local/tmp"
		} else {
			dir = "/tmp"
		}
	}
	return dir
}

type unixDirent struct {
	parent string
	name   string
	typ    FileMode
	info   FileInfo
}

func (d *unixDirent) Name() string   { return d.name }
func (d *unixDirent) IsDir() bool    { return d.typ.IsDir() }
func (d *unixDirent) Type() FileMode { return d.typ }

func (d *unixDirent) Info() (FileInfo, error) {
	/* TODO(xsw):
	if d.info != nil {
		return d.info, nil
	}
	return lstat(d.parent + "/" + d.name)
	*/
	panic("todo: os.unixDirent.Info")
}

func (d *unixDirent) String() string {
	/* TODO(xsw):
	return fs.FormatDirEntry(d)
	*/
	panic("todo: os.unixDirent.String")
}

/* TODO(xsw):
func newUnixDirent(parent, name string, typ FileMode) (DirEntry, error) {
	ude := &unixDirent{
		parent: parent,
		name:   name,
		typ:    typ,
	}
	if typ != ^FileMode(0) && !testingForceReadDirLstat {
		return ude, nil
	}

	info, err := lstat(parent + "/" + name)
	if err != nil {
		return nil, err
	}

	ude.typ = info.Mode().Type()
	ude.info = info
	return ude, nil
}
*/
