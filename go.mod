module github.com/goplus/llgo

go 1.23

toolchain go1.24.1

require (
	github.com/goplus/cobra v1.9.12 //gop:class
	github.com/goplus/gogen v1.18.0
	github.com/goplus/lib v0.2.0
	github.com/goplus/llgo/runtime v0.0.0-00010101000000-000000000000
	github.com/goplus/llvm v0.8.3
	github.com/goplus/mod v0.16.1
	github.com/qiniu/x v1.14.6
	golang.org/x/tools v0.30.0
)

require (
	golang.org/x/mod v0.23.0 // indirect
	golang.org/x/sync v0.11.0 // indirect
)

replace github.com/goplus/llgo/runtime => ./runtime
