llgo - A Go compiler based on LLVM
=====

[![Build Status](https://github.com/goplus/llgo/actions/workflows/go.yml/badge.svg)](https://github.com/goplus/llgo/actions/workflows/go.yml)
[![Go Report Card](https://goreportcard.com/badge/github.com/goplus/llgo)](https://goreportcard.com/report/github.com/goplus/llgo)
[![GitHub release](https://img.shields.io/github/v/tag/goplus/llgo.svg?label=release)](https://github.com/goplus/llgo/releases)
[![Coverage Status](https://codecov.io/gh/goplus/llgo/branch/main/graph/badge.svg)](https://codecov.io/gh/goplus/llgo)
[![GoDoc](https://pkg.go.dev/badge/github.com/goplus/llgo.svg)](https://pkg.go.dev/github.com/goplus/llgo)
[![Language](https://img.shields.io/badge/language-Go+-blue.svg)](https://github.com/goplus/gop)

This is a Go compiler based on LLVM in order to better integrate Go with the C ecosystem including Python. It's a subproject of [the Go+ project](https://github.com/goplus/gop).

## C standard libary support

```go
package main

import "github.com/goplus/llgo/c"

func main() {
	c.Printf(c.Str("Hello world\n"))
}
```

This is a simple example of calling the C `printf` function to print `Hello world`. Here, `c.Str` is not a function for converting a Go string to a C string, but a built-in instruction supported by llgo for generating a C string constant.

See [github.com/goplus/llgo/c](https://pkg.go.dev/github.com/goplus/llgo/c) for more detials.


## Python support

You can import a Python library in `llgo`!

And you can import any Python library into `llgo` through a program called `llpyg`. The currently imported packages include:

* [sys](https://pkg.go.dev/github.com/goplus/llgo/py/sys)
* [os](https://pkg.go.dev/github.com/goplus/llgo/py/os)
* [math](https://pkg.go.dev/github.com/goplus/llgo/py/math)
* [json](https://pkg.go.dev/github.com/goplus/llgo/py/json)
* [inspect](https://pkg.go.dev/github.com/goplus/llgo/py/inspect)
* [statistics](https://pkg.go.dev/github.com/goplus/llgo/py/statistics)
* [numpy](https://pkg.go.dev/github.com/goplus/llgo/py/numpy)

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

See [github.com/goplus/llgo/py](https://pkg.go.dev/github.com/goplus/llgo/py) for more detials.


## Other frequently used libraries

TODO


## How to install

Follow these steps to generate the `llgo` command (its usage is the same as the `go` command):

### on macOS

```sh
brew update  # execute if needed
brew install llvm@17
go install -v ./...
```

### on Linux

```sh
echo 'deb http://apt.llvm.org/focal/ llvm-toolchain-focal-17 main' | sudo tee /etc/apt/sources.list.d/llvm.list
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-get update  # execute if needed
sudo apt-get install --no-install-recommends llvm-17-dev
go install -v ./...
```

### on Windows

TODO


## Demo

The `_demo` directory contains our demos (it start with `_` to prevent the `go` command from compiling it):

* [hello](_demo/hello/hello.go): call C printf to print `Hello world`
* [concat](_demo/concat/concat.go): call C fprintf with stderr, and Go variadic function
* [qsort](_demo/qsort/qsort.go): call C function with a callback (eg. qsort)
* [genints](_demo/genints/genints.go): various forms of closure usage (including C function, recv.method and anonymous function)
* [llama2-c](_demo/llama2-c): inference Llama 2 (It's the first llgo AI example)

And the `_pydemo` directory contains python related demos:

* [callpy](_pydemo/callpy/callpy.go): call Python standard library function `math.sqrt`


### How to run demos

To run the demos in directory `_demo`:

```sh
cd <demo-directory>  # eg. cd _demo/genints
llgo run .
```

To run the demos in directory `_pydemo`, you need to set the `LLGO_LIB_PYTHON` environment variable first. Assuming you use Python 3.12, and the `libpython3.12.so` (or `libpython3.12.dylib` or `python3.12.lib`) file is in the /foo/bar directory, then you need to set `LLGO_LIB_PYTHON` to:

```sh
export LLGO_LIB_PYTHON=/foo/bar/python3.12
```

For example, `/opt/homebrew/Frameworks/Python.framework/Versions/3.12/libpython3.12.dylib` is a typical python lib location under macOS. So we should set it like this:

```sh
export LLGO_LIB_PYTHON=/opt/homebrew/Frameworks/Python.framework/Versions/3.12/python3.12
```

Then you can run the demos in directory `_pydemo`:

```sh
cd <demo-directory>  # eg. cd _pydemo/callpy
llgo run .
```
