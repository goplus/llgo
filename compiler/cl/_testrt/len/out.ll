; ModuleID = 'main'
source_filename = "main"

%main.data = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %3 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, 1
  %6 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr %7)
  %9 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %10)
  %12 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 3
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %12, align 8
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, 1
  %15 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr %16)
  %18 = getelementptr inbounds %main.data, ptr %2, i32 0, i32 3
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %18, align 8
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %22 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 1
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 2)
  %25 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 2
  %26 = load ptr, ptr @_llgo_int, align 8
  %27 = load ptr, ptr @_llgo_string, align 8
  %28 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %28, i64 1)
  %30 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %31, align 4
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %30, ptr %29, ptr %31)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %32, align 8
  %33 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 3
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %35 = getelementptr inbounds i64, ptr %34, i64 0
  store i64 1, ptr %35, align 4
  %36 = getelementptr inbounds i64, ptr %34, i64 1
  store i64 2, ptr %36, align 4
  %37 = getelementptr inbounds i64, ptr %34, i64 2
  store i64 3, ptr %37, align 4
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %34, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 3, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 3, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %22, align 8
  store ptr %24, ptr %23, align 8
  store ptr %29, ptr %25, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, ptr %33, align 8
  %41 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 0
  %42 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %41, align 8
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %42, 1
  %44 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr %45)
  %47 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %48)
  %50 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 3
  %51 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %50, align 8
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, 1
  %53 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr %54)
  %56 = getelementptr inbounds %main.data, ptr %21, i32 0, i32 3
  %57 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %56, align 8
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %10)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %11, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %13)
  %15 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %14, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %16)
  %18 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %17, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %20 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %19, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %22, align 8
  %23 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %15, ptr %23, align 8
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %18, ptr %24, align 8
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %20, ptr %25, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 4, 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 4, 2
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, i64 208, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %8, ptr %9, ptr %29, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %30)
  store ptr %30, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)
