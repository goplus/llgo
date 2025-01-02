; ModuleID = 'main'
source_filename = "main"

%main.info = type { [2 x i32], i32 }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.infoBig = type { [128 x i32] }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
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
  %2 = alloca %main.info, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 12, i1 false)
  %3 = alloca %main.info, align 8
  call void @llvm.memset(ptr %3, i8 0, i64 12, i1 false)
  %4 = getelementptr inbounds %main.info, ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds i32, ptr %4, i64 0
  %6 = getelementptr inbounds i32, ptr %4, i64 1
  %7 = getelementptr inbounds %main.info, ptr %3, i32 0, i32 1
  store i32 1, ptr %5, align 4
  store i32 2, ptr %6, align 4
  store i32 3, ptr %7, align 4
  %8 = load %main.info, ptr %3, align 4
  %9 = alloca %main.info, align 8
  call void @llvm.memset(ptr %9, i8 0, i64 12, i1 false)
  store %main.info %8, ptr %9, align 4
  %10 = alloca %main.info, align 8
  call void @llvm.memset(ptr %10, i8 0, i64 12, i1 false)
  call void @llgo_wrapabi_demo1(ptr %9, i32 4, ptr %10)
  %11 = load %main.info, ptr %10, align 4
  store %main.info %11, ptr %2, align 4
  %12 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %13 = getelementptr inbounds i32, ptr %12, i64 0
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 4
  br i1 %15, label %_llgo_1, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_4, %_llgo_0
  %16 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %17 = getelementptr inbounds i32, ptr %16, i64 0
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %20 = getelementptr inbounds i32, ptr %19, i64 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %18 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %25 = sext i32 %21 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %26 = sext i32 %23 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %27 = load ptr, ptr @_llgo_string, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %28, align 8
  %29 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %27, 0
  %30 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %29, ptr %28, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %30)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 4)
  %32 = alloca %main.info, align 8
  call void @llvm.memset(ptr %32, i8 0, i64 12, i1 false)
  %33 = getelementptr inbounds %main.info, ptr %32, i32 0, i32 0
  %34 = getelementptr inbounds i32, ptr %33, i64 0
  %35 = getelementptr inbounds i32, ptr %33, i64 1
  %36 = getelementptr inbounds %main.info, ptr %32, i32 0, i32 1
  store i32 1, ptr %34, align 4
  store i32 2, ptr %35, align 4
  store i32 3, ptr %36, align 4
  %37 = load %main.info, ptr %32, align 4
  %38 = alloca %main.info, align 8
  call void @llvm.memset(ptr %38, i8 0, i64 12, i1 false)
  store %main.info %37, ptr %38, align 4
  call void @llgo_wrapabi_demo2(ptr %38, ptr %31)
  %39 = load i32, ptr %31, align 4
  %40 = icmp ne i32 %39, 6
  br i1 %40, label %_llgo_5, label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_4
  %41 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 12
  br i1 %43, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %44 = getelementptr inbounds %main.info, ptr %2, i32 0, i32 0
  %45 = getelementptr inbounds i32, ptr %44, i64 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 8
  br i1 %47, label %_llgo_1, label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_2
  %48 = load i32, ptr %31, align 4
  %49 = sext i32 %48 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %50 = load ptr, ptr @_llgo_string, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %52, ptr %51, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %53)
  unreachable

