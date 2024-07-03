package rust

import "github.com/goplus/llgo/c"

const (
	LLGoPackage = "link: -L/Users/zhangzhiyang/.rustup/toolchains/stable-aarch64-apple-darwin/lib -lstd-7f95fd207255b41e -lc -lm"
)

// clang main.o caller.o -o program -L /Users/zhangzhiyang/.rustup/toolchains/stable-aarch64-apple-darwin/lib -lstd-7f95fd207255b41e -lc -lm

//llgo:link Add C._ZN10my_library3add17h1aca24f6690df0dfE
func Add(a, b c.Int) c.Int { return 0 }
