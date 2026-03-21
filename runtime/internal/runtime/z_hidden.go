package runtime

import "unsafe"

const (
	hiddenPointerMask64 = uint64(0x00ffffffffffffff)
	hiddenPointerTag64  = uint64(0xa500000000000000)
	hiddenPointerSeed64 = uint64(0x005a3c9d12e7b14f)
	hiddenPointerRot64  = 17

	hiddenPointerSeed32   = uintptr(0x85ebca6b)
	hiddenPointerMul32    = uintptr(0x9e3779b9)
	hiddenPointerInvMul32 = uintptr(0x144cbc89)
	hiddenPointerRot32    = 11
)

func hiddenPointerRotateLeft(x uintptr, rot int) uintptr {
	bits := int(unsafe.Sizeof(uintptr(0)) * 8)
	return (x << rot) | (x >> (bits - rot))
}

func hiddenPointerRotateRight(x uintptr, rot int) uintptr {
	bits := int(unsafe.Sizeof(uintptr(0)) * 8)
	return (x >> rot) | (x << (bits - rot))
}

func hiddenPointerRotateMaskedLeft(x, mask uintptr, bits, rot int) uintptr {
	x &= mask
	return ((x << rot) | (x >> (bits - rot))) & mask
}

func hiddenPointerRotateMaskedRight(x, mask uintptr, bits, rot int) uintptr {
	x &= mask
	return ((x >> rot) | (x << (bits - rot))) & mask
}

func hiddenPointerRotateMaskedLeft64(x, mask uint64, bits, rot int) uint64 {
	x &= mask
	return ((x << rot) | (x >> (bits - rot))) & mask
}

func hiddenPointerRotateMaskedRight64(x, mask uint64, bits, rot int) uint64 {
	x &= mask
	return ((x >> rot) | (x << (bits - rot))) & mask
}

func EncodeHiddenPointerKey(ptr unsafe.Pointer) uintptr {
	x := uintptr(ptr)
	if unsafe.Sizeof(uintptr(0)) == 8 {
		x64 := uint64(x) & hiddenPointerMask64
		x64 ^= hiddenPointerSeed64
		x64 = hiddenPointerRotateMaskedLeft64(x64, hiddenPointerMask64, 56, hiddenPointerRot64)
		return uintptr(hiddenPointerTag64 | x64)
	}
	x ^= hiddenPointerSeed32
	x *= hiddenPointerMul32
	return hiddenPointerRotateLeft(x, hiddenPointerRot32)
}

func DecodeHiddenPointerKey(key uintptr) unsafe.Pointer {
	x := key
	if unsafe.Sizeof(uintptr(0)) == 8 {
		x64 := uint64(x) & hiddenPointerMask64
		x64 = hiddenPointerRotateMaskedRight64(x64, hiddenPointerMask64, 56, hiddenPointerRot64)
		x64 ^= hiddenPointerSeed64
		return unsafe.Pointer(uintptr(x64))
	}
	x = hiddenPointerRotateRight(x, hiddenPointerRot32)
	x *= hiddenPointerInvMul32
	x ^= hiddenPointerSeed32
	return unsafe.Pointer(x)
}

func HiddenNilPointerKey() uintptr {
	return EncodeHiddenPointerKey(nil)
}
