# Rust to LLGO Migration Document

### Add Dependencies & Build Configuration

Edit `Cargo.toml` to include necessary dependencies and configuration:

```toml
[dependencies]
libc = "0.2"
csv = "1.1"

[lib]
crate-type = ["cdylib"] # The generated dynamic library will conform to the C standard

[build-dependencies]
cbindgen = "0.26.0"
```

### Import C Language Types

Use types from the libc package for interoperability with C:

```rust
use libc::{c_int, c_char, strlen};
```

### Function Decoration and Attributes

To ensure that Rust functions can be correctly called by C and LLGO, use the following decorators:

- `#[no_mangle]` prevents the compiler from mangling the function name.
- `unsafe` is used to mark operations that are unsafe, especially when dealing with raw pointers.
- `extern "C"` specifies the use of C calling conventions.

For example, in Rust, we write CSV code like this:

```rust
use csv::ReaderBuilder;
use std::error::Error;

fn main() -> Result<(), Box<dyn Error>> {
    // Define the CSV file path
    let file_path = "example.csv";

    // Creating a CSV Reader
    let mut reader = ReaderBuilder::new().from_path(file_path)?;

    // Define a container to store records
    let mut record = csv::StringRecord::new();

    // Read records one by one
    while reader.read_record(&mut record)? {
        // Print each record
        println!("{:?}", record);
    }

    Ok(())
}
```

If we need to migrate the CSV library to LLGO, we need to encapsulate each CSV method with a C API, such as the following:

### Memory Management

Use `Box` to manage dynamic memory to ensure correct memory release between Rust and C:

```rust
pub unsafe extern "C" fn sled_create_config() -> \*mut Config {
Box::into_raw(Box::new(Config::new()))
}

#[no_mangle]
pub unsafe extern "C" fn sled_free_config(config: \*mut Config) {
drop(Box::from_raw(config));
}
```

### Handling Generic Pointers

Address the interfacing issues between generic pointers in C and Rust:

```rust
#[no_mangle]
pub extern "C" fn csv_reader_new(file_path: *const c_char) -> *mut c_void { /* ... */ }

#[no_mangle]
pub extern "C" fn csv_reader_free(ptr: *mut c_void) { /* ... */ }
```

### String Handling

Convert strings between C and Rust:

```rust
#[no_mangle]
pub extern "C" fn csv_reader_read_record(ptr: *mut c_void) -> *const c_char { /* ... */ }

#[no_mangle]
pub extern "C" fn free_string(s: *mut c_char) {
    unsafe {
        let c_string = CString::from_raw(s);
        drop(c_string);
    }
}
```

### Generate Header File

Edit `cbindgen.toml` to configure the header file generation rules:

```toml
# See https://github.com/mozilla/cbindgen/blob/master/docs.md#cbindgentoml for
# a list of possible configuration values.
language = "C"
```

Use cbindgen to generate a C header file, automating this process through a `build.rs` script:

```rust
fn main() {
    let config = cbindgen::Config::from_file("cbindgen.toml").expect("Config file not found.");
    cbindgen::generate_with_config(&crate_dir, config).unwrap().write_to_file("target/include/csv_wrapper.h");
}
```

### Compilation and Installation

Build the dynamic library:

```sh
cargo build --release
```

### Install dylib-installer

Install the [dylib-installer](https://github.com/hackerchai/dylib-installer) tool, which is used to install dynamic libraries:

```SH
brew tap hackerchai/tap
brew install dylib-installer
```

Or you can install it using Cargo:

```SH
cargo install dylib_installer
```

### Install Dynamic Library

Use dylib-installer to install the built dynamic library and the header file into the system directory:

```SH
sudo dylib_installer <dylib_lib> <header_file_lib>
```

### Check the Installation

You can check the installation by running the following command:

```SH
pkg-config --libs --cflags <lib_name>
```

if everything is installed correctly, you will see the output like this (depending on your system):

```SH
-I/usr/local/include -L/usr/local/lib -l<lib_name>
```

### LLGO Package Mapping

Map functions from the Rust library to an LLGO package, ensuring type consistency:

- LLGoPackage
  
Specify `LLGoPackage` and use `pkg-config` to find the location of the lib library.

```go
const (
	LLGoPackage = "link: $(pkg-config --libs csv_wrapper); -lcsv_wrapper"
)
```

- Type

If you want to use variables inside the struct, you can add them accordingly.
If it can't be represented directly or is not needed, it can be represented in the form `Unused []byte`, the length of the array is determined by its size, and if the struct is only used as a pointer, then the array length can be `0`.

```go
type Reader struct {
	Unused [0]byte
}

// type Reader struct {
//    Unused [8]byte
// }
```

- Ordinary functions

Ordinary functions can be mapped in the form of `//go:linkname`.

```go
//go:linkname NewReader C.csv_reader_new
func NewReader(file_path *c.Char) *Reader
```

- Method
  
Methods need to be mapped in the form of `// llgo:link (*Receiver)`.

```go
// llgo:link (*Reader).Free C.csv_reader_free
func (reader *Reader) Free() {}

// llgo:link (*Reader).ReadRecord C.csv_reader_read_record
func (reader *Reader) ReadRecord() *c.Char { return nil }
```

- Function pointer
  
If you use a function pointer, that is, declare the function as a type separately, you need to use `// llgo:type C`to declare it.

```go
// llgo:type C
type IoReadCallback func(c.Pointer, *Context, *uint8, uintptr) uintptr

// llgo:link (*Io).SetRead C.hyper_io_set_read
func (io *Io) SetRead(callback IoReadCallback) {}
```

Or declare the function directly in the parameter.

```go
// llgo:link (*Io).SetRead C.hyper_io_set_read
func (io *Io) SetRead(callback func(c.Pointer, *Context, *uint8, uintptr) uintptr) {}
```

### Writing Examples and README

Provide example code and a detailed README file to help users understand how to use the generated library.

You can find the migrated instance from [llgoexamples](https://github.com/goplus/llgoexamples), in the lib directory is the migrated Rust library, and in the rust directory, the migrated mapping file and go demo.
