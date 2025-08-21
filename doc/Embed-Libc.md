# 可装卸libc

libc将采用以下方式进行：

利用 `LLGoPackage`
使用llgo编译时，需要指定相应的链接选项：

```go
const LLGoPackage = "-L{{libc dir}}; -nostdinc -lc"
```

## `picolibc` 编译



## 启动入口 `_start` 与 初始化

`picolibc` 只是简单将内存分为 `flash` 和 `ram`，
如果需要使用 `picolibc` 的 `_start`，需要提供以下常量

```c
extern char __data_source[];
extern char __data_start[];
extern char __data_end[];
extern char __data_size[];
extern char __bss_start[];
extern char __bss_end[];
extern char __bss_size[];
extern char __tls_base[];
extern char __tdata_end[];
extern char __tls_end[];
```

`_data` 开头就是分配给data段的内存，`_bss` 开头就是分配给BSS段内存，TLS则是给多线程存储使用的内存

`_start` 初始化过程，复制 `data_sorce` 至 `data` 段和清空bss段，和初始化TLS。
如果检查设备是否支持`semihost`，如果支持就从`semihost` 获取 `argc` 和 `argv`，否则就默认二者为空，然后调用main

**需要讨论：我们是否需要picolibc的_start?**

tinygo不使用。其实原因也好理解，不同嵌入式对于内存划分没有 `picolibc` 想的那么简单，就像ESP32光RAM就有多块内存区域
以及不同设备硬件 `bootloader` 一般干了部分 `_start` 干的事情

## 嵌入式stdout / stdin
对于可装卸libc，我们需要重定向stdout到 `UART` 或者 `USB` 等控制台输出驱动中

**picolibc** 接口

picolibc为其提供了一个接口方便重定向

```c
static FILE __stdio = FDEV_SETUP_STREAM(sample_putc,
					sample_getc,
					NULL,
					_FDEV_SETUP_RW);
```

其中 `sample_putc` 是 提供给 `stdout` / `stderr` 仅用于输出的，而 `sample_getc` 则是提供给 `stdin` 用于输入

而第三个参数则是可选的 `flush` 函数，`flush` 主要是清空缓冲区

## 硬件函数

需要实现的硬件相关函数有：`exit`, `abort`, `sbrk`

**sbrk**
如果需要 `malloc`， `sbrk` 是必须要实现的，然而，如果我们不使用 `picolibc` ，我们缺少 `__heap_start` 和 `__heap_end` 常量。

`tinygo`: tinygo并不需要 `malloc`, 而它使用的 `bdwgc` 是被修改过的，`tinygo` 修改了里面的函数为自定义的 `tiny_sbrk`
