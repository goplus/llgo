package libuv

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

const (
	DirentUnknown DirentType = iota
	DirentFile
	DirentDir
	DirentLink
	DirentFifo
	DirentSocket
	DirentChar
	DirentBlock
)

type DirentType int

/* Handle types. */

type Fs struct {
	Unused [0]byte
}

type FsEvent struct {
	Unused [0]byte
}

type FsPoll struct {
	Unused [0]byte
}

type Dirent struct {
	Name *c.Char
	Type DirentType
}

type File struct {
	Loop *Loop
	Req  *Fs
}

// llgo:type C
type FsCb func(req *Fs)

// llgo:type C
type FsEventCb func(handle *FsEvent, filename *c.Char, events c.Int, status c.Int)

// llgo:type C
type FsPollCb func(handle *FsPoll, status c.Int, events c.Int)

/* Request types. */

/* None of the above. */

// ----------------------------------------------

/* Fs related function and method */

//go:linkname FsReqCleanup C.uv_fs_req_cleanup
func FsReqCleanup(req *Fs)

//go:linkname DefaultLoop C.uv_default_loop
func DefaultLoop() *Loop

//go:linkname FsOpen C.uv_fs_open
func FsOpen(loop *Loop, req *Fs, path *c.Char, flags c.Int, mode c.Int, cb FsCb) c.Int

//go:linkname FsClose C.uv_fs_close
func FsClose(loop *Loop, req *Fs, file c.Int, cb FsCb) c.Int

//go:linkname FsRead C.uv_fs_read
func FsRead(loop *Loop, req *Fs, file c.Int, bufs []Buf, nbufs c.Uint, offset c.Int, cb FsCb) c.Int

//go:linkname FsWrite C.uv_fs_write
func FsWrite(loop *Loop, req *Fs, file c.Int, bufs []Buf, nbufs c.Uint, offset c.Int, cb FsCb) c.Int

//go:linkname FsUnlink C.uv_fs_unlink
func FsUnlink(loop *Loop, req *Fs, path *c.Char, cb FsCb) c.Int

//go:linkname FsMkdir C.uv_fs_mkdir
func FsMkdir(loop *Loop, req *Fs, path *c.Char, mode c.Int, cb FsCb) c.Int

//go:linkname FsMkdtemp C.uv_fs_mkdtemp
func FsMkdtemp(loop *Loop, req *Fs, tpl *c.Char, cb FsCb) c.Int

//go:linkname FsMkStemp C.uv_fs_mkstemp
func FsMkStemp(loop *Loop, req *Fs, tpl *c.Char, cb FsCb) c.Int

//go:linkname FsRmdir C.uv_fs_rmdir
func FsRmdir(loop *Loop, req *Fs, path *c.Char, cb FsCb) c.Int

//go:linkname FsStat C.uv_fs_stat
func FsStat(loop *Loop, req *Fs, path *c.Char, cb FsCb) c.Int

//go:linkname FsFstat C.uv_fs_fstat
func FsFstat(loop *Loop, req *Fs, file c.Int, cb FsCb) c.Int

//go:linkname FsRename C.uv_fs_rename
func FsRename(loop *Loop, req *Fs, path *c.Char, newPath *c.Char, cb FsCb) c.Int

//go:linkname FsFsync C.uv_fs_fsync
func FsFsync(loop *Loop, req *Fs, file c.Int, cb FsCb) c.Int

//go:linkname FsFdatasync C.uv_fs_fdatasync
func FsFdatasync(loop *Loop, req *Fs, file c.Int, cb FsCb) c.Int

//go:linkname FsFtruncate C.uv_fs_ftruncate
func FsFtruncate(loop *Loop, req *Fs, file c.Int, offset c.Int, cb FsCb) c.Int

//go:linkname FsSendfile C.uv_fs_sendfile
func FsSendfile(loop *Loop, req *Fs, outFd c.Int, inFd c.Int, inOffset c.Int, length c.Int, cb FsCb) c.Int

//go:linkname FsAccess C.uv_fs_access
func FsAccess(loop *Loop, req *Fs, path *c.Char, flags c.Int, cb FsCb) c.Int

//go:linkname FsChmod C.uv_fs_chmod
func FsChmod(loop *Loop, req *Fs, path *c.Char, mode c.Int, cb FsCb) c.Int

//go:linkname FsFchmod C.uv_fs_fchmod
func FsFchmod(loop *Loop, req *Fs, file c.Int, mode c.Int, cb FsCb) c.Int

