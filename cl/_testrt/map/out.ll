; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"map[_llgo_int]_llgo_int" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

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
  %2 = load ptr, ptr @_llgo_int, align 8
  %3 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %3, i64 2)
  %5 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %6, align 4
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %5, ptr %4, ptr %6)
  store i64 100, ptr %7, align 4
  %8 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 7, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %8, ptr %4, ptr %9)
  store i64 29, ptr %10, align 4
  %11 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %11, ptr %4, ptr %12)
  %14 = load i64, ptr %13, align 4
  %15 = call i32 (ptr, ...) @printf(ptr @5, i64 %14)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @0, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 7, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 0, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %15)
  %17 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %10, ptr %16, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %14, i1 false)
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr @1, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 4, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 0
  store ptr null, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 1
  store i64 0, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %22, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %26)
  %28 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %21, ptr %27, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %25, i1 false)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 0
  store ptr @2, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %29, i32 0, i32 1
  store i64 5, ptr %31, align 4
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 0
  store ptr null, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 1
  store i64 0, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %33, align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %37)
  %39 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %32, ptr %38, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %36, i1 false)
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 0
  store ptr @3, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 1
  store i64 8, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %40, align 8
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 0
  store ptr null, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %44, i32 0, i32 1
  store i64 0, ptr %46, align 4
  %47 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %44, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %49 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %43, ptr %48, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %47, i1 false)
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 0
  store ptr @4, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %50, i32 0, i32 1
  store i64 4, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %50, align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %55 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %54, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %17, ptr %55, align 8
  %56 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %54, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %28, ptr %56, align 8
  %57 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %54, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %39, ptr %57, align 8
  %58 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %54, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %49, ptr %58, align 8
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %59, i32 0, i32 0
  store ptr %54, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %59, i32 0, i32 1
  store i64 4, ptr %61, align 4
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %59, i32 0, i32 2
  store i64 4, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %59, align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %53, i64 144, %"github.com/goplus/llgo/internal/runtime.Slice" %63)
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %5, ptr %6, ptr %64, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %65)
  store ptr %65, ptr @"map[_llgo_int]_llgo_int", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare i32 @printf(ptr, ...)
