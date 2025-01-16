package runtime

/*
#include <unistd.h>
#include <libproc.h>
#include <mach/mach_vm.h>
*/
import "C"
import "unsafe"

func proc_regionfilename(pid int, address uint64, buf *byte, buflen int64) int32 {
	return int32(C.proc_regionfilename(C.int(pid), C.uint64_t(address), unsafe.Pointer(buf), C.uint32_t(buflen)))
}

func mach_vm_region(address, region_size *uint64, info unsafe.Pointer) int32 {
	return int32(C.mach_vm_region(
		*(*C.vm_map_read_t)(unsafe.Pointer(&address)),
		(*C.mach_vm_address_t)(region_size),
		(*C.mach_vm_size_t)(info),
		*(*C.vm_region_flavor_t)(nil),
		nil, nil, nil))
}
