# LLGo wrapper of csv

## How to install

### Clone & Build Repository

```
git clone https://github.com/luoliwoshang/csv-wrapper
cd csv-wrapper
cargo build --release
```

### Install dylib-installer

Install the dylib-installer tool, which is used to install dynamic libraries:

```bash
cargo install --git https://github.com/hackerchai/dylib-installer
```

### Install Dynamic Library

Use dylib-installer to install the built dynamic library into the system directory:

```
sudo dylib_installer -d ./target/release/
```

## Demos

- [csvdemo](_demo/csvdemo/csv.go): a basic csv demo

### How to run demos

To run the demos in directory `_demo`:

```sh
cd <demo-directory>  # eg. cd _demo/csvdemo
llgo run .
```
