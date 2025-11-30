; ModuleID = 'github.com/goplus/llgo/cl/_testgo/errors'
source_filename = "github.com/goplus/llgo/cl/_testgo/errors"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/errors.errorString" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testgo/errors.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/errors", align 1
@1 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@_llgo_string = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/errors.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [1 x i8] c"s", align 1
@3 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString" = linkonce global ptr null, align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [8 x i8] c"an error", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/errors.New"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/errors.errorString", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %2, align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString"()
  %4 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString"()
  %5 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %6 = call ptr @"__llgo_load__llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU"()
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %6, ptr %4)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/errors.(*errorString).Error"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/errors.errorString", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/_testgo/errors.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/errors.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/errors.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/errors.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/errors.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/errors.New"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %8(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
  %3 = call ptr @__llgo_load__llgo_string()
  %4 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/errors.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ"()
  %5 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %5, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/errors.(*errorString).Error", 2
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/cl/_testgo/errors.(*errorString).Error", 3
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %9, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @__llgo_load__llgo_string() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define void @"github.com/goplus/llgo/cl/_testgo/errors.init$after"() {
_llgo_0:
  %0 = call ptr @__llgo_load__llgo_string()
  %1 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/errors.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ"()
  %2 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString"()
  %4 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString"()
  %5 = call ptr @"__llgo_load__llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU"()
  ret void
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/errors.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/errors.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"github.com/goplus/llgo/cl/_testgo/errors.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/errors.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  ret ptr %13
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

define linkonce ptr @"__llgo_load__llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %3 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %2, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")