_llgo_6:                                          ; preds = %_llgo_2
  %54 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %54, i8 0, i64 512, i1 false)
  %55 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %55, i8 0, i64 512, i1 false)
  %56 = getelementptr inbounds %main.infoBig, ptr %55, i32 0, i32 0
  %57 = getelementptr inbounds i32, ptr %56, i64 0
  %58 = getelementptr inbounds i32, ptr %56, i64 1
  %59 = getelementptr inbounds i32, ptr %56, i64 127
  store i32 1, ptr %57, align 4
  store i32 2, ptr %58, align 4
  store i32 3, ptr %59, align 4
  %60 = load %main.infoBig, ptr %55, align 4
  %61 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %61, i8 0, i64 512, i1 false)
  store %main.infoBig %60, ptr %61, align 4
  %62 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %62, i8 0, i64 512, i1 false)
  call void @llgo_wrapabi_big1(ptr %61, i32 4, ptr %62)
  %63 = load [128 x i32], ptr %62, align 4
  store [128 x i32] %63, ptr %54, align 4
  %64 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %65 = getelementptr inbounds i32, ptr %64, i64 0
  %66 = load i32, ptr %65, align 4
  %67 = icmp ne i32 %66, 4
  br i1 %67, label %_llgo_7, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_9, %_llgo_10, %_llgo_6
  %68 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %69 = getelementptr inbounds i32, ptr %68, i64 0
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %72 = getelementptr inbounds i32, ptr %71, i64 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %75 = getelementptr inbounds i32, ptr %74, i64 127
  %76 = load i32, ptr %75, align 4
  %77 = sext i32 %70 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %77)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %78 = sext i32 %73 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %78)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %79 = sext i32 %76 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %79)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %80 = load ptr, ptr @_llgo_string, align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %81, align 8
  %82 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %80, 0
  %83 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %82, ptr %81, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %83)
  unreachable

_llgo_8:                                          ; preds = %_llgo_9
  store i32 0, ptr %31, align 4
  %84 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %84, i8 0, i64 512, i1 false)
  %85 = getelementptr inbounds %main.infoBig, ptr %84, i32 0, i32 0
  %86 = getelementptr inbounds i32, ptr %85, i64 0
  %87 = getelementptr inbounds i32, ptr %85, i64 1
  %88 = getelementptr inbounds i32, ptr %85, i64 127
  store i32 1, ptr %86, align 4
  store i32 2, ptr %87, align 4
  store i32 3, ptr %88, align 4
  %89 = load %main.infoBig, ptr %84, align 4
  %90 = alloca %main.infoBig, align 8
  call void @llvm.memset(ptr %90, i8 0, i64 512, i1 false)
  store %main.infoBig %89, ptr %90, align 4
  call void @llgo_wrapabi_big2(ptr %90, ptr %31)
  %91 = load i32, ptr %31, align 4
  %92 = icmp ne i32 %91, 6
  br i1 %92, label %_llgo_11, label %_llgo_12

_llgo_9:                                          ; preds = %_llgo_10
  %93 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %94 = getelementptr inbounds i32, ptr %93, i64 127
  %95 = load i32, ptr %94, align 4
  %96 = icmp ne i32 %95, 12
  br i1 %96, label %_llgo_7, label %_llgo_8

_llgo_10:                                         ; preds = %_llgo_6
  %97 = getelementptr inbounds %main.infoBig, ptr %54, i32 0, i32 0
  %98 = getelementptr inbounds i32, ptr %97, i64 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp ne i32 %99, 8
  br i1 %100, label %_llgo_7, label %_llgo_9

_llgo_11:                                         ; preds = %_llgo_8
  %101 = load i32, ptr %31, align 4
  %102 = sext i32 %101 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %102)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %103 = load ptr, ptr @_llgo_string, align 8
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %104, align 8
  %105 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %103, 0
  %106 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %105, ptr %104, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %106)
  unreachable

