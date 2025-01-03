; ModuleID = 'main'
source_filename = "main"

%main.info = type { [2 x i32], i32 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.infoBig = type { [128 x i32] }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"bad abi", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_main.info = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [4 x i8] c"info", align 1
@"_llgo_github.com/goplus/llgo/c.Int" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [24 x i8] c"github.com/goplus/llgo/c", align 1
@4 = private unnamed_addr constant [3 x i8] c"Int", align 1
@_llgo_int32 = linkonce global ptr null, align 8
@"[2]_llgo_github.com/goplus/llgo/c.Int" = linkonce global ptr null, align 8
@"main.struct$qNnxrjiydIz9fNtIuFJ4CZbW6fcxCGiB6tczKhrE8bc" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [1 x i8] c"a", align 1
@6 = private unnamed_addr constant [1 x i8] c"b", align 1
@"_llgo_func$erx0GNxFl6J-ZCoJHmedBbUIhRKP5s93-5Ma6BdxZmk" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [2 x i8] c"$f", align 1
@8 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"*_llgo_main.info" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/c.Int" = linkonce global ptr null, align 8
@"_llgo_func$Jw_7J2Hyj5PTz2-hFvkUvPTBHtnrOToekoHWiZvMyz4" = linkonce global ptr null, align 8
@"main.struct$1VNw2XLyc1imQrqkPlXI7U0RnsR6KkLD1-5eNGr_LvI" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [16 x i8] c"bad callback abi", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define void @main.Test() {
_llgo_0:
  %0 = alloca %main.info, align 8
  call void @llvm.memset(ptr %0, i8 0, i64 12, i1 false)
  %1 = alloca %main.info, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 12, i1 false)
  %2 = getelementptr inbounds %main.info, ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds i32, ptr %2, i64 0
  %4 = getelementptr inbounds i32, ptr %2, i64 1
  %5 = getelementptr inbounds %main.info, ptr %1, i32 0, i32 1
  store i32 1, ptr %3, align 4
  store i32 2, ptr %4, align 4
  store i32 3, ptr %5, align 4
  %6 = load %main.info, ptr %1, align 4
  %7 = alloca %main.info, align 8
  call void @llvm.memset(ptr %7, i8 0, i64 12, i1 false)
  store %main.info %6, ptr %7, align 4
  %8 = alloca %main.info, align 8
  call void @llvm.memset(ptr %8, i8 0, i64 12, i1 false)
  call void @llgo_wrapabi_demo1(ptr %7, i32 4, ptr %8)
  %9 = load %main.info, ptr %8, align 4
  store %main.info %9, ptr %0, align 4
  %10 = getelementptr inbounds %main.info, ptr %0, i32 0, i32 0
  %11 = getelementptr inbounds i32, ptr %10, i64 0
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 4
  br i1 %13, label %_llgo_1, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_4, %_llgo_0
  %14 = getelementptr inbounds %main.info, ptr %0, i32 0, i32 0
  %15 = getelementptr inbounds i32, ptr %14, i64 0
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %main.info, ptr %0, i32 0, i32 0
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %main.info, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %16 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %23 = sext i32 %19 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %24 = sext i32 %21 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %25 = load ptr, ptr @_llgo_string, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %25, 0
  %28 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %27, ptr %26, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %28)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  %30 = alloca %main.info, align 8
  call void @llvm.memset(ptr %30, i8 0, i64 12, i1 false)
  %31 = getelementptr inbounds %main.info, ptr %30, i32 0, i32 0
  %32 = getelementptr inbounds i32, ptr %31, i64 0
  %33 = getelementptr inbounds i32, ptr %31, i64 1
  %34 = getelementptr inbounds %main.info, ptr %30, i32 0, i32 1
  store i32 1, ptr %32, align 4
  store i32 2, ptr %33, align 4
  store i32 3, ptr %34, align 4
  %35 = load %main.info, ptr %30, align 4
  %36 = alloca %main.info, align 8
  call void @llvm.memset(ptr %36, i8 0, i64 12, i1 false)
  store %main.info %35, ptr %36, align 4
  call void @llgo_wrapabi_demo2(ptr %36, ptr %29)
  %37 = load i32, ptr %29, align 4
  %38 = icmp ne i32 %37, 6
  br i1 %38, label %_llgo_5, label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_4
  %39 = getelementptr inbounds %main.info, ptr %0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 12
  br i1 %41, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %42 = getelementptr inbounds %main.info, ptr %0, i32 0, i32 0
  %43 = getelementptr inbounds i32, ptr %42, i64 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ne i32 %44, 8
  br i1 %45, label %_llgo_1, label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_2
  %46 = load i32, ptr %29, align 4
  %47 = sext i32 %46 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %47)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %48 = load ptr, ptr @_llgo_string, align 8
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %48, 0
  %51 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %50, ptr %49, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %51)
  unreachable

