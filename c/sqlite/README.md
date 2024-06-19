LLGo wrapper of sqlite
=====

## How to install

### on macOS (Homebrew)

```sh
brew install sqlite3
```

### on Linux (Debian/Ubuntu)

```sh
apt-get install -y libsqlite3-dev
```

## Demos

The `_demo` directory contains our demos (it start with `_` to prevent the `go` command from compiling it):

* [sqlitedemo](_demo/sqlitedemo/demo.go): a basic sqlite demo

### How to run demos

To run the demos in directory `_demo`:

```sh
cd <demo-directory>  # eg. cd _demo/sqlitedemo
llgo run .
```
