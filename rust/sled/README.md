# LLGo wrapper of spacejam/sled

## How to install

Please refer the [doc](https://github.com/goplus/llgoexamples/blob/main/rust/sled/README.md) in [llgoexamples](https://github.com/goplus/llgoexamples) to install sled's dylib.

## Demos

The `_demo` directory contains our demos (it start with `_` to prevent the `go` command from compiling it):

* [sleddemo](_demo/sled/sled.go): store and retrieve data using sled.

### How to run demos

To run the demos in directory `_demo`:

```sh
cd <demo-directory>  # eg. cd _demo/mkjson
llgo run .
```
