; ModuleID = 'github.com/goplus/llgo/cl/_testrt/funcdecl'
source_filename = "github.com/goplus/llgo/cl/_testrt/funcdecl"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/funcdecl.rtype" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/funcdecl.init$guard" = global i1 false, align 1
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1677290994, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr @"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields", i64 2, i64 2 } }, align 8
@0 = private unnamed_addr constant [42 x i8] c"struct { $f func(); $data unsafe.Pointer }", align 1
@"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -940376241, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 42 }, ptr null }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, align 8
@1 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/funcdecl", align 1
@2 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 82187, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$in", i64 0, i64 0 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$out", i64 0, i64 0 } }, align 8
@3 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 173441, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$in" = weak_odr global [0 x ptr] zeroinitializer, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$out" = weak_odr global [0 x ptr] zeroinitializer, align 8
@4 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 18, i8 8, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@5 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 9103, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields" = weak_odr global [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@6 = private unnamed_addr constant [68 x i8] c"type assertion any -> struct{$f func(); $data unsafe.Pointer} failed", align 1
@_llgo_string = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 17, i8 0, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr @"*_llgo_string" }, align 8
@7 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 9101, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@8 = private unnamed_addr constant [4 x i8] c"demo", align 1
@9 = private unnamed_addr constant [5 x i8] c"hello", align 1

define void @"github.com/goplus/llgo/cl/_testrt/funcdecl.check"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/funcdecl.demo", ptr null }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %1, 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %0, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %3, 1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, 0
  %6 = icmp eq ptr %5, @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, 1
  %8 = load { ptr, ptr }, ptr %7, align 8
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 0
  %10 = icmp eq ptr %9, @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"
  br i1 %10, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 68 }, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %11, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, 1
  %14 = load { ptr, ptr }, ptr %13, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %15 = extractvalue { ptr, ptr } %0, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %16 = extractvalue { ptr, ptr } %8, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %17 = extractvalue { ptr, ptr } %14, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %18 = call ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.closurePtr"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  %19 = call ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.closurePtr"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  %20 = icmp eq ptr %18, %19
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 68 }, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %21, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  unreachable
}

define ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.closurePtr"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/funcdecl.rtype", ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

define void @"github.com/goplus/llgo/cl/_testrt/funcdecl.demo"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/funcdecl.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/funcdecl.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/funcdecl.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/cl/_testrt/funcdecl.check"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/funcdecl.demo", ptr null })
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/funcdecl.demo"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/funcdecl.demo"()
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")
