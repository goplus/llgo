; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closure'
source_filename = "github.com/goplus/llgo/cl/_testrt/closure"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/closure.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/closure.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closure.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closure.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { ptr, ptr }, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/closure.main$1"(i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  %4 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %4, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %4)
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %0, align 4
  %7 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closure.main$2", ptr null }, ptr %7, align 8
  call void @runtime.StoreHiddenPointee(i64 %6, ptr %7, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  %8 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load i64, ptr %0, align 4
  %10 = and i64 %9, 72057594037927935
  %11 = lshr i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = shl i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = inttoptr i64 %17 to ptr
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %20 = getelementptr inbounds { ptr }, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$3", ptr undef }, ptr %19, 1
  store { ptr, ptr } %21, ptr %2, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load { ptr, ptr }, ptr %2, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %25 = extractvalue { ptr, ptr } %23, 1
  %26 = extractvalue { ptr, ptr } %23, 0
  call void %26(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %24)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca { i64, i64, i64 }, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  %12 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  call void @runtime.ClobberPointerRegs()
  %33 = call i32 (ptr, ...) @printf(ptr %32, i64 %0, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main$2"(i64 %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr null, ptr %9, align 8
  %10 = alloca { i64, i64, i64 }, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  %12 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  call void @runtime.ClobberPointerRegs()
  %33 = call i32 (ptr, ...) @printf(ptr %32, i64 %0, i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %21)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closure.main$3"(ptr %0) {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load { ptr }, ptr %0, align 8
  %4 = extractvalue { ptr } %3, 0
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load { ptr, ptr }, ptr %4, align 8
  store { ptr, ptr } %6, ptr %1, align 8
  %7 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load { ptr, ptr }, ptr %1, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  %10 = extractvalue { ptr, ptr } %8, 1
  %11 = extractvalue { ptr, ptr } %8, 0
  call void %11(ptr %10, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closure.main$2"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/closure.main$2")
  tail call void @"github.com/goplus/llgo/cl/_testrt/closure.main$2"(i64 %1, i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @runtime.ClobberPointerRegs()

declare i32 @printf(ptr, ...)
