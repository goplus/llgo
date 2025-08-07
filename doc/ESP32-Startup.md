# ESP32启动流程
ESP32启动流程分为三步：

* 一级引导，加载位于0x1000的程序，程序入口 `call_start_cpu0` （bootloader）
* 二级引导（bootloader），找到位于 `0x8000` 的分区表，读取应用程序内存地址，一般是 `0x10000`
* 三级引导，bootloader加载 `0x10000` 的应用程序，程序入口：`start_cpu0_default`
，一般由 `esp_system` 套件实现，主要是进行一些硬件初始化和libc初始化操作

`esp_system` 完成硬件初始化后才会开始启动应用程序部分的代码，入口分为两个：
`esp_startup_start_app`（CPU0）
`esp_startup_start_app_other_cores_default`（CPU1- M）

## 镜像格式
[ESP32镜像格式](https://docs.espressif.com/projects/esp-idf/zh_CN/stable/esp32/api-reference/system/app_image_format.html)

其中描述了乐鑫的镜像格式分为两种，第一种是引导程序格式，第二种是应用程序格式
应用程序格式分为两部分，第一是镜像头（`esp_image_header_t`），与ELF格式很相似，记录entry point地址等等，第二是内存分段头（`esp_image_segment_header_t`），记录代码分别位于什么段段内存

引导程序格式较为特殊，在应用程序两个头基础上又新增了一个引导程序描述头（`esp_bootloader_desc_t`）

引导程序编译期间，通过ld脚本指定以下代码挪到data段最前端，因此可以做到在已有两个头后再新增一个头：
```c
#if BOOTLOADER_BUILD
__attribute__((section(".data_bootloader_desc")))
#endif
__attribute__((weak))
const esp_bootloader_desc_t esp_bootloader_desc = {
    .magic_byte = ESP_BOOTLOADER_DESC_MAGIC_BYTE,
    .reserved = { 0 },
    .version = CONFIG_BOOTLOADER_PROJECT_VER,
    .idf_ver = IDF_VER,
#ifdef CONFIG_BOOTLOADER_COMPILE_TIME_DATE
    .date_time = __DATE__ " " __TIME__,
#else
    .date_time = "",
#endif
    .reserved2 = { 0 },
};
```

DRAM内存就是ESP32存放data段的内存位置，ld脚本则强制指定其位于DRAM最顶端

```
.dram0.bootdesc
                0x3fff0030       0x50
                0x3fff0030                        _data_start = ABSOLUTE (.)
 *(.data_bootloader_desc .data_bootloader_desc.*)
 .data_bootloader_desc
                0x3fff0030       0x50 esp-idf/esp_bootloader_format/libesp_bootloader_format.a(esp_bootloader_desc.c.obj)
                0x3fff0030                esp_bootloader_desc
```

```
  .dram0.bootdesc : ALIGN(0x10)
  {
    _data_start = ABSOLUTE(.);
    *(.data_bootloader_desc .data_bootloader_desc.*)               /* Should be the first.  Bootloader version info.        DO NOT PUT ANYTHING BEFORE IT! */
  } > dram_seg
```



## 引导程序启动流程
由于启动bootloader代码是处于硬件部分的，暂时没有办法看到其实现，不过猜测如下：

1. 烧录到指定地址后，例如 `0x1000`，硬件会解析ESP32镜像格式，获取bootloader程序相关信息（如`entry point`）
2. 从data段加载引导程序描述头，获取bootloader程序版本
3. 跳转到 `entry point`，实际运行bootloader程序

其中 `entry point` 指定由ld脚本 `ENTRY()` 完成指定，默认为 `call_start_cpu0`

bootloader程序启动后，会进行如下初始化：
1. 初始化内存区域，保护指定内存区域
2. 初始化BSS段
3. 初始化时钟，控制台输出（UART或者USB驱动到用户控制台），硬件看门狗，硬件RNG生成器

## 应用程序启动流程
bootloader程序完成初始化后，通过硬件HAL接口读取位于 `0x8000` 的分区表，然后启动应用程序
这个HAL接口，实际上就是对一些hardcode内存地址进行偏移

## app_main启动流程
在 `app_main()` 启动前，需要先启动FreeRTOS任务调度器和初始化进程看门狗
进程看门狗用途是，守护当前程序，如果当前程序超时或者死掉了，看门狗会自动重启进程
启动一个main任务，

然后在main任务调用 `app_main()`

这个启动流程被写在了ESP FreeRTOS套件

`esp_startup_start_app` 完成初始化后，会启动 `main` 任务

```c
    BaseType_t res = xTaskCreatePinnedToCore(main_task, "main",
                                             ESP_TASK_MAIN_STACK, NULL,
                                             ESP_TASK_MAIN_PRIO, NULL, ESP_TASK_MAIN_CORE);
```

`main` 任务会调用用户提供的 `app_main()`
```c
  ESP_LOGI(MAIN_TAG, "Calling app_main()");
    extern void app_main(void);
    app_main();
    ESP_LOGI(MAIN_TAG, "Returned from app_main()");
```

