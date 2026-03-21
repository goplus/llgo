; ModuleID = 'github.com/goplus/llgo/cl/_testrt/unreachable'
source_filename = "github.com/goplus/llgo/cl/_testrt/unreachable"

@"github.com/goplus/llgo/cl/_testrt/unreachable.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/unreachable.foo"() {
_llgo_0:
  unreachable
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/unreachable.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/unreachable.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/unreachable.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/unreachable.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/unreachable.foo"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  %3 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %4 = xor i64 %3, 25399393228665167
  %5 = shl i64 %4, 17
  %6 = select i1 false, i64 0, i64 %5
  %7 = lshr i64 %4, 39
  %8 = select i1 false, i64 0, i64 %7
  %9 = or i64 %6, %8
  %10 = and i64 %9, 72057594037927935
  %11 = or i64 %10, -6557241057451442176
  store i64 %11, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %11)
  call void @runtime.ClobberPointerRegs()
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load i64, ptr %0, align 4
  %15 = and i64 %14, 72057594037927935
  %16 = lshr i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = shl i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = xor i64 %21, 25399393228665167
  %23 = inttoptr i64 %22 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = call i32 (ptr, ...) @printf(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %12)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i32 @printf(ptr, ...)

declare void @runtime.TouchConservativeSlot(ptr, i64)
