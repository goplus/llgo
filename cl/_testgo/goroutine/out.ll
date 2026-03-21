; ModuleID = 'github.com/goplus/llgo/cl/_testgo/goroutine'
source_filename = "github.com/goplus/llgo/cl/_testgo/goroutine"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/goroutine.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@1 = private unnamed_addr constant [16 x i8] c"Hello, goroutine", align 1
@2 = private unnamed_addr constant [1 x i8] c".", align 1

define void @"github.com/goplus/llgo/cl/_testgo/goroutine.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/goroutine.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/goroutine.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/goroutine.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { ptr, ptr }, align 8
  %3 = call i64 @runtime.AllocZHidden(i64 1)
  store i64 %3, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %3)
  %4 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %0, align 4
  %6 = alloca i1, align 1
  store i1 false, ptr %6, align 1
  call void @runtime.StoreHiddenPointee(i64 %5, ptr %6, i64 1)
  store i1 false, ptr %6, align 1
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %8 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %7, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %8, align 8
  %9 = alloca i8, i64 8, align 1
  %10 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %9, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/goroutine._llgo_routine$1", ptr %7)
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load i64, ptr %0, align 4
  %13 = and i64 %12, 72057594037927935
  %14 = lshr i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = shl i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = inttoptr i64 %20 to ptr
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %23 = getelementptr inbounds { ptr }, ptr %22, i32 0, i32 0
  store ptr %21, ptr %23, align 8
  %24 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/goroutine.main$1", ptr undef }, ptr %22, 1
  store { ptr, ptr } %24, ptr %2, align 8
  %25 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load { ptr, ptr }, ptr %2, align 8
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %28 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %27, i32 0, i32 0
  store { ptr, ptr } %26, ptr %28, align 8
  %29 = getelementptr inbounds { { ptr, ptr }, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %27, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 16 }, ptr %29, align 8
  %30 = alloca i8, i64 8, align 1
  %31 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %30, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/goroutine._llgo_routine$2", ptr %27)
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %32)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %33 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load i64, ptr %0, align 4
  %35 = alloca i1, align 1
  call void @runtime.LoadHiddenPointee(ptr %35, i64 %34, i64 1)
  %36 = icmp eq ptr %35, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i1, ptr %35, align 1
  store i1 false, ptr %35, align 1
  br i1 %37, label %_llgo_2, label %_llgo_1
}

define void @"github.com/goplus/llgo/cl/_testgo/goroutine.main$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %2, align 8
  call void @runtime.ClobberPointerRegs()
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %4 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load { ptr }, ptr %0, align 8
  %8 = extractvalue { ptr } %7, 0
  store i1 true, ptr %8, align 1
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define ptr @"github.com/goplus/llgo/cl/_testgo/goroutine._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String" } %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeAllocU"(ptr %0)
  ret ptr null
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeAllocU"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

define ptr @"github.com/goplus/llgo/cl/_testgo/goroutine._llgo_routine$2"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr }, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr }, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %1, 0
  %3 = extractvalue { { ptr, ptr }, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %1, 1
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = extractvalue { ptr, ptr } %2, 0
  call void %5(ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeAllocU"(ptr %0)
  ret ptr null
}

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)
