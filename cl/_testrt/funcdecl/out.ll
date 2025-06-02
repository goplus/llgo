; ModuleID = 'github.com/goplus/llgo/cl/_testrt/funcdecl'
source_filename = "github.com/goplus/llgo/cl/_testrt/funcdecl"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/funcdecl.rtype" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testrt/funcdecl.init$guard" = global i1 false, align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/funcdecl.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [2 x i8] c"$f", align 1
@1 = private unnamed_addr constant [5 x i8] c"$data", align 1
@2 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/funcdecl", align 1
@3 = private unnamed_addr constant [68 x i8] c"type assertion any -> struct{$f func(); $data unsafe.Pointer} failed", align 1
@_llgo_string = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [4 x i8] c"demo", align 1
@5 = private unnamed_addr constant [5 x i8] c"hello", align 1

define void @"github.com/goplus/llgo/cl/_testrt/funcdecl.check"(ptr %0) {
_llgo_0:
  %1 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %2 = load ptr, ptr @_llgo_Pointer, align 8
  %3 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/funcdecl.demo", ptr null }, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %4, 1
  %7 = load { ptr, ptr }, ptr %0, align 8
  %8 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %9, 1
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 0
  %13 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 1
  %16 = load { ptr, ptr }, ptr %15, align 8
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 0
  %18 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %20 = load ptr, ptr @_llgo_string, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 68 }, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %21, 1
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr %24, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %24)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 1
  %26 = load { ptr, ptr }, ptr %25, align 8
  %27 = load { ptr, ptr }, ptr %0, align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %28, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %29, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(ptr %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %30 = extractvalue { ptr, ptr } %27, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %31 = extractvalue { ptr, ptr } %16, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %32 = extractvalue { ptr, ptr } %26, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %33 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %33, align 8
  %34 = call ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.closurePtr"(ptr %33)
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %35, align 8
  %36 = call ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.closurePtr"(ptr %35)
  %37 = icmp eq ptr %34, %36
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %38 = load ptr, ptr @_llgo_string, align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 68 }, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %39, 1
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, ptr %42, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %42)
  unreachable
}

define ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.closurePtr"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/funcdecl.rtype", ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  ret ptr %6
}

define void @"github.com/goplus/llgo/cl/_testrt/funcdecl.demo"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 4 }, ptr %0, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/funcdecl.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/funcdecl.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/funcdecl.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %0, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %1 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/funcdecl.demo", ptr null }, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/funcdecl.check"(ptr %1)
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/funcdecl.demo"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/funcdecl.demo"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/funcdecl.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 0, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 0, 2
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, ptr %11, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %10, ptr %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @_llgo_Pointer, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %15)
  store ptr %15, ptr @_llgo_Pointer, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 0, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 0, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 0, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 0, 2
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, ptr %24, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, ptr %25, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %24, ptr %25, i1 false)
  %27 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 2 }, ptr %28, align 8
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %29, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %27, ptr %28, ptr %26, i64 0, ptr %29, i1 false)
  %30 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %27, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %32 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %33 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %33, align 8
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %34, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %32, ptr %33, ptr %31, i64 8, ptr %34, i1 false)
  %35 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %32, align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %37 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %36, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %30, ptr %37, align 8
  %38 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %36, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %35, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %36, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 2, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 2, 2
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 42 }, ptr %42, align 8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, ptr %43, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %42, i64 16, ptr %43)
  store ptr %44, ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %45 = load ptr, ptr @_llgo_string, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %47, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)
