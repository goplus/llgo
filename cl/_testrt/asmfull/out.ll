; ModuleID = 'github.com/goplus/llgo/cl/_testrt/asmfull'
source_filename = "github.com/goplus/llgo/cl/_testrt/asmfull"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testrt/asmfull.init$guard" = global i1 false, align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_any = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testrt/asmfull", align 1
@"map[_llgo_string]_llgo_any" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@2 = private unnamed_addr constant [4 x i8] c"keys", align 1
@3 = private unnamed_addr constant [5 x i8] c"elems", align 1
@4 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@_llgo_int = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [5 x i8] c"value", align 1
@6 = private unnamed_addr constant [7 x i8] c"Result:", align 1
@7 = private unnamed_addr constant [1 x i8] c"x", align 1
@8 = private unnamed_addr constant [1 x i8] c"y", align 1

define void @"github.com/goplus/llgo/cl/_testrt/asmfull.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/asmfull.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/asmfull.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/asmfull.main"() {
_llgo_0:
  call void asm sideeffect "nop", ""()
  %0 = call ptr @__llgo_load__llgo_string()
  %1 = call ptr @__llgo_load__llgo_any()
  %2 = call ptr @"__llgo_load_map[_llgo_string]_llgo_any"()
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %2, i64 1)
  %4 = call ptr @__llgo_load__llgo_int()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr inttoptr (i64 42 to ptr), 1
  %7 = call ptr @"__llgo_load_map[_llgo_string]_llgo_any"()
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %8, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %7, ptr %3, ptr %8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %9, align 8
  call void asm sideeffect "# test value ${0}", "r"(i64 42)
  %10 = call ptr @"__llgo_load_map[_llgo_string]_llgo_any"()
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %10, i64 1)
  %12 = call ptr @__llgo_load__llgo_int()
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr inttoptr (i64 42 to ptr), 1
  %15 = call ptr @"__llgo_load_map[_llgo_string]_llgo_any"()
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %16, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %15, ptr %11, ptr %16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr %17, align 8
  %18 = call i64 asm sideeffect "mov $0, ${1}", "=&r,r"(i64 42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"__llgo_load_map[_llgo_string]_llgo_any"()
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %19, i64 2)
  %21 = call ptr @__llgo_load__llgo_int()
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %21, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr inttoptr (i64 25 to ptr), 1
  %24 = call ptr @"__llgo_load_map[_llgo_string]_llgo_any"()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr %25, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %24, ptr %20, ptr %25)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr %26, align 8
  %27 = call ptr @__llgo_load__llgo_int()
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr inttoptr (i64 17 to ptr), 1
  %30 = call ptr @"__llgo_load_map[_llgo_string]_llgo_any"()
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 }, ptr %31, align 8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %30, ptr %20, ptr %31)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %32, align 8
  %33 = call i64 asm sideeffect "# calc ${1} + ${2} -> $0", "=&r,r,r"(i64 25, i64 17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %33)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce ptr @__llgo_load__llgo_string() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define linkonce ptr @__llgo_load__llgo_any() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_any, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5)
  store ptr %6, ptr @_llgo_any, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = load ptr, ptr @_llgo_any, align 8
  ret ptr %7
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"__llgo_load_map[_llgo_string]_llgo_any"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_string]_llgo_any", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %8)
  %10 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 }, ptr %9, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %11)
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr %12, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 0, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 0, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %18)
  %20 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr %19, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %22 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr %21, i64 264, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %10, ptr %24, align 8
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %25, align 8
  %26 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %20, ptr %26, align 8
  %27 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %22, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 4, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 4, 2
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 41 }, i64 272, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %2, ptr %7, ptr %31, i64 12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %32)
  store ptr %32, ptr @"map[_llgo_string]_llgo_any", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %33 = load ptr, ptr @"map[_llgo_string]_llgo_any", align 8
  ret ptr %33
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)
