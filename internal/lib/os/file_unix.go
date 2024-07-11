// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build unix || (js && wasm) || wasip1

package os

import (
	"runtime"
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
	panic("todo: os.openFileNolog")
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
