llgo - A Go compiler based on LLVM
=====

[![Build Status](https://github.com/goplus/llgo/actions/workflows/go.yml/badge.svg)](https://github.com/goplus/llgo/actions/workflows/go.yml)
[![Go Report Card](https://goreportcard.com/badge/github.com/goplus/llgo)](https://goreportcard.com/report/github.com/goplus/llgo)
[![GitHub release](https://img.shields.io/github/v/tag/goplus/llgo.svg?label=release)](https://github.com/goplus/llgo/releases)
[![Coverage Status](https://codecov.io/gh/goplus/llgo/branch/main/graph/badge.svg)](https://codecov.io/gh/goplus/llgo)
[![GoDoc](https://pkg.go.dev/badge/github.com/goplus/llgo.svg)](https://pkg.go.dev/github.com/goplus/llgo)
[![Language](https://img.shields.io/badge/language-Go+-blue.svg)](https://github.com/goplus/gop)

LLGo is a Go compiler based on LLVM in order to better integrate Go with the C ecosystem including Python. It's a subproject of [the Go+ project](https://github.com/goplus/gop).

LLGo aims to expand the boundaries of Go/Go+, providing limitless possibilities such as:

* Game development
* AI and data science
* WebAssembly
* Embedded development
* ...

How can these be achieved?

```
LLGo := Go + C + Python
```

LLGo is compatible with C and Python through the language's **Application Binary Interface (ABI)**, while LLGo is compatible with Go through its **syntax (source code)**.


## C/C++ standard libary support

You can import a C/C++ standard library in LLGo!

* [c](https://pkg.go.dev/github.com/goplus/llgo/c)
* [c/syscall](https://pkg.go.dev/github.com/goplus/llgo/c/syscall)
* [c/sys](https://pkg.go.dev/github.com/goplus/llgo/c/sys)
* [c/os](https://pkg.go.dev/github.com/goplus/llgo/c/os)
* [c/math](https://pkg.go.dev/github.com/goplus/llgo/c/math)
* [c/math/cmplx](https://pkg.go.dev/github.com/goplus/llgo/c/math/cmplx)
* [c/math/rand](https://pkg.go.dev/github.com/goplus/llgo/c/math/rand)
* [c/pthread](https://pkg.go.dev/github.com/goplus/llgo/c/pthread)
* [c/pthread/sync](https://pkg.go.dev/github.com/goplus/llgo/c/pthread/sync)
* [c/sync/atomic](https://pkg.go.dev/github.com/goplus/llgo/c/sync/atomic)
* [c/time](https://pkg.go.dev/github.com/goplus/llgo/c/time)
* [c/net](https://pkg.go.dev/github.com/goplus/llgo/c/net)
* [cpp/std](https://pkg.go.dev/github.com/goplus/llgo/cpp/std)

Here is a simple example:

```go
package main

import "github.com/goplus/llgo/c"

func main() {
	c.Printf(c.Str("Hello world\n"))
}
```

This is a simple example of calling the C `printf` function to print `Hello world`. Here, `c.Str` is not a function for converting a Go string to a C string, but a built-in instruction supported by `llgo` for generating a C string constant.

The `_demo` directory contains some C standard libary related demos (it start with `_` to prevent the `go` command from compiling it):

* [hello](_demo/hello/hello.go): call C `printf` to print `Hello world`
* [concat](_demo/concat/concat.go): call C `fprintf` with `stderr`
* [qsort](_demo/qsort/qsort.go): call C function with a callback (eg. `qsort`)

To run these demos (If you haven't installed `llgo` yet, please refer to [How to install](#how-to-install)):

```sh
cd <demo-directory>  # eg. cd _demo/hello
llgo run .
```


## How support C/C++ and Python

LLGo use `go:linkname` to link an extern symbol througth its ABI:

```go
import _ "unsafe" // for go:linkname

//go:linkname Sqrt C.sqrt
func Sqrt(x float64) float64
```

You can directly integrate it into [your own code](_demo/linkname/linkname.go):

```go
package main

import _ "unsafe" // for go:linkname

//go:linkname Sqrt C.sqrt
func Sqrt(x float64) float64

func main() {
	println("sqrt(2) =", Sqrt(2))
}
```

Or put it into a package (see [c/math](c/math/math.go)):

```go
package main

import "github.com/goplus/llgo/c/math"

func main() {
	println("sqrt(2) =", math.Sqrt(2))
}
```


## Python support

You can import a Python library in LLGo!

And you can import any Python library into `llgo` through a program called `llpyg` (see [Development tools](#development-tools)). The following libraries have been included in `llgo`:

* [py](https://pkg.go.dev/github.com/goplus/llgo/py) (abi)
* [py/std](https://pkg.go.dev/github.com/goplus/llgo/py/std) (builtins)
* [py/sys](https://pkg.go.dev/github.com/goplus/llgo/py/sys)
* [py/os](https://pkg.go.dev/github.com/goplus/llgo/py/os)
* [py/math](https://pkg.go.dev/github.com/goplus/llgo/py/math)
* [py/json](https://pkg.go.dev/github.com/goplus/llgo/py/json)
* [py/inspect](https://pkg.go.dev/github.com/goplus/llgo/py/inspect)
* [py/statistics](https://pkg.go.dev/github.com/goplus/llgo/py/statistics)
* [py/numpy](https://pkg.go.dev/github.com/goplus/llgo/py/numpy)
* [py/pandas](https://pkg.go.dev/github.com/goplus/llgo/py/pandas)
* [py/torch](https://pkg.go.dev/github.com/goplus/llgo/py/torch)
* [py/matplotlib](https://pkg.go.dev/github.com/goplus/llgo/py/matplotlib)

Note: For third-party libraries (such as pandas and pytorch), you still need to install the library files.

Here is an example:

```go
package main

import (
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/math"
	"github.com/goplus/llgo/py/std"
)

func main() {
	x := math.Sqrt(py.Float(2))       // x = sqrt(2)
	std.Print(py.Str("sqrt(2) ="), x) // print("sqrt(2) =", x)
}
```

It is equivalent to the following Python code:

```py
import math

x = math.sqrt(2)
print("sqrt =", x)
```

Here, We call `py.Float(2)` to create a Python number 2, and pass it to Python’s `math.sqrt` to get `x`. Then we call `std.Print` to print the result.

Let's look at a slightly more complex example. For example, we use `numpy` to calculate:

```go
package main

import (
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/numpy"
	"github.com/goplus/llgo/py/std"
)

func main() {
	a := py.List(
		py.List(1.0, 2.0, 3.0),
		py.List(4.0, 5.0, 6.0),
		py.List(7.0, 8.0, 9.0),
	)
	b := py.List(
		py.List(9.0, 8.0, 7.0),
		py.List(6.0, 5.0, 4.0),
		py.List(3.0, 2.0, 1.0),
	)
	x := numpy.Add(a, b)
	std.Print(py.Str("a+b ="), x)
}
```

Here we define two 3x3 matrices a and b, add them to get x, and then print the result.

The `_pydemo` directory contains some python related demos:

* [callpy](_pydemo/callpy/callpy.go): call Python standard library function `math.sqrt`
* [pi](_pydemo/pi/pi.go): print python constants `math.pi`
* [statistics](_pydemo/statistics/statistics.go): define a python list and call `statistics.mean` to get the mean
* [matrix](_pydemo/matrix/matrix.go): a basic `numpy` demo

To run these demos (If you haven't installed `llgo` yet, please refer to [How to install](#how-to-install)):

```sh
cd <demo-directory>  # eg. cd _pydemo/callpy
llgo run .
```


## Other frequently used libraries

LLGo can easily import any libraries from the C ecosystem. Currently, this import process is still manual, but in the future, it will be automated similar to Python library imports.

The currently supported libraries include:

* [c/bdwgc](https://pkg.go.dev/github.com/goplus/llgo/c/bdwgc)
* [c/cjson](https://pkg.go.dev/github.com/goplus/llgo/c/cjson)
* [c/clang](https://pkg.go.dev/github.com/goplus/llgo/c/clang)
* [c/libuv](https://pkg.go.dev/github.com/goplus/llgo/c/libuv)
* [c/llama2](https://pkg.go.dev/github.com/goplus/llgo/c/llama2)
* [c/lua](https://pkg.go.dev/github.com/goplus/llgo/c/lua)
* [c/neco](https://pkg.go.dev/github.com/goplus/llgo/c/neco)
* [c/openssl](https://pkg.go.dev/github.com/goplus/llgo/c/openssl)
* [c/raylib](https://pkg.go.dev/github.com/goplus/llgo/c/raylib)
* [c/sqlite](https://pkg.go.dev/github.com/goplus/llgo/c/sqlite)
* [c/zlib](https://pkg.go.dev/github.com/goplus/llgo/c/zlib)
* [cpp/inih](https://pkg.go.dev/github.com/goplus/llgo/cpp/inih)
* [cpp/llvm](https://pkg.go.dev/github.com/goplus/llgo/cpp/llvm)

Here are some examples related to them:

* [llama2-c](_demo/llama2-c): inference Llama 2 (It's the first llgo AI example)
* [mkjson](c/cjson/_demo/mkjson/mkjson.go): create a json object and print it
* [sqlitedemo](c/sqlite/_demo/sqlitedemo/demo.go): a basic sqlite demo
* [tetris](c/raylib/_demo/tetris/tetris.go): a tetris game based on raylib


## Go syntax support

All Go syntax (not including `cgo`) is already supported. Here are some examples:

* [concat](_demo/concat/concat.go): define a variadic function
* [genints](_demo/genints/genints.go): various forms of closure usage (including C function, recv.method and anonymous function)
* [errors](_cmptest/errors/errors.go): demo to implement error interface
* [defer](_cmptest/defer/defer.go): defer demo
* [goroutine](_demo/goroutine/goroutine.go): goroutine demo


### Defer

LLGo `defer` does not support usage in loops. This is not a bug but a feature, because we think that using `defer` in a loop is a very unrecommended practice.


### Garbage Collection (GC)

By default, LLGo implements `gc` based on [bdwgc](https://www.hboehm.info/gc/) (also known as [libgc](https://www.hboehm.info/gc/)).

However, you can disable gc by specifying the `nogc` tag. For example:

```sh
llgo run -tags nogc .
```


## Go packages support

Here are the Go packages that can be imported correctly:

* [unsafe](https://pkg.go.dev/unsafe)
* [unicode](https://pkg.go.dev/unicode)
* [unicode/utf8](https://pkg.go.dev/unicode/utf8)
* [unicode/utf16](https://pkg.go.dev/unicode/utf16)
* [math](https://pkg.go.dev/math)
* [math/big](https://pkg.go.dev/math/big) (partially)
* [math/bits](https://pkg.go.dev/math/bits)
* [math/cmplx](https://pkg.go.dev/math/cmplx)
* [math/rand](https://pkg.go.dev/math/rand)
* [net/url](https://pkg.go.dev/net/url)
* [errors](https://pkg.go.dev/errors)
* [context](https://pkg.go.dev/context)
* [io](https://pkg.go.dev/io)
* [io/fs](https://pkg.go.dev/io/fs)
* [io/ioutil](https://pkg.go.dev/io/ioutil)
* [log](https://pkg.go.dev/log)
* [flag](https://pkg.go.dev/flag)
* [sort](https://pkg.go.dev/sort)
* [bytes](https://pkg.go.dev/bytes)
* [bufio](https://pkg.go.dev/bufio)
* [strings](https://pkg.go.dev/strings)
* [strconv](https://pkg.go.dev/strconv)
* [path](https://pkg.go.dev/path)
* [path/filepath](https://pkg.go.dev/path/filepath)
* [sync/atomic](https://pkg.go.dev/sync/atomic)
* [sync](https://pkg.go.dev/sync) (partially)
* [syscall](https://pkg.go.dev/syscall) (partially)
* [runtime](https://pkg.go.dev/runtime) (partially)
* [os](https://pkg.go.dev/os) (partially)
* [os/exec](https://pkg.go.dev/os/exec) (partially)
* [fmt](https://pkg.go.dev/fmt) (partially)
* [reflect](https://pkg.go.dev/reflect) (partially)
* [time](https://pkg.go.dev/time) (partially)
* [encoding](https://pkg.go.dev/encoding)
* [encoding/binary](https://pkg.go.dev/encoding/binary)
* [encoding/hex](https://pkg.go.dev/encoding/hex)
* [encoding/base32](https://pkg.go.dev/encoding/base32)
* [encoding/base64](https://pkg.go.dev/encoding/base64)
* [encoding/csv](https://pkg.go.dev/encoding/csv)
* [net/textproto](https://pkg.go.dev/net/textproto)
* [hash](https://pkg.go.dev/hash)
* [hash/adler32](https://pkg.go.dev/hash/adler32)
* [hash/crc32](https://pkg.go.dev/hash/crc32) (partially)
* [hash/crc64](https://pkg.go.dev/hash/crc64)
* [crypto](https://pkg.go.dev/crypto)
* [crypto/md5](https://pkg.go.dev/crypto/md5)
* [crypto/sha1](https://pkg.go.dev/crypto/sha1)
* [crypto/sha256](https://pkg.go.dev/crypto/sha256)
* [crypto/sha512](https://pkg.go.dev/crypto/sha512) (partially)
* [crypto/hmac](https://pkg.go.dev/crypto/hmac) (partially)
* [crypto/rand](https://pkg.go.dev/crypto/rand) (partially)
* [crypto/subtle](https://pkg.go.dev/crypto/subtle) (partially)
* [regexp](https://pkg.go.dev/regexp)
* [regexp/syntax](https://pkg.go.dev/regexp/syntax)
* [go/token](https://pkg.go.dev/go/token)
* [go/scanner](https://pkg.go.dev/go/scanner)


## Dependencies

- [Go 1.20+](https://go.dev)
- [LLVM 18](https://llvm.org)
- [LLD 18](https://lld.llvm.org)
- [Clang 18](https://clang.llvm.org)
- [pkg-config 0.29+](https://www.freedesktop.org/wiki/Software/pkg-config/)
- [bdwgc/libgc 8.0+](https://www.hboehm.info/gc/)
- [OpenSSL 3.0+](https://www.openssl.org/)
- [zlib 1.2+](https://www.zlib.net)
- [Python 3.12+](https://www.python.org) (optional, for [github.com/goplus/llgo/py](https://pkg.go.dev/github.com/goplus/llgo/py))

## How to install

Follow these steps to generate the `llgo` command (its usage is the same as the `go` command):

### on macOS

```sh
brew update
brew install llvm@18 pkg-config bdw-gc openssl
brew install python@3.12 # optional
go install -v github.com/goplus/llgo/cmd/llgo@latest
```

### on Linux (Debian/Ubuntu)

```sh
echo "deb http://apt.llvm.org/$(lsb_release -cs)/ llvm-toolchain-$(lsb_release -cs)-18 main" | sudo tee /etc/apt/sources.list.d/llvm.list
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y llvm-18-dev clang-18 lld-18 pkg-config libgc-dev libssl-dev zlib1g-dev
sudo apt-get install -y python3.12-dev # optional
go install -v github.com/goplus/llgo/cmd/llgo@latest
```

### on Windows

TODO


## Development tools

* [pydump](chore/_xtool/pydump): It's the first program compiled by `llgo` (NOT `go`) in a production environment. It outputs symbol information (functions, variables, and constants) from a Python library in JSON format, preparing for the generation of corresponding packages in `llgo`.
* [pysigfetch](https://github.com/goplus/hdq/tree/main/chore/pysigfetch): It generates symbol information by extracting information from Python's documentation site. This tool is not part of the `llgo` project, but we depend on it.
* [llpyg](chore/llpyg): It is used to automatically convert Python libraries into Go packages that `llgo` can import. It depends on `pydump` and `pysigfetch` to accomplish the task.
* [llgen](chore/llgen): It is used to compile Go packages into LLVM IR files (*.ll).
* [ssadump](chore/ssadump): It is a Go SSA builder and interpreter.

How do I generate these tools?

```sh
git clone https://github.com/goplus/llgo.git
cd llgo
go install -v ./chore/...  # compile all tools except pydump
cd chore/_xtool
llgo install ./...   # compile pydump
go install github.com/goplus/hdq/chore/pysigfetch@v0.8.1  # compile pysigfetch
```

## Key modules

Below are the key modules for understanding the implementation principles of `llgo`:

* [llgo/ssa](https://pkg.go.dev/github.com/goplus/llgo/ssa): It generates LLVM IR files (LLVM SSA) using the semantics (interfaces) of Go SSA. Although `LLVM SSA` and `Go SSA` are both IR languages, they work at completely different levels. `LLVM SSA` is closer to machine code, which abstracts different instruction sets. While `Go SSA` is closer to a high-level language. We can think of it as the instruction set of the `Go computer`. `llgo/ssa` is not just limited to the `llgo` compiler. If we view it as the high-level expressive power of `LLVM`, you'll find it very useful. Prior to `llgo/ssa`, you had to operate `LLVM` using machine code semantics. But now, with the advanced SSA form (in the semantics of Go SSA), you can conveniently utilize `LLVM`.
* [llgo/cl](https://pkg.go.dev/github.com/goplus/llgo/cl): It is the core of the llgo compiler. It converts a Go package into LLVM IR files. It depends on `llgo/ssa`.
* [llgo/internal/build](https://pkg.go.dev/github.com/goplus/llgo/internal/build): It strings together the entire compilation process of `llgo`. It depends on `llgo/ssa` and `llgo/cl`.
