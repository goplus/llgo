LLGo wrapper of DaveGamble/cJSON
=====
[![Build Status](https://github.com/goplus/cjson/actions/workflows/go.yml/badge.svg)](https://github.com/goplus/cjson/actions/workflows/go.yml)
[![GitHub release](https://img.shields.io/github/v/tag/goplus/cjson.svg?label=release)](https://github.com/goplus/cjson/releases)
[![GoDoc](https://pkg.go.dev/badge/github.com/goplus/cjson.svg)](https://pkg.go.dev/github.com/goplus/cjson)
[![Compiler](https://img.shields.io/badge/compiler-llgo-darkgreen.svg)](https://github.com/goplus/llgo)
[![Language](https://img.shields.io/badge/language-Go+-blue.svg)](https://github.com/goplus/gop)

## How to install
### on macOS (Homebrew)
```sh
brew install cjson 
```
### on linux
```sh
apt-get install -y libcjson-dev
```
### from source code
```sh
git clone https://github.com/goplus/cjson.git
cd cjson
git submodule init
git submodule update
mkdir build.dir
cd build.dir
cmake ../cJSON
sudo make install
```

## Demos

The `_demo` directory contains our demos (it start with `_` to prevent the `go` command from compiling it):

* [mkjson](_demo/mkjson/mkjson.go): create a json object and print it

### How to run demos

To run the demos in directory `_demo`:

```sh
cd <demo-directory>  # eg. cd _demo/mkjson
llgo run .
```
