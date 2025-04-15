module github.com/goplus/llgo

go 1.22.0
toolchain go1.24.1

require (
	github.com/goplus/gogen v1.17.1
	github.com/goplus/lib v0.2.0
	github.com/goplus/llgo/runtime v0.0.0-20250403035532-0a8a4eb6a653
	github.com/goplus/llvm v0.8.3
	github.com/goplus/mod v0.15.1
	github.com/qiniu/x v1.13.17
	golang.org/x/tools v0.32.0
)

require (
	golang.org/x/mod v0.24.0 // indirect
	golang.org/x/sync v0.13.0 // indirect
)

replace github.com/goplus/llgo/runtime => ./runtime
