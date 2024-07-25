llcppg Design
=====

## Usage

```sh
llcppg [config-file]
```

If `config-file` is not specified, a `llcppg.cfg` file is used in current directory. The configuration file format is as follows:

```json
{
  "name": "inih",
  "cflags": "$(pkg-config --cflags inireader)",
  "include": [
    "INIReader.h",
    "AnotherHeaderFile.h"
  ],
  "libs": "$(pkg-config --libs inireader)",
  "trimPrefixes": ["Ini", "INI"]
}
```

## Steps

1. llcppsymg: Generate symbol table for a C/C++ library
2. Manually modify the desired Go symbols in symbol table
3. llcppsigfetch: Fetch information of C/C++ symbols
4. gogensig: Generate a go package by information of symbols


### llcppsymg

```sh
llcppsymg config-file
llcppsymg -  # read config from stdin
```

It generates a symbol table file named `llcppg.symb.json`. Its file format is as follows:

```json
[
  {
    "mangle": "_ZN9INIReaderC1EPKcm",
    "c++": "INIReader::INIReader(char const*, unsigned long)",
    "go": "(*Reader).Init__0"
  }
]
```


### llcppsigfetch

```sh
llcppsigfetch config-file
llcppsigfetch -  # read config from stdin
```

It fetches information of C/C++ symbols and print to stdout. Its format is as follows:

```
TODO: see llgo/xtool/clang/ast
```

### gogensig

```sh
gogensig ast-file
gogensig -  # read AST from stdin
```

## Overall

### Process

1. The Parsing Module reads `config.json` to obtain dynamic libraries, header files, and the package name. After parsing, it writes the generated `common_symbol_info.json` path into `config.json`.
2. The Function Declaration Generation Module reads `config.json` to get the package name, header files, and the previously generated `common_symbol_info.json`. After parsing, it generates the function prototype `func_prototype.json`.
3. Reads the previously generated `func_prototype.json`, stores it as a structure, and uses gogen to generate code based on the structure.

## Parsing Module

### Input

Obtains the paths to header files and dynamic library files by reading the JSON file `config.json`.

```json
{
  "PackageName": "inireader",
  "HeaderFiles": [
    "/path/to/header/INIReader.h",
    "/path/to/header/AnotherHeader.h"
  ],
  "DLLFile": "/path/to/lib/libINIReader.dylib",
  "JSONFile": "/path/to/json/config.json"
}
```

```bash
./generate_symbol_table /path/to/config.json
```

### Implementation Steps

1. Parse dylib and store:

```go
// common.go
type CPPSymbol struct {
    Address string
    Type    string
    Name    string
}

// parser_dylib.go
func ParseDylibSymbols(dylibPath string) ([]common.CPPSymbol, error)
```

2. Parse header files and store:

```go
// common.go
type ASTInformation struct {
    Namespace   string
    Class       string
    Name        string
    BaseClasses []string
    ReturnType  string
    Location    string
    Parameters  []Parameter
    Symbol      string
}

type Parameter struct {
    Name string
    Type string
}

// parser_ast.go
func ParseHeaderFile(files []string) ([]common.ASTInformation, error)
```

3. Cross-reference data from the first two steps to get the final output

```go
// common.go
type CommonSymbolInfo struct {
    FunctionName       string
    Symbol             string
    Location           string
    UserFunctionName   string
}

// common_symbols.go
func GetCommonSymbols(dylibSymbols []common.CPPSymbol, astInfoList []common.ASTInformation) []common.CommonSymbolInfo
```

4. Generate `common_symbol_info.json` file and store the JSON file path into `config.json`

```go
// generator.go
func GenerateJSON([]CommonSymbolInfo)
```

5. Example `common_symbol_info.json` file

```json
{
    "FunctionName": "A::B::C",
    "Symbol": "_ZN9INIReaderC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE",
    "Location": "a.h",
    "UserFunctionName": "CFromA"
}
```

## Function Declaration Generation Module

### Input

No input required, directly reads the `config.json` file

### Implementation Steps

1. Execute the executable

```bash
./generate_func_decl /path/to/config.json
```

2. Parse header files

```go
// common.go
type ASTInformation struct {
    Namespace   string
    Class       string
    Name        string
    BaseClasses []string
    ReturnType  string
    Location    string
    Parameters  []Parameter
}

type Parameter struct {
    Name string
    Type string
}

// parser_ast.go
func ParseHeaderFile(filePath string) ([]common.ASTInformation, error)
```

3. Generate the final JSON mapping file `func_prototype.json`

```go
 func GenerateJSONFile(info []common.ASTInformation)
```

```json
{
    "FunctionName": "A::B::C",
    "Symbol": "_ZN9INIReaderC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE",
    "Location": "a.h",
    "ReturnType" : "int",
    "UserFunctionName": "CFromA",
    "Parameters" : [
        {
            "arg1" : "int"
        },
        {
            "arg2" : "*char"
        }
    ]
}
```

## Code Generation Module

### Input

No input required, directly reads `func_prototype.json` file

### Implementation Steps

1. Execute the executable

```bash
./generate_code /path/to/func_prototype.json
```

2. Parse JSON file

```go
// common.go
type HeaderFileInfo struct {
    FunctionName     string
    Symbol           string
    Location         string
    UserFunctionName string
    Parameters       map[string]string
}

// parse_json.go
func ParseJSON(jsonFilePath string) ([]common.HeaderFileInfo, error)
```

3. Generate code using the parsed structure with gogen

```go
// generator.go
func GenerateCode(info []common.HeaderFileInfo) {
    pkg := gogen.NewPackage("", PackageName, nil)
    cm := comment(fmt.Sprintf("llgo:link %s %s", funcName1, symbol1))
    pkg.NewFunc(recv, funcName, params, results, variadic).SetComments(pkg, cm).BodyStart(pkg).End()
}
```

### Output

1. Directory structure

```bash
package_name/
├── _demo
    ├── demo1.go
└── llgo_link.go
└── a.go
└── b.go
└── c.go
```

Note that `demo1.go` file needs to be written by the user

2. `llgo_link.go` is responsible for linking configuration

```go
package inih
const (
        LLGoFiles   = "$(pkg-config --cflags INIReader): _wrap/reader.cpp"
        LLGoPackage = "link: $(pkg-config --libs inih INIReader); -linih -lINIReader"
)
```

3. Example content for `a.go`

```go
package inih
import (
        _ "unsafe"
        "github.com/goplus/llgo/c"
)
//go:linkname Parse C.ini_parse
func Parse(filename *c.Char, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user c.Pointer) c.Int

//go:linkname ParseFile C.ini_parse_file
func ParseFile(file c.FilePtr, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user c.Pointer) c.Int

//go:linkname ParseString C.ini_parse_string
func ParseString(str *c.Char, handler func(user c.Pointer, section *c.Char, name *c.Char, value *c.Char) c.Int, user c.Pointer) c.Int
```