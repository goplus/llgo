package unix

import "unsafe"

func gostring(p *byte) string {
	if p == nil {
		return ""
	}
	var buf []byte
	ptr := uintptr(unsafe.Pointer(p))
	for {
		b := *(*byte)(unsafe.Pointer(ptr))
		if b == 0 {
			break
		}
		buf = append(buf, b)
		ptr++
	}
	return string(buf)
}
