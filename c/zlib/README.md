# LLGo wrapper of madler/zlib

## How to install

### on macOS (Homebrew)

```sh
brew install zlib
```

### on Linux (Debian/Ubuntu)

```sh
TODO
```

## Demos

The `_demo` directory contains our demos (it start with `_` to prevent the `go` command from compiling it):

- [normal](_demo/normal/compress.go): a basic zlib demo

### How to run demos

To run the demos in directory `_demo`:

```sh
cd <demo-directory>  # eg. cd _demo/normal
llgo run .
```