//go:linkname FsUtime C.uv_fs_utime
func FsUtime(loop *Loop, req *Fs, path *c.Char, atime c.Int, mtime c.Int, cb FsCb) c.Int

//go:linkname FsFutime C.uv_fs_futime
func FsFutime(loop *Loop, req *Fs, file c.Int, atime c.Int, mtime c.Int, cb FsCb) c.Int

//go:linkname FsLutime C.uv_fs_lutime
func FsLutime(loop *Loop, req *Fs, path *c.Char, atime c.Int, mtime c.Int, cb FsCb) c.Int

//go:linkname FsLink C.uv_fs_link
func FsLink(loop *Loop, req *Fs, path *c.Char, newPath *c.Char, cb FsCb) c.Int

//go:linkname FsSymlink C.uv_fs_symlink
func FsSymlink(loop *Loop, req *Fs, path *c.Char, newPath *c.Char, flags c.Int, cb FsCb) c.Int

//go:linkname FsReadlink C.uv_fs_read
func FsReadlink(loop *Loop, req *Fs, path *c.Char, cb FsCb) c.Int

//go:linkname FsRealpath C.uv_fs_realpath
func FsRealpath(loop *Loop, req *Fs, path *c.Char, cb FsCb) c.Int

//go:linkname FsCopyfile C.uv_fs_copyfile
func FsCopyfile(loop *Loop, req *Fs, path *c.Char, newPath *c.Char, flags c.Int, cb FsCb) c.Int

//go:linkname FsScandir C.uv_fs_scandir
func FsScandir(loop *Loop, req *Fs, path *c.Char, flags c.Int, cb FsCb) c.Int

//go:linkname FsScandirNext C.uv_fs_scandir_next
func FsScandirNext(req *Fs, ent *Dirent) c.Int

//go:linkname FsOpenDir C.uv_fs_opendir
func FsOpenDir(loop *Loop, req *Fs, path *c.Char, cb FsCb) c.Int

//go:linkname FsReaddir C.uv_fs_readdir
func FsReaddir(loop *Loop, req *Fs, dir c.Int, cb FsCb) c.Int

//go:linkname FsCloseDir C.uv_fs_closedir
func FsCloseDir(loop *Loop, req *Fs) c.Int

//go:linkname FsStatfs C.uv_fs_statfs
func FsStatfs(loop *Loop, req *Fs, path *c.Char, cb FsCb) c.Int

//go:linkname FsChown C.uv_fs_chown
func FsChown(loop *Loop, req *Fs, path *c.Char, uid c.Int, gid c.Int, cb FsCb) c.Int

//go:linkname FsFchown C.uv_fs_fchown
func FsFchown(loop *Loop, req *Fs, file c.Int, uid c.Int, gid c.Int, cb FsCb) c.Int

//go:linkname FsLchown C.uv_fs_lchown
func FsLchown(loop *Loop, req *Fs, path *c.Char, uid c.Int, gid c.Int, cb FsCb) c.Int

//go:linkname FsLstat C.uv_fs_lstat
func FsLstat(loop *Loop, req *Fs, path *c.Char, cb FsCb) c.Int

//go:linkname FsEventInit C.uv_fs_event_init
func FsEventInit(loop *Loop, handle *FsEvent) c.Int

//go:linkname FsEventStart C.uv_fs_event_start
func FsEventStart(handle *FsEvent, cb FsEventCb, path *c.Char, flags c.Int) c.Int

//go:linkname FsEventStop C.uv_fs_event_stop
func FsEventStop(handle *FsEvent) c.Int

//go:linkname FsEventClose C.uv_fs_event_close
func FsEventClose(handle *FsEvent) c.Int

//go:linkname FsEventGetpath C.uv_fs_event_getpath
func FsEventGetpath(handle *FsEvent) *c.Char

//go:linkname FsPollInit C.uv_fs_poll_init
func FsPollInit(loop *Loop, handle *FsPoll) c.Int

//go:linkname FsPollStart C.uv_fs_poll_start
func FsPollStart(handle *FsPoll, cb FsPollCb, path *c.Char, interval uint) c.Int

//go:linkname FsPollStop C.uv_fs_poll_stop
func FsPollStop(handle *FsPoll) c.Int

//go:linkname FsPollClose C.uv_fs_poll_close
func FsPollClose(handle *FsPoll) c.Int

//go:linkname FsPollGetPath C.uv_fs_poll_getpath
func FsPollGetPath(handle *FsPoll) *c.Char

//TODO: Implemnt uv_poll_init_socket

