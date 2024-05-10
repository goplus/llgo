llgo - A Go compiler based on LLVM
=====

[![Build Status](https://github.com/goplus/llgo/actions/workflows/go.yml/badge.svg)](https://github.com/goplus/llgo/actions/workflows/go.yml)
[![Go Report Card](https://goreportcard.com/badge/github.com/goplus/llgo)](https://goreportcard.com/report/github.com/goplus/llgo)
[![GitHub release](https://img.shields.io/github/v/tag/goplus/llgo.svg?label=release)](https://github.com/goplus/llgo/releases)
[![Coverage Status](https://codecov.io/gh/goplus/llgo/branch/main/graph/badge.svg)](https://codecov.io/gh/goplus/llgo)
[![GoDoc](https://pkg.go.dev/badge/github.com/goplus/llgo.svg)](https://pkg.go.dev/github.com/goplus/llgo)
[![Language](https://img.shields.io/badge/language-Go+-blue.svg)](https://github.com/goplus/gop)

This is a Go compiler based on LLVM in order to better integrate Go with the C ecosystem. It's a subproject of [the Go+ project](https://github.com/goplus/gop).

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
* [hellopy](_demo/hellopy/hello.go): link Python to Go and say `Hello world`
* [clpy](_demo/clpy/cleval.go): compile Python code and eval.
* [callpy](_demo/callpy/call.go): call Python standard library function `math.sqrt`.

### How to run demos

```sh
cd <demo-directory>  # eg. cd _demo/genints
llgo run .
```