_llgo_12:                                         ; preds = %_llgo_8
  %107 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %107, i8 0, i64 512, i1 false)
  %108 = getelementptr inbounds i32, ptr %107, i64 0
  %109 = getelementptr inbounds i32, ptr %107, i64 1
  %110 = getelementptr inbounds i32, ptr %107, i64 127
  store i32 1, ptr %108, align 4
  store i32 2, ptr %109, align 4
  store i32 4, ptr %110, align 4
  %111 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %111, i8 0, i64 512, i1 false)
  %112 = load [128 x i32], ptr %107, align 4
  %113 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %113, i8 0, i64 512, i1 false)
  store [128 x i32] %112, ptr %113, align 4
  %114 = alloca [128 x i32], align 4
  call void @llvm.memset(ptr %114, i8 0, i64 512, i1 false)
  call void @llgo_wrapabi_big1(ptr %113, i32 4, ptr %114)
  %115 = load [128 x i32], ptr %114, align 4
  store [128 x i32] %115, ptr %111, align 4
  %116 = getelementptr inbounds i32, ptr %111, i64 0
  %117 = load i32, ptr %116, align 4
  %118 = icmp ne i32 %117, 4
  br i1 %118, label %_llgo_13, label %_llgo_16

_llgo_13:                                         ; preds = %_llgo_15, %_llgo_16, %_llgo_12
  %119 = getelementptr inbounds i32, ptr %111, i64 0
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds i32, ptr %111, i64 1
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds i32, ptr %111, i64 127
  %124 = load i32, ptr %123, align 4
  %125 = sext i32 %120 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %125)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %126 = sext i32 %122 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %126)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %127 = sext i32 %124 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %127)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %128 = load ptr, ptr @_llgo_string, align 8
  %129 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 }, ptr %129, align 8
  %130 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %128, 0
  %131 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %130, ptr %129, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %131)
  unreachable

_llgo_14:                                         ; preds = %_llgo_15
  %132 = alloca %main.info, align 8
  call void @llvm.memset(ptr %132, i8 0, i64 12, i1 false)
  %133 = getelementptr inbounds %main.info, ptr %132, i32 0, i32 0
  %134 = getelementptr inbounds i32, ptr %133, i64 0
  %135 = getelementptr inbounds i32, ptr %133, i64 1
  %136 = getelementptr inbounds %main.info, ptr %132, i32 0, i32 1
  store i32 1, ptr %134, align 4
  store i32 2, ptr %135, align 4
  store i32 3, ptr %136, align 4
  %137 = load %main.info, ptr %132, align 4
  %138 = alloca %main.info, align 8
  call void @llvm.memset(ptr %138, i8 0, i64 12, i1 false)
  store %main.info %137, ptr %138, align 4
  %139 = load ptr, ptr @_llgo_main.info, align 8
  %140 = load ptr, ptr @"_llgo_func$erx0GNxFl6J-ZCoJHmedBbUIhRKP5s93-5Ma6BdxZmk", align 8
  %141 = load ptr, ptr @_llgo_Pointer, align 8
  %142 = load ptr, ptr @"main.struct$nCvVlf_6bZVuarWUSNPSvlOOLTyUn4t5d8dK333zQHI", align 8
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.main.main$1", ptr null }, ptr %143, align 8
  %144 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %142, 0
  %145 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %144, ptr %143, 1
  %146 = load ptr, ptr @"*_llgo_main.info", align 8
  %147 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  %148 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/c.Int", align 8
  %149 = load ptr, ptr @"_llgo_func$Jw_7J2Hyj5PTz2-hFvkUvPTBHtnrOToekoHWiZvMyz4", align 8
  %150 = load ptr, ptr @"main.struct$1VNw2XLyc1imQrqkPlXI7U0RnsR6KkLD1-5eNGr_LvI", align 8
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.__llgo_wrap_callback.main.main$1", ptr null }, ptr %151, align 8
  %152 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %150, 0
  %153 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %152, ptr %151, 1
  %154 = call ptr @"github.com/goplus/llgo/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/internal/runtime.eface" %145, %"github.com/goplus/llgo/internal/runtime.eface" %153)
  %155 = alloca i32, align 4
  call void @llvm.memset(ptr %155, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %138, i32 100, ptr %154, ptr %155)
  %156 = load i32, ptr %155, align 4
  store i32 %156, ptr %31, align 4
  %157 = load i32, ptr %31, align 4
  %158 = icmp ne i32 %157, 106
  br i1 %158, label %_llgo_17, label %_llgo_18

