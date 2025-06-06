; ModuleID = 'github.com/goplus/llgo/cl/_testrt/map'
source_filename = "github.com/goplus/llgo/cl/_testrt/map"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/map.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@"map[_llgo_int]_llgo_int" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [37 x i8] c"github.com/goplus/llgo/cl/_testrt/map", align 1
@5 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/map.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/map.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/map.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/map.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/map.main"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %1, i64 2)
  %3 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %3, ptr %2, ptr %4)
  store i64 100, ptr %5, align 4
  %6 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 7, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %6, ptr %2, ptr %7)
  store i64 29, ptr %8, align 4
  %9 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %10, align 4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr %9, ptr %2, ptr %10)
  %12 = load i64, ptr %11, align 4
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store i64 %12, ptr %13, align 4
  %14 = call i32 @printf(ptr @5, ptr %13)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/map.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %7)
  %9 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %9, ptr %10, ptr %8, i64 0, ptr %11, i1 false)
  %12 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %9, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %13)
  %15 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %16, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %15, ptr %16, ptr %14, i64 8, ptr %17, i1 false)
  %18 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %19)
  %21 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %22, align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %23, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %21, ptr %22, ptr %20, i64 72, ptr %23, i1 false)
  %24 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %26 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %27, align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %28, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %26, ptr %27, ptr %25, i64 136, ptr %28, i1 false)
  %29 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %26, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %31 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %30, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %31, align 8
  %32 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %30, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %18, ptr %32, align 8
  %33 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %30, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %24, ptr %33, align 8
  %34 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %30, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %29, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %30, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 4, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 4, 2
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 37 }, ptr %38, align 8
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, ptr %39, align 8
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %38, i64 144, ptr %39)
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %5, ptr %6, ptr %40, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %41)
  store ptr %41, ptr @"map[_llgo_int]_llgo_int", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare i32 @printf(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")
