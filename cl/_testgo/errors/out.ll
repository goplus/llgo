; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.errorString = type { %"github.com/goplus/llgo/internal/runtime.String" }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@_llgo_main.errorString = linkonce global ptr null, align 8
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [1 x i8] c"s", align 1
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@"*_llgo_main.errorString" = linkonce global ptr null, align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null, align 8
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@4 = private unnamed_addr constant [8 x i8] c"an error", align 1

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

define %"github.com/goplus/llgo/internal/runtime.String" @"main.(*errorString).Error"(ptr %0) {
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
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @4, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 8, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.New(%"github.com/goplus/llgo/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %6)
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %6, 0
  %9 = getelementptr ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = alloca { ptr, ptr }, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, ptr }, ptr %11, i32 0, i32 1
  store ptr %7, ptr %13, align 8
  %14 = load { ptr, ptr }, ptr %11, align 8
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = call %"github.com/goplus/llgo/internal/runtime.String" %16(ptr %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 16, i64 0, i64 1)
  store ptr %0, ptr @_llgo_main.errorString, align 8
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 1, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 0, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %10 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %4, ptr %9, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %8, i1 false)
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @1, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 4, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %16 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %15, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %10, ptr %16, align 8
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, i32 0, i32 0
  store ptr %15, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, i32 0, i32 1
  store i64 1, ptr %19, align 4
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, i32 0, i32 2
  store i64 1, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %17, align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %14, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %21)
  store ptr %22, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %23 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 0
  store ptr @2, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %24, i32 0, i32 1
  store i64 5, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  %28 = load ptr, ptr @_llgo_string, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %30, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %31 = load ptr, ptr @_llgo_string, align 8
  %32 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 0
  store ptr %34, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 1
  store i64 0, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 2
  store i64 0, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %41 = getelementptr ptr, ptr %40, i64 0
  store ptr %31, ptr %41, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 0
  store ptr %40, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 1
  store i64 1, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 2
  store i64 1, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %39, %"github.com/goplus/llgo/internal/runtime.Slice" %46, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %47)
  store ptr %47, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %48 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %49 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %49, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %27, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %49, i32 0, i32 1
  store ptr %48, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %49, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %49, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %53, align 8
  %54 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %49, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %56 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %54, ptr %56, align 8
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, i32 0, i32 0
  store ptr %55, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, i32 0, i32 1
  store i64 1, ptr %59, align 4
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, i32 0, i32 2
  store i64 1, ptr %60, align 4
  %61 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %57, align 8
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 0
  store ptr @1, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %62, i32 0, i32 1
  store i64 4, ptr %64, align 4
  %65 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %62, align 8
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 0
  store ptr @3, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 1
  store i64 11, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %66, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %65, %"github.com/goplus/llgo/internal/runtime.String" %69, ptr %23, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %61)
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %0)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %70)
  store ptr %70, ptr @"*_llgo_main.errorString", align 8
  %71 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %72 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 0
  store ptr @2, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 1
  store i64 5, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %74, align 8
  %78 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %78, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %77, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %78, i32 0, i32 1
  store ptr %71, ptr %80, align 8
  %81 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %78, align 8
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %83 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %82, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %81, ptr %83, align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 0
  store ptr %82, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 1
  store i64 1, ptr %86, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 2
  store i64 1, ptr %87, align 4
  %88 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @1, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 4, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr null, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 0, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %92, %"github.com/goplus/llgo/internal/runtime.String" %96, %"github.com/goplus/llgo/internal/runtime.Slice" %88)
  store ptr %97, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")
