; ModuleID = 'github.com/goplus/llgo/cl/_testrt/result'
source_filename = "github.com/goplus/llgo/cl/_testrt/result"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/result.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.add"() {
_llgo_0:
  ret { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add$1", ptr null }
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.add$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define { { ptr, ptr }, i64 } @"github.com/goplus/llgo/cl/_testrt/result.add2"() {
_llgo_0:
  ret { { ptr, ptr }, i64 } { { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add2$1", ptr null }, i64 1 }
}

; Function Attrs: noinline
define i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$extract1"() #0 {
_llgo_0:
  %0 = call { { ptr, ptr }, i64 } @"github.com/goplus/llgo/cl/_testrt/result.add2"()
  %1 = alloca { { ptr, ptr }, i64 }, align 8
  store { { ptr, ptr }, i64 } %0, ptr %1, align 8
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load { { ptr, ptr }, i64 }, ptr %1, align 8
  %4 = extractvalue { { ptr, ptr }, i64 } %3, 1
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testrt/result.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/result.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/result.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/result.main"() {
_llgo_0:
  %0 = alloca { ptr, ptr }, align 8
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
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca { ptr, ptr }, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca { i64, i64, i64 }, align 8
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  %18 = alloca { { ptr, ptr }, i64 }, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca { ptr, ptr }, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  store ptr null, ptr %25, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  store ptr null, ptr %27, align 8
  %28 = alloca { i64, i64, i64 }, align 8
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %29, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %31 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.main$1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %30)
  store { ptr, ptr } %31, ptr %0, align 8
  %32 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = shl i64 %33, 17
  %35 = select i1 false, i64 0, i64 %34
  %36 = lshr i64 %33, 39
  %37 = select i1 false, i64 0, i64 %36
  %38 = or i64 %35, %37
  %39 = and i64 %38, 72057594037927935
  %40 = or i64 %39, -6557241057451442176
  store i64 %40, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %40)
  call void @runtime.ClobberPointerRegs()
  %41 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load { ptr, ptr }, ptr %0, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  call void @runtime.ClobberPointerRegs()
  %44 = extractvalue { ptr, ptr } %42, 1
  %45 = extractvalue { ptr, ptr } %42, 0
  %46 = call i64 %45(ptr %44, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %43)
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %48 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load i64, ptr %1, align 4
  %50 = and i64 %49, 72057594037927935
  %51 = lshr i64 %50, 17
  %52 = select i1 false, i64 0, i64 %51
  %53 = shl i64 %50, 39
  %54 = select i1 false, i64 0, i64 %53
  %55 = or i64 %52, %54
  %56 = and i64 %55, 72057594037927935
  %57 = xor i64 %56, 25399393228665167
  %58 = inttoptr i64 %57 to ptr
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
  %59 = call i32 (ptr, ...) @printf(ptr %58, i64 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %47)
  %60 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %61 = xor i64 %60, 25399393228665167
  %62 = shl i64 %61, 17
  %63 = select i1 false, i64 0, i64 %62
  %64 = lshr i64 %61, 39
  %65 = select i1 false, i64 0, i64 %64
  %66 = or i64 %63, %65
  %67 = and i64 %66, 72057594037927935
  %68 = or i64 %67, -6557241057451442176
  store i64 %68, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %68)
  call void @runtime.ClobberPointerRegs()
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %70 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.add"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %69)
  store { ptr, ptr } %70, ptr %11, align 8
  %71 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = load { ptr, ptr }, ptr %11, align 8
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  call void @runtime.ClobberPointerRegs()
  %74 = extractvalue { ptr, ptr } %72, 1
  %75 = extractvalue { ptr, ptr } %72, 0
  %76 = call i64 %75(ptr %74, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %73)
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %78 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %9, align 4
  %80 = and i64 %79, 72057594037927935
  %81 = lshr i64 %80, 17
  %82 = select i1 false, i64 0, i64 %81
  %83 = shl i64 %80, 39
  %84 = select i1 false, i64 0, i64 %83
  %85 = or i64 %82, %84
  %86 = and i64 %85, 72057594037927935
  %87 = xor i64 %86, 25399393228665167
  %88 = inttoptr i64 %87 to ptr
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 24)
  call void @runtime.ClobberPointerRegs()
  %89 = call i32 (ptr, ...) @printf(ptr %88, i64 %76)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %77)
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %91 = call i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$extract1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %90)
  store { { ptr, ptr }, i64 } zeroinitializer, ptr %18, align 8
  %92 = and i64 ptrtoint (ptr @2 to i64), 72057594037927935
  %93 = xor i64 %92, 25399393228665167
  %94 = shl i64 %93, 17
  %95 = select i1 false, i64 0, i64 %94
  %96 = lshr i64 %93, 39
  %97 = select i1 false, i64 0, i64 %96
  %98 = or i64 %95, %97
  %99 = and i64 %98, 72057594037927935
  %100 = or i64 %99, -6557241057451442176
  store i64 %100, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %100)
  call void @runtime.ClobberPointerRegs()
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %102 = call { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.add"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %101)
  store { ptr, ptr } %102, ptr %21, align 8
  %103 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %103)
  %104 = load { ptr, ptr }, ptr %21, align 8
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 16)
  call void @runtime.ClobberPointerRegs()
  %106 = extractvalue { ptr, ptr } %104, 1
  %107 = extractvalue { ptr, ptr } %104, 0
  %108 = call i64 %107(ptr %106, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %105)
  store i64 0, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store ptr null, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  call void @runtime.ClobberPointerRegs()
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %110 = call i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$extract1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %109)
  store { { ptr, ptr }, i64 } zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 24)
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  call void @runtime.ClobberPointerRegs()
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %112 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load i64, ptr %19, align 4
  %114 = and i64 %113, 72057594037927935
  %115 = lshr i64 %114, 17
  %116 = select i1 false, i64 0, i64 %115
  %117 = shl i64 %114, 39
  %118 = select i1 false, i64 0, i64 %117
  %119 = or i64 %116, %118
  %120 = and i64 %119, 72057594037927935
  %121 = xor i64 %120, 25399393228665167
  %122 = inttoptr i64 %121 to ptr
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 24)
  call void @runtime.ClobberPointerRegs()
  %123 = call i32 (ptr, ...) @printf(ptr %122, i64 %108, i64 %110)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %111)
  ret void
}

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testrt/result.main$1"() {
_llgo_0:
  ret { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.main$1$1", ptr null }
}

define i64 @"github.com/goplus/llgo/cl/_testrt/result.main$1$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/result.add$1")
  %4 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/result.add$1"(i64 %1, i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i64 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.add2$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/result.add2$1")
  %4 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/result.add2$1"(i64 %1, i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i64 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/lib/c.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i32 @printf(ptr, ...)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/result.main$1$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/result.main$1$1")
  %4 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/result.main$1$1"(i64 %1, i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i64 %4
}

attributes #0 = { noinline }
