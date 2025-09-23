# LLGo 中与python相关的编译流程解析

## 顶层入口

```go
func Do(args []string, conf *Config) ([]Package, error)
```

- 创建Program用以做 LLVM 的 SSA/IR 构建

```go
prog := llssa.NewProgram(target)
```

- 之后会懒创建
  - llgo 运行时
  - python符号解析包
    - 在 SSA 层按类型/签名生成调用与初始化

```go
	prog.SetRuntime(func() *types.Package {
		noRt = 0
		return altPkgs[0].Types
	})
	prog.SetPython(func() *types.Package {
		return dedup.Check(llssa.PkgPython).Types
	})
```

 为何不需要c的提供者？

​	方法的类型和签名 不需要在编译期动态读取，而是由cgo等生成的链接直接给出

## 构建包

```go
func buildAllPkgs(ctx *context, initial []*packages.Package, verbose bool) (pkgs []*aPackage, err error)
```

- 遍历并构建传入的包集合：为每个包生成/收集对象文件、链接参数，记录是否需要 runtime 或 Python 初始化，返回可用于后续链接的包列表。

所有pkg被分为如下类别

```go
const (
	PkgNormal = iota        // 普通 Go 包
	PkgLLGo                  // llgo 特殊包（通过 LLGoPackage 标记但未匹配到其它分支）
	PkgPyModule              // Python 模块（LLGoPackage="py.<module>"）
	PkgNoInit                // 不需要 init（LLGoPackage="noinit"）
	PkgDeclOnly              // 仅声明（LLGoPackage="decl" 或路径特殊）
	PkgLinkIR                // 只链接 .ll（LLGoPackage="link"）
	PkgLinkExtern            // 链接外部库（LLGoPackage="link: ..."}
)
```



- 在遍历每个 Pkg 时，若当前 Pkg 为 PkgLinkExtern 类型，会展开 `link:...`  。 ` 若使用 $(pkg-config --libs python3-embed)`，则在此之前，必须保证Python 工具链完备、libpython 与对应 .pc 可用且可被正确解析。

​	故在此时，检测 `pkg.Name == 'py'`: 判断是否为 Python 链接库

​	若是，预构建 Python

### Python 预构建

目前共分为四步，下载 Python 到缓存， 设置运行时(PATH, PYTHONHOME)， 调用检测，install name修改。封装在 pyenv 包中。

```go
//确保缓存目录存在；若目录为空则下载并解压指定（或默认）Python发行包到缓存目录。
func EnsureWithFetch(url string) error {
	if url == "" {
		url = defaultPythonURL()
	}
	...
}

//设置构建所需环境（PATH、PYTHONHOME、PKG_CONFIG_PATH 等），为后续 pkg-config/链接做准备。
func EnsureBuildEnv() error {
	...
	pyHome := PythonHome()
	return applyEnv(pyHome)
}

//快速校验当前可用的 Python 解释器是否可运行。
func Verify() error {
  ...
	cmd := exec.Command(exe, "-c", "import sys; print('OK')")
	...
	return cmd.Run()
}

//(macOS) 把 libpython 的 install_name 改为 @rpath/…，确保链接与运行时能按 rpath 正确定位库。
func FixLibpythonInstallName(pyHome string) error {
	if runtime.GOOS != "darwin" {
		return nil
	}
	...
}
```



- 接上文，若检测  `PkgPyModule // Python 模块（LLGoPackage="py.<module>"）` ， 则使用 pip 下载对应第三方库

```go
func PipInstall(spec string) error {
	...
	return InstallPackages(spec)
}
```

在这之后

## C 路径（与 cgo/LLGoFiles/外链库）

- 编译 `LLGoFiles` 指定的 C/C++ 源为 `.o`
```go
llgoPkgLinkFiles(...){ ... clFiles(...){ ... clFile(...){ clang -c -> .o; aPkg.LLFiles += llFile } }
```
- cgo：解析 `#cgo` 与 C 前言，生成桥接 C 源并编译为 `.o`；收集 LDFLAGS
```go
buildCgo(...){ parseCgo_ -> cfiles/preambles/decls; clFile 编译 cfiles; genExternDeclsByClang + clFile; cgoLdflags 收集 }
```

## Python 路径（初始化对象与 rpath）

- 生成 Python 初始化对象 `.o`（运行时从 exe 路径定位 Python） *计划去掉*
```go
func genPyInitFromExeDirObj(ctx *context) (string, error)
```
- 为 Python 注入 rpath（便于加载 libpython）
```go
for _, dir := range pyenv.FindPythonRpaths(pyenv.PythonHome()) { 
  addRpath(&linkArgs, "@executable_path/python/lib")
}
```

## 链接阶段（统一聚合并链接）

- 收集各包 `.o` 与 `LinkArgs`，加上入口对象与（需时）Python 初始化对象

  目前初始化 Python 对象加入了 PYTHONHOME 的动态查找，后续会修改
```go
entryObj := genMainModuleFile(...); objFiles += entryObj
	if needPyInit { pyEnvInit = "call void @__llgo_py_init_from_exedir()" ... }
```
- 如果只关心“调用顺序”要点：Do -> buildAllPkgs(初始) -> buildPkg(每包: NewPackageEx → buildCgo/LLGoFiles → exportObject) -> buildAllPkgs(alt) -> createGlobals -> linkMainPkg(collect → genMainModuleFile → [Python: genPyInitFromExeDirObj + rpath] → linkObjFiles) -> 运行/测试。