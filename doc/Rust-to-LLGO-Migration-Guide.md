# Rust to LLGO Migration Document

### Add Dependencies & Build Configuration

Edit `Cargo.toml` to include necessary dependencies and configuration:

```toml
[dependencies]
libc = "0.2"
csv = "1.1"

[lib]
crate-type = ["cdylib"] # The generated dynamic library will conform to the C standard
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

### Compilation and Installation

Build the dynamic library and use `dylib-installer` to install it to the system path:

```sh
cargo build --release
cargo install --git https://github.com/hackerchai/dylib-installer
sudo dylib_installer ./target/release/
```

### Generate Header File

Use cbindgen to generate a C header file, automating this process through a `build.rs` script:

```rust
fn main() {
    let config = cbindgen::Config::from_file("cbindgen.toml").expect("Config file not found.");
    cbindgen::generate_with_config(&crate_dir, config).unwrap().write_to_file("target/include/csv_wrapper.h");
}

```

### LLGO Package Mapping

Map functions from the Rust library to an LLGO package, ensuring type consistency:

```go
const (
	LLGoPackage = "link: $(pkg-config --libs csv_wrapper); -lcsv_wrapper"
)

type Reader struct {
	Unused [8]byte
}

//go:linkname NewReader C.csv_reader_new
func NewReader(file_path *c.Char) *Reader

//llgo:link (*Reader).Free C.csv_reader_free
func (reader *Reader) Free() {}

//llgo:link (*Reader).ReadRecord C.csv_reader_read_record
func (reader *Reader) ReadRecord() *c.Char { return nil }
```

### Writing Examples and README

Provide example code and a detailed README file to help users understand how to use the generated library.
