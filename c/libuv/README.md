LLGo wrapper of libuv
=====

## How to install

### on macOS (Homebrew)

```sh
brew install libuv
```

### on Linux (Debian/Ubuntu)

```sh
apt-get install -y libuv1-dev
```

### on Linux (CentOS/RHEL)

```sh
yum install -y libuv-devel
```

### on Linux (Arch Linux)

```sh
pacman -S libuv
```

## Demos

The `_demo` directory contains our demos (it start with `_` to prevent the `go` command from compiling it):

* [async_fs](_demo/async_fs/async_fs.go): a simple async file read demo
* [echo_server](_demo/echo_server/echo_server.go): a basic async tcp echo server

### How to run demos

To run the demos in directory `_demo`:

```sh
cd <demo-directory>  # eg. cd _demo/sqlitedemo
llgo run .
```
