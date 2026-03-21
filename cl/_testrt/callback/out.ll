; ModuleID = 'github.com/goplus/llgo/cl/_testrt/callback'
source_filename = "github.com/goplus/llgo/cl/_testrt/callback"

@"github.com/goplus/llgo/cl/_testrt/callback.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"Hello\0A\00", align 1
@1 = private unnamed_addr constant [10 x i8] c"callback\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/callback.callback"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, 72057594037927935
  %4 = xor i64 %3, 25399393228665167
  %5 = shl i64 %4, 17
  %6 = select i1 false, i64 0, i64 %5
  %7 = lshr i64 %4, 39
  %8 = select i1 false, i64 0, i64 %7
  %9 = or i64 %6, %8
  %10 = and i64 %9, 72057594037927935
  %11 = or i64 %10, -6557241057451442176
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback$hiddenparam"(i64 %11, { ptr, ptr } %1)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  ret void
}

; Function Attrs: noinline
define void @"github.com/goplus/llgo/cl/_testrt/callback.callback$hiddenparam"(i64 %0, { ptr, ptr } %1) #0 {
_llgo_0:
  %2 = alloca ptr, align 8
  %3 = and i64 %0, 72057594037927935
  %4 = lshr i64 %3, 17
  %5 = select i1 false, i64 0, i64 %4
  %6 = shl i64 %3, 39
  %7 = select i1 false, i64 0, i64 %6
  %8 = or i64 %5, %7
  %9 = and i64 %8, 72057594037927935
  %10 = xor i64 %9, 25399393228665167
  %11 = inttoptr i64 %10 to ptr
  store ptr %11, ptr %2, align 8
  call void @runtime.ClobberPointerRegs()
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %13 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load ptr, ptr %2, align 8
  %15 = extractvalue { ptr, ptr } %1, 1
  %16 = extractvalue { ptr, ptr } %1, 0
  call void %16(ptr %15, ptr %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %12)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/callback.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/callback.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %5 = xor i64 %4, 25399393228665167
  %6 = shl i64 %5, 17
  %7 = select i1 false, i64 0, i64 %6
  %8 = lshr i64 %5, 39
  %9 = select i1 false, i64 0, i64 %8
  %10 = or i64 %7, %9
  %11 = and i64 %10, 72057594037927935
  %12 = or i64 %11, -6557241057451442176
  store i64 %12, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %12)
  call void @runtime.ClobberPointerRegs()
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %14 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load i64, ptr %0, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %16 = alloca i64, align 8
  store i64 %15, ptr %16, align 4
  %17 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load i64, ptr %16, align 4
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback$hiddenparam"(i64 %18, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %13)
  call void @runtime.ClobberPointerRegs()
  %19 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %20 = xor i64 %19, 25399393228665167
  %21 = shl i64 %20, 17
  %22 = select i1 false, i64 0, i64 %21
  %23 = lshr i64 %20, 39
  %24 = select i1 false, i64 0, i64 %23
  %25 = or i64 %22, %24
  %26 = and i64 %25, 72057594037927935
  %27 = or i64 %26, -6557241057451442176
  store i64 %27, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %27)
  call void @runtime.ClobberPointerRegs()
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %29 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %2, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %31 = alloca i64, align 8
  store i64 %30, ptr %31, align 4
  %32 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load i64, ptr %31, align 4
  store i64 0, ptr %31, align 4
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  call void @"github.com/goplus/llgo/cl/_testrt/callback.callback$hiddenparam"(i64 %33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print", ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %28)
  call void @runtime.ClobberPointerRegs()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %0) {
_llgo_0:
  %1 = alloca ptr, align 8
  store ptr %0, ptr %1, align 8
  call void @runtime.ClobberPointerRegs()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %3 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load ptr, ptr %1, align 8
  %5 = call i32 (ptr, ...) @printf(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret void
}

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @"github.com/goplus/lib/c.init"()

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/callback.print")
  tail call void @"github.com/goplus/llgo/cl/_testrt/callback.print"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i32 @printf(ptr, ...)

attributes #0 = { noinline }
