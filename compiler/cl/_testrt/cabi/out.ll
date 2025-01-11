; ModuleID = 'main'
source_filename = "main"

%main.info = type { [2 x i32], i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %23 = sext i32 %19 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %24 = sext i32 %21 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %25 = load ptr, ptr @_llgo_string, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %25, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %26, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %28)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %48 = load ptr, ptr @_llgo_string, align 8
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %48, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr %49, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %51)
  unreachable

_llgo_6:                                          ; preds = %_llgo_2
  %52 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %52, i8 0, i64 512, i1 false)
  %53 = getelementptr inbounds i32, ptr %52, i64 0
  %54 = getelementptr inbounds i32, ptr %52, i64 1
  %55 = getelementptr inbounds i32, ptr %52, i64 127
  store i32 1, ptr %53, align 4
  store i32 2, ptr %54, align 4
  store i32 4, ptr %55, align 4
  %56 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %56, i8 0, i64 512, i1 false)
  %57 = load [128 x i32], ptr %52, align 4
  %58 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %58, i8 0, i64 512, i1 false)
  store [128 x i32] %57, ptr %58, align 4
  %59 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %59, i8 0, i64 512, i1 false)
  call void @llgo_wrapabi_big1(ptr %58, i32 4, ptr %59)
  %60 = load [128 x i32], ptr %59, align 4
  store [128 x i32] %60, ptr %56, align 4
  %61 = getelementptr inbounds i32, ptr %56, i64 0
  %62 = load i32, ptr %61, align 4
  %63 = icmp ne i32 %62, 4
  br i1 %63, label %_llgo_7, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_10, %_llgo_6
  %64 = getelementptr inbounds i32, ptr %56, i64 0
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds i32, ptr %56, i64 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds i32, ptr %56, i64 127
  %69 = load i32, ptr %68, align 4
  %70 = sext i32 %65 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %71 = sext i32 %67 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %72 = sext i32 %69 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %73 = load ptr, ptr @_llgo_string, align 8
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %73, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %74, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %76)
  unreachable

_llgo_8:                                          ; preds = %_llgo_9
  %77 = load [128 x i32], ptr %56, align 4
  %78 = call i32 @main.bigArr.sum([128 x i32] %77)
  %79 = icmp ne i32 %78, 28
  br i1 %79, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_10
  %80 = getelementptr inbounds i32, ptr %56, i64 127
  %81 = load i32, ptr %80, align 4
  %82 = icmp ne i32 %81, 16
  br i1 %82, label %_llgo_7, label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_6
  %83 = getelementptr inbounds i32, ptr %56, i64 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp ne i32 %84, 8
  br i1 %85, label %_llgo_7, label %_llgo_9

_llgo_11:                                         ; preds = %_llgo_8
  %86 = sext i32 %78 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %87 = load ptr, ptr @_llgo_string, align 8
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %88, align 8
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %87, 0
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr %88, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %90)
  unreachable

_llgo_12:                                         ; preds = %_llgo_8
  %91 = alloca %main.info, align 8
  call void @llvm.memset(ptr %91, i8 0, i64 12, i1 false)
  %92 = getelementptr inbounds %main.info, ptr %91, i32 0, i32 0
  %93 = getelementptr inbounds i32, ptr %92, i64 0
  %94 = getelementptr inbounds i32, ptr %92, i64 1
  %95 = getelementptr inbounds %main.info, ptr %91, i32 0, i32 1
  store i32 1, ptr %93, align 4
  store i32 2, ptr %94, align 4
  store i32 3, ptr %95, align 4
  %96 = load %main.info, ptr %91, align 4
  %97 = alloca %main.info, align 8
  call void @llvm.memset(ptr %97, i8 0, i64 12, i1 false)
  store %main.info %96, ptr %97, align 4
  %98 = load ptr, ptr @_llgo_main.info, align 8
  %99 = load ptr, ptr @"_llgo_func$erx0GNxFl6J-ZCoJHmedBbUIhRKP5s93-5Ma6BdxZmk", align 8
  %100 = load ptr, ptr @_llgo_Pointer, align 8
  %101 = load ptr, ptr @"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI", align 8
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.main.Test$1", ptr null }, ptr %102, align 8
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %101, 0
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %103, ptr %102, 1
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %104, ptr @"__llgo_wrap_callback.main.Test$1")
  %106 = alloca i32, align 4
  call void @llvm.memset(ptr %106, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %97, i32 100, ptr %105, ptr %106)
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %29, align 4
  %108 = load i32, ptr %29, align 4
  %109 = icmp ne i32 %108, 106
  br i1 %109, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %110 = load ptr, ptr @_llgo_string, align 8
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 16 }, ptr %111, align 8
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %110, 0
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %112, ptr %111, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %113)
  unreachable