_llgo_6:                                          ; preds = %_llgo_2
  %52 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %52, i8 0, i64 512, i1 false)
  %53 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %53, i8 0, i64 512, i1 false)
  %54 = getelementptr inbounds %main.infoBig, ptr %53, i32 0, i32 0
  %55 = getelementptr inbounds i32, ptr %54, i64 0
  %56 = getelementptr inbounds i32, ptr %54, i64 1
  %57 = getelementptr inbounds i32, ptr %54, i64 127
  store i32 1, ptr %55, align 4
  store i32 2, ptr %56, align 4
  store i32 3, ptr %57, align 4
  %58 = load %main.infoBig, ptr %53, align 4
  %59 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %59, i8 0, i64 512, i1 false)
  store %main.infoBig %58, ptr %59, align 4
  %60 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %60, i8 0, i64 512, i1 false)
  call void @llgo_wrapabi_big1(ptr %59, i32 4, ptr %60)
  %61 = load %main.infoBig, ptr %60, align 4
  store %main.infoBig %61, ptr %52, align 4
  %62 = getelementptr inbounds %main.infoBig, ptr %52, i32 0, i32 0
  %63 = getelementptr inbounds i32, ptr %62, i64 0
  %64 = load i32, ptr %63, align 4
  %65 = icmp ne i32 %64, 4
  br i1 %65, label %_llgo_7, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_10, %_llgo_6
  %66 = getelementptr inbounds %main.infoBig, ptr %52, i32 0, i32 0
  %67 = getelementptr inbounds i32, ptr %66, i64 0
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %main.infoBig, ptr %52, i32 0, i32 0
  %70 = getelementptr inbounds i32, ptr %69, i64 1
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %main.infoBig, ptr %52, i32 0, i32 0
  %73 = getelementptr inbounds i32, ptr %72, i64 127
  %74 = load i32, ptr %73, align 4
  %75 = sext i32 %68 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %75)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %76 = sext i32 %71 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %76)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %77 = sext i32 %74 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %77)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %78 = load ptr, ptr @_llgo_string, align 8
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %79, align 8
  %80 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %78, 0
  %81 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %80, ptr %79, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %81)
  unreachable

_llgo_8:                                          ; preds = %_llgo_9
  store i32 0, ptr %29, align 4
  %82 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %82, i8 0, i64 512, i1 false)
  %83 = getelementptr inbounds %main.infoBig, ptr %82, i32 0, i32 0
  %84 = getelementptr inbounds i32, ptr %83, i64 0
  %85 = getelementptr inbounds i32, ptr %83, i64 1
  %86 = getelementptr inbounds i32, ptr %83, i64 127
  store i32 1, ptr %84, align 4
  store i32 2, ptr %85, align 4
  store i32 3, ptr %86, align 4
  %87 = load %main.infoBig, ptr %82, align 4
  %88 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %88, i8 0, i64 512, i1 false)
  store %main.infoBig %87, ptr %88, align 4
  call void @llgo_wrapabi_big2(ptr %88, ptr %29)
  %89 = load i32, ptr %29, align 4
  %90 = icmp ne i32 %89, 6
  br i1 %90, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_10
  %91 = getelementptr inbounds %main.infoBig, ptr %52, i32 0, i32 0
  %92 = getelementptr inbounds i32, ptr %91, i64 127
  %93 = load i32, ptr %92, align 4
  %94 = icmp ne i32 %93, 12
  br i1 %94, label %_llgo_7, label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_6
  %95 = getelementptr inbounds %main.infoBig, ptr %52, i32 0, i32 0
  %96 = getelementptr inbounds i32, ptr %95, i64 1
  %97 = load i32, ptr %96, align 4
  %98 = icmp ne i32 %97, 8
  br i1 %98, label %_llgo_7, label %_llgo_9

_llgo_11:                                         ; preds = %_llgo_8
  %99 = load i32, ptr %29, align 4
  %100 = sext i32 %99 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %101 = load ptr, ptr @_llgo_string, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %102, align 8
  %103 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %101, 0
  %104 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %103, ptr %102, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %104)
  unreachable

