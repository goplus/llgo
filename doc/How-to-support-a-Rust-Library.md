How to support a Rust Library
=====

## Add Dependencies & Build Configuration

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

## C-style wrapper for Rust

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

```rust
pub fn add_numbers(a: i32, b: i32) -> i32 {
    a + b
}
```

After packaging:

```rust
#[no_mangle]
pub unsafe extern "C" fn add_numbers_c(a: i32, b: i32) -> i32 {
    add_numbers(a, b)
}
```

### Memory Management

Use `Box` to manage dynamic memory to ensure correct memory release between Rust and C:

```rust
let config = Config::new();
```

After packaging:

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
let mut reader = ReaderBuilder::new().from_path(file_path)?;
```

After packaging:

```rust
// Create a new CSV reader for the specified file path.
#[no_mangle]
pub extern "C" fn csv_reader_new(file_path: *const c_char) -> *mut c_void {
    let file_path = unsafe {
        if file_path.is_null() { return ptr::null_mut(); }
        match CStr::from_ptr(file_path).to_str() {
            Ok(s) => s,
            Err(_) => return ptr::null_mut(),
        }
    };

    let reader = csv::ReaderBuilder::new().from_path(file_path);
    match reader {
        Ok(r) => Box::into_raw(Box::new(r)) as *mut c_void,
        Err(_) => ptr::null_mut(),
    }
}

// Free the memory allocated for the CSV reader.
#[no_mangle]
pub extern "C" fn csv_reader_free(ptr: *mut c_void) {
    if !ptr.is_null() {
        let reader: Box<csv::Reader<File>> = unsafe { Box::from_raw(ptr as *mut csv::Reader<File>) };
        std::mem::drop(reader);
    }
}
```

### String Handling

Convert strings between C and Rust:

```rust
let mut record = csv::StringRecord::new();

while reader.read_record(&mut record)? {
    // Print each record
    println!("{:?}", record);
}
```

After packaging:

```rust
// Read the next record from the CSV reader and return it as a C string.
#[no_mangle]
pub extern "C" fn csv_reader_read_record(ptr: *mut c_void) -> *const c_char {
    let reader = unsafe {
        assert!(!ptr.is_null());
        &mut *(ptr as *mut csv::Reader<File>)
    };

    let mut record = csv::StringRecord::new();
    match reader.read_record(&mut record) {
        Ok(true) => match CString::new(format!("{:?}\n", record)) {
            Ok(c_string) => c_string.into_raw(),
            Err(_) => ptr::null(),
        },
        _ => ptr::null(),
    }
}

// Free the memory allocated for a C string returned by other functions.
#[no_mangle]
pub extern "C" fn free_string(s: *mut c_char) {
    if s.is_null() {
        return;
    }
    unsafe {
        let c_string = CString::from_raw(s);
        std::mem::drop(c_string);
    }
}
```

## Generate Header File

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

## Compilation and Installation

### Build the dynamic library:

```sh
cargo build --release
```

### Install dylib-installer

Install the [dylib-installer](https://github.com/hackerchai/dylib-installer) tool, which is used to install dynamic libraries:

```sh
brew tap hackerchai/tap
brew install dylib-installer
```

Or you can install it using Cargo:

```sh
cargo install dylib_installer
```

### Install Dynamic Library

Use dylib-installer to install the built dynamic library and the header file into the system directory:

```sh
sudo dylib_installer <dylib_lib> <header_file_lib>
```

### Check the Installation

You can check the installation by running the following command:

```sh
pkg-config --libs --cflags <lib_name>
```

If everything is installed correctly, you will see the output like this (depending on your system):

```sh
-I/usr/local/include -L/usr/local/lib -l<lib_name>
```

## LLGO Mapping

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

If we want to calculate the size of this structure, we can use the following C code:

```c
printf("%d\n", sizeof(csv_reader));
```

- Ordinary functions

Ordinary functions can be mapped in the form of `//go:linkname`.

```c
csv_reader *csv_reader_new(const char *file_path);
```

After mapping:

```go
//go:linkname NewReader C.csv_reader_new
func NewReader(file_path *c.Char) *Reader
```

- Method

Methods need to be mapped in the form of `// llgo:link (*Receiver)`.

```c
void csv_reader_free(csv_reader *reader);

const char *csv_reader_read_record(csv_reader *reader);
```

After mapping:

We can extract the first parameter as Receiver:

```go
// llgo:link (*Reader).Free C.csv_reader_free
func (reader *Reader) Free() {}

// llgo:link (*Reader).ReadRecord C.csv_reader_read_record
func (reader *Reader) ReadRecord() *c.Char { return nil }
```

- Function pointer

If you use a function pointer, that is, declare the function as a type separately, you need to use `// llgo:type C` to declare it.

```c
typedef size_t (*hyper_io_read_callback)(void*, struct hyper_context*, uint8_t*, size_t);

void hyper_io_set_read(struct hyper_io *io, hyper_io_read_callback func);
```

After mapping:

```go
// llgo:type C
type IoReadCallback func(c.Pointer, *Context, *uint8, uintptr) uintptr

// llgo:link (*Io).SetRead C.hyper_io_set_read
func (io *Io) SetRead(callback IoReadCallback) {}
```

Or declare the function directly in the parameter.

```go
// llgo:link (*Io).SetRead C.hyper_io_set_read
func (io *Io) SetRead(ioSetReadCb func(c.Pointer, *Context, *uint8, uintptr) uintptr) {}
```

## Writing Examples and README

Finally, provide example code and a detailed README file to help users understand how to use the generated library.

## Example Code

You can find the migrated examples in the [llgoexamples](https://github.com/goplus/llgoexamples). The migrated Rust libraries are in the `lib` directory, and the migrated mapping files and Go demos are in the `rust` directory.

Such as:

- CSV: [csv.rs](https://github.com/goplus/llgoexamples/blob/main/lib/rust/csv-wrapper/src/lib.rs) --> [csv.go](https://github.com/goplus/llgoexamples/blob/main/rust/csv/csv.go)
- Sled: [sled.rs](https://github.com/goplus/llgoexamples/blob/main/lib/rust/sled/src/lib.rs) --> [sled.go](https://github.com/goplus/llgoexamples/blob/main/rust/sled/sled.go)
- ...