_llgo_14:                                         ; preds = %_llgo_12
  %114 = alloca %main.info, align 8
  call void @llvm.memset(ptr %114, i8 0, i64 12, i1 false)
  %115 = getelementptr inbounds %main.info, ptr %114, i32 0, i32 0
  %116 = getelementptr inbounds i32, ptr %115, i64 0
  %117 = getelementptr inbounds i32, ptr %115, i64 1
  %118 = getelementptr inbounds %main.info, ptr %114, i32 0, i32 1
  store i32 1, ptr %116, align 4
  store i32 2, ptr %117, align 4
  store i32 3, ptr %118, align 4
  %119 = load %main.info, ptr %114, align 4
  %120 = alloca %main.info, align 8
  call void @llvm.memset(ptr %120, i8 0, i64 12, i1 false)
  store %main.info %119, ptr %120, align 4
  %121 = load ptr, ptr @"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI", align 8
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @__llgo_stub.main.godemo, ptr null }, ptr %122, align 8
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %121, 0
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %123, ptr %122, 1
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %124, ptr @__llgo_wrap_callback.main.godemo)
  %126 = alloca i32, align 4
  call void @llvm.memset(ptr %126, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %120, i32 100, ptr %125, ptr %126)
  %127 = load i32, ptr %126, align 4
  store i32 %127, ptr %29, align 4
  %128 = load i32, ptr %29, align 4
  %129 = icmp ne i32 %128, 106
  br i1 %129, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %130 = load ptr, ptr @_llgo_string, align 8
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 16 }, ptr %131, align 8
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %130, 0
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %132, ptr %131, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %133)
  unreachable

_llgo_16:                                         ; preds = %_llgo_14
  %134 = alloca %main.info, align 8
  call void @llvm.memset(ptr %134, i8 0, i64 12, i1 false)
  %135 = getelementptr inbounds %main.info, ptr %134, i32 0, i32 0
  %136 = getelementptr inbounds i32, ptr %135, i64 0
  %137 = getelementptr inbounds i32, ptr %135, i64 1
  %138 = getelementptr inbounds %main.info, ptr %134, i32 0, i32 1
  store i32 1, ptr %136, align 4
  store i32 2, ptr %137, align 4
  store i32 3, ptr %138, align 4
  %139 = load %main.info, ptr %134, align 4
  %140 = alloca %main.info, align 8
  call void @llvm.memset(ptr %140, i8 0, i64 12, i1 false)
  store %main.info %139, ptr %140, align 4
  %141 = load ptr, ptr @"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI", align 8
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @__llgo_stub.main.godemo, ptr null }, ptr %142, align 8
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %141, 0
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %143, ptr %142, 1
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %144, ptr @__llgo_wrap_callback.main.godemo)
  %146 = alloca i32, align 4
  call void @llvm.memset(ptr %146, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %140, i32 101, ptr %145, ptr %146)
  %147 = load i32, ptr %146, align 4
  store i32 %147, ptr %29, align 4
  %148 = load i32, ptr %29, align 4
  %149 = icmp ne i32 %148, 107
  br i1 %149, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %150 = load ptr, ptr @_llgo_string, align 8
  %151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 16 }, ptr %151, align 8
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %150, 0
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %152, ptr %151, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %153)
  unreachable