_llgo_12:                                         ; preds = %_llgo_8
  %105 = alloca %main.info, align 8
  call void @llvm.memset(ptr %105, i8 0, i64 12, i1 false)
  %106 = getelementptr inbounds %main.info, ptr %105, i32 0, i32 0
  %107 = getelementptr inbounds i32, ptr %106, i64 0
  %108 = getelementptr inbounds i32, ptr %106, i64 1
  %109 = getelementptr inbounds %main.info, ptr %105, i32 0, i32 1
  store i32 1, ptr %107, align 4
  store i32 2, ptr %108, align 4
  store i32 3, ptr %109, align 4
  %110 = load %main.info, ptr %105, align 4
  %111 = alloca %main.info, align 8
  call void @llvm.memset(ptr %111, i8 0, i64 12, i1 false)
  store %main.info %110, ptr %111, align 4
  %112 = load ptr, ptr @_llgo_main.info, align 8
  %113 = load ptr, ptr @"_llgo_func$erx0GNxFl6J-ZCoJHmedBbUIhRKP5s93-5Ma6BdxZmk", align 8
  %114 = load ptr, ptr @_llgo_Pointer, align 8
  %115 = load ptr, ptr @"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI", align 8
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.main.Test$1", ptr null }, ptr %116, align 8
  %117 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %115, 0
  %118 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %117, ptr %116, 1
  %119 = load ptr, ptr @"*_llgo_main.info", align 8
  %120 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  %121 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  %122 = load ptr, ptr @"_llgo_func$Jw_7J2Hyj5PTz2-hFvkUvPTBHtnrOToekoHWiZvMyz4", align 8
  %123 = load ptr, ptr @"main.struct$1VNw2XLyc1imQrqkPlXI7U0RnsR6KkLD1-5eNGr_LvI", align 8
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.__llgo_wrap_callback.main.Test$1", ptr null }, ptr %124, align 8
  %125 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %123, 0
  %126 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %125, ptr %124, 1
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/internal/runtime.eface" %118, %"github.com/goplus/llgo/internal/runtime.eface" %126)
  %128 = alloca i32, align 4
  call void @llvm.memset(ptr %128, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %111, i32 100, ptr %127, ptr %128)
  %129 = load i32, ptr %128, align 4
  store i32 %129, ptr %29, align 4
  %130 = load i32, ptr %29, align 4
  %131 = icmp ne i32 %130, 106
  br i1 %131, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %132 = load ptr, ptr @_llgo_string, align 8
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 16 }, ptr %133, align 8
  %134 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %132, 0
  %135 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %134, ptr %133, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %135)
  unreachable

_llgo_14:                                         ; preds = %_llgo_12
  %136 = alloca %main.info, align 8
  call void @llvm.memset(ptr %136, i8 0, i64 12, i1 false)
  %137 = getelementptr inbounds %main.info, ptr %136, i32 0, i32 0
  %138 = getelementptr inbounds i32, ptr %137, i64 0
  %139 = getelementptr inbounds i32, ptr %137, i64 1
  %140 = getelementptr inbounds %main.info, ptr %136, i32 0, i32 1
  store i32 1, ptr %138, align 4
  store i32 2, ptr %139, align 4
  store i32 3, ptr %140, align 4
  %141 = load %main.info, ptr %136, align 4
  %142 = alloca %main.info, align 8
  call void @llvm.memset(ptr %142, i8 0, i64 12, i1 false)
  store %main.info %141, ptr %142, align 4
  %143 = load ptr, ptr @"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI", align 8
  %144 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @__llgo_stub.main.godemo, ptr null }, ptr %144, align 8
  %145 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %143, 0
  %146 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %145, ptr %144, 1
  %147 = load ptr, ptr @"main.struct$1VNw2XLyc1imQrqkPlXI7U0RnsR6KkLD1-5eNGr_LvI", align 8
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @__llgo_stub.__llgo_wrap_callback.main.godemo, ptr null }, ptr %148, align 8
  %149 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %147, 0
  %150 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %149, ptr %148, 1
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/internal/runtime.eface" %146, %"github.com/goplus/llgo/internal/runtime.eface" %150)
  %152 = alloca i32, align 4
  call void @llvm.memset(ptr %152, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %142, i32 100, ptr %151, ptr %152)
  %153 = load i32, ptr %152, align 4
  store i32 %153, ptr %29, align 4
  %154 = load i32, ptr %29, align 4
  %155 = icmp ne i32 %154, 106
  br i1 %155, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %156 = load ptr, ptr @_llgo_string, align 8
  %157 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 16 }, ptr %157, align 8
  %158 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %156, 0
  %159 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %158, ptr %157, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %159)
  unreachable