// Cleanup cleans up the file system request.
func (f *File) Cleanup() {
	FsReqCleanup(f.Req)
}

func NewFile(loop *Loop, req *Fs) *File {
	return &File{
		Loop: loop,
		Req:  req,
	}
}

// Open opens a file specified by the path with given flags and mode, and returns a file descriptor.
func (f *File) Open(path *c.Char, flags int, mode int, cb FsCb) int {
	return FsOpen(f.Loop, f.Req, path, flags, mode, cb)
}

// Close closes a file descriptor.
func (f *File) Close(file int, cb FsCb) int {
	return FsClose(f.Loop, f.Req, file, cb)
}

// Read reads data from a file descriptor into a buffer at a specified offset.
func (f *File) Read(file c.Int, bufs []Buf, nbufs c.Uint, offset c.Int, cb FsCb) int {
	return FsRead(f.Loop, f.Req, file, bufs, nbufs, offset, cb)
}

// Write writes data to a file descriptor from a buffer at a specified offset.
func (f *File) Write(file c.Int, bufs []Buf, nbufs c.Uint, offset c.Int, cb FsCb) int {
	return FsWrite(f.Loop, f.Req, file, bufs, nbufs, offset, cb)
}

// Unlink deletes a file specified by the path.
func (f *File) Unlink(path *c.Char, cb FsCb) int {
	return FsUnlink(f.Loop, f.Req, path, cb)
}

// Mkdir creates a new directory at the specified path with a specified mode.
func (f *File) Mkdir(path *c.Char, mode int, cb FsCb) int {
	return FsMkdir(f.Loop, f.Req, path, mode, cb)
}

// Mkdtemp creates a temporary directory with a template path.
func (f *File) Mkdtemp(tpl *c.Char, cb FsCb) int {
	return FsMkdtemp(f.Loop, f.Req, tpl, cb)
}

// MkStemp creates a temporary file from a template path.
func (f *File) MkStemp(tpl *c.Char, cb FsCb) int {
	return FsMkStemp(f.Loop, f.Req, tpl, cb)
}

// Rmdir removes a directory specified by the path.
func (f *File) Rmdir(path *c.Char, cb FsCb) int {
	return FsRmdir(f.Loop, f.Req, path, cb)
}

// Stat retrieves status information about the file specified by the path.
func (f *File) Stat(path *c.Char, cb FsCb) int {
	return FsStat(f.Loop, f.Req, path, cb)
}

// Fstat retrieves status information about a file descriptor.
func (f *File) Fstat(file int, cb FsCb) int {
	return FsFstat(f.Loop, f.Req, file, cb)
}

// Rename renames a file from the old path to the new path.
func (f *File) Rename(path *c.Char, newPath *c.Char, cb FsCb) int {
	return FsRename(f.Loop, f.Req, path, newPath, cb)
}

// Fsync synchronizes a file descriptor's state with storage device.
func (f *File) Fsync(file int, cb FsCb) int {
	return FsFsync(f.Loop, f.Req, file, cb)
}

// Fdatasync synchronizes a file descriptor's data with storage device.
func (f *File) Fdatasync(file int, cb FsCb) int {
	return FsFdatasync(f.Loop, f.Req, file, cb)
}

// Ftruncate truncates a file to a specified length.
func (f *File) Ftruncate(file int, offset int, cb FsCb) int {
	return FsFtruncate(f.Loop, f.Req, file, offset, cb)
}

// Sendfile sends data from one file descriptor to another.
func (f *File) Sendfile(outFd int, inFd int, inOffset int, length int, cb FsCb) int {
	return FsSendfile(f.Loop, f.Req, outFd, inFd, inOffset, length, cb)
}

// Access checks the access permissions of a file specified by the path.
func (f *File) Access(path *c.Char, flags int, cb FsCb) int {
	return FsAccess(f.Loop, f.Req, path, flags, cb)
}

// Chmod changes the permissions of a file specified by the path.
func (f *File) Chmod(path *c.Char, mode int, cb FsCb) int {
	return FsChmod(f.Loop, f.Req, path, mode, cb)
}

// Fchmod changes the permissions of a file descriptor.
func (f *File) Fchmod(file int, mode int, cb FsCb) int {
	return FsFchmod(f.Loop, f.Req, file, mode, cb)
}

// Utime updates the access and modification times of a file specified by the path.
func (f *File) Utime(path *c.Char, atime int, mtime int, cb FsCb) int {
	return FsUtime(f.Loop, f.Req, path, atime, mtime, cb)
}

