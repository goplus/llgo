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
@0 = private unnamed_addr constant [16 x i8] c"main.errorString", align 1
@_llgo_string = linkonce global ptr null, align 8
@"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [1 x i8] c"s", align 1
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [11 x i8] c"errorString", align 1
@"*_llgo_main.errorString" = linkonce global ptr null, align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = linkonce global ptr null, align 8
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@5 = private unnamed_addr constant [8 x i8] c"an error", align 1

define %"github.com/goplus/llgo/internal/runtime.iface" @main.New(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %main.errorString, ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %0, ptr %2, align 8
  %3 = load ptr, ptr @"*_llgo_main.errorString", align 8
  %4 = load ptr, ptr @_llgo_string, align 8
  %5 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %6 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %6, ptr %3)
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %8, i32 0, i32 1
  store ptr %1, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %8, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %11
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
  store ptr @5, ptr %3, align 8
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
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 16, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 25, i64 16, i64 0, i64 1)
  store ptr %4, ptr @_llgo_main.errorString, align 8
  %5 = load ptr, ptr @_llgo_string, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %7, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %8 = load ptr, ptr @_llgo_string, align 8
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @1, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 1, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 0, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %18 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %12, ptr %17, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %16, i1 false)
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @2, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 4, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %24 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %23, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %18, ptr %24, align 8
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, i32 0, i32 0
  store ptr %23, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, i32 0, i32 1
  store i64 1, ptr %27, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, i32 0, i32 2
  store i64 1, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %22, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %29)
  store ptr %30, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %31 = load ptr, ptr @"main.struct$QTufDJA9wEDzuzgkA-ZSrLqW-B6lWN8O25mTSglAoLQ", align 8
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @3, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 5, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = load ptr, ptr @_llgo_string, align 8
  %37 = load ptr, ptr @_llgo_string, align 8
  %38 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %41, i32 0, i32 0
  store ptr %40, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %41, i32 0, i32 1
  store i64 0, ptr %43, align 4
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %41, i32 0, i32 2
  store i64 0, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %41, align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %47 = getelementptr ptr, ptr %46, i64 0
  store ptr %37, ptr %47, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 0
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 1
  store i64 1, ptr %50, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 2
  store i64 1, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %45, %"github.com/goplus/llgo/internal/runtime.Slice" %52, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %53)
  store ptr %53, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %54 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %55 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %35, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 1
  store ptr %54, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %59, align 8
  %60 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %55, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %62 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %61, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %60, ptr %62, align 8
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, i32 0, i32 0
  store ptr %61, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, i32 0, i32 1
  store i64 1, ptr %65, align 4
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, i32 0, i32 2
  store i64 1, ptr %66, align 4
  %67 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %63, align 8
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 0
  store ptr @2, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 1
  store i64 4, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %68, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @4, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 11, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %71, %"github.com/goplus/llgo/internal/runtime.String" %75, ptr %31, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %67)
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @0, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 16, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %79, i64 25, i64 16, i64 0, i64 1)
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %80)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %81)
  store ptr %81, ptr @"*_llgo_main.errorString", align 8
  %82 = load ptr, ptr @_llgo_string, align 8
  %83 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %84 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 0
  store ptr @3, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 1
  store i64 5, ptr %88, align 4
  %89 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %86, align 8
  %90 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %90, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %89, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %90, i32 0, i32 1
  store ptr %83, ptr %92, align 8
  %93 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %90, align 8
  %94 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %95 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %94, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %93, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 0
  store ptr %94, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 1
  store i64 1, ptr %98, align 4
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, i32 0, i32 2
  store i64 1, ptr %99, align 4
  %100 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %96, align 8
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 0
  store ptr @2, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 1
  store i64 4, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %101, align 8
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 0
  store ptr null, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %105, i32 0, i32 1
  store i64 0, ptr %107, align 4
  %108 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %105, align 8
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %104, %"github.com/goplus/llgo/internal/runtime.String" %108, %"github.com/goplus/llgo/internal/runtime.Slice" %100)
  store ptr %109, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

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
