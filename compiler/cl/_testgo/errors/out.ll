; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%main.errorString = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@_llgo_main.errorString = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@_llgo_string = linkonce global ptr null, align 8
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [1 x i8] c"s", align 1
@3 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@"*_llgo_main.errorString" = linkonce global ptr null, align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null, align 8
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@4 = private unnamed_addr constant [8 x i8] c"an error", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @main.New(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %main.errorString, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %2, align 8
  %3 = load ptr, ptr @_llgo_main.errorString, align 8
  %4 = load ptr, ptr @"*_llgo_main.errorString", align 8
  %5 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %6 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %6, ptr %4)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"main.(*errorString).Error"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.errorString, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
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
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @main.New(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %10(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  store ptr %0, ptr @_llgo_main.errorString, align 8
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %3, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @_llgo_string, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %5, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %8 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %7, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  store ptr %12, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %13 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %14 = load ptr, ptr @_llgo_string, align 8
  %15 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 0, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 0, 2
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %22 = getelementptr ptr, ptr %21, i64 0
  store ptr %14, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 2
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %26)
  store ptr %26, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %27 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %27, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"main.(*errorString).Error", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @"main.(*errorString).Error", 3
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %32 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %31, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %31, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 1, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %13, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %37)
  store ptr %37, ptr @"*_llgo_main.errorString", align 8
  %38 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %39 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %41 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %38, 1
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %43 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %42, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %41, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 1, 1
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 1, 2
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46)
  store ptr %47, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")
