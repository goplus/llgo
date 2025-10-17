module github.com/goplus/llgo

go 1.23.0

toolchain go1.24.1

require (
	github.com/goplus/cobra v1.9.12 //gop:class
	github.com/goplus/gogen v1.19.3
	github.com/goplus/lib v0.3.0
	github.com/goplus/llgo/runtime v0.0.0-00010101000000-000000000000
	github.com/goplus/llvm v0.8.5
	github.com/goplus/mod v0.17.1
	github.com/qiniu/x v1.15.1
	golang.org/x/tools v0.36.0
)

require (
	github.com/marcinbor85/gohex v0.0.0-20210308104911-55fb1c624d84
	github.com/mattn/go-tty v0.0.7
	github.com/sigurn/crc16 v0.0.0-20240131213347-83fcde1e29d1
	go.bug.st/serial v1.6.4
)

require (
	github.com/creack/goselect v0.1.2 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	golang.org/x/mod v0.27.0 // indirect
	golang.org/x/sync v0.16.0 // indirect
	golang.org/x/sys v0.35.0 // indirect
)

replace github.com/goplus/llgo/runtime => ./runtime
