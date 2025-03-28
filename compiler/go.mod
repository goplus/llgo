module github.com/goplus/llgo/compiler

go 1.22.0

require (
	github.com/goplus/gogen v1.16.8
	github.com/goplus/llgo v0.9.9
	github.com/goplus/llgo/runtime v0.0.0-00010101000000-000000000000
	github.com/goplus/llvm v0.8.1
	github.com/goplus/mod v0.13.17
	github.com/qiniu/x v1.13.12
	golang.org/x/tools v0.30.0
)

require (
	github.com/cpunion/clibs/build v0.0.0-20250328022709-48234c458d49 // indirect
	golang.org/x/mod v0.23.0 // indirect
	golang.org/x/sync v0.11.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/goplus/llgo => ../

replace github.com/goplus/llgo/runtime => ../runtime
