; ModuleID = 'github.com/goplus/llgo/cl/_testrt/map'
source_filename = "github.com/goplus/llgo/cl/_testrt/map"

%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

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
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/map.main"() {
_llgo_0:
  %0 = call ptr @__llgo_load__llgo_int()
  %1 = call ptr @"__llgo_load_map[_llgo_int]_llgo_int"()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %1, i64 2)
  %3 = call ptr @"__llgo_load_map[_llgo_int]_llgo_int"()
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %3, ptr %2, ptr %4)
  store i64 100, ptr %5, align 4
  %6 = call ptr @"__llgo_load_map[_llgo_int]_llgo_int"()
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 7, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %6, ptr %2, ptr %7)
  store i64 29, ptr %8, align 4
  %9 = call ptr @"__llgo_load_map[_llgo_int]_llgo_int"()
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 23, ptr %10, align 4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr %9, ptr %2, ptr %10)
  %12 = load i64, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr @5, i64 %12)
  ret void
}

define linkonce ptr @__llgo_load__llgo_int() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define linkonce ptr @"__llgo_load_map[_llgo_int]_llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %4)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %5, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %7)
  %9 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %8, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %10)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %11, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %13, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %16, align 8
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %9, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %18, align 8
  %19 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %14, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 4, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 4, 2
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 37 }, i64 144, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %2, ptr %3, ptr %23, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %24)
  store ptr %24, ptr @"map[_llgo_int]_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %25 = load ptr, ptr @"map[_llgo_int]_llgo_int", align 8
  ret ptr %25
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare i32 @printf(ptr, ...)