_llgo_18:                                         ; preds = %_llgo_16
  %154 = alloca %main.info, align 8
  call void @llvm.memset(ptr %154, i8 0, i64 12, i1 false)
  %155 = getelementptr inbounds %main.info, ptr %154, i32 0, i32 0
  %156 = getelementptr inbounds i32, ptr %155, i64 0
  %157 = getelementptr inbounds i32, ptr %155, i64 1
  %158 = getelementptr inbounds %main.info, ptr %154, i32 0, i32 1
  store i32 1, ptr %156, align 4
  store i32 2, ptr %157, align 4
  store i32 3, ptr %158, align 4
  %159 = load %main.info, ptr %154, align 4
  %160 = alloca %main.info, align 8
  call void @llvm.memset(ptr %160, i8 0, i64 12, i1 false)
  store %main.info %159, ptr %160, align 4
  %161 = alloca i32, align 4
  call void @llvm.memset(ptr %161, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %160, i32 101, ptr @demo3, ptr %161)
  %162 = load i32, ptr %161, align 4
  store i32 %162, ptr %29, align 4
  %163 = load i32, ptr %29, align 4
  %164 = icmp ne i32 %163, 107
  br i1 %164, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %165 = load i32, ptr %29, align 4
  %166 = sext i32 %165 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %166)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %167 = load ptr, ptr @_llgo_string, align 8
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 16 }, ptr %168, align 8
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %167, 0
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %169, ptr %168, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %170)
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

define i32 @main.bigArr.sum([128 x i32] %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %2 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %2, i8 0, i64 512, i1 false)
  store [128 x i32] %0, ptr %2, align 4
  call void @llgo_wrapabi_big2(ptr %2, ptr %1)
  %3 = load i32, ptr %1, align 4
  ret i32 %3
}

define void @"main.(*bigArr)._sum"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load [128 x i32], ptr %0, align 4
  %3 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %3, i8 0, i64 512, i1 false)
  store [128 x i32] %2, ptr %3, align 4
  call void @llgo_wrapabi_big2(ptr %3, ptr %1)
  ret void
}

define [128 x i32] @"main.(*bigArr).scale"(ptr %0, i32 %1) {
_llgo_0:
  %2 = load [128 x i32], ptr %0, align 4
  %3 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %3, i8 0, i64 512, i1 false)
  store [128 x i32] %2, ptr %3, align 4
  %4 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %4, i8 0, i64 512, i1 false)
  call void @llgo_wrapabi_big1(ptr %3, i32 %1, ptr %4)
  %5 = load [128 x i32], ptr %4, align 4
  ret [128 x i32] %5
}

