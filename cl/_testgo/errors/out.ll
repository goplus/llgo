; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.errorString = type { %"github.com/goplus/llgo/internal/runtime.String" }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global ptr null
@"*_llgo_main.errorString" = global ptr null
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@1 = private unnamed_addr constant [9 x i8] c"an error\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@_llgo_main.errorString = global ptr null
@3 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null
@4 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = global ptr null
@5 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@"_llgo_func$8LHAAczeMU-_MsqDJ4-62jHfhzpiOiRnFkBoaL3mfxg" = linkonce global ptr null
@6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@7 = private unnamed_addr constant [17 x i8] c"main.errorString\00", align 1
@8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@10 = private unnamed_addr constant [5 x i8] c"main\00", align 1

define %"github.com/goplus/llgo/internal/runtime.iface" @main.New(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %main.errorString, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %2, align 8
  %3 = load ptr, ptr @"*_llgo_main.errorString", align 8
  %4 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %4, ptr %3)
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, i32 0, i32 1
  store ptr %1, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %9
}

define %"github.com/goplus/llgo/internal/runtime.String" @"(*main.errorString).Error"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.errorString, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/internal/runtime.String" %2
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$abi"()
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
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 4, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 0
  store ptr @1, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %6, i32 0, i32 1
  store i64 8, ptr %8, align 4
  %9 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %6, align 8
  %10 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.New(%"github.com/goplus/llgo/internal/runtime.String" %9)
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @2, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 3, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %10, 0
  %16 = getelementptr ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  %18 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %10, 1
  %19 = alloca { ptr, ptr }, align 8
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  store ptr %17, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 1
  store ptr %18, ptr %21, align 8
  %22 = load { ptr, ptr }, ptr %19, align 8
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  %25 = call %"github.com/goplus/llgo/internal/runtime.String" %24(ptr %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

define void @"main.init$abi"() {
_llgo_0:
  call void @"main.init$abi2"()
  %0 = load ptr, ptr @_llgo_main.errorString, align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %0)
  store ptr %1, ptr @"*_llgo_main.errorString", align 8
  %2 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @3, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %9 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %9, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %9, i32 0, i32 1
  store ptr %8, ptr %11, align 8
  %12 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %9, align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %14 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %13, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %12, ptr %14, align 8
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %15, i32 0, i32 0
  store ptr %13, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %15, i32 0, i32 1
  store i64 1, ptr %17, align 4
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %15, i32 0, i32 2
  store i64 1, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %15, align 8
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @4, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 4, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %23, %"github.com/goplus/llgo/internal/runtime.Slice" %19)
  store ptr %24, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

define void @"main.init$abi2"() {
_llgo_0:
  call void @"main.init$abi3"()
  %0 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @5, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 5, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %5 = load ptr, ptr @"_llgo_func$8LHAAczeMU-_MsqDJ4-62jHfhzpiOiRnFkBoaL3mfxg", align 8
  %6 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %6, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %4, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %6, i32 0, i32 1
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %6, i32 0, i32 2
  store ptr @"(*main.errorString).Error", ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %6, i32 0, i32 3
  store ptr @"(*main.errorString).Error", ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %6, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %13 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %12, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %11, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, i32 0, i32 0
  store ptr %12, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, i32 0, i32 1
  store i64 1, ptr %16, align 4
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, i32 0, i32 2
  store i64 1, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %14, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @6, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 4, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 0
  store ptr @7, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 1
  store i64 16, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %23, align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.Named"(%"github.com/goplus/llgo/internal/runtime.String" %22, %"github.com/goplus/llgo/internal/runtime.String" %26, ptr %0, %"github.com/goplus/llgo/internal/runtime.Slice" %18)
  store ptr %27, ptr @_llgo_main.errorString, align 8
  %28 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 0
  store ptr %30, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 1
  store i64 0, ptr %33, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 2
  store i64 0, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %38 = getelementptr ptr, ptr %37, i64 0
  store ptr %36, ptr %38, align 8
  %39 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %39, i32 0, i32 0
  store ptr %37, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %39, i32 0, i32 1
  store i64 1, ptr %41, align 4
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %39, i32 0, i32 2
  store i64 1, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %39, align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %35, %"github.com/goplus/llgo/internal/runtime.Slice" %43, i1 false)
  store ptr %44, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Named"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

define void @"main.init$abi3"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @8, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 1, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @9, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 0, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  %9 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %3, ptr %4, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %8, i1 false)
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @10, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 4, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %15 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %14, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %9, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 0
  store ptr %14, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 1
  store i64 1, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 2
  store i64 1, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %13, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %20)
  store ptr %21, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %22 = load ptr, ptr @"_llgo_func$8LHAAczeMU-_MsqDJ4-62jHfhzpiOiRnFkBoaL3mfxg", align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %24 = load ptr, ptr @"*_llgo_main.errorString", align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %26 = getelementptr ptr, ptr %25, i64 0
  store ptr %24, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 0
  store ptr %25, ptr %28, align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 1
  store i64 1, ptr %29, align 4
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, i32 0, i32 2
  store i64 1, ptr %30, align 4
  %31 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %27, align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %34 = getelementptr ptr, ptr %33, i64 0
  store ptr %32, ptr %34, align 8
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 0
  store ptr %33, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 1
  store i64 1, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 2
  store i64 1, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %31, %"github.com/goplus/llgo/internal/runtime.Slice" %39, i1 false)
  store ptr %40, ptr @"_llgo_func$8LHAAczeMU-_MsqDJ4-62jHfhzpiOiRnFkBoaL3mfxg", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)
