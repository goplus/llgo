module github.com/goplus/llgo/compiler

go 1.23.4

require (
	github.com/goplus/gogen v1.16.4
	github.com/goplus/llgo v0.9.9
	github.com/goplus/llvm v0.8.1
	github.com/goplus/mod v0.13.13
	github.com/qiniu/x v1.13.10
	golang.org/x/tools v0.28.0
)

require (
	golang.org/x/mod v0.22.0 // indirect
	golang.org/x/sync v0.10.0 // indirect
)

replace github.com/goplus/llgo => ../
