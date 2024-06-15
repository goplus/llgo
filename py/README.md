Linking Python to Go
=====

TODO

## Demo

The `_demo` directory contains our demos (it start with `_` to prevent the `go` command from compiling it):

* [hellopy](_demo/hellopy/hello.go): link Python to Go and say `Hello world`
* [clpy](_demo/clpy/cleval.go): compile Python code and eval.
* [callpy](_demo/callpy/call.go): call Python standard library function `math.sqrt`.

### How to run demos

To run the demos in directory `_demo`, you need to set the `LLGO_LIB_PYTHON` environment variable first. Assuming you use Python 3.12, and the `libpython3.12.so` (or `libpython3.12.dylib` or `python3.12.lib`) file is in the /foo/bar directory, then you need to set `LLGO_LIB_PYTHON` to:

```sh
export LLGO_LIB_PYTHON=/foo/bar/python3.12
```

For example, `/opt/homebrew/Frameworks/Python.framework/Versions/3.12/lib/libpython3.12.dylib` is a typical python lib location under macOS. So we should set it like this:

```sh
export LLGO_LIB_PYTHON=/opt/homebrew/Frameworks/Python.framework/Versions/3.12/lib/python3.12
```

Then you can run the demos in directory `_demo`:

```sh
cd <demo-directory>  # eg. cd _demo/hellopy
llgo run .
```