// Futime updates the access and modification times of a file descriptor.
func (f *File) Futime(file int, atime int, mtime int, cb FsCb) int {
	return FsFutime(f.Loop, f.Req, file, atime, mtime, cb)
}

// Lutime updates the access and modification times of a file specified by the path, even if the path is a symbolic link.
func (f *File) Lutime(path *c.Char, atime int, mtime int, cb FsCb) int {
	return FsLutime(f.Loop, f.Req, path, atime, mtime, cb)
}

// Link creates a new link to an existing file.
func (f *File) Link(path *c.Char, newPath *c.Char, cb FsCb) int {
	return FsLink(f.Loop, f.Req, path, newPath, cb)
}

// Symlink creates a symbolic link from the path to the new path.
func (f *File) Symlink(path *c.Char, newPath *c.Char, flags int, cb FsCb) int {
	return FsSymlink(f.Loop, f.Req, path, newPath, flags, cb)
}

// Readlink reads the target of a symbolic link.
func (f *File) Readlink(path *c.Char, cb FsCb) int {
	return FsReadlink(f.Loop, f.Req, path, cb)
}

// Realpath resolves the absolute path of a file.
func (f *File) Realpath(path *c.Char, cb FsCb) int {
	return FsRealpath(f.Loop, f.Req, path, cb)
}

// Copyfile copies a file from the source path to the destination path.
func (f *File) Copyfile(path *c.Char, newPath *c.Char, flags int, cb FsCb) int {
	return FsCopyfile(f.Loop, f.Req, path, newPath, flags, cb)
}

// Scandir scans a directory for entries.
func (f *File) Scandir(path *c.Char, flags int, cb FsCb) int {
	return FsScandir(f.Loop, f.Req, path, flags, cb)
}

// OpenDir opens a directory specified by the path.
func (f *File) OpenDir(path *c.Char, cb FsCb) int {
	return FsOpenDir(f.Loop, f.Req, path, cb)
}

// Readdir reads entries from an open directory.
func (f *File) Readdir(dir int, cb FsCb) int {
	return FsReaddir(f.Loop, f.Req, dir, cb)
}

// CloseDir closes an open directory.
func (f *File) CloseDir() int {
	return FsCloseDir(f.Loop, f.Req)
}

// Statfs retrieves file system status information.
func (f *File) Statfs(path *c.Char, cb FsCb) int {
	return FsStatfs(f.Loop, f.Req, path, cb)
}

// Chown Change file ownership
func (f *File) Chown(path *c.Char, uid int, gid int, cb FsCb) int {
	return FsChown(f.Loop, f.Req, path, uid, gid, cb)
}

// Fchown Change file ownership by file descriptor
func (f *File) Fchown(file int, uid int, gid int, cb FsCb) int {
	return FsFchown(f.Loop, f.Req, file, uid, gid, cb)
}

// Lchown Change file ownership (symlink)
func (f *File) Lchown(path *c.Char, uid int, gid int, cb FsCb) int {
	return FsLchown(f.Loop, f.Req, path, uid, gid, cb)
}

// Lstat Get file status (symlink)
func (f *File) Lstat(path *c.Char, cb FsCb) int {
	return FsLstat(f.Loop, f.Req, path, cb)
}

// Init Initialize a file event handle
func (e *FsEvent) Init(loop *Loop) int {
	return FsEventInit(loop, e)
}

// Start listening for file events
func (e *FsEvent) Start(cb FsEventCb, path *c.Char, flags int) int {
	return FsEventStart(e, cb, path, flags)
}

// Stop listening for file events
func (e *FsEvent) Stop() int {
	return FsEventStop(e)
}

// Close the file event handle
func (e *FsEvent) Close() int {
	return FsEventClose(e)
}

// GetPath Get the path of the file event
func (e *FsEvent) GetPath() *c.Char {
	return FsEventGetpath(e)
}

// Init Initialize a file poll handle
func (p *FsPoll) Init(loop *Loop) int {
	return FsPollInit(loop, p)
}

// Start polling for file changes
func (p *FsPoll) Start(cb FsPollCb, path *c.Char, interval uint) int {
	return FsPollStart(p, cb, path, interval)
}

// Stop polling for file changes
func (p *FsPoll) Stop() int {
	return FsPollStop(p)
}

// Close the file poll handle
func (p *FsPoll) Close() int {
	return FsPollClose(p)
}

// GetPath Get the path of the file poll
func (p *FsPoll) GetPath() *c.Char {
	return FsPollGetPath(p)
}