define i32 @"main.(*bigArr).sum"(ptr %0) {
_llgo_0:
  %1 = load [128 x i32], ptr %0, align 4
  %2 = call i32 @main.bigArr.sum([128 x i32] %1)
  ret i32 %2
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  call void @main.Test()
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare %main.info @demo1(%main.info, i32)

declare void @llgo_wrapabi_demo1(ptr, i32, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, i64 25, i64 12, i64 0, i64 0)
  store ptr %3, ptr @_llgo_main.info, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 24 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, i64 5, i64 4, i64 0, i64 0)
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
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %9, ptr @_llgo_int32, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %10 = load ptr, ptr @_llgo_int32, align 8
  br i1 %6, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %4, ptr %10, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %11 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 24 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, i64 5, i64 4, i64 0, i64 0)
  %13 = load ptr, ptr @"[2]_llgo_github.com/goplus/llgo/c.Int", align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 2, ptr %12)
  store ptr %15, ptr @"[2]_llgo_github.com/goplus/llgo/c.Int", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %16 = load ptr, ptr @"[2]_llgo_github.com/goplus/llgo/c.Int", align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 24 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, i64 5, i64 4, i64 0, i64 0)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 24 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, i64 5, i64 4, i64 0, i64 0)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 2, ptr %17)
  %20 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 1 }, ptr %19, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %21 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr %18, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %23 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %22, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %20, ptr %23, align 8
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %22, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %21, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 2, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 2, 2
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 12, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27)
  store ptr %28, ptr @"main.struct$qNnxrjiydIz9fNtIuFJ4CZbW6fcxCGiB6tczKhrE8bc", align 8
  %29 = load ptr, ptr @"main.struct$qNnxrjiydIz9fNtIuFJ4CZbW6fcxCGiB6tczKhrE8bc", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %3, ptr %29, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  %30 = load ptr, ptr @_llgo_main.info, align 8
  %31 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %32 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %33 = load ptr, ptr @"_llgo_func$erx0GNxFl6J-ZCoJHmedBbUIhRKP5s93-5Ma6BdxZmk", align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %36 = getelementptr ptr, ptr %35, i64 0
  store ptr %30, ptr %36, align 8
  %37 = getelementptr ptr, ptr %35, i64 1
  store ptr %31, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %35, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 2, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 2, 2
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %42 = getelementptr ptr, ptr %41, i64 0
  store ptr %32, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %41, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 1, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 1, 2
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %46)
  store ptr %46, ptr @"_llgo_func$erx0GNxFl6J-ZCoJHmedBbUIhRKP5s93-5Ma6BdxZmk", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %47 = load ptr, ptr @_llgo_Pointer, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %49)
  store ptr %49, ptr @_llgo_Pointer, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %50 = load ptr, ptr @_llgo_main.info, align 8
  %51 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %52 = load ptr, ptr @"_llgo_github.com/goplus/llgo/c.Int", align 8
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %54 = getelementptr ptr, ptr %53, i64 0
  store ptr %50, ptr %54, align 8
  %55 = getelementptr ptr, ptr %53, i64 1
  store ptr %51, ptr %55, align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %53, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 2, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 2, 2
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %60 = getelementptr ptr, ptr %59, i64 0
  store ptr %52, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %59, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 1, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 1, 2
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i1 false)
  %65 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr %64, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %67 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %66, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %69 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %68, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %65, ptr %69, align 8
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %68, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %67, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %68, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 2, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 2, 2
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73)
  store ptr %74, ptr @"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @demo2(%main.info, ptr)

declare void @llgo_wrapabi_demo2(ptr, ptr)

declare [128 x i32] @big1([128 x i32], i32)

declare void @llgo_wrapabi_big1(ptr, i32, ptr)

declare i32 @callback(%main.info, i32, ptr)

define linkonce void @"__llgo_wrap_callback.main.Test$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %4 = icmp sge i64 0, %3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %4)
  %5 = getelementptr inbounds ptr, ptr %2, i64 0
  %6 = load ptr, ptr %5, align 8
  %7 = load %main.info, ptr %6, align 4
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %10 = icmp sge i64 1, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds ptr, ptr %8, i64 1
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @"main.Test$1"(%main.info %7, i32 %13)
  store i32 %14, ptr %0, align 4
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr)

define linkonce i32 @"__llgo_stub.main.Test$1"(ptr %0, %main.info %1, i32 %2) {
_llgo_0:
  %3 = tail call i32 @"main.Test$1"(%main.info %1, i32 %2)
  ret i32 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @llgo_wrapabi_callback(ptr, i32, ptr, ptr)

define linkonce void @__llgo_wrap_callback.main.godemo(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %4 = icmp sge i64 0, %3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %4)
  %5 = getelementptr inbounds ptr, ptr %2, i64 0
  %6 = load ptr, ptr %5, align 8
  %7 = load %main.info, ptr %6, align 4
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, 1
  %10 = icmp sge i64 1, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds ptr, ptr %8, i64 1
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @main.godemo(%main.info %7, i32 %13)
  store i32 %14, ptr %0, align 4
  ret void
}

define linkonce i32 @__llgo_stub.main.godemo(ptr %0, %main.info %1, i32 %2) {
_llgo_0:
  %3 = tail call i32 @main.godemo(%main.info %1, i32 %2)
  ret i32 %3
}

declare i32 @demo3(%main.info, i32)

declare void @big2([128 x i32], ptr)

declare void @llgo_wrapabi_big2(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
