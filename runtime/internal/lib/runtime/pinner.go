package runtime

import "unsafe"

const (
	pinnerSize         = 64
	pinnerRefStoreSize = (pinnerSize - unsafe.Sizeof([]unsafe.Pointer{})) / unsafe.Sizeof(unsafe.Pointer(nil))
)

type pinner struct {
	refs     []unsafe.Pointer
	refStore [pinnerRefStoreSize]unsafe.Pointer
}
