; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [5 x i8] c"hello", align 1
@6 = private unnamed_addr constant [5 x i8] c"world", align 1

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
  %2 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %2, i64 0)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @5, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %8, ptr %3, ptr %9)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @6, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 5, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %15, ptr %3, ptr %16)
  store %"github.com/goplus/llgo/internal/runtime.String" %14, ptr %17, align 8
  %18 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %19, align 4
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %18, ptr %3, ptr %19)
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %22 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %23, align 4
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %22, ptr %3, ptr %23)
  %25 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %24, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %26 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %27, align 4
  %28 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %26, ptr %3, ptr %27)
  %29 = extractvalue { ptr, i1 } %28, 0
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %31 = extractvalue { ptr, i1 } %28, 1
  %32 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %33 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %32, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %30, ptr %33, align 8
  %34 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %32, i32 0, i32 1
  store i1 %31, ptr %34, align 1
  %35 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %32, align 8
  %36 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %35, 0
  %37 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %35, 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %36)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %37)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %38 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 10, ptr %39, align 4
  %40 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %38, ptr %3, ptr %39)
  %41 = extractvalue { ptr, i1 } %40, 0
  %42 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %43 = extractvalue { ptr, i1 } %40, 1
  %44 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %45 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %44, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %42, ptr %45, align 8
  %46 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %44, i32 0, i32 1
  store i1 %43, ptr %46, align 1
  %47 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %44, align 8
  %48 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %47, 0
  %49 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %47, 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %48)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %49)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 7, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 0, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %12)
  %14 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %7, ptr %13, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %11, i1 false)
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @1, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 4, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 0, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %23)
  %25 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %18, ptr %24, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %22, i1 false)
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 0
  store ptr @2, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 1
  store i64 5, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %26, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %34)
  %36 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %29, ptr %35, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %33, i1 false)
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @3, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 8, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 0, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 26)
  %46 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %40, ptr %45, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %44, i1 false)
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr @4, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 4, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %52 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %14, ptr %52, align 8
  %53 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %25, ptr %53, align 8
  %54 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %36, ptr %54, align 8
  %55 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %46, ptr %55, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 0
  store ptr %51, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 1
  store i64 4, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 2
  store i64 4, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %50, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %60)
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %2, ptr %3, ptr %61, i64 4)
  store ptr %62, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)
