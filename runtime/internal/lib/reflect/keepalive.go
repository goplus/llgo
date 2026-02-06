package reflect

import "unsafe"

// keepAliveBox anchors Go heap objects from function values whose execution
// does not actually require a closure environment.
//
// libffi stores pointers (userdata, cif, etc.) in libffi-allocated memory that
// the Boehm GC does not scan, so Go objects only reachable from libffi can be
// collected prematurely. We keep such objects reachable by storing a pointer
// to a keepAliveBox in the closure value's env field, which is part of the Go
// value and is scanned/copied as usual.
type keepAliveBox struct {
	tag *byte
	ptr unsafe.Pointer
}

var keepAliveTag byte

func keepAlivePtr(ptr unsafe.Pointer) unsafe.Pointer {
	if ptr == nil {
		return nil
	}
	return unsafe.Pointer(&keepAliveBox{tag: &keepAliveTag, ptr: ptr})
}

func isKeepAlivePtr(env unsafe.Pointer) bool {
	if env == nil {
		return false
	}
	// The env pointer comes from a closure value, so it should point to valid
	// memory. Use an address tag (instead of a numeric magic) to avoid collisions.
	return (*keepAliveBox)(env).tag == &keepAliveTag
}
