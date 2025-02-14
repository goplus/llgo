package os

import (
	"io/fs"
	"sort"
	origSyscall "syscall"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/lib/internal/bytealg"
	"github.com/goplus/llgo/runtime/internal/lib/syscall"
)

type readdirMode int

const (
	readdirName readdirMode = iota
	readdirDirEntry
	readdirFileInfo
)

type DirEntry = fs.DirEntry

func (f *File) Readdirnames(n int) (names []string, err error) {
	if f == nil {
		return nil, ErrInvalid
	}

	entries, err := f.ReadDir(n)
	if err != nil {
		return nil, err
	}
	names = make([]string, len(entries))
	for i, entry := range entries {
		names[i] = entry.Name()
	}
	return names, err
}

func open(path string, flag int, perm uint32) (int, error) {
	fd, err := syscall.Open(path, flag, perm)
	return fd, err
}

func openDirNolog(name string) (*File, error) {
	var (
		r int
		e error
	)
	ignoringEINTR(func() error {
		r, e = open(name, O_RDONLY|origSyscall.O_CLOEXEC, 0)
		return e
	})
	if e != nil {
		return nil, &PathError{Op: "open", Path: name, Err: e}
	}

	if !supportsCloseOnExec {
		origSyscall.CloseOnExec(r)
	}

	f := newFile(r, name, kindNoPoll)
	return f, nil
}

func openDir(name string) (*File, error) {
	return openDirNolog(name)
}

func ReadDir(name string) ([]DirEntry, error) {
	f, err := openDir(name)
	if err != nil {
		return nil, err
	}
	defer f.Close()

	dirs, err := f.ReadDir(-1)
	sort.Slice(dirs, func(i, j int) bool {
		return bytealg.CompareString(dirs[i].Name(), dirs[j].Name()) < 0
	})
	return dirs, err
}

//go:linkname c_fdopendir C.fdopendir
func c_fdopendir(fd c.Int) uintptr

func fdopendir(fd int) (dir uintptr, err error) {
	return c_fdopendir(c.Int(fd)), nil
}

//go:linkname c_closedir C.closedir
func c_closedir(dir uintptr) c.Int

func closedir(dir uintptr) error {
	if c_closedir(dir) != 0 {
		return syscall.Errno(os.Errno())
	}
	return nil
}

//go:linkname c_readdir C.readdir
func c_readdir(dir uintptr) ([]syscall.Dirent, error)

func readdir(dir uintptr) ([]syscall.Dirent, error) {
	return c_readdir(dir)
}

func (f *File) ReadDir(n int) (dirents []DirEntry, err error) {
	if f == nil {
		return nil, ErrInvalid
	}

	// Open directory using file descriptor
	dir, err := fdopendir(int(f.fd))
	if err != nil {
		return nil, err
	}
	defer closedir(dir)

	// Match Readdir and Readdirnames: don't return nil slices.
	dirents = []DirEntry{}

	// Read directory entries
	for n < 0 || len(dirents) < n {
		entries, err := readdir(dir)
		if err != nil {
			return dirents, err
		}
		if len(entries) == 0 {
			break
		}

		for _, entry := range entries {
			// Convert syscall.Dirent to fs.DirEntry
			name := bytesToString((*[1024]byte)(unsafe.Pointer(&entry.Name[0]))[:])
			if name == "." || name == ".." {
				continue
			}

			typ := fs.FileMode(0)
			switch entry.Type {
			case origSyscall.DT_REG:
				typ = 0
			case origSyscall.DT_DIR:
				typ = fs.ModeDir
			case origSyscall.DT_LNK:
				typ = fs.ModeSymlink
			case origSyscall.DT_SOCK:
				typ = fs.ModeSocket
			case origSyscall.DT_FIFO:
				typ = fs.ModeNamedPipe
			case origSyscall.DT_CHR:
				typ = fs.ModeCharDevice
			case origSyscall.DT_BLK:
				typ = fs.ModeDevice
			}

			dirents = append(dirents, &unixDirent{
				parent: f.name,
				name:   name,
				typ:    typ,
			})

			if n > 0 && len(dirents) >= n {
				break
			}
		}
	}

	return dirents, nil
}

// bytesToString converts byte slice to string without allocation.
func bytesToString(b []byte) string {
	var i int
	for i = 0; i < len(b) && b[i] != 0; i++ {
	}
	return string(b[0:i])
}
