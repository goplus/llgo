; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testrt/clear'
source_filename = "github.com/goplus/llgo/compiler/cl/_testrt/clear"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/compiler/cl/_testrt/clear.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@"[]_llgo_int" = linkonce global ptr null, align 8
@"map[_llgo_int]_llgo_int" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/compiler/cl/_testrt/clear", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testrt/clear.Clear"() {
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceClear"(ptr %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %10, i64 4)
  %12 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %13, align 4
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %12, ptr %11, ptr %13)
  store i64 1, ptr %14, align 4
  %15 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %15, ptr %11, ptr %16)
  store i64 2, ptr %17, align 4
  %18 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %19, align 4
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %18, ptr %11, ptr %19)
  store i64 3, ptr %20, align 4
  %21 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 4, ptr %22, align 4
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %21, ptr %11, ptr %22)
  store i64 4, ptr %23, align 4
  %24 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapClear"(ptr %24, ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/clear.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/clear.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/clear.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testrt/clear.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/compiler/cl/_testrt/clear.init$after"() {
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
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %12, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %14)
  %16 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %15, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %17)
  %19 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %18, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %21 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %20, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %23 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %22, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %23, align 8
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %22, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %16, ptr %24, align 8
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %22, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %19, ptr %25, align 8
  %26 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %22, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %21, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 4, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 4, 2
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 48 }, i64 144, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %9, ptr %10, ptr %30, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %31)
  store ptr %31, ptr @"map[_llgo_int]_llgo_int", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SliceClear"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapClear"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)
