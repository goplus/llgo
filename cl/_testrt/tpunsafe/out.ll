; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpunsafe'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpunsafe"

%"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]" = type { i1, i32, %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]" }
%"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]" = type { i1, i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]" = type { i64, i32, %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]" }
%"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]" = type { i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/tpunsafe.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"have", align 1
@1 = private unnamed_addr constant [4 x i8] c"want", align 1
@2 = private unnamed_addr constant [20 x i8] c"unsafe.Alignof error", align 1
@_llgo_string = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [21 x i8] c"unsafe.Offsetof error", align 1

define void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/tpunsafe.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/tpunsafe.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 12)
  call void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[bool]).check"(ptr %0, i64 1, i64 8, i64 1)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  call void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[int64]).check"(ptr %1, i64 8, i64 16, i64 8)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[bool]).check"(ptr %0, i64 %1, i64 %2, i64 %3) {
_llgo_0:
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]", ptr %0, i32 0, i32 2
  %5 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]", ptr %4, align 1
  %6 = icmp ne i64 1, %1
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @__llgo_load__llgo_string()
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 20 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]", ptr %0, i32 0, i32 2
  %12 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]", ptr %11, align 1
  %13 = icmp ne i64 8, %2
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call ptr @__llgo_load__llgo_string()
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[bool]", ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[bool]", ptr %18, i32 0, i32 1
  %20 = load i1, ptr %19, align 1
  %21 = icmp ne i64 1, %3
  br i1 %21, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = call ptr @__llgo_load__llgo_string()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 }, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %22, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr %23, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %25)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  ret void
}

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpunsafe.(*M[int64]).check"(ptr %0, i64 %1, i64 %2, i64 %3) {
_llgo_0:
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]", ptr %0, i32 0, i32 2
  %5 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]", ptr %4, align 4
  %6 = icmp ne i64 8, %1
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = call ptr @__llgo_load__llgo_string()
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 20 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]", ptr %0, i32 0, i32 2
  %12 = load %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]", ptr %11, align 4
  %13 = icmp ne i64 16, %2
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %14 = call ptr @__llgo_load__llgo_string()
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.M[int64]", ptr %0, i32 0, i32 2
  %19 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpunsafe.N[int64]", ptr %18, i32 0, i32 1
  %20 = load i64, ptr %19, align 4
  %21 = icmp ne i64 8, %3
  br i1 %21, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = call ptr @__llgo_load__llgo_string()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 }, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %22, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr %23, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %25)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
