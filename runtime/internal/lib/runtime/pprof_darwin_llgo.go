//go:build darwin

package runtime

import "unsafe"

//go:linkname mach_vm_region runtime/pprof.mach_vm_region
func mach_vm_region(address, regionSize *uint64, info unsafe.Pointer) int32 {
	return -1
}

//go:linkname proc_regionfilename runtime/pprof.proc_regionfilename
func proc_regionfilename(pid int, address uint64, buf *byte, buflen int64) int32 {
	return -1
}
