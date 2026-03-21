; ModuleID = 'github.com/goplus/llgo/cl/_testrt/qsort'
source_filename = "github.com/goplus/llgo/cl/_testrt/qsort"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/qsort.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/qsort.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/qsort.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
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
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store ptr null, ptr %16, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  store ptr null, ptr %18, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca { i64, i64, i64 }, align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %22, align 8
  %23 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %23, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %23)
  %24 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %0, align 4
  %26 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %27 = mul i64 %26, 8
  %28 = call i64 @runtime.AdvanceHiddenPointer(i64 %25, i64 %27)
  store i64 %28, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %28)
  %29 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %0, align 4
  %31 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %32 = mul i64 %31, 8
  %33 = call i64 @runtime.AdvanceHiddenPointer(i64 %30, i64 %32)
  store i64 %33, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %33)
  %34 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %0, align 4
  %36 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %37 = mul i64 %36, 8
  %38 = call i64 @runtime.AdvanceHiddenPointer(i64 %35, i64 %37)
  store i64 %38, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %38)
  %39 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load i64, ptr %0, align 4
  %41 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %42 = mul i64 %41, 8
  %43 = call i64 @runtime.AdvanceHiddenPointer(i64 %40, i64 %42)
  store i64 %43, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %43)
  %44 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load i64, ptr %0, align 4
  %46 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %47 = mul i64 %46, 8
  %48 = call i64 @runtime.AdvanceHiddenPointer(i64 %45, i64 %47)
  store i64 %48, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %48)
  %49 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load i64, ptr %2, align 4
  %51 = alloca i64, align 8
  store i64 100, ptr %51, align 4
  call void @runtime.StoreHiddenPointee(i64 %50, ptr %51, i64 8)
  store i64 0, ptr %51, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %52 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load i64, ptr %4, align 4
  %54 = alloca i64, align 8
  store i64 8, ptr %54, align 4
  call void @runtime.StoreHiddenPointee(i64 %53, ptr %54, i64 8)
  store i64 0, ptr %54, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %6, align 4
  %57 = alloca i64, align 8
  store i64 23, ptr %57, align 4
  call void @runtime.StoreHiddenPointee(i64 %56, ptr %57, i64 8)
  store i64 0, ptr %57, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %8, align 4
  %60 = alloca i64, align 8
  store i64 2, ptr %60, align 4
  call void @runtime.StoreHiddenPointee(i64 %59, ptr %60, i64 8)
  store i64 0, ptr %60, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %61 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load i64, ptr %10, align 4
  %63 = alloca i64, align 8
  store i64 7, ptr %63, align 4
  call void @runtime.StoreHiddenPointee(i64 %62, ptr %63, i64 8)
  store i64 0, ptr %63, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %0, align 4
  %66 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %67 = mul i64 %66, 8
  %68 = call i64 @runtime.AdvanceHiddenPointer(i64 %65, i64 %67)
  store i64 %68, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %68)
  %69 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load i64, ptr %12, align 4
  %71 = and i64 %70, 72057594037927935
  %72 = lshr i64 %71, 17
  %73 = select i1 false, i64 0, i64 %72
  %74 = shl i64 %71, 39
  %75 = select i1 false, i64 0, i64 %74
  %76 = or i64 %73, %75
  %77 = and i64 %76, 72057594037927935
  %78 = xor i64 %77, 25399393228665167
  %79 = inttoptr i64 %78 to ptr
  store ptr %79, ptr %14, align 8
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %81 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load ptr, ptr %14, align 8
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %82, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsort.main$1")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %80)
  %83 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %0, align 4
  %85 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %85, i64 %84, i64 40)
  %86 = icmp eq ptr %85, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load [5 x i64], ptr %85, align 4
  store [5 x i64] zeroinitializer, ptr %85, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %88 = phi i64 [ -1, %_llgo_0 ], [ %89, %_llgo_2 ]
  %89 = add i64 %88, 1
  %90 = icmp slt i64 %89, 5
  br i1 %90, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %91 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load i64, ptr %0, align 4
  %93 = and i64 %92, 72057594037927935
  %94 = lshr i64 %93, 17
  %95 = select i1 false, i64 0, i64 %94
  %96 = shl i64 %93, 39
  %97 = select i1 false, i64 0, i64 %96
  %98 = or i64 %95, %97
  %99 = and i64 %98, 72057594037927935
  %100 = xor i64 %99, 25399393228665167
  %101 = inttoptr i64 %100 to ptr
  %102 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %89, i64 5)
  %103 = getelementptr inbounds i64, ptr %101, i64 %102
  %104 = icmp eq ptr %103, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %104)
  %105 = load i64, ptr %103, align 4
  %106 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %107 = xor i64 %106, 25399393228665167
  %108 = shl i64 %107, 17
  %109 = select i1 false, i64 0, i64 %108
  %110 = lshr i64 %107, 39
  %111 = select i1 false, i64 0, i64 %110
  %112 = or i64 %109, %111
  %113 = and i64 %112, 72057594037927935
  %114 = or i64 %113, -6557241057451442176
  store i64 %114, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %114)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  call void @runtime.ClobberPointerRegs()
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %116 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load i64, ptr %15, align 4
  %118 = and i64 %117, 72057594037927935
  %119 = lshr i64 %118, 17
  %120 = select i1 false, i64 0, i64 %119
  %121 = shl i64 %118, 39
  %122 = select i1 false, i64 0, i64 %121
  %123 = or i64 %120, %122
  %124 = and i64 %123, 72057594037927935
  %125 = xor i64 %124, 25399393228665167
  %126 = inttoptr i64 %125 to ptr
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store i64 0, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 24)
  call void @runtime.ClobberPointerRegs()
  %127 = call i32 (ptr, ...) @printf(ptr %126, i64 %105)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %115)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsort.main$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  %7 = alloca ptr, align 8
  store ptr %1, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %6, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %2, align 4
  %22 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %22, i64 %21, i64 8)
  %23 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %22, align 4
  store i64 0, ptr %22, align 4
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load ptr, ptr %7, align 8
  %27 = ptrtoint ptr %26 to i64
  %28 = and i64 %27, 72057594037927935
  %29 = xor i64 %28, 25399393228665167
  %30 = shl i64 %29, 17
  %31 = select i1 false, i64 0, i64 %30
  %32 = lshr i64 %29, 39
  %33 = select i1 false, i64 0, i64 %32
  %34 = or i64 %31, %33
  %35 = and i64 %34, 72057594037927935
  %36 = or i64 %35, -6557241057451442176
  store i64 %36, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %36)
  call void @runtime.ClobberPointerRegs()
  %37 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %4, align 4
  %39 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %39, i64 %38, i64 8)
  %40 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load i64, ptr %39, align 4
  store i64 0, ptr %39, align 4
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %42 = sub i64 %24, %41
  %43 = trunc i64 %42 to i32
  ret i32 %43
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @unsafe.init()

declare void @"github.com/goplus/lib/c.init"()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @qsort(ptr, i64, i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare i32 @printf(ptr, ...)
