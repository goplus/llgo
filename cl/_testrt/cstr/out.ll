; ModuleID = 'github.com/goplus/llgo/cl/_testrt/cstr'
source_filename = "github.com/goplus/llgo/cl/_testrt/cstr"

@"github.com/goplus/llgo/cl/_testrt/cstr.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [14 x i8] c"Hello, world\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/cstr.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/cstr.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/cstr.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/cstr.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %3 = xor i64 %2, 25399393228665167
  %4 = shl i64 %3, 17
  %5 = select i1 false, i64 0, i64 %4
  %6 = lshr i64 %3, 39
  %7 = select i1 false, i64 0, i64 %6
  %8 = or i64 %5, %7
  %9 = and i64 %8, 72057594037927935
  %10 = or i64 %9, -6557241057451442176
  store i64 %10, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %10)
  call void @runtime.ClobberPointerRegs()
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %12 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load i64, ptr %0, align 4
  %14 = and i64 %13, 72057594037927935
  %15 = lshr i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = shl i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = xor i64 %20, 25399393228665167
  %22 = inttoptr i64 %21 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void (ptr, ...) @printf(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %11)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @unsafe.init()

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)
