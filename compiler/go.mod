module github.com/goplus/llgo/compiler

go 1.22.0

require (
	github.com/goplus/gogen v1.16.6
	github.com/goplus/llgo v0.9.9
	github.com/goplus/llgo/runtime v0.0.0-00010101000000-000000000000
	github.com/goplus/llvm v0.8.1
	github.com/goplus/mod v0.13.16
	github.com/qiniu/x v1.13.11
	golang.org/x/tools v0.29.0
)

require (
	golang.org/x/mod v0.22.0 // indirect
	golang.org/x/sync v0.10.0 // indirect
)

replace github.com/goplus/llgo => ../

replace github.com/goplus/llgo/runtime => ../runtime
