package runtime

import "unsafe"

const (
	hiddenPointerMask64Hi = uintptr(0x00ffffff)
	hiddenPointerMask64Lo = uintptr(0xffffffff)
	hiddenPointerTag64Hi  = uintptr(0xa5000000)
	hiddenPointerTag64Lo  = uintptr(0x00000000)
	hiddenPointerSeed64Hi = uintptr(0x005a3c9d)
	hiddenPointerSeed64Lo = uintptr(0x12e7b14f)
	hiddenPointerRot64    = 17

	hiddenPointerSeed32   = uintptr(0x85ebca6b)
	hiddenPointerMul32    = uintptr(0x9e3779b9)
	hiddenPointerInvMul32 = uintptr(0x144cbc89)
	hiddenPointerRot32    = 11
)

func hiddenUintptr64(hi, lo uintptr) uintptr {
	return (hi << 32) | lo
}

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

func EncodeHiddenPointerKey(ptr unsafe.Pointer) uintptr {
	x := uintptr(ptr)
	if unsafe.Sizeof(uintptr(0)) == 8 {
		mask := hiddenUintptr64(hiddenPointerMask64Hi, hiddenPointerMask64Lo)
		tag := hiddenUintptr64(hiddenPointerTag64Hi, hiddenPointerTag64Lo)
		seed := hiddenUintptr64(hiddenPointerSeed64Hi, hiddenPointerSeed64Lo)
		x &= mask
		x ^= seed
		x = hiddenPointerRotateMaskedLeft(x, mask, 56, hiddenPointerRot64)
		return tag | x
	}
	x ^= hiddenPointerSeed32
	x *= hiddenPointerMul32
	return hiddenPointerRotateLeft(x, hiddenPointerRot32)
}

func DecodeHiddenPointerKey(key uintptr) unsafe.Pointer {
	x := key
	if unsafe.Sizeof(uintptr(0)) == 8 {
		mask := hiddenUintptr64(hiddenPointerMask64Hi, hiddenPointerMask64Lo)
		seed := hiddenUintptr64(hiddenPointerSeed64Hi, hiddenPointerSeed64Lo)
		x &= mask
		x = hiddenPointerRotateMaskedRight(x, mask, 56, hiddenPointerRot64)
		x ^= seed
		return unsafe.Pointer(x)
	}
	x = hiddenPointerRotateRight(x, hiddenPointerRot32)
	x *= hiddenPointerInvMul32
	x ^= hiddenPointerSeed32
	return unsafe.Pointer(x)
}

func HiddenNilPointerKey() uintptr {
	return EncodeHiddenPointerKey(nil)
}
