LLGo wrapper of DaveGamble/cJSON
=====

## How to install

### on macOS (Homebrew)

```sh
brew install cjson 
```

### on Linux (Debian/Ubuntu)

```sh
apt-get install -y libcjson-dev
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
