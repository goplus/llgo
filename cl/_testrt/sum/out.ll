; ModuleID = 'github.com/goplus/llgo/cl/_testrt/sum'
source_filename = "github.com/goplus/llgo/cl/_testrt/sum"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/sum.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/sum.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/sum.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/sum.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/sum.main"() {
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
  %12 = alloca { i64, i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca { i64, i64, i64 }, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %19, align 8
  %20 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %21 = xor i64 %20, 25399393228665167
  %22 = shl i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = lshr i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = or i64 %27, -6557241057451442176
  store i64 %28, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %28)
  call void @runtime.ClobberPointerRegs()
  %29 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %29, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %29)
  %30 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = load i64, ptr %2, align 4
  %32 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 4)
  %33 = mul i64 %32, 8
  %34 = call i64 @runtime.AdvanceHiddenPointer(i64 %31, i64 %33)
  store i64 %34, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %34)
  %35 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %4, align 4
  %37 = alloca i64, align 8
  store i64 1, ptr %37, align 4
  call void @runtime.StoreHiddenPointee(i64 %36, ptr %37, i64 8)
  store i64 0, ptr %37, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %38 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load i64, ptr %2, align 4
  %40 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 4)
  %41 = mul i64 %40, 8
  %42 = call i64 @runtime.AdvanceHiddenPointer(i64 %39, i64 %41)
  store i64 %42, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %42)
  %43 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load i64, ptr %6, align 4
  %45 = alloca i64, align 8
  store i64 2, ptr %45, align 4
  call void @runtime.StoreHiddenPointee(i64 %44, ptr %45, i64 8)
  store i64 0, ptr %45, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %46 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load i64, ptr %2, align 4
  %48 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 4)
  %49 = mul i64 %48, 8
  %50 = call i64 @runtime.AdvanceHiddenPointer(i64 %47, i64 %49)
  store i64 %50, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %50)
  %51 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load i64, ptr %8, align 4
  %53 = alloca i64, align 8
  store i64 3, ptr %53, align 4
  call void @runtime.StoreHiddenPointee(i64 %52, ptr %53, i64 8)
  store i64 0, ptr %53, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %54 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %2, align 4
  %56 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 4)
  %57 = mul i64 %56, 8
  %58 = call i64 @runtime.AdvanceHiddenPointer(i64 %55, i64 %57)
  store i64 %58, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %58)
  %59 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load i64, ptr %10, align 4
  %61 = alloca i64, align 8
  store i64 4, ptr %61, align 4
  call void @runtime.StoreHiddenPointee(i64 %60, ptr %61, i64 8)
  store i64 0, ptr %61, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %62 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = load i64, ptr %2, align 4
  %64 = and i64 %63, 72057594037927935
  %65 = lshr i64 %64, 17
  %66 = select i1 false, i64 0, i64 %65
  %67 = shl i64 %64, 39
  %68 = select i1 false, i64 0, i64 %67
  %69 = or i64 %66, %68
  %70 = and i64 %69, 72057594037927935
  %71 = xor i64 %70, 25399393228665167
  %72 = inttoptr i64 %71 to ptr
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %72, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 4, 1
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, i64 4, 2
  %76 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, ptr %76, align 8
  %77 = icmp eq ptr %76, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %76, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, ptr %13, align 8
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, 0
  %80 = ptrtoint ptr %79 to i64
  %81 = and i64 %80, 72057594037927935
  %82 = xor i64 %81, 25399393228665167
  %83 = shl i64 %82, 17
  %84 = select i1 false, i64 0, i64 %83
  %85 = lshr i64 %82, 39
  %86 = select i1 false, i64 0, i64 %85
  %87 = or i64 %84, %86
  %88 = and i64 %87, 72057594037927935
  %89 = or i64 %88, -6557241057451442176
  %90 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, 1
  %91 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, 2
  %92 = insertvalue { i64, i64, i64 } undef, i64 %89, 0
  %93 = insertvalue { i64, i64, i64 } %92, i64 %90, 1
  %94 = insertvalue { i64, i64, i64 } %93, i64 %91, 2
  store { i64, i64, i64 } %94, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %76, align 8
  call void @runtime.TouchConservativeSlot(ptr %76, i64 24)
  call void @runtime.ClobberPointerRegs()
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %96 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  %98 = call i64 @"github.com/goplus/llgo/cl/_testrt/sum.sum"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %95)
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %100 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load i64, ptr %0, align 4
  %102 = and i64 %101, 72057594037927935
  %103 = lshr i64 %102, 17
  %104 = select i1 false, i64 0, i64 %103
  %105 = shl i64 %102, 39
  %106 = select i1 false, i64 0, i64 %105
  %107 = or i64 %104, %106
  %108 = and i64 %107, 72057594037927935
  %109 = xor i64 %108, 25399393228665167
  %110 = inttoptr i64 %109 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 24)
  call void @runtime.ClobberPointerRegs()
  %111 = call i32 (ptr, ...) @printf(ptr %110, i64 %98)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %99)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/sum.sum"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi i64 [ 0, %_llgo_0 ], [ %28, %_llgo_2 ]
  %6 = phi i64 [ -1, %_llgo_0 ], [ %7, %_llgo_2 ]
  %7 = add i64 %6, 1
  %8 = icmp slt i64 %7, %4
  br i1 %8, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %11 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %7, i64 %10)
  %12 = getelementptr inbounds i64, ptr %9, i64 %11
  %13 = ptrtoint ptr %12 to i64
  %14 = and i64 %13, 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %1, align 4
  %25 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %25, i64 %24, i64 8)
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %25, align 4
  store i64 0, ptr %25, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %28 = add i64 %5, %27
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret i64 %5
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i64 @runtime.AllocZHidden(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i32 @printf(ptr, ...)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)
