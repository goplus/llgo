; ModuleID = 'github.com/goplus/llgo/cl/_testrt/stdsync'
source_filename = "github.com/goplus/llgo/cl/_testrt/stdsync"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/stdsync.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [1 x i8] c"x", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_string" }, align 8
@1 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr @"*_llgo_int" }, align 8
@2 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@3 = private unnamed_addr constant [3 x i8] c"any", align 1
@4 = private unnamed_addr constant [11 x i8] c"load failed", align 1

define void @"github.com/goplus/llgo/cl/_testrt/stdsync.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/stdsync.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/stdsync.init$guard", align 1
  call void @sync.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/stdsync.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  %4 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %4, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %4)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load i64, ptr %0, align 4
  %8 = and i64 %7, 72057594037927935
  %9 = lshr i64 %8, 17
  %10 = select i1 false, i64 0, i64 %9
  %11 = shl i64 %8, 39
  %12 = select i1 false, i64 0, i64 %11
  %13 = or i64 %10, %12
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = inttoptr i64 %15 to ptr
  call void @"sync.(*Mutex).Lock"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %18 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %0, align 4
  %20 = and i64 %19, 72057594037927935
  %21 = lshr i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = shl i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = inttoptr i64 %27 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"sync.(*Mutex).Unlock"(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %17)
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %29)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %31, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %31, 1
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %33, align 4
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %33, 1
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"sync.(*Map).Store"(ptr %30, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 1 }, ptr %36, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %36, 1
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %39 = call { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } @"sync.(*Map).Load"(ptr %30, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %38)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %39, ptr %2, align 8
  %40 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %2, align 8
  %42 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %41, 1
  br i1 %42, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 11 }, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %43, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %44)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %45 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 }, ptr %2, align 8
  %47 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %46, 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %47, ptr %3, align 8
  %48 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %3, align 8
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, 0
  %51 = icmp eq ptr %50, @_llgo_int
  br i1 %51, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, 1
  %53 = load i64, ptr %52, align 4
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %54)
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %55 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr %50, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %55)
  unreachable

_llgo_5:                                          ; No predecessors!
  unreachable

_llgo_6:                                          ; No predecessors!
  unreachable
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @sync.init()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @"sync.(*Mutex).Lock"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"sync.(*Mutex).Unlock"(ptr)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"sync.(*Map).Store"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } @"sync.(*Map).Load"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")
