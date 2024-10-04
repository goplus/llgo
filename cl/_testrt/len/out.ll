; ModuleID = 'main'
source_filename = "main"

%main.data = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, %"github.com/goplus/llgo/internal/runtime.Slice" }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [5 x i8] c"hello", align 1

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
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 56)
  %3 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %4, 1
  %6 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i64 @"github.com/goplus/llgo/internal/runtime.ChanLen"(ptr %7)
  %9 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %10)
  %12 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 3
  %13 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %12, align 8
  %14 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %13, 1
  %15 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = call i64 @"github.com/goplus/llgo/internal/runtime.ChanCap"(ptr %16)
  %18 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 3
  %19 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %18, align 8
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %19, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 56)
  %22 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 1
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 8, i64 2)
  %25 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 2
  %26 = load ptr, ptr @_llgo_int, align 8
  %27 = load ptr, ptr @_llgo_string, align 8
  %28 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %28, i64 1)
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @5, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 5, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = load ptr, ptr @_llgo_int, align 8
  %35 = load ptr, ptr @_llgo_string, align 8
  %36 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %37, align 4
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %36, ptr %29, ptr %37)
  store %"github.com/goplus/llgo/internal/runtime.String" %33, ptr %38, align 8
  %39 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 3
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 24)
  %41 = getelementptr inbounds i64, ptr %40, i64 0
  store i64 1, ptr %41, align 4
  %42 = getelementptr inbounds i64, ptr %40, i64 1
  store i64 2, ptr %42, align 4
  %43 = getelementptr inbounds i64, ptr %40, i64 2
  store i64 3, ptr %43, align 4
  %44 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, i32 0, i32 0
  store ptr %40, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, i32 0, i32 1
  store i64 3, ptr %46, align 4
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, i32 0, i32 2
  store i64 3, ptr %47, align 4
  %48 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %44, align 8
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 0
  store ptr @5, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %49, i32 0, i32 1
  store i64 5, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %49, align 8
  store %"github.com/goplus/llgo/internal/runtime.String" %52, ptr %22, align 8
  store ptr %24, ptr %23, align 8
  store ptr %29, ptr %25, align 8
  store %"github.com/goplus/llgo/internal/runtime.Slice" %48, ptr %39, align 8
  %53 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 0
  %54 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %53, align 8
  %55 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %54, 1
  %56 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = call i64 @"github.com/goplus/llgo/internal/runtime.ChanLen"(ptr %57)
  %59 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %60)
  %62 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 3
  %63 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, align 8
  %64 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %63, 1
  %65 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = call i64 @"github.com/goplus/llgo/internal/runtime.ChanCap"(ptr %66)
  %68 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 3
  %69 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %68, align 8
  %70 = extractvalue %"github.com/goplus/llgo/internal/runtime.Slice" %69, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %61)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %64)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %67)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare i64 @"github.com/goplus/llgo/internal/runtime.ChanLen"(ptr)

declare i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr)

declare i64 @"github.com/goplus/llgo/internal/runtime.ChanCap"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64, i64)

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
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @0, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 7, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 0, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %18)
  %20 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %13, ptr %19, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %17, i1 false)
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @1, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 4, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr null, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 0, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %29)
  %31 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %24, ptr %30, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %28, i1 false)
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @2, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 5, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 0
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 1
  store i64 0, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %36, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %40)
  %42 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %35, ptr %41, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %39, i1 false)
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 0
  store ptr @3, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 1
  store i64 8, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %43, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr null, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 0, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %52 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %46, ptr %51, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %50, i1 false)
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 0
  store ptr @4, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 1
  store i64 4, ptr %55, align 4
  %56 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %53, align 8
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %58 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %57, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %20, ptr %58, align 8
  %59 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %57, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %31, ptr %59, align 8
  %60 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %57, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %42, ptr %60, align 8
  %61 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %57, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %52, ptr %61, align 8
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 0
  store ptr %57, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 1
  store i64 4, ptr %64, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 2
  store i64 4, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %56, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %66)
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %8, ptr %9, ptr %67, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %68)
  store ptr %68, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
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
