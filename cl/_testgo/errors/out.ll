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
  %3 = load ptr, ptr @_llgo_main.errorString, align 8
  %4 = load ptr, ptr @"*_llgo_main.errorString", align 8
  %5 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %6 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %6, ptr %4)
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
  %37 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 1
  store i64 0, ptr %42, align 4
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, i32 0, i32 2
  store i64 0, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %40, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %46 = getelementptr ptr, ptr %45, i64 0
  store ptr %36, ptr %46, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 0
  store ptr %45, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 1
  store i64 1, ptr %49, align 4
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, i32 0, i32 2
  store i64 1, ptr %50, align 4
  %51 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %47, align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %44, %"github.com/goplus/llgo/internal/runtime.Slice" %51, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %52)
  store ptr %52, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %53 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %54 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %54, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %35, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %54, i32 0, i32 1
  store ptr %53, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %54, i32 0, i32 2
  store ptr @"main.(*errorString).Error", ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %54, i32 0, i32 3
  store ptr @"main.(*errorString).Error", ptr %58, align 8
  %59 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %54, align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %61 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %60, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %59, ptr %61, align 8
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 0
  store ptr %60, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 1
  store i64 1, ptr %64, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 2
  store i64 1, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, align 8
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 0
  store ptr @2, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 1
  store i64 4, ptr %69, align 4
  %70 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %67, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 0
  store ptr @4, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 1
  store i64 11, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %71, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %70, %"github.com/goplus/llgo/internal/runtime.String" %74, ptr %31, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %66)
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 0
  store ptr @0, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %75, i32 0, i32 1
  store i64 16, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %75, align 8
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %78, i64 25, i64 16, i64 0, i64 1)
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %79)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %80)
  store ptr %80, ptr @"*_llgo_main.errorString", align 8
  %81 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %82 = load ptr, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @3, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 5, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %88, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %87, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %88, i32 0, i32 1
  store ptr %81, ptr %90, align 8
  %91 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %88, align 8
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %93 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %92, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %91, ptr %93, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, i32 0, i32 0
  store ptr %92, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, i32 0, i32 1
  store i64 1, ptr %96, align 4
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, i32 0, i32 2
  store i64 1, ptr %97, align 4
  %98 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %94, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 0
  store ptr @2, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 1
  store i64 4, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %99, align 8
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 0
  store ptr null, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 1
  store i64 0, ptr %105, align 4
  %106 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %103, align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %102, %"github.com/goplus/llgo/internal/runtime.String" %106, %"github.com/goplus/llgo/internal/runtime.Slice" %98)
  store ptr %107, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", align 8
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