_llgo_16:                                         ; preds = %_llgo_14
  %160 = alloca %main.info, align 8
  call void @llvm.memset(ptr %160, i8 0, i64 12, i1 false)
  %161 = getelementptr inbounds %main.info, ptr %160, i32 0, i32 0
  %162 = getelementptr inbounds i32, ptr %161, i64 0
  %163 = getelementptr inbounds i32, ptr %161, i64 1
  %164 = getelementptr inbounds %main.info, ptr %160, i32 0, i32 1
  store i32 1, ptr %162, align 4
  store i32 2, ptr %163, align 4
  store i32 3, ptr %164, align 4
  %165 = load %main.info, ptr %160, align 4
  %166 = alloca %main.info, align 8
  call void @llvm.memset(ptr %166, i8 0, i64 12, i1 false)
  store %main.info %165, ptr %166, align 4
  %167 = load ptr, ptr @"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI", align 8
  %168 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @__llgo_stub.main.godemo, ptr null }, ptr %168, align 8
  %169 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %167, 0
  %170 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %169, ptr %168, 1
  %171 = load ptr, ptr @"main.struct$1VNw2XLyc1imQrqkPlXI7U0RnsR6KkLD1-5eNGr_LvI", align 8
  %172 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @__llgo_stub.__llgo_wrap_callback.main.godemo, ptr null }, ptr %172, align 8
  %173 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %171, 0
  %174 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %173, ptr %172, 1
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/internal/runtime.eface" %170, %"github.com/goplus/llgo/internal/runtime.eface" %174)
  %176 = alloca i32, align 4
  call void @llvm.memset(ptr %176, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %166, i32 101, ptr %175, ptr %176)
  %177 = load i32, ptr %176, align 4
  store i32 %177, ptr %29, align 4
  %178 = load i32, ptr %29, align 4
  %179 = icmp ne i32 %178, 107
  br i1 %179, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %180 = load ptr, ptr @_llgo_string, align 8
  %181 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 16 }, ptr %181, align 8
  %182 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %180, 0
  %183 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %182, ptr %181, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %183)
  unreachable

_llgo_18:                                         ; preds = %_llgo_16
  %184 = alloca %main.info, align 8
  call void @llvm.memset(ptr %184, i8 0, i64 12, i1 false)
  %185 = getelementptr inbounds %main.info, ptr %184, i32 0, i32 0
  %186 = getelementptr inbounds i32, ptr %185, i64 0
  %187 = getelementptr inbounds i32, ptr %185, i64 1
  %188 = getelementptr inbounds %main.info, ptr %184, i32 0, i32 1
  store i32 1, ptr %186, align 4
  store i32 2, ptr %187, align 4
  store i32 3, ptr %188, align 4
  %189 = load %main.info, ptr %184, align 4
  %190 = alloca %main.info, align 8
  call void @llvm.memset(ptr %190, i8 0, i64 12, i1 false)
  store %main.info %189, ptr %190, align 4
  %191 = alloca i32, align 4
  call void @llvm.memset(ptr %191, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %190, i32 101, ptr @demo3, ptr %191)
  %192 = load i32, ptr %191, align 4
  store i32 %192, ptr %29, align 4
  %193 = load i32, ptr %29, align 4
  %194 = icmp ne i32 %193, 107
  br i1 %194, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %195 = load i32, ptr %29, align 4
  %196 = sext i32 %195 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %196)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %197 = load ptr, ptr @_llgo_string, align 8
  %198 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 16 }, ptr %198, align 8
  %199 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %197, 0
  %200 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %199, ptr %198, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %200)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  ret void
}

define i32 @"main.Test$1"(%main.info %0, i32 %1) {
_llgo_0:
  %2 = alloca %main.info, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 12, i1 false)
  store %main.info %0, ptr %2, align 4
  %3 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds i32, ptr %3, i64 0
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %7 = getelementptr inbounds i32, ptr %6, i64 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %5, %8
  %10 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %11
  %13 = add i32 %12, %1
  ret i32 %13
}

