//go:build llgo_pass_ctx_by_reg && unix && !wasm && (amd64 || arm64)
// +build llgo_pass_ctx_by_reg
// +build unix
// +build !wasm
// +build amd64 arm64

package ffi

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	sys "github.com/goplus/llgo/runtime/internal/clite/syscall"
)

//go:linkname c_mmap C.mmap
func c_mmap(addr unsafe.Pointer, length uintptr, prot c.Int, flags c.Int, fd c.Int, offset c.Long) unsafe.Pointer

//go:linkname c_mprotect C.mprotect
func c_mprotect(addr unsafe.Pointer, length uintptr, prot c.Int) c.Int

//go:linkname c_munmap C.munmap
func c_munmap(addr unsafe.Pointer, length uintptr) c.Int

func allocExec(size uintptr) unsafe.Pointer {
	// Note: mmap/mprotect operate on whole pages; size need not be aligned.
	const mapFailed = ^uintptr(0)

	p := c_mmap(
		nil,
		size,
		c.Int(sys.PROT_READ|sys.PROT_WRITE),
		c.Int(mmapFlags()),
		-1,
		0,
	)
	if uintptr(p) == mapFailed {
		return nil
	}
	return p
}

func protectExec(addr unsafe.Pointer, size uintptr) bool {
	if addr == nil {
		return false
	}
	if c_mprotect(addr, size, c.Int(sys.PROT_READ|sys.PROT_EXEC)) != 0 {
		_ = c_munmap(addr, size)
		return false
	}
	return true
}
