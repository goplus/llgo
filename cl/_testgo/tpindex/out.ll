; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tpindex'
source_filename = "github.com/goplus/llgo/cl/_testgo/tpindex"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/tpindex.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/tpindex.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tpindex.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tpindex.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tpindex.main"() {
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
  %14 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %14, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %14)
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load i64, ptr %0, align 4
  %17 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %18 = mul i64 %17, 8
  %19 = call i64 @runtime.AdvanceHiddenPointer(i64 %16, i64 %18)
  store i64 %19, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %19)
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %2, align 4
  %22 = alloca i64, align 8
  store i64 1, ptr %22, align 4
  call void @runtime.StoreHiddenPointee(i64 %21, ptr %22, i64 8)
  store i64 0, ptr %22, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load i64, ptr %0, align 4
  %25 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %26 = mul i64 %25, 8
  %27 = call i64 @runtime.AdvanceHiddenPointer(i64 %24, i64 %26)
  store i64 %27, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %27)
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %4, align 4
  %30 = alloca i64, align 8
  store i64 3, ptr %30, align 4
  call void @runtime.StoreHiddenPointee(i64 %29, ptr %30, i64 8)
  store i64 0, ptr %30, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %31 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load i64, ptr %0, align 4
  %33 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %34 = mul i64 %33, 8
  %35 = call i64 @runtime.AdvanceHiddenPointer(i64 %32, i64 %34)
  store i64 %35, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %35)
  %36 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %6, align 4
  %38 = alloca i64, align 8
  store i64 5, ptr %38, align 4
  call void @runtime.StoreHiddenPointee(i64 %37, ptr %38, i64 8)
  store i64 0, ptr %38, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load i64, ptr %0, align 4
  %41 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %42 = mul i64 %41, 8
  %43 = call i64 @runtime.AdvanceHiddenPointer(i64 %40, i64 %42)
  store i64 %43, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %43)
  %44 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load i64, ptr %8, align 4
  %46 = alloca i64, align 8
  store i64 2, ptr %46, align 4
  call void @runtime.StoreHiddenPointee(i64 %45, ptr %46, i64 8)
  store i64 0, ptr %46, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %0, align 4
  %49 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %50 = mul i64 %49, 8
  %51 = call i64 @runtime.AdvanceHiddenPointer(i64 %48, i64 %50)
  store i64 %51, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %51)
  %52 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load i64, ptr %10, align 4
  %54 = alloca i64, align 8
  store i64 4, ptr %54, align 4
  call void @runtime.StoreHiddenPointee(i64 %53, ptr %54, i64 8)
  store i64 0, ptr %54, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %0, align 4
  %57 = and i64 %56, 72057594037927935
  %58 = lshr i64 %57, 17
  %59 = select i1 false, i64 0, i64 %58
  %60 = shl i64 %57, 39
  %61 = select i1 false, i64 0, i64 %60
  %62 = or i64 %59, %61
  %63 = and i64 %62, 72057594037927935
  %64 = xor i64 %63, 25399393228665167
  %65 = inttoptr i64 %64 to ptr
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %65, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 5, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 5, 2
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, ptr %69, align 8
  %70 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %69, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, ptr %13, align 8
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, 0
  %73 = ptrtoint ptr %72 to i64
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = shl i64 %75, 17
  %77 = select i1 false, i64 0, i64 %76
  %78 = lshr i64 %75, 39
  %79 = select i1 false, i64 0, i64 %78
  %80 = or i64 %77, %79
  %81 = and i64 %80, 72057594037927935
  %82 = or i64 %81, -6557241057451442176
  %83 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, 1
  %84 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, 2
  %85 = insertvalue { i64, i64, i64 } undef, i64 %82, 0
  %86 = insertvalue { i64, i64, i64 } %85, i64 %83, 1
  %87 = insertvalue { i64, i64, i64 } %86, i64 %84, 2
  store { i64, i64, i64 } %87, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %69, align 8
  call void @runtime.TouchConservativeSlot(ptr %69, i64 24)
  call void @runtime.ClobberPointerRegs()
  %88 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  %90 = call i64 @"github.com/goplus/llgo/cl/_testgo/tpindex.index[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, i64 3)
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %90)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %91)
  %92 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %13, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  call void @runtime.ClobberPointerRegs()
  %94 = call i64 @"github.com/goplus/llgo/cl/_testgo/tpindex.index[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 6)
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %94)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %95)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tpindex.index[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi i64 [ -1, %_llgo_0 ], [ %6, %_llgo_2 ]
  %6 = add i64 %5, 1
  %7 = icmp slt i64 %6, %4
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %10 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %6, i64 %9)
  %11 = getelementptr inbounds i64, ptr %8, i64 %10
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %24, i64 %23, i64 8)
  %25 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %24, align 4
  store i64 0, ptr %24, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %_llgo_4, label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret i64 -1

_llgo_4:                                          ; preds = %_llgo_2
  ret i64 %6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)