define i32 @main.godemo(%main.info %0, i32 %1) {
_llgo_0:
  %2 = alloca %main.info, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 12, i1 false)
  store %main.info %0, ptr %2, align 4
  %3 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds i32, ptr %3, i64 0
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %7 = getelementptr inbounds i32, ptr %6, i64 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %5, %8
  %10 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %11
  %13 = add i32 %12, %1
  ret i32 %13
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  call void @main.Test()
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare %main.info @demo1(%main.info, i32)

declare void @llgo_wrapabi_demo1(ptr, i32, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 4 }, i64 25, i64 12, i64 0, i64 0)
  store ptr %3, ptr @_llgo_main.info, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 24 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 3 }, i64 5, i64 4, i64 0, i64 0)
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %4, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %7 = load ptr, ptr @_llgo_int32, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 37)
  store ptr %9, ptr @_llgo_int32, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %10 = load ptr, ptr @_llgo_int32, align 8
  br i1 %6, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, ptr %10, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %11 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 24 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 3 }, i64 5, i64 4, i64 0, i64 0)
  %13 = load ptr, ptr @"[2]_llgo_github.com/goplus/llgo/c.Int", align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 2, ptr %12)
  store ptr %15, ptr @"[2]_llgo_github.com/goplus/llgo/c.Int", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %16 = load ptr, ptr @"[2]_llgo_github.com/goplus/llgo/c.Int", align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 24 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 3 }, i64 5, i64 4, i64 0, i64 0)
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 24 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 3 }, i64 5, i64 4, i64 0, i64 0)
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 2, ptr %17)
  %20 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 1 }, ptr %19, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %21 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 1 }, ptr %18, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %23 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %22, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %20, ptr %23, align 8
  %24 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %22, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %21, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %22, 0
  %26 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %25, i64 2, 1
  %27 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %26, i64 2, 2
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, i64 12, %"github.com/goplus/llgo/internal/runtime.Slice" %27)
  store ptr %28, ptr @"main.struct$qNnxrjiydIz9fNtIuFJ4CZbW6fcxCGiB6tczKhrE8bc", align 8
  %29 = load ptr, ptr @"main.struct$qNnxrjiydIz9fNtIuFJ4CZbW6fcxCGiB6tczKhrE8bc", align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %3, ptr %29, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  %30 = load ptr, ptr @_llgo_main.info, align 8
  %31 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %32 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %33 = load ptr, ptr @"_llgo_func$erx0GNxFl6J-ZCoJHmedBbUIhRKP5s93-5Ma6BdxZmk", align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %36 = getelementptr ptr, ptr %35, i64 0
  store ptr %30, ptr %36, align 8
  %37 = getelementptr ptr, ptr %35, i64 1
  store ptr %31, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %35, 0
  %39 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %38, i64 2, 1
  %40 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %39, i64 2, 2
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %42 = getelementptr ptr, ptr %41, i64 0
  store ptr %32, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %41, 0
  %44 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %43, i64 1, 1
  %45 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %44, i64 1, 2
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %40, %"github.com/goplus/llgo/internal/runtime.Slice" %45, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %46)
  store ptr %46, ptr @"_llgo_func$erx0GNxFl6J-ZCoJHmedBbUIhRKP5s93-5Ma6BdxZmk", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %47 = load ptr, ptr @_llgo_Pointer, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %49)
  store ptr %49, ptr @_llgo_Pointer, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %50 = load ptr, ptr @_llgo_main.info, align 8
  %51 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %52 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %54 = getelementptr ptr, ptr %53, i64 0
  store ptr %50, ptr %54, align 8
  %55 = getelementptr ptr, ptr %53, i64 1
  store ptr %51, ptr %55, align 8
  %56 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %53, 0
  %57 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %56, i64 2, 1
  %58 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %57, i64 2, 2
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %60 = getelementptr ptr, ptr %59, i64 0
  store ptr %52, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %59, 0
  %62 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %61, i64 1, 1
  %63 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %62, i64 1, 2
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %58, %"github.com/goplus/llgo/internal/runtime.Slice" %63, i1 false)
  %65 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 2 }, ptr %64, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %67 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 5 }, ptr %66, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %69 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %68, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %65, ptr %69, align 8
  %70 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %68, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %67, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %68, 0
  %72 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %71, i64 2, 1
  %73 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %72, i64 2, 2
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %73)
  store ptr %74, ptr @"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI", align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 4 }, i64 25, i64 12, i64 0, i64 0)
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %75)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %76)
  store ptr %76, ptr @"*_llgo_main.info", align 8
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 24 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 3 }, i64 5, i64 4, i64 0, i64 0)
  %78 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %77)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %80)
  store ptr %80, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %81 = load ptr, ptr @"*_llgo_main.info", align 8
  %82 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  %83 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  %84 = load ptr, ptr @"_llgo_func$Jw_7J2Hyj5PTz2-hFvkUvPTBHtnrOToekoHWiZvMyz4", align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %87 = getelementptr ptr, ptr %86, i64 0
  store ptr %81, ptr %87, align 8
  %88 = getelementptr ptr, ptr %86, i64 1
  store ptr %82, ptr %88, align 8
  %89 = getelementptr ptr, ptr %86, i64 2
  store ptr %83, ptr %89, align 8
  %90 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %86, 0
  %91 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %90, i64 3, 1
  %92 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %91, i64 3, 2
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %94 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %93, 0
  %95 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %94, i64 0, 1
  %96 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %95, i64 0, 2
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %92, %"github.com/goplus/llgo/internal/runtime.Slice" %96, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %97)
  store ptr %97, ptr @"_llgo_func$Jw_7J2Hyj5PTz2-hFvkUvPTBHtnrOToekoHWiZvMyz4", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %98 = load ptr, ptr @"*_llgo_main.info", align 8
  %99 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  %100 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %102 = getelementptr ptr, ptr %101, i64 0
  store ptr %98, ptr %102, align 8
  %103 = getelementptr ptr, ptr %101, i64 1
  store ptr %99, ptr %103, align 8
  %104 = getelementptr ptr, ptr %101, i64 2
  store ptr %100, ptr %104, align 8
  %105 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %101, 0
  %106 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %105, i64 3, 1
  %107 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %106, i64 3, 2
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %109 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %108, 0
  %110 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %109, i64 0, 1
  %111 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %110, i64 0, 2
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %107, %"github.com/goplus/llgo/internal/runtime.Slice" %111, i1 false)
  %113 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 2 }, ptr %112, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %115 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 5 }, ptr %114, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %117 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %116, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %113, ptr %117, align 8
  %118 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %116, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %115, ptr %118, align 8
  %119 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %116, 0
  %120 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %119, i64 2, 1
  %121 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %120, i64 2, 2
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %121)
  store ptr %122, ptr @"main.struct$1VNw2XLyc1imQrqkPlXI7U0RnsR6KkLD1-5eNGr_LvI", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare void @demo2(%main.info, ptr)

