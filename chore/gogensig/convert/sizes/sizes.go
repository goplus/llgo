package sizes

import (
	"go/types"
	"runtime"
)

var (
	std types.Sizes
)

func init() {
	if runtime.Compiler == "gopherjs" {
		std = &types.StdSizes{WordSize: 4, MaxAlign: 4}
	} else {
		std = types.SizesFor(runtime.Compiler, runtime.GOARCH)
	}
}

func Sizeof(T types.Type) int64 {
	return std.Sizeof(T)
}
