; ModuleID = 'github.com/goplus/llgo/cl/_testgo/errors'
source_filename = "github.com/goplus/llgo/cl/_testgo/errors"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/errors.errorString" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
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
@_llgo_error = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"error", align 1
@5 = private unnamed_addr constant [8 x i8] c"an error", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/errors.New"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/errors.errorString", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %2, align 8
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
  %5 = load ptr, ptr @_llgo_error, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %5, ptr %4)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8
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
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testgo/errors.New"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 })
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

define void @"github.com/goplus/llgo/cl/_testgo/errors.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
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
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  store ptr %12, ptr @"github.com/goplus/llgo/cl/_testgo/errors.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %13 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/errors.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %14 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 0, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 0, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %22 = getelementptr ptr, ptr %21, i64 0
  store ptr %20, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 2
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %26)
  store ptr %26, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %27 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %27, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"github.com/goplus/llgo/cl/_testgo/errors.(*errorString).Error", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @"github.com/goplus/llgo/cl/_testgo/errors.(*errorString).Error", 3
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %32 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %31, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %31, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 1, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %13, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 11 }, i64 25, i64 16, i64 0, i64 1)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %37)
  store ptr %37, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/errors.errorString", align 8
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 })
  %39 = load ptr, ptr @_llgo_error, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store ptr %38, ptr @_llgo_error, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %41 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %40, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %41, 1
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %44 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %43, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %42, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %43, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 1, 1
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %38, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")