declare void @llgo_wrapabi_demo2(ptr, ptr)

declare %main.infoBig @big1(%main.infoBig, i32)

declare void @llgo_wrapabi_big1(ptr, i32, ptr)

declare void @big2(%main.infoBig, ptr)

declare void @llgo_wrapabi_big2(ptr, ptr)

declare i32 @callback(%main.info, i32, ptr)

define linkonce void @"__llgo_wrap_callback.main.Test$1"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = load %main.info, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = call i32 @"main.Test$1"(%main.info %3, i32 %4)
  store i32 %5, ptr %2, align 4
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

define linkonce i32 @"__llgo_stub.main.Test$1"(ptr %0, %main.info %1, i32 %2) {
_llgo_0:
  %3 = tail call i32 @"main.Test$1"(%main.info %1, i32 %2)
  ret i32 %3
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

define linkonce void @"__llgo_stub.__llgo_wrap_callback.main.Test$1"(ptr %0, ptr %1, ptr %2, ptr %3) {
_llgo_0:
  tail call void @"__llgo_wrap_callback.main.Test$1"(ptr %1, ptr %2, ptr %3)
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare void @llgo_wrapabi_callback(ptr, i32, ptr, ptr)

define linkonce void @__llgo_wrap_callback.main.godemo(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = load %main.info, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = call i32 @main.godemo(%main.info %3, i32 %4)
  store i32 %5, ptr %2, align 4
  ret void
}

define linkonce i32 @__llgo_stub.main.godemo(ptr %0, %main.info %1, i32 %2) {
_llgo_0:
  %3 = tail call i32 @main.godemo(%main.info %1, i32 %2)
  ret i32 %3
}

define linkonce void @__llgo_stub.__llgo_wrap_callback.main.godemo(ptr %0, ptr %1, ptr %2, ptr %3) {
_llgo_0:
  tail call void @__llgo_wrap_callback.main.godemo(ptr %1, ptr %2, ptr %3)
  ret void
}

declare i32 @demo3(%main.info, i32)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
