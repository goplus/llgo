package os

import (
	"io/fs"
	"sort"
	origSyscall "syscall"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
	"github.com/goplus/llgo/runtime/internal/lib/internal/bytealg"
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
	fd, err := origSyscall.Open(path, flag, perm)
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
func c_readdir(dir uintptr) *syscall.Dirent

func readdir(dir uintptr) ([]syscall.Dirent, error) {
	var entries []syscall.Dirent
	for {
		dirent := c_readdir(dir)
		if dirent == nil {
			break
		}
		entries = append(entries, *dirent)
	}
	return entries, nil
}

func direntNamePtr(name any) *byte {
	switch name := name.(type) {
	case *byte:
		return name
	case []byte:
		return &name[0]
	case [1024]int8:
		return (*byte)(unsafe.Pointer(&name[0]))
	case [512]int8:
		return (*byte)(unsafe.Pointer(&name[0]))
	case [256]int8:
		return (*byte)(unsafe.Pointer(&name[0]))
	case [256]uint8:
		return (*byte)(unsafe.Pointer(&name[0]))
	default:
		panic("invalid type")
	}
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
			name := bytesToString((*[1024]byte)(unsafe.Pointer(direntNamePtr(entry.Name)))[:])
			if name == "." || name == ".." {
				continue
			}

			typ := fs.FileMode(0)
			switch entry.Type {
			case syscall.DT_REG:
				typ = 0
			case syscall.DT_DIR:
				typ = fs.ModeDir
			case syscall.DT_LNK:
				typ = fs.ModeSymlink
			case syscall.DT_SOCK:
				typ = fs.ModeSocket
			case syscall.DT_FIFO:
				typ = fs.ModeNamedPipe
			case syscall.DT_CHR:
				typ = fs.ModeCharDevice
			case syscall.DT_BLK:
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