_llgo_15:                                         ; preds = %_llgo_16
  %159 = getelementptr inbounds i32, ptr %111, i64 127
  %160 = load i32, ptr %159, align 4
  %161 = icmp ne i32 %160, 16
  br i1 %161, label %_llgo_13, label %_llgo_14

_llgo_16:                                         ; preds = %_llgo_12
  %162 = getelementptr inbounds i32, ptr %111, i64 1
  %163 = load i32, ptr %162, align 4
  %164 = icmp ne i32 %163, 8
  br i1 %164, label %_llgo_13, label %_llgo_15

_llgo_17:                                         ; preds = %_llgo_14
  %165 = load ptr, ptr @_llgo_string, align 8
  %166 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 16 }, ptr %166, align 8
  %167 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %165, 0
  %168 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %167, ptr %166, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %168)
  unreachable

_llgo_18:                                         ; preds = %_llgo_14
  %169 = alloca %main.info, align 8
  call void @llvm.memset(ptr %169, i8 0, i64 12, i1 false)
  %170 = getelementptr inbounds %main.info, ptr %169, i32 0, i32 0
  %171 = getelementptr inbounds i32, ptr %170, i64 0
  %172 = getelementptr inbounds i32, ptr %170, i64 1
  %173 = getelementptr inbounds %main.info, ptr %169, i32 0, i32 1
  store i32 1, ptr %171, align 4
  store i32 2, ptr %172, align 4
  store i32 3, ptr %173, align 4
  %174 = load %main.info, ptr %169, align 4
  %175 = alloca %main.info, align 8
  call void @llvm.memset(ptr %175, i8 0, i64 12, i1 false)
  store %main.info %174, ptr %175, align 4
  %176 = alloca i32, align 4
  call void @llvm.memset(ptr %176, i8 0, i64 4, i1 false)
  call void @llgo_wrapabi_callback(ptr %175, i32 101, ptr @demo3, ptr %176)
  %177 = load i32, ptr %176, align 4
  store i32 %177, ptr %31, align 4
  %178 = load i32, ptr %31, align 4
  %179 = icmp ne i32 %178, 107
  br i1 %179, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %180 = load i32, ptr %31, align 4
  %181 = sext i32 %180 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %181)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %182 = load ptr, ptr @_llgo_string, align 8
  %183 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 16 }, ptr %183, align 8
  %184 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" undef, ptr %182, 0
  %185 = insertvalue %"github.com/goplus/llgo/internal/runtime.eface" %184, ptr %183, 1
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %185)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  ret i32 0
}

define i32 @"main.main$1"(%main.info %0, i32 %1) {
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

declare [128 x i32] @big1([128 x i32], i32)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @llgo_wrapabi_big1(ptr, i32, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

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

declare void @big2(%main.infoBig, ptr)

declare void @llgo_wrapabi_big2(ptr, ptr)

declare i32 @callback(%main.info, i32, ptr)

define linkonce void @"__llgo_wrap_callback.main.main$1"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = load %main.info, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = call i32 @"main.main$1"(%main.info %3, i32 %4)
  store i32 %5, ptr %2, align 4
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.WrapFunc"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

define linkonce i32 @"__llgo_stub.main.main$1"(ptr %0, %main.info %1, i32 %2) {
_llgo_0:
  %3 = tail call i32 @"main.main$1"(%main.info %1, i32 %2)
  ret i32 %3
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

define linkonce void @"__llgo_stub.__llgo_wrap_callback.main.main$1"(ptr %0, ptr %1, ptr %2, ptr %3) {
_llgo_0:
  tail call void @"__llgo_wrap_callback.main.main$1"(ptr %1, ptr %2, ptr %3)
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare void @llgo_wrapabi_callback(ptr, i32, ptr, ptr)

declare i32 @demo3(%main.info, i32)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
