llgo - A Go compiler based on LLVM
=====

[![Build Status](https://github.com/goplus/llgo/actions/workflows/go.yml/badge.svg)](https://github.com/goplus/llgo/actions/workflows/go.yml)
[![Go Report Card](https://goreportcard.com/badge/github.com/goplus/llgo)](https://goreportcard.com/report/github.com/goplus/llgo)
[![GitHub release](https://img.shields.io/github/v/tag/goplus/llgo.svg?label=release)](https://github.com/goplus/llgo/releases)
[![Coverage Status](https://codecov.io/gh/goplus/llgo/branch/main/graph/badge.svg)](https://codecov.io/gh/goplus/llgo)
[![GoDoc](https://pkg.go.dev/badge/github.com/goplus/llgo.svg)](https://pkg.go.dev/github.com/goplus/llgo)
[![Language](https://img.shields.io/badge/language-Go+-blue.svg)](https://github.com/goplus/gop)

LLGo is a Go compiler based on LLVM in order to better integrate Go with the C ecosystem including Python. It's a subproject of [the Go+ project](https://github.com/goplus/gop).


## C standard libary support

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

See [github.com/goplus/llgo/c](https://pkg.go.dev/github.com/goplus/llgo/c) for more detials.


## Python support

You can import a Python library in LLGo!

And you can import any Python library into `llgo` through a program called `llpyg` (see [Development tools](#development-tools)). The following libraries have been included in `llgo`:

* [builtins](https://pkg.go.dev/github.com/goplus/llgo/py/std)
* [sys](https://pkg.go.dev/github.com/goplus/llgo/py/sys)
* [os](https://pkg.go.dev/github.com/goplus/llgo/py/os)
* [math](https://pkg.go.dev/github.com/goplus/llgo/py/math)
* [json](https://pkg.go.dev/github.com/goplus/llgo/py/json)
* [inspect](https://pkg.go.dev/github.com/goplus/llgo/py/inspect)
* [statistics](https://pkg.go.dev/github.com/goplus/llgo/py/statistics)
* [numpy](https://pkg.go.dev/github.com/goplus/llgo/py/numpy)
* [pandas](https://pkg.go.dev/github.com/goplus/llgo/py/pandas)
* [pytorch](https://pkg.go.dev/github.com/goplus/llgo/py/torch)
* [matplotlib](https://pkg.go.dev/github.com/goplus/llgo/py/matplotlib)

Note: For third-party libraries (such as pandas and pytorch), you still need to install the library files.

Here is an example using the Python `math` library:

```go
package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/math"
)

func main() {
	x := math.Sqrt(py.Float(2))
	c.Printf(c.Str("sqrt(2) = %f\n"), x.Float64())
}
```

Here, We call `py.Float(2)` to create a Python number 2, and pass it to Python’s `math.sqrt` to get `x`. Then use `x.Float64()` to convert x to Go's `float64` type, and print the value through the C `printf` function.

Let's look at a slightly more complex example. For example, we use `numpy` to calculate:

```go
package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/py"
	"github.com/goplus/llgo/py/numpy"
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
	c.Printf(c.Str("a+b = %s\n"), x.Str().CStr())
}
```

Here we define two 3x3 matrices a and b, add them to get x, and then print the result.

The `_pydemo` directory contains some python related demos:

* [callpy](_pydemo/callpy/callpy.go): call Python standard library function `math.sqrt`
* [pi](_pydemo/pi/pi.go): print python constants `math.pi`
* [statistics](_pydemo/statistics/statistics.go): define a python list and call `statistics.mean` to get the mean
* [matrix](_pydemo/matrix/matrix.go): a basic `numpy` demo

To run these demos, you need to set the `LLGO_LIB_PYTHON` environment variable first.

If Python is in the search path for `clang` linking, then `LLGO_LIB_PYTHON` only needs to be set to the name of the Python library. For example:

```sh
export LLGO_LIB_PYTHON=python3.12
```

You can also specify the path to tell `llgo` where the Python library is located:

```sh
export LLGO_LIB_PYTHON=/foo/bar/python3.12
```

For example, `/opt/homebrew/Frameworks/Python.framework/Versions/3.12/lib/libpython3.12.dylib` is a typical python library location under macOS. So we should set it like this:

```sh
export LLGO_LIB_PYTHON=/opt/homebrew/Frameworks/Python.framework/Versions/3.12/lib/python3.12
```

Note that the file name must be written in a platform-independent format, using `python3.12` instead of `libpython3.12.dylib`.

Then you can run the demos:

```sh
cd <demo-directory>  # eg. cd _pydemo/callpy
llgo run .
```

See [github.com/goplus/llgo/py](https://pkg.go.dev/github.com/goplus/llgo/py) for more detials.


## Other frequently used libraries

LLGo can easily import any libraries from the C ecosystem. Currently, this import process is still manual, but in the future, it will be automated similar to Python library imports.

The currently supported libraries include:

* [llama2.c](https://pkg.go.dev/github.com/goplus/llgo/c/llama2)
* [cjson](https://pkg.go.dev/github.com/goplus/llgo/c/cjson)
* [sqlite](https://pkg.go.dev/github.com/goplus/llgo/c/sqlite)

Here are some examples related to them:

* [llama2-c](_demo/llama2-c): inference Llama 2 (It's the first llgo AI example)
* [mkjson](c/cjson/_demo/mkjson/mkjson.go): create a json object and print it
* [sqlitedemo](c/sqlite/_demo/sqlitedemo/demo.go): a basic sqlite demo


## Go syntax support

Most of the Go syntax is already supported. Except for the following, which needs to be improved:

* map (Very limited support)

Here are some examples related to Go syntax:

* [concat](_demo/concat/concat.go): define a variadic function
* [genints](_demo/genints/genints.go): various forms of closure usage (including C function, recv.method and anonymous function)
* [errors](_cmptest/errors/errors.go): demo to implement error interface
* [defer](_cmptest/defer/defer.go): defer demo
* [goroutine](_demo/goroutine/goroutine.go): goroutine demo


## Defer

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
* [math/bits](https://pkg.go.dev/math/bits)
* [math/cmplx](https://pkg.go.dev/math/cmplx)
* [sort](https://pkg.go.dev/sort)
* [strconv](https://pkg.go.dev/strconv)
* [sync/atomic](https://pkg.go.dev/sync/atomic)
* [sync](https://pkg.go.dev/sync) (partially)
* [syscall](https://pkg.go.dev/syscall) (partially)
* [errors](https://pkg.go.dev/errors) (partially)
* [io](https://pkg.go.dev/io) (partially)
* [io/fs](https://pkg.go.dev/io/fs) (partially)
* [os](https://pkg.go.dev/os) (partially)
* [fmt](https://pkg.go.dev/fmt) (partially)
* [reflect](https://pkg.go.dev/reflect) (partially)
* [time](https://pkg.go.dev/time) (partially)


## Dependencies

- [Go 1.20+](https://go.dev) (build only)
- [LLVM 17](https://llvm.org)
- [LLD 17](https://lld.llvm.org)
- [Clang 17](https://clang.llvm.org)
- [pkg-config 0.29+](https://www.freedesktop.org/wiki/Software/pkg-config/)
- [bdwgc/libgc 8.0+](https://www.hboehm.info/gc/)
- [cJSON 1.7+](https://github.com/DaveGamble/cJSON) (optional, for [`github.com/goplus/llgo/c/cjson`](https://pkg.go.dev/github.com/goplus/llgo/c/cjson))
- [SQLite 3](https://www.sqlite.org) (optional, for [`github.com/goplus/llgo/c/sqlite`](https://pkg.go.dev/github.com/goplus/llgo/c/sqlite))
- [Python 3.11+](https://www.python.org) (optional, for [`github.com/goplus/llgo/py`](https://pkg.go.dev/github.com/goplus/llgo/py))

## How to install

Follow these steps to generate the `llgo` command (its usage is the same as the `go` command):

### on macOS

```sh
brew update # execute if needed
brew install llvm@17 pkg-config libgc
brew install cjson sqlite python@3.12 # optional
export PATH=$(brew --prefix llvm@17)/bin:$PATH # you may want to add this to your shell RC file, e.g. ~/.zshrc
export CC=clang CXX=clang++ # only for go build; optional if you have other compatible compilers
git clone https://github.com/goplus/llgo.git
cd llgo
export LLGOROOT="/path/to/llgo" # Replace this with the root directory of the llgo project
go install -v ./...
```

### on Linux (Debian/Ubuntu)

```sh
echo "deb http://apt.llvm.org/$(lsb_release -cs)/ llvm-toolchain-$(lsb_release -cs)-17 main" | sudo tee /etc/apt/sources.list.d/llvm.list
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-get update # execute if needed
sudo apt-get install -y llvm-17-dev clang-17 lld-17 pkg-config libgc-dev
sudo apt-get install -y libcjson-dev libsqlite3-dev python3.12-dev # optional
export PATH=/usr/lib/llvm-17/bin:$PATH # you may want to add this to your shell RC file, e.g. ~/.bashrc
export CC=clang CXX=clang++ # only for go build; optional if you have other compatible compilers
git clone https://github.com/goplus/llgo.git
cd llgo
export LLGOROOT="/path/to/llgo" # Replace this with the root directory of the llgo project
go install -v ./...
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
export CC=clang CXX=clang++ # only for go build; optional if you have other compatible compilers
go install -v ./...  # compile all tools except pydump
cd chore/_xtool
llgo install ./...   # compile pydump
go install github.com/goplus/hdq/chore/pysigfetch@v0.8.1  # compile pysigfetch
```

## Key modules

Below are the key modules for understanding the implementation principles of `llgo`:

* [llgo/ssa](https://pkg.go.dev/github.com/goplus/llgo/ssa): It generates LLVM IR files (LLVM SSA) using the semantics (interfaces) of Go SSA. Although `LLVM SSA` and `Go SSA` are both IR languages, they work at completely different levels. `LLVM SSA` is closer to machine code, which abstracts different instruction sets. While `Go SSA` is closer to a high-level language. We can think of it as the instruction set of the `Go computer`. `llgo/ssa` is not just limited to the `llgo` compiler. If we view it as the high-level expressive power of `LLVM`, you'll find it very useful. Prior to `llgo/ssa`, you had to operate `LLVM` using machine code semantics. But now, with the advanced SSA form (in the semantics of Go SSA), you can conveniently utilize `LLVM`.
* [llgo/cl](https://pkg.go.dev/github.com/goplus/llgo/cl): It is the core of the llgo compiler. It converts a Go package into LLVM IR files. It depends on `llgo/ssa`.
* [llgo/internal/build](https://pkg.go.dev/github.com/goplus/llgo/internal/build): It strings together the entire compilation process of `llgo`. It depends on `llgo/ssa` and `llgo/cl`.
