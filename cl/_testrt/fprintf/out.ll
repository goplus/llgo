; ModuleID = 'github.com/goplus/llgo/cl/_testrt/fprintf'
source_filename = "github.com/goplus/llgo/cl/_testrt/fprintf"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/fprintf.init$guard" = global i1 false, align 1
@__stderrp = external global ptr, align 8
@0 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/fprintf.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/fprintf.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/fprintf.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/fprintf.main"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca { i64, i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %9 = load ptr, ptr @__stderrp, align 8
  store ptr %9, ptr %0, align 8
  %10 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %18)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %20 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load ptr, ptr %0, align 8
  %22 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %1, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void (ptr, ptr, ...) @fprintf(ptr %21, ptr %32, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %19)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @unsafe.init()

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @fprintf(ptr, ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)
