WARNING: Using LLGO root for devel: /workspace
WARNING: Using LLGO root for devel: /workspace
WARNING: Using LLGO root for devel: /workspace
WARNING: Using LLGO root for devel: /workspace
-: package cl/_testgo/interface1370 is not in std (/usr/local/go/src/cl/_testgo/interface1370)
cannot build SSA for package cl/_testgo/interface1370
panic: cannot build SSA for packages

goroutine 1 [running]:
github.com/goplus/llgo/internal/build.check(...)
	/workspace/internal/build/build.go:1369
github.com/goplus/llgo/internal/build.Do({0xc00012c420, 0x1, 0x1}, 0xc000194000)
	/workspace/internal/build/build.go:339 +0x211b
github.com/goplus/llgo/internal/llgen.genFrom({0x7ffc238209d8, 0x18}, 0x0)
	/workspace/internal/llgen/llgenf.go:51 +0x214
github.com/goplus/llgo/internal/llgen.SmartDoFileEx({0x7ffc238209d8?, 0xc00011e0f0?}, 0x99ba30?)
	/workspace/internal/llgen/llgenf.go:83 +0x1f
main.main()
	/workspace/chore/llgen/llgen.go:38 +0xc5
