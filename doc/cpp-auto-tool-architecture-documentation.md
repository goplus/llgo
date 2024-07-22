# C++ 自动化工具架构文档

## 总体思路

### 模块

1. 解析模块
2. 函数声明生成模块
3. 代码生成模块

### 流程

1. 解析模块通过读取 `config.json` 得到动态链接库和头文件以及包名，完成解析之后将生成的 `common_symbol_info.json` 地址写入到 `config.json` 中
2. 函数声明生成模块读取 `config.json` 得到包名，头文件以及上一步生成的 `common_symbol_info.json` ，解析完成之后生成函数原型的 `func_prototype.json`
3. 读取上一步的 `func_prototype.json` 储存为结构体，根据结构体使用 gogen 生成代码

## 解析模块

### 输入

通过读取 JSON 文件 `config.json` 得到头文件和动态链接库文件的路径

```json
{
  "PackageName": "IniReader",
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

### 实现步骤

1. 解析 dylib 并储存

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

2. 解析头文件并储存

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

3. 根据前两步的数据做交集获取最终返回值

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

4. 生成 `common_symbol_info.json` 文件并将 JSON 文件的路径储存到 `config.json` 中

```go
// generator.go
func GenerateJSON([]CommonSymbolInfo)
```

5. `common_symbol_info.json` 文件示例

```json
{
    "FunctionName": "A::B::C",
    "Symbol": "_ZN9INIReaderC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE",
    "Location": "a.h",
    "UserFunctionName": "CFromA"
}
```

## 函数声明生成模块

### 输入

无需输入，直接读取 `config.json` 文件

### 实现步骤

1. 执行可执行文件

```bash
./generate_func_decl path/to/config.json
```

2. 解析头文件

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
func ParseHeaderFile(filePath string) ([]common.AstInformation, error)
```

3. 生成最终的 JSON 映射文件 `func_prototype.json`

```go
 func GenerateJSONFile(info []common.AstInformation)
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
            "arg1" : "int",
        },
        {
            "arg2" : "*char"
        }
    ]
}
```

## 代码生成模块

### 输入

无需输入，直接读 `func_prototype.json` 文件

### 实现步骤

1. 执行可执行程序

```bash
./generateCode path/to/yourfuncdecljson
```

2. 解析 JSON 文件

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

3. 根据解析出的结构体使用 gogen 生成代码

```go
// generator.go
func GenerateCode(info []common.HeaderFileInfo) {
    pkg := gogen.NewPackage("", PackageName, nil)
    cm := comment(fmt.Sprintf("llgo:link %s %s", funcName1, symbol1))
    pkg.NewFunc(recv, funcName, params, results, variadic).SetComments(pkg, cm).BodyStart(pkg).End()
}
```

### 输出

1. 目录结构

```bash
package_name/
├── _demo
    ├── demo1.go
└── llgo_link.go
└── a.go
└── b.go
└── c.go
```

需要注意的是 `demo1.go` 文件需要由用户自行编写

2. `llgo_link.go` 负责连接配置

```go
package inih
const (
        LLGoFiles   = "$(pkg-config --cflags INIReader): _wrap/reader.cpp"
        LLGoPackage = "link: $(pkg-config --libs inih INIReader); -linih -lINIReader"
)
```

3. `a.go` 内容示例

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