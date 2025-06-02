; ModuleID = 'github.com/goplus/llgo/cl/_testrt/clear'
source_filename = "github.com/goplus/llgo/cl/_testrt/clear"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/clear.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@"[]_llgo_int" = linkonce global ptr null, align 8
@"map[_llgo_int]_llgo_int" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testrt/clear", align 1

define void @"github.com/goplus/llgo/cl/_testrt/clear.Clear"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 4, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 4, 2
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = load ptr, ptr @"[]_llgo_int", align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceClear"(ptr %9, ptr %10)
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %12 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %12, i64 4)
  %14 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %15, align 4
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %14, ptr %13, ptr %15)
  store i64 1, ptr %16, align 4
  %17 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %18, align 4
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %17, ptr %13, ptr %18)
  store i64 2, ptr %19, align 4
  %20 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %21, align 4
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %20, ptr %13, ptr %21)
  store i64 3, ptr %22, align 4
  %23 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 4, ptr %24, align 4
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %23, ptr %13, ptr %24)
  store i64 4, ptr %25, align 4
  %26 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapClear"(ptr %26, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/clear.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/clear.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/clear.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/clear.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/cl/_testrt/clear.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @"[]_llgo_int", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %5)
  store ptr %6, ptr @"[]_llgo_int", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %7 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %11)
  %13 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %14, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %15, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %13, ptr %14, ptr %12, i64 0, ptr %15, i1 false)
  %16 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %17)
  %19 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %20, align 8
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %21, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %19, ptr %20, ptr %18, i64 8, ptr %21, i1 false)
  %22 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %19, align 8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %23)
  %25 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %27, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %25, ptr %26, ptr %24, i64 72, ptr %27, i1 false)
  %28 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %25, align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %30 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %31, align 8
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %32, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %30, ptr %31, ptr %29, i64 136, ptr %32, i1 false)
  %33 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %30, align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %35 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %34, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %16, ptr %35, align 8
  %36 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %34, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %22, ptr %36, align 8
  %37 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %34, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %28, ptr %37, align 8
  %38 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %34, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %33, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %34, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 4, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 4, 2
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 39 }, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, ptr %43, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %42, i64 144, ptr %43)
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %9, ptr %10, ptr %44, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %45)
  store ptr %45, ptr @"map[_llgo_int]_llgo_int", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SliceClear"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapClear"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)
