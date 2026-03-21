; ModuleID = 'github.com/goplus/llgo/cl/_testrt/qsortfn'
source_filename = "github.com/goplus/llgo/cl/_testrt/qsortfn"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/qsortfn.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [14 x i8] c"Comp => Comp\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [12 x i8] c"fn => Comp\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@4 = private unnamed_addr constant [12 x i8] c"Comp => fn\0A\00", align 1
@5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@6 = private unnamed_addr constant [10 x i8] c"fn => fn\0A\00", align 1
@7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@8 = private unnamed_addr constant [26 x i8] c"qsort.Comp => qsort.Comp\0A\00", align 1
@9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@10 = private unnamed_addr constant [18 x i8] c"fn => qsort.Comp\0A\00", align 1
@11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@12 = private unnamed_addr constant [18 x i8] c"qsort.Comp => fn\0A\00", align 1
@13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@14 = private unnamed_addr constant [18 x i8] c"Comp => qsort.fn\0A\00", align 1
@15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@16 = private unnamed_addr constant [22 x i8] c"qsort.Comp => Comp()\0A\00", align 1
@17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@18 = private unnamed_addr constant [22 x i8] c"Comp => qsort.Comp()\0A\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %4)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %7)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %8)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a"() {
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
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca { i64, i64, i64 }, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  %26 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = shl i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = lshr i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = or i64 %33, -6557241057451442176
  store i64 %34, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %34)
  call void @runtime.ClobberPointerRegs()
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %36 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %0, align 4
  %38 = and i64 %37, 72057594037927935
  %39 = lshr i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = shl i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = inttoptr i64 %45 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = call i32 (ptr, ...) @printf(ptr %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  %48 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %48, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %48)
  %49 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load i64, ptr %2, align 4
  %51 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %52 = mul i64 %51, 8
  %53 = call i64 @runtime.AdvanceHiddenPointer(i64 %50, i64 %52)
  store i64 %53, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %53)
  %54 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %2, align 4
  %56 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %57 = mul i64 %56, 8
  %58 = call i64 @runtime.AdvanceHiddenPointer(i64 %55, i64 %57)
  store i64 %58, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %58)
  %59 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load i64, ptr %2, align 4
  %61 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %62 = mul i64 %61, 8
  %63 = call i64 @runtime.AdvanceHiddenPointer(i64 %60, i64 %62)
  store i64 %63, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %63)
  %64 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %2, align 4
  %66 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %67 = mul i64 %66, 8
  %68 = call i64 @runtime.AdvanceHiddenPointer(i64 %65, i64 %67)
  store i64 %68, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %68)
  %69 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load i64, ptr %2, align 4
  %71 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %72 = mul i64 %71, 8
  %73 = call i64 @runtime.AdvanceHiddenPointer(i64 %70, i64 %72)
  store i64 %73, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %73)
  %74 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %4, align 4
  %76 = alloca i64, align 8
  store i64 100, ptr %76, align 4
  call void @runtime.StoreHiddenPointee(i64 %75, ptr %76, i64 8)
  store i64 0, ptr %76, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %77 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load i64, ptr %6, align 4
  %79 = alloca i64, align 8
  store i64 8, ptr %79, align 4
  call void @runtime.StoreHiddenPointee(i64 %78, ptr %79, i64 8)
  store i64 0, ptr %79, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load i64, ptr %8, align 4
  %82 = alloca i64, align 8
  store i64 23, ptr %82, align 4
  call void @runtime.StoreHiddenPointee(i64 %81, ptr %82, i64 8)
  store i64 0, ptr %82, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %10, align 4
  %85 = alloca i64, align 8
  store i64 2, ptr %85, align 4
  call void @runtime.StoreHiddenPointee(i64 %84, ptr %85, i64 8)
  store i64 0, ptr %85, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %86 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %12, align 4
  %88 = alloca i64, align 8
  store i64 7, ptr %88, align 4
  call void @runtime.StoreHiddenPointee(i64 %87, ptr %88, i64 8)
  store i64 0, ptr %88, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a$1", ptr %14, align 8
  %89 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %2, align 4
  %91 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %92 = mul i64 %91, 8
  %93 = call i64 @runtime.AdvanceHiddenPointer(i64 %90, i64 %92)
  store i64 %93, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %93)
  %94 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load i64, ptr %15, align 4
  %96 = and i64 %95, 72057594037927935
  %97 = lshr i64 %96, 17
  %98 = select i1 false, i64 0, i64 %97
  %99 = shl i64 %96, 39
  %100 = select i1 false, i64 0, i64 %99
  %101 = or i64 %98, %100
  %102 = and i64 %101, 72057594037927935
  %103 = xor i64 %102, 25399393228665167
  %104 = inttoptr i64 %103 to ptr
  store ptr %104, ptr %17, align 8
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %106 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %17, align 8
  %108 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load ptr, ptr %14, align 8
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %107, i64 5, i64 8, ptr %109)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %105)
  %110 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load i64, ptr %2, align 4
  %112 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %112, i64 %111, i64 40)
  %113 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load [5 x i64], ptr %112, align 4
  store [5 x i64] zeroinitializer, ptr %112, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %115 = phi i64 [ -1, %_llgo_0 ], [ %116, %_llgo_2 ]
  %116 = add i64 %115, 1
  %117 = icmp slt i64 %116, 5
  br i1 %117, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %118 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load i64, ptr %2, align 4
  %120 = and i64 %119, 72057594037927935
  %121 = lshr i64 %120, 17
  %122 = select i1 false, i64 0, i64 %121
  %123 = shl i64 %120, 39
  %124 = select i1 false, i64 0, i64 %123
  %125 = or i64 %122, %124
  %126 = and i64 %125, 72057594037927935
  %127 = xor i64 %126, 25399393228665167
  %128 = inttoptr i64 %127 to ptr
  %129 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %116, i64 5)
  %130 = getelementptr inbounds i64, ptr %128, i64 %129
  %131 = icmp eq ptr %130, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %131)
  %132 = load i64, ptr %130, align 4
  %133 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %134 = xor i64 %133, 25399393228665167
  %135 = shl i64 %134, 17
  %136 = select i1 false, i64 0, i64 %135
  %137 = lshr i64 %134, 39
  %138 = select i1 false, i64 0, i64 %137
  %139 = or i64 %136, %138
  %140 = and i64 %139, 72057594037927935
  %141 = or i64 %140, -6557241057451442176
  store i64 %141, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %141)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  call void @runtime.ClobberPointerRegs()
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %143 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = load i64, ptr %18, align 4
  %145 = and i64 %144, 72057594037927935
  %146 = lshr i64 %145, 17
  %147 = select i1 false, i64 0, i64 %146
  %148 = shl i64 %145, 39
  %149 = select i1 false, i64 0, i64 %148
  %150 = or i64 %147, %149
  %151 = and i64 %150, 72057594037927935
  %152 = xor i64 %151, 25399393228665167
  %153 = inttoptr i64 %152 to ptr
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  call void @runtime.ClobberPointerRegs()
  %154 = call i32 (ptr, ...) @printf(ptr %153, i64 %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %142)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1a$1"(ptr %0, ptr %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b"() {
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
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca { i64, i64, i64 }, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  %26 = and i64 ptrtoint (ptr @2 to i64), 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = shl i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = lshr i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = or i64 %33, -6557241057451442176
  store i64 %34, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %34)
  call void @runtime.ClobberPointerRegs()
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %36 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %0, align 4
  %38 = and i64 %37, 72057594037927935
  %39 = lshr i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = shl i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = inttoptr i64 %45 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = call i32 (ptr, ...) @printf(ptr %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  %48 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %48, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %48)
  %49 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load i64, ptr %2, align 4
  %51 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %52 = mul i64 %51, 8
  %53 = call i64 @runtime.AdvanceHiddenPointer(i64 %50, i64 %52)
  store i64 %53, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %53)
  %54 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %2, align 4
  %56 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %57 = mul i64 %56, 8
  %58 = call i64 @runtime.AdvanceHiddenPointer(i64 %55, i64 %57)
  store i64 %58, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %58)
  %59 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load i64, ptr %2, align 4
  %61 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %62 = mul i64 %61, 8
  %63 = call i64 @runtime.AdvanceHiddenPointer(i64 %60, i64 %62)
  store i64 %63, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %63)
  %64 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %2, align 4
  %66 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %67 = mul i64 %66, 8
  %68 = call i64 @runtime.AdvanceHiddenPointer(i64 %65, i64 %67)
  store i64 %68, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %68)
  %69 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load i64, ptr %2, align 4
  %71 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %72 = mul i64 %71, 8
  %73 = call i64 @runtime.AdvanceHiddenPointer(i64 %70, i64 %72)
  store i64 %73, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %73)
  %74 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %4, align 4
  %76 = alloca i64, align 8
  store i64 100, ptr %76, align 4
  call void @runtime.StoreHiddenPointee(i64 %75, ptr %76, i64 8)
  store i64 0, ptr %76, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %77 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load i64, ptr %6, align 4
  %79 = alloca i64, align 8
  store i64 8, ptr %79, align 4
  call void @runtime.StoreHiddenPointee(i64 %78, ptr %79, i64 8)
  store i64 0, ptr %79, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load i64, ptr %8, align 4
  %82 = alloca i64, align 8
  store i64 23, ptr %82, align 4
  call void @runtime.StoreHiddenPointee(i64 %81, ptr %82, i64 8)
  store i64 0, ptr %82, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %10, align 4
  %85 = alloca i64, align 8
  store i64 2, ptr %85, align 4
  call void @runtime.StoreHiddenPointee(i64 %84, ptr %85, i64 8)
  store i64 0, ptr %85, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %86 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %12, align 4
  %88 = alloca i64, align 8
  store i64 7, ptr %88, align 4
  call void @runtime.StoreHiddenPointee(i64 %87, ptr %88, i64 8)
  store i64 0, ptr %88, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %2, align 4
  %91 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %92 = mul i64 %91, 8
  %93 = call i64 @runtime.AdvanceHiddenPointer(i64 %90, i64 %92)
  store i64 %93, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %93)
  %94 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load i64, ptr %14, align 4
  %96 = and i64 %95, 72057594037927935
  %97 = lshr i64 %96, 17
  %98 = select i1 false, i64 0, i64 %97
  %99 = shl i64 %96, 39
  %100 = select i1 false, i64 0, i64 %99
  %101 = or i64 %98, %100
  %102 = and i64 %101, 72057594037927935
  %103 = xor i64 %102, 25399393228665167
  %104 = inttoptr i64 %103 to ptr
  store ptr %104, ptr %16, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b$1", ptr %17, align 8
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %106 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %16, align 8
  %108 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load ptr, ptr %17, align 8
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %107, i64 5, i64 8, ptr %109)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %105)
  %110 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load i64, ptr %2, align 4
  %112 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %112, i64 %111, i64 40)
  %113 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load [5 x i64], ptr %112, align 4
  store [5 x i64] zeroinitializer, ptr %112, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %115 = phi i64 [ -1, %_llgo_0 ], [ %116, %_llgo_2 ]
  %116 = add i64 %115, 1
  %117 = icmp slt i64 %116, 5
  br i1 %117, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %118 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load i64, ptr %2, align 4
  %120 = and i64 %119, 72057594037927935
  %121 = lshr i64 %120, 17
  %122 = select i1 false, i64 0, i64 %121
  %123 = shl i64 %120, 39
  %124 = select i1 false, i64 0, i64 %123
  %125 = or i64 %122, %124
  %126 = and i64 %125, 72057594037927935
  %127 = xor i64 %126, 25399393228665167
  %128 = inttoptr i64 %127 to ptr
  %129 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %116, i64 5)
  %130 = getelementptr inbounds i64, ptr %128, i64 %129
  %131 = icmp eq ptr %130, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %131)
  %132 = load i64, ptr %130, align 4
  %133 = and i64 ptrtoint (ptr @3 to i64), 72057594037927935
  %134 = xor i64 %133, 25399393228665167
  %135 = shl i64 %134, 17
  %136 = select i1 false, i64 0, i64 %135
  %137 = lshr i64 %134, 39
  %138 = select i1 false, i64 0, i64 %137
  %139 = or i64 %136, %138
  %140 = and i64 %139, 72057594037927935
  %141 = or i64 %140, -6557241057451442176
  store i64 %141, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %141)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  call void @runtime.ClobberPointerRegs()
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %143 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = load i64, ptr %18, align 4
  %145 = and i64 %144, 72057594037927935
  %146 = lshr i64 %145, 17
  %147 = select i1 false, i64 0, i64 %146
  %148 = shl i64 %145, 39
  %149 = select i1 false, i64 0, i64 %148
  %150 = or i64 %147, %149
  %151 = and i64 %150, 72057594037927935
  %152 = xor i64 %151, 25399393228665167
  %153 = inttoptr i64 %152 to ptr
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  call void @runtime.ClobberPointerRegs()
  %154 = call i32 (ptr, ...) @printf(ptr %153, i64 %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %142)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort1b$1"(ptr %0, ptr %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a"() {
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
  %17 = alloca ptr, align 8
  %18 = alloca { ptr, ptr }, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca { i64, i64, i64 }, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  %27 = and i64 ptrtoint (ptr @4 to i64), 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = shl i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = lshr i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = or i64 %34, -6557241057451442176
  store i64 %35, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %35)
  call void @runtime.ClobberPointerRegs()
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %37 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %0, align 4
  %39 = and i64 %38, 72057594037927935
  %40 = lshr i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = shl i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = inttoptr i64 %46 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %48 = call i32 (ptr, ...) @printf(ptr %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %36)
  %49 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %49, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %49)
  %50 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %2, align 4
  %52 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %53 = mul i64 %52, 8
  %54 = call i64 @runtime.AdvanceHiddenPointer(i64 %51, i64 %53)
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  %55 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %2, align 4
  %57 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %58 = mul i64 %57, 8
  %59 = call i64 @runtime.AdvanceHiddenPointer(i64 %56, i64 %58)
  store i64 %59, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %59)
  %60 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %2, align 4
  %62 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %63 = mul i64 %62, 8
  %64 = call i64 @runtime.AdvanceHiddenPointer(i64 %61, i64 %63)
  store i64 %64, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %64)
  %65 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load i64, ptr %2, align 4
  %67 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %68 = mul i64 %67, 8
  %69 = call i64 @runtime.AdvanceHiddenPointer(i64 %66, i64 %68)
  store i64 %69, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %69)
  %70 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load i64, ptr %2, align 4
  %72 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %73 = mul i64 %72, 8
  %74 = call i64 @runtime.AdvanceHiddenPointer(i64 %71, i64 %73)
  store i64 %74, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %74)
  %75 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load i64, ptr %4, align 4
  %77 = alloca i64, align 8
  store i64 100, ptr %77, align 4
  call void @runtime.StoreHiddenPointee(i64 %76, ptr %77, i64 8)
  store i64 0, ptr %77, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %6, align 4
  %80 = alloca i64, align 8
  store i64 8, ptr %80, align 4
  call void @runtime.StoreHiddenPointee(i64 %79, ptr %80, i64 8)
  store i64 0, ptr %80, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %8, align 4
  %83 = alloca i64, align 8
  store i64 23, ptr %83, align 4
  call void @runtime.StoreHiddenPointee(i64 %82, ptr %83, i64 8)
  store i64 0, ptr %83, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %10, align 4
  %86 = alloca i64, align 8
  store i64 2, ptr %86, align 4
  call void @runtime.StoreHiddenPointee(i64 %85, ptr %86, i64 8)
  store i64 0, ptr %86, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %87 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %12, align 4
  %89 = alloca i64, align 8
  store i64 7, ptr %89, align 4
  call void @runtime.StoreHiddenPointee(i64 %88, ptr %89, i64 8)
  store i64 0, ptr %89, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a$1", ptr %14, align 8
  %90 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load i64, ptr %2, align 4
  %92 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %93 = mul i64 %92, 8
  %94 = call i64 @runtime.AdvanceHiddenPointer(i64 %91, i64 %93)
  store i64 %94, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %94)
  %95 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load i64, ptr %15, align 4
  %97 = and i64 %96, 72057594037927935
  %98 = lshr i64 %97, 17
  %99 = select i1 false, i64 0, i64 %98
  %100 = shl i64 %97, 39
  %101 = select i1 false, i64 0, i64 %100
  %102 = or i64 %99, %101
  %103 = and i64 %102, 72057594037927935
  %104 = xor i64 %103, 25399393228665167
  %105 = inttoptr i64 %104 to ptr
  store ptr %105, ptr %17, align 8
  %106 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %14, align 8
  store ptr %107, ptr %18, align 8
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %109 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load ptr, ptr %17, align 8
  %111 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load { ptr, ptr }, ptr %18, align 8
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store { ptr, ptr } zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %110, i64 5, i64 8, { ptr, ptr } %112)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %108)
  %113 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %2, align 4
  %115 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %115, i64 %114, i64 40)
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load [5 x i64], ptr %115, align 4
  store [5 x i64] zeroinitializer, ptr %115, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %118 = phi i64 [ -1, %_llgo_0 ], [ %119, %_llgo_2 ]
  %119 = add i64 %118, 1
  %120 = icmp slt i64 %119, 5
  br i1 %120, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %121 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load i64, ptr %2, align 4
  %123 = and i64 %122, 72057594037927935
  %124 = lshr i64 %123, 17
  %125 = select i1 false, i64 0, i64 %124
  %126 = shl i64 %123, 39
  %127 = select i1 false, i64 0, i64 %126
  %128 = or i64 %125, %127
  %129 = and i64 %128, 72057594037927935
  %130 = xor i64 %129, 25399393228665167
  %131 = inttoptr i64 %130 to ptr
  %132 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %119, i64 5)
  %133 = getelementptr inbounds i64, ptr %131, i64 %132
  %134 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i64, ptr %133, align 4
  %136 = and i64 ptrtoint (ptr @5 to i64), 72057594037927935
  %137 = xor i64 %136, 25399393228665167
  %138 = shl i64 %137, 17
  %139 = select i1 false, i64 0, i64 %138
  %140 = lshr i64 %137, 39
  %141 = select i1 false, i64 0, i64 %140
  %142 = or i64 %139, %141
  %143 = and i64 %142, 72057594037927935
  %144 = or i64 %143, -6557241057451442176
  store i64 %144, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %144)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %146 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load i64, ptr %19, align 4
  %148 = and i64 %147, 72057594037927935
  %149 = lshr i64 %148, 17
  %150 = select i1 false, i64 0, i64 %149
  %151 = shl i64 %148, 39
  %152 = select i1 false, i64 0, i64 %151
  %153 = or i64 %150, %152
  %154 = and i64 %153, 72057594037927935
  %155 = xor i64 %154, 25399393228665167
  %156 = inttoptr i64 %155 to ptr
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 24)
  call void @runtime.ClobberPointerRegs()
  %157 = call i32 (ptr, ...) @printf(ptr %156, i64 %135)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %145)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2a$1"(ptr %0, ptr %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b"() {
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
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  store ptr null, ptr %18, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca { i64, i64, i64 }, align 8
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %24, align 8
  %25 = and i64 ptrtoint (ptr @6 to i64), 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %35 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %0, align 4
  %37 = and i64 %36, 72057594037927935
  %38 = lshr i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = shl i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = inttoptr i64 %44 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %46 = call i32 (ptr, ...) @printf(ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %34)
  %47 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %47, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %47)
  %48 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load i64, ptr %2, align 4
  %50 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %51 = mul i64 %50, 8
  %52 = call i64 @runtime.AdvanceHiddenPointer(i64 %49, i64 %51)
  store i64 %52, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %52)
  %53 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load i64, ptr %2, align 4
  %55 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %56 = mul i64 %55, 8
  %57 = call i64 @runtime.AdvanceHiddenPointer(i64 %54, i64 %56)
  store i64 %57, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %57)
  %58 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %2, align 4
  %60 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %61 = mul i64 %60, 8
  %62 = call i64 @runtime.AdvanceHiddenPointer(i64 %59, i64 %61)
  store i64 %62, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %62)
  %63 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load i64, ptr %2, align 4
  %65 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %66 = mul i64 %65, 8
  %67 = call i64 @runtime.AdvanceHiddenPointer(i64 %64, i64 %66)
  store i64 %67, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %67)
  %68 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load i64, ptr %2, align 4
  %70 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %71 = mul i64 %70, 8
  %72 = call i64 @runtime.AdvanceHiddenPointer(i64 %69, i64 %71)
  store i64 %72, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %72)
  %73 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load i64, ptr %4, align 4
  %75 = alloca i64, align 8
  store i64 100, ptr %75, align 4
  call void @runtime.StoreHiddenPointee(i64 %74, ptr %75, i64 8)
  store i64 0, ptr %75, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %76 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load i64, ptr %6, align 4
  %78 = alloca i64, align 8
  store i64 8, ptr %78, align 4
  call void @runtime.StoreHiddenPointee(i64 %77, ptr %78, i64 8)
  store i64 0, ptr %78, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %79 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load i64, ptr %8, align 4
  %81 = alloca i64, align 8
  store i64 23, ptr %81, align 4
  call void @runtime.StoreHiddenPointee(i64 %80, ptr %81, i64 8)
  store i64 0, ptr %81, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %82 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = load i64, ptr %10, align 4
  %84 = alloca i64, align 8
  store i64 2, ptr %84, align 4
  call void @runtime.StoreHiddenPointee(i64 %83, ptr %84, i64 8)
  store i64 0, ptr %84, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %85 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = load i64, ptr %12, align 4
  %87 = alloca i64, align 8
  store i64 7, ptr %87, align 4
  call void @runtime.StoreHiddenPointee(i64 %86, ptr %87, i64 8)
  store i64 0, ptr %87, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %88 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load i64, ptr %2, align 4
  %90 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %91 = mul i64 %90, 8
  %92 = call i64 @runtime.AdvanceHiddenPointer(i64 %89, i64 %91)
  store i64 %92, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %92)
  %93 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load i64, ptr %14, align 4
  %95 = and i64 %94, 72057594037927935
  %96 = lshr i64 %95, 17
  %97 = select i1 false, i64 0, i64 %96
  %98 = shl i64 %95, 39
  %99 = select i1 false, i64 0, i64 %98
  %100 = or i64 %97, %99
  %101 = and i64 %100, 72057594037927935
  %102 = xor i64 %101, 25399393228665167
  %103 = inttoptr i64 %102 to ptr
  store ptr %103, ptr %16, align 8
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %105 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %105)
  %106 = load ptr, ptr %16, align 8
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %106, i64 5, i64 8, ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b$1")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %104)
  %107 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %107)
  %108 = load i64, ptr %2, align 4
  %109 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %109, i64 %108, i64 40)
  %110 = icmp eq ptr %109, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load [5 x i64], ptr %109, align 4
  store [5 x i64] zeroinitializer, ptr %109, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %112 = phi i64 [ -1, %_llgo_0 ], [ %113, %_llgo_2 ]
  %113 = add i64 %112, 1
  %114 = icmp slt i64 %113, 5
  br i1 %114, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %115 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %115)
  %116 = load i64, ptr %2, align 4
  %117 = and i64 %116, 72057594037927935
  %118 = lshr i64 %117, 17
  %119 = select i1 false, i64 0, i64 %118
  %120 = shl i64 %117, 39
  %121 = select i1 false, i64 0, i64 %120
  %122 = or i64 %119, %121
  %123 = and i64 %122, 72057594037927935
  %124 = xor i64 %123, 25399393228665167
  %125 = inttoptr i64 %124 to ptr
  %126 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %113, i64 5)
  %127 = getelementptr inbounds i64, ptr %125, i64 %126
  %128 = icmp eq ptr %127, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %128)
  %129 = load i64, ptr %127, align 4
  %130 = and i64 ptrtoint (ptr @7 to i64), 72057594037927935
  %131 = xor i64 %130, 25399393228665167
  %132 = shl i64 %131, 17
  %133 = select i1 false, i64 0, i64 %132
  %134 = lshr i64 %131, 39
  %135 = select i1 false, i64 0, i64 %134
  %136 = or i64 %133, %135
  %137 = and i64 %136, 72057594037927935
  %138 = or i64 %137, -6557241057451442176
  store i64 %138, ptr %17, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %18, i64 %138)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  call void @runtime.ClobberPointerRegs()
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %140 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = load i64, ptr %17, align 4
  %142 = and i64 %141, 72057594037927935
  %143 = lshr i64 %142, 17
  %144 = select i1 false, i64 0, i64 %143
  %145 = shl i64 %142, 39
  %146 = select i1 false, i64 0, i64 %145
  %147 = or i64 %144, %146
  %148 = and i64 %147, 72057594037927935
  %149 = xor i64 %148, 25399393228665167
  %150 = inttoptr i64 %149 to ptr
  store i64 0, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  call void @runtime.ClobberPointerRegs()
  %151 = call i32 (ptr, ...) @printf(ptr %150, i64 %129)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %139)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort2b$1"(ptr %0, ptr %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a"() {
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
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca { i64, i64, i64 }, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  %26 = and i64 ptrtoint (ptr @8 to i64), 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = shl i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = lshr i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = or i64 %33, -6557241057451442176
  store i64 %34, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %34)
  call void @runtime.ClobberPointerRegs()
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %36 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %0, align 4
  %38 = and i64 %37, 72057594037927935
  %39 = lshr i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = shl i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = inttoptr i64 %45 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = call i32 (ptr, ...) @printf(ptr %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  %48 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %48, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %48)
  %49 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load i64, ptr %2, align 4
  %51 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %52 = mul i64 %51, 8
  %53 = call i64 @runtime.AdvanceHiddenPointer(i64 %50, i64 %52)
  store i64 %53, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %53)
  %54 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %2, align 4
  %56 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %57 = mul i64 %56, 8
  %58 = call i64 @runtime.AdvanceHiddenPointer(i64 %55, i64 %57)
  store i64 %58, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %58)
  %59 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load i64, ptr %2, align 4
  %61 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %62 = mul i64 %61, 8
  %63 = call i64 @runtime.AdvanceHiddenPointer(i64 %60, i64 %62)
  store i64 %63, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %63)
  %64 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %2, align 4
  %66 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %67 = mul i64 %66, 8
  %68 = call i64 @runtime.AdvanceHiddenPointer(i64 %65, i64 %67)
  store i64 %68, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %68)
  %69 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load i64, ptr %2, align 4
  %71 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %72 = mul i64 %71, 8
  %73 = call i64 @runtime.AdvanceHiddenPointer(i64 %70, i64 %72)
  store i64 %73, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %73)
  %74 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %4, align 4
  %76 = alloca i64, align 8
  store i64 100, ptr %76, align 4
  call void @runtime.StoreHiddenPointee(i64 %75, ptr %76, i64 8)
  store i64 0, ptr %76, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %77 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load i64, ptr %6, align 4
  %79 = alloca i64, align 8
  store i64 8, ptr %79, align 4
  call void @runtime.StoreHiddenPointee(i64 %78, ptr %79, i64 8)
  store i64 0, ptr %79, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load i64, ptr %8, align 4
  %82 = alloca i64, align 8
  store i64 23, ptr %82, align 4
  call void @runtime.StoreHiddenPointee(i64 %81, ptr %82, i64 8)
  store i64 0, ptr %82, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %10, align 4
  %85 = alloca i64, align 8
  store i64 2, ptr %85, align 4
  call void @runtime.StoreHiddenPointee(i64 %84, ptr %85, i64 8)
  store i64 0, ptr %85, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %86 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %12, align 4
  %88 = alloca i64, align 8
  store i64 7, ptr %88, align 4
  call void @runtime.StoreHiddenPointee(i64 %87, ptr %88, i64 8)
  store i64 0, ptr %88, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a$1", ptr %14, align 8
  %89 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %2, align 4
  %91 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %92 = mul i64 %91, 8
  %93 = call i64 @runtime.AdvanceHiddenPointer(i64 %90, i64 %92)
  store i64 %93, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %93)
  %94 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load i64, ptr %15, align 4
  %96 = and i64 %95, 72057594037927935
  %97 = lshr i64 %96, 17
  %98 = select i1 false, i64 0, i64 %97
  %99 = shl i64 %96, 39
  %100 = select i1 false, i64 0, i64 %99
  %101 = or i64 %98, %100
  %102 = and i64 %101, 72057594037927935
  %103 = xor i64 %102, 25399393228665167
  %104 = inttoptr i64 %103 to ptr
  store ptr %104, ptr %17, align 8
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %106 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %17, align 8
  %108 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load ptr, ptr %14, align 8
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %107, i64 5, i64 8, ptr %109)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %105)
  %110 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load i64, ptr %2, align 4
  %112 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %112, i64 %111, i64 40)
  %113 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load [5 x i64], ptr %112, align 4
  store [5 x i64] zeroinitializer, ptr %112, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %115 = phi i64 [ -1, %_llgo_0 ], [ %116, %_llgo_2 ]
  %116 = add i64 %115, 1
  %117 = icmp slt i64 %116, 5
  br i1 %117, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %118 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load i64, ptr %2, align 4
  %120 = and i64 %119, 72057594037927935
  %121 = lshr i64 %120, 17
  %122 = select i1 false, i64 0, i64 %121
  %123 = shl i64 %120, 39
  %124 = select i1 false, i64 0, i64 %123
  %125 = or i64 %122, %124
  %126 = and i64 %125, 72057594037927935
  %127 = xor i64 %126, 25399393228665167
  %128 = inttoptr i64 %127 to ptr
  %129 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %116, i64 5)
  %130 = getelementptr inbounds i64, ptr %128, i64 %129
  %131 = icmp eq ptr %130, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %131)
  %132 = load i64, ptr %130, align 4
  %133 = and i64 ptrtoint (ptr @9 to i64), 72057594037927935
  %134 = xor i64 %133, 25399393228665167
  %135 = shl i64 %134, 17
  %136 = select i1 false, i64 0, i64 %135
  %137 = lshr i64 %134, 39
  %138 = select i1 false, i64 0, i64 %137
  %139 = or i64 %136, %138
  %140 = and i64 %139, 72057594037927935
  %141 = or i64 %140, -6557241057451442176
  store i64 %141, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %141)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  call void @runtime.ClobberPointerRegs()
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %143 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = load i64, ptr %18, align 4
  %145 = and i64 %144, 72057594037927935
  %146 = lshr i64 %145, 17
  %147 = select i1 false, i64 0, i64 %146
  %148 = shl i64 %145, 39
  %149 = select i1 false, i64 0, i64 %148
  %150 = or i64 %147, %149
  %151 = and i64 %150, 72057594037927935
  %152 = xor i64 %151, 25399393228665167
  %153 = inttoptr i64 %152 to ptr
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  call void @runtime.ClobberPointerRegs()
  %154 = call i32 (ptr, ...) @printf(ptr %153, i64 %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %142)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3a$1"(ptr %0, ptr %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b"() {
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
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca { i64, i64, i64 }, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  %26 = and i64 ptrtoint (ptr @10 to i64), 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = shl i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = lshr i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = or i64 %33, -6557241057451442176
  store i64 %34, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %34)
  call void @runtime.ClobberPointerRegs()
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %36 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %0, align 4
  %38 = and i64 %37, 72057594037927935
  %39 = lshr i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = shl i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = inttoptr i64 %45 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %47 = call i32 (ptr, ...) @printf(ptr %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  %48 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %48, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %48)
  %49 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load i64, ptr %2, align 4
  %51 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %52 = mul i64 %51, 8
  %53 = call i64 @runtime.AdvanceHiddenPointer(i64 %50, i64 %52)
  store i64 %53, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %53)
  %54 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %2, align 4
  %56 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %57 = mul i64 %56, 8
  %58 = call i64 @runtime.AdvanceHiddenPointer(i64 %55, i64 %57)
  store i64 %58, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %58)
  %59 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load i64, ptr %2, align 4
  %61 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %62 = mul i64 %61, 8
  %63 = call i64 @runtime.AdvanceHiddenPointer(i64 %60, i64 %62)
  store i64 %63, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %63)
  %64 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %2, align 4
  %66 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %67 = mul i64 %66, 8
  %68 = call i64 @runtime.AdvanceHiddenPointer(i64 %65, i64 %67)
  store i64 %68, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %68)
  %69 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load i64, ptr %2, align 4
  %71 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %72 = mul i64 %71, 8
  %73 = call i64 @runtime.AdvanceHiddenPointer(i64 %70, i64 %72)
  store i64 %73, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %73)
  %74 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %4, align 4
  %76 = alloca i64, align 8
  store i64 100, ptr %76, align 4
  call void @runtime.StoreHiddenPointee(i64 %75, ptr %76, i64 8)
  store i64 0, ptr %76, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %77 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load i64, ptr %6, align 4
  %79 = alloca i64, align 8
  store i64 8, ptr %79, align 4
  call void @runtime.StoreHiddenPointee(i64 %78, ptr %79, i64 8)
  store i64 0, ptr %79, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %80 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load i64, ptr %8, align 4
  %82 = alloca i64, align 8
  store i64 23, ptr %82, align 4
  call void @runtime.StoreHiddenPointee(i64 %81, ptr %82, i64 8)
  store i64 0, ptr %82, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %10, align 4
  %85 = alloca i64, align 8
  store i64 2, ptr %85, align 4
  call void @runtime.StoreHiddenPointee(i64 %84, ptr %85, i64 8)
  store i64 0, ptr %85, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %86 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %12, align 4
  %88 = alloca i64, align 8
  store i64 7, ptr %88, align 4
  call void @runtime.StoreHiddenPointee(i64 %87, ptr %88, i64 8)
  store i64 0, ptr %88, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load i64, ptr %2, align 4
  %91 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %92 = mul i64 %91, 8
  %93 = call i64 @runtime.AdvanceHiddenPointer(i64 %90, i64 %92)
  store i64 %93, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %93)
  %94 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load i64, ptr %14, align 4
  %96 = and i64 %95, 72057594037927935
  %97 = lshr i64 %96, 17
  %98 = select i1 false, i64 0, i64 %97
  %99 = shl i64 %96, 39
  %100 = select i1 false, i64 0, i64 %99
  %101 = or i64 %98, %100
  %102 = and i64 %101, 72057594037927935
  %103 = xor i64 %102, 25399393228665167
  %104 = inttoptr i64 %103 to ptr
  store ptr %104, ptr %16, align 8
  store ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b$1", ptr %17, align 8
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %106 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %16, align 8
  %108 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = load ptr, ptr %17, align 8
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %107, i64 5, i64 8, ptr %109)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %105)
  %110 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load i64, ptr %2, align 4
  %112 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %112, i64 %111, i64 40)
  %113 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load [5 x i64], ptr %112, align 4
  store [5 x i64] zeroinitializer, ptr %112, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %115 = phi i64 [ -1, %_llgo_0 ], [ %116, %_llgo_2 ]
  %116 = add i64 %115, 1
  %117 = icmp slt i64 %116, 5
  br i1 %117, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %118 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load i64, ptr %2, align 4
  %120 = and i64 %119, 72057594037927935
  %121 = lshr i64 %120, 17
  %122 = select i1 false, i64 0, i64 %121
  %123 = shl i64 %120, 39
  %124 = select i1 false, i64 0, i64 %123
  %125 = or i64 %122, %124
  %126 = and i64 %125, 72057594037927935
  %127 = xor i64 %126, 25399393228665167
  %128 = inttoptr i64 %127 to ptr
  %129 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %116, i64 5)
  %130 = getelementptr inbounds i64, ptr %128, i64 %129
  %131 = icmp eq ptr %130, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %131)
  %132 = load i64, ptr %130, align 4
  %133 = and i64 ptrtoint (ptr @11 to i64), 72057594037927935
  %134 = xor i64 %133, 25399393228665167
  %135 = shl i64 %134, 17
  %136 = select i1 false, i64 0, i64 %135
  %137 = lshr i64 %134, 39
  %138 = select i1 false, i64 0, i64 %137
  %139 = or i64 %136, %138
  %140 = and i64 %139, 72057594037927935
  %141 = or i64 %140, -6557241057451442176
  store i64 %141, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %141)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  call void @runtime.ClobberPointerRegs()
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %143 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %143)
  %144 = load i64, ptr %18, align 4
  %145 = and i64 %144, 72057594037927935
  %146 = lshr i64 %145, 17
  %147 = select i1 false, i64 0, i64 %146
  %148 = shl i64 %145, 39
  %149 = select i1 false, i64 0, i64 %148
  %150 = or i64 %147, %149
  %151 = and i64 %150, 72057594037927935
  %152 = xor i64 %151, 25399393228665167
  %153 = inttoptr i64 %152 to ptr
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  call void @runtime.ClobberPointerRegs()
  %154 = call i32 (ptr, ...) @printf(ptr %153, i64 %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %142)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort3b$1"(ptr %0, ptr %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a"() {
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
  %17 = alloca ptr, align 8
  %18 = alloca { ptr, ptr }, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca { i64, i64, i64 }, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  %27 = and i64 ptrtoint (ptr @12 to i64), 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = shl i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = lshr i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = or i64 %34, -6557241057451442176
  store i64 %35, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %35)
  call void @runtime.ClobberPointerRegs()
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %37 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %0, align 4
  %39 = and i64 %38, 72057594037927935
  %40 = lshr i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = shl i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = inttoptr i64 %46 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %48 = call i32 (ptr, ...) @printf(ptr %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %36)
  %49 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %49, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %49)
  %50 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %2, align 4
  %52 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %53 = mul i64 %52, 8
  %54 = call i64 @runtime.AdvanceHiddenPointer(i64 %51, i64 %53)
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  %55 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %2, align 4
  %57 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %58 = mul i64 %57, 8
  %59 = call i64 @runtime.AdvanceHiddenPointer(i64 %56, i64 %58)
  store i64 %59, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %59)
  %60 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %2, align 4
  %62 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %63 = mul i64 %62, 8
  %64 = call i64 @runtime.AdvanceHiddenPointer(i64 %61, i64 %63)
  store i64 %64, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %64)
  %65 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load i64, ptr %2, align 4
  %67 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %68 = mul i64 %67, 8
  %69 = call i64 @runtime.AdvanceHiddenPointer(i64 %66, i64 %68)
  store i64 %69, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %69)
  %70 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load i64, ptr %2, align 4
  %72 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %73 = mul i64 %72, 8
  %74 = call i64 @runtime.AdvanceHiddenPointer(i64 %71, i64 %73)
  store i64 %74, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %74)
  %75 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load i64, ptr %4, align 4
  %77 = alloca i64, align 8
  store i64 100, ptr %77, align 4
  call void @runtime.StoreHiddenPointee(i64 %76, ptr %77, i64 8)
  store i64 0, ptr %77, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %6, align 4
  %80 = alloca i64, align 8
  store i64 8, ptr %80, align 4
  call void @runtime.StoreHiddenPointee(i64 %79, ptr %80, i64 8)
  store i64 0, ptr %80, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %8, align 4
  %83 = alloca i64, align 8
  store i64 23, ptr %83, align 4
  call void @runtime.StoreHiddenPointee(i64 %82, ptr %83, i64 8)
  store i64 0, ptr %83, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %10, align 4
  %86 = alloca i64, align 8
  store i64 2, ptr %86, align 4
  call void @runtime.StoreHiddenPointee(i64 %85, ptr %86, i64 8)
  store i64 0, ptr %86, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %87 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %12, align 4
  %89 = alloca i64, align 8
  store i64 7, ptr %89, align 4
  call void @runtime.StoreHiddenPointee(i64 %88, ptr %89, i64 8)
  store i64 0, ptr %89, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a$1", ptr %14, align 8
  %90 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load i64, ptr %2, align 4
  %92 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %93 = mul i64 %92, 8
  %94 = call i64 @runtime.AdvanceHiddenPointer(i64 %91, i64 %93)
  store i64 %94, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %94)
  %95 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load i64, ptr %15, align 4
  %97 = and i64 %96, 72057594037927935
  %98 = lshr i64 %97, 17
  %99 = select i1 false, i64 0, i64 %98
  %100 = shl i64 %97, 39
  %101 = select i1 false, i64 0, i64 %100
  %102 = or i64 %99, %101
  %103 = and i64 %102, 72057594037927935
  %104 = xor i64 %103, 25399393228665167
  %105 = inttoptr i64 %104 to ptr
  store ptr %105, ptr %17, align 8
  %106 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %14, align 8
  store ptr %107, ptr %18, align 8
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %109 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load ptr, ptr %17, align 8
  %111 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load { ptr, ptr }, ptr %18, align 8
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store { ptr, ptr } zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %110, i64 5, i64 8, { ptr, ptr } %112)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %108)
  %113 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %2, align 4
  %115 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %115, i64 %114, i64 40)
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load [5 x i64], ptr %115, align 4
  store [5 x i64] zeroinitializer, ptr %115, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %118 = phi i64 [ -1, %_llgo_0 ], [ %119, %_llgo_2 ]
  %119 = add i64 %118, 1
  %120 = icmp slt i64 %119, 5
  br i1 %120, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %121 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load i64, ptr %2, align 4
  %123 = and i64 %122, 72057594037927935
  %124 = lshr i64 %123, 17
  %125 = select i1 false, i64 0, i64 %124
  %126 = shl i64 %123, 39
  %127 = select i1 false, i64 0, i64 %126
  %128 = or i64 %125, %127
  %129 = and i64 %128, 72057594037927935
  %130 = xor i64 %129, 25399393228665167
  %131 = inttoptr i64 %130 to ptr
  %132 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %119, i64 5)
  %133 = getelementptr inbounds i64, ptr %131, i64 %132
  %134 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i64, ptr %133, align 4
  %136 = and i64 ptrtoint (ptr @13 to i64), 72057594037927935
  %137 = xor i64 %136, 25399393228665167
  %138 = shl i64 %137, 17
  %139 = select i1 false, i64 0, i64 %138
  %140 = lshr i64 %137, 39
  %141 = select i1 false, i64 0, i64 %140
  %142 = or i64 %139, %141
  %143 = and i64 %142, 72057594037927935
  %144 = or i64 %143, -6557241057451442176
  store i64 %144, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %144)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %146 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load i64, ptr %19, align 4
  %148 = and i64 %147, 72057594037927935
  %149 = lshr i64 %148, 17
  %150 = select i1 false, i64 0, i64 %149
  %151 = shl i64 %148, 39
  %152 = select i1 false, i64 0, i64 %151
  %153 = or i64 %150, %152
  %154 = and i64 %153, 72057594037927935
  %155 = xor i64 %154, 25399393228665167
  %156 = inttoptr i64 %155 to ptr
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 24)
  call void @runtime.ClobberPointerRegs()
  %157 = call i32 (ptr, ...) @printf(ptr %156, i64 %135)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %145)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4a$1"(ptr %0, ptr %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b"() {
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
  %17 = alloca ptr, align 8
  %18 = alloca { ptr, ptr }, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca { i64, i64, i64 }, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  %27 = and i64 ptrtoint (ptr @14 to i64), 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = shl i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = lshr i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = or i64 %34, -6557241057451442176
  store i64 %35, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %35)
  call void @runtime.ClobberPointerRegs()
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %37 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %0, align 4
  %39 = and i64 %38, 72057594037927935
  %40 = lshr i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = shl i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = inttoptr i64 %46 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %48 = call i32 (ptr, ...) @printf(ptr %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %36)
  %49 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %49, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %49)
  %50 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %2, align 4
  %52 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %53 = mul i64 %52, 8
  %54 = call i64 @runtime.AdvanceHiddenPointer(i64 %51, i64 %53)
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  %55 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %2, align 4
  %57 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %58 = mul i64 %57, 8
  %59 = call i64 @runtime.AdvanceHiddenPointer(i64 %56, i64 %58)
  store i64 %59, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %59)
  %60 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %2, align 4
  %62 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %63 = mul i64 %62, 8
  %64 = call i64 @runtime.AdvanceHiddenPointer(i64 %61, i64 %63)
  store i64 %64, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %64)
  %65 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load i64, ptr %2, align 4
  %67 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %68 = mul i64 %67, 8
  %69 = call i64 @runtime.AdvanceHiddenPointer(i64 %66, i64 %68)
  store i64 %69, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %69)
  %70 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load i64, ptr %2, align 4
  %72 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %73 = mul i64 %72, 8
  %74 = call i64 @runtime.AdvanceHiddenPointer(i64 %71, i64 %73)
  store i64 %74, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %74)
  %75 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load i64, ptr %4, align 4
  %77 = alloca i64, align 8
  store i64 100, ptr %77, align 4
  call void @runtime.StoreHiddenPointee(i64 %76, ptr %77, i64 8)
  store i64 0, ptr %77, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %6, align 4
  %80 = alloca i64, align 8
  store i64 8, ptr %80, align 4
  call void @runtime.StoreHiddenPointee(i64 %79, ptr %80, i64 8)
  store i64 0, ptr %80, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %8, align 4
  %83 = alloca i64, align 8
  store i64 23, ptr %83, align 4
  call void @runtime.StoreHiddenPointee(i64 %82, ptr %83, i64 8)
  store i64 0, ptr %83, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %10, align 4
  %86 = alloca i64, align 8
  store i64 2, ptr %86, align 4
  call void @runtime.StoreHiddenPointee(i64 %85, ptr %86, i64 8)
  store i64 0, ptr %86, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %87 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %12, align 4
  %89 = alloca i64, align 8
  store i64 7, ptr %89, align 4
  call void @runtime.StoreHiddenPointee(i64 %88, ptr %89, i64 8)
  store i64 0, ptr %89, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b$1", ptr %14, align 8
  %90 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load i64, ptr %2, align 4
  %92 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %93 = mul i64 %92, 8
  %94 = call i64 @runtime.AdvanceHiddenPointer(i64 %91, i64 %93)
  store i64 %94, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %94)
  %95 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load i64, ptr %15, align 4
  %97 = and i64 %96, 72057594037927935
  %98 = lshr i64 %97, 17
  %99 = select i1 false, i64 0, i64 %98
  %100 = shl i64 %97, 39
  %101 = select i1 false, i64 0, i64 %100
  %102 = or i64 %99, %101
  %103 = and i64 %102, 72057594037927935
  %104 = xor i64 %103, 25399393228665167
  %105 = inttoptr i64 %104 to ptr
  store ptr %105, ptr %17, align 8
  %106 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %14, align 8
  store ptr %107, ptr %18, align 8
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %109 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load ptr, ptr %17, align 8
  %111 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load { ptr, ptr }, ptr %18, align 8
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store { ptr, ptr } zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %110, i64 5, i64 8, { ptr, ptr } %112)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %108)
  %113 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %2, align 4
  %115 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %115, i64 %114, i64 40)
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load [5 x i64], ptr %115, align 4
  store [5 x i64] zeroinitializer, ptr %115, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %118 = phi i64 [ -1, %_llgo_0 ], [ %119, %_llgo_2 ]
  %119 = add i64 %118, 1
  %120 = icmp slt i64 %119, 5
  br i1 %120, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %121 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load i64, ptr %2, align 4
  %123 = and i64 %122, 72057594037927935
  %124 = lshr i64 %123, 17
  %125 = select i1 false, i64 0, i64 %124
  %126 = shl i64 %123, 39
  %127 = select i1 false, i64 0, i64 %126
  %128 = or i64 %125, %127
  %129 = and i64 %128, 72057594037927935
  %130 = xor i64 %129, 25399393228665167
  %131 = inttoptr i64 %130 to ptr
  %132 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %119, i64 5)
  %133 = getelementptr inbounds i64, ptr %131, i64 %132
  %134 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i64, ptr %133, align 4
  %136 = and i64 ptrtoint (ptr @15 to i64), 72057594037927935
  %137 = xor i64 %136, 25399393228665167
  %138 = shl i64 %137, 17
  %139 = select i1 false, i64 0, i64 %138
  %140 = lshr i64 %137, 39
  %141 = select i1 false, i64 0, i64 %140
  %142 = or i64 %139, %141
  %143 = and i64 %142, 72057594037927935
  %144 = or i64 %143, -6557241057451442176
  store i64 %144, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %144)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %146 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load i64, ptr %19, align 4
  %148 = and i64 %147, 72057594037927935
  %149 = lshr i64 %148, 17
  %150 = select i1 false, i64 0, i64 %149
  %151 = shl i64 %148, 39
  %152 = select i1 false, i64 0, i64 %151
  %153 = or i64 %150, %152
  %154 = and i64 %153, 72057594037927935
  %155 = xor i64 %154, 25399393228665167
  %156 = inttoptr i64 %155 to ptr
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 24)
  call void @runtime.ClobberPointerRegs()
  %157 = call i32 (ptr, ...) @printf(ptr %156, i64 %135)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %145)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort4b$1"(ptr %0, ptr %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a"() {
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
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca { i64, i64, i64 }, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  %27 = and i64 ptrtoint (ptr @16 to i64), 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = shl i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = lshr i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = or i64 %34, -6557241057451442176
  store i64 %35, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %35)
  call void @runtime.ClobberPointerRegs()
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %37 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %0, align 4
  %39 = and i64 %38, 72057594037927935
  %40 = lshr i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = shl i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = inttoptr i64 %46 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %48 = call i32 (ptr, ...) @printf(ptr %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %36)
  %49 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %49, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %49)
  %50 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %2, align 4
  %52 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %53 = mul i64 %52, 8
  %54 = call i64 @runtime.AdvanceHiddenPointer(i64 %51, i64 %53)
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  %55 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %2, align 4
  %57 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %58 = mul i64 %57, 8
  %59 = call i64 @runtime.AdvanceHiddenPointer(i64 %56, i64 %58)
  store i64 %59, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %59)
  %60 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %2, align 4
  %62 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %63 = mul i64 %62, 8
  %64 = call i64 @runtime.AdvanceHiddenPointer(i64 %61, i64 %63)
  store i64 %64, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %64)
  %65 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load i64, ptr %2, align 4
  %67 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %68 = mul i64 %67, 8
  %69 = call i64 @runtime.AdvanceHiddenPointer(i64 %66, i64 %68)
  store i64 %69, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %69)
  %70 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load i64, ptr %2, align 4
  %72 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %73 = mul i64 %72, 8
  %74 = call i64 @runtime.AdvanceHiddenPointer(i64 %71, i64 %73)
  store i64 %74, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %74)
  %75 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load i64, ptr %4, align 4
  %77 = alloca i64, align 8
  store i64 100, ptr %77, align 4
  call void @runtime.StoreHiddenPointee(i64 %76, ptr %77, i64 8)
  store i64 0, ptr %77, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %6, align 4
  %80 = alloca i64, align 8
  store i64 8, ptr %80, align 4
  call void @runtime.StoreHiddenPointee(i64 %79, ptr %80, i64 8)
  store i64 0, ptr %80, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %8, align 4
  %83 = alloca i64, align 8
  store i64 23, ptr %83, align 4
  call void @runtime.StoreHiddenPointee(i64 %82, ptr %83, i64 8)
  store i64 0, ptr %83, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %10, align 4
  %86 = alloca i64, align 8
  store i64 2, ptr %86, align 4
  call void @runtime.StoreHiddenPointee(i64 %85, ptr %86, i64 8)
  store i64 0, ptr %86, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %87 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %12, align 4
  %89 = alloca i64, align 8
  store i64 7, ptr %89, align 4
  call void @runtime.StoreHiddenPointee(i64 %88, ptr %89, i64 8)
  store i64 0, ptr %89, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a$1", ptr %14, align 8
  %90 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load i64, ptr %2, align 4
  %92 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %93 = mul i64 %92, 8
  %94 = call i64 @runtime.AdvanceHiddenPointer(i64 %91, i64 %93)
  store i64 %94, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %94)
  %95 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load i64, ptr %15, align 4
  %97 = and i64 %96, 72057594037927935
  %98 = lshr i64 %97, 17
  %99 = select i1 false, i64 0, i64 %98
  %100 = shl i64 %97, 39
  %101 = select i1 false, i64 0, i64 %100
  %102 = or i64 %99, %101
  %103 = and i64 %102, 72057594037927935
  %104 = xor i64 %103, 25399393228665167
  %105 = inttoptr i64 %104 to ptr
  store ptr %105, ptr %17, align 8
  %106 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %14, align 8
  store ptr %107, ptr %18, align 8
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %109 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load ptr, ptr %17, align 8
  %111 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load ptr, ptr %18, align 8
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %110, i64 5, i64 8, ptr %112)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %108)
  %113 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %2, align 4
  %115 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %115, i64 %114, i64 40)
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load [5 x i64], ptr %115, align 4
  store [5 x i64] zeroinitializer, ptr %115, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %118 = phi i64 [ -1, %_llgo_0 ], [ %119, %_llgo_2 ]
  %119 = add i64 %118, 1
  %120 = icmp slt i64 %119, 5
  br i1 %120, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %121 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load i64, ptr %2, align 4
  %123 = and i64 %122, 72057594037927935
  %124 = lshr i64 %123, 17
  %125 = select i1 false, i64 0, i64 %124
  %126 = shl i64 %123, 39
  %127 = select i1 false, i64 0, i64 %126
  %128 = or i64 %125, %127
  %129 = and i64 %128, 72057594037927935
  %130 = xor i64 %129, 25399393228665167
  %131 = inttoptr i64 %130 to ptr
  %132 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %119, i64 5)
  %133 = getelementptr inbounds i64, ptr %131, i64 %132
  %134 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i64, ptr %133, align 4
  %136 = and i64 ptrtoint (ptr @17 to i64), 72057594037927935
  %137 = xor i64 %136, 25399393228665167
  %138 = shl i64 %137, 17
  %139 = select i1 false, i64 0, i64 %138
  %140 = lshr i64 %137, 39
  %141 = select i1 false, i64 0, i64 %140
  %142 = or i64 %139, %141
  %143 = and i64 %142, 72057594037927935
  %144 = or i64 %143, -6557241057451442176
  store i64 %144, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %144)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %146 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load i64, ptr %19, align 4
  %148 = and i64 %147, 72057594037927935
  %149 = lshr i64 %148, 17
  %150 = select i1 false, i64 0, i64 %149
  %151 = shl i64 %148, 39
  %152 = select i1 false, i64 0, i64 %151
  %153 = or i64 %150, %152
  %154 = and i64 %153, 72057594037927935
  %155 = xor i64 %154, 25399393228665167
  %156 = inttoptr i64 %155 to ptr
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 24)
  call void @runtime.ClobberPointerRegs()
  %157 = call i32 (ptr, ...) @printf(ptr %156, i64 %135)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %145)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5a$1"(ptr %0, ptr %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b"() {
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
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  store ptr null, ptr %20, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  store ptr null, ptr %22, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca { i64, i64, i64 }, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  %27 = and i64 ptrtoint (ptr @18 to i64), 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = shl i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = lshr i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = or i64 %34, -6557241057451442176
  store i64 %35, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %35)
  call void @runtime.ClobberPointerRegs()
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %37 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load i64, ptr %0, align 4
  %39 = and i64 %38, 72057594037927935
  %40 = lshr i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = shl i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = inttoptr i64 %46 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %48 = call i32 (ptr, ...) @printf(ptr %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %36)
  %49 = call i64 @runtime.AllocZHidden(i64 40)
  store i64 %49, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %49)
  %50 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %2, align 4
  %52 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %53 = mul i64 %52, 8
  %54 = call i64 @runtime.AdvanceHiddenPointer(i64 %51, i64 %53)
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  %55 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %2, align 4
  %57 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 5)
  %58 = mul i64 %57, 8
  %59 = call i64 @runtime.AdvanceHiddenPointer(i64 %56, i64 %58)
  store i64 %59, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %59)
  %60 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %2, align 4
  %62 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 5)
  %63 = mul i64 %62, 8
  %64 = call i64 @runtime.AdvanceHiddenPointer(i64 %61, i64 %63)
  store i64 %64, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %64)
  %65 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load i64, ptr %2, align 4
  %67 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 5)
  %68 = mul i64 %67, 8
  %69 = call i64 @runtime.AdvanceHiddenPointer(i64 %66, i64 %68)
  store i64 %69, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %69)
  %70 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load i64, ptr %2, align 4
  %72 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 5)
  %73 = mul i64 %72, 8
  %74 = call i64 @runtime.AdvanceHiddenPointer(i64 %71, i64 %73)
  store i64 %74, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %74)
  %75 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = load i64, ptr %4, align 4
  %77 = alloca i64, align 8
  store i64 100, ptr %77, align 4
  call void @runtime.StoreHiddenPointee(i64 %76, ptr %77, i64 8)
  store i64 0, ptr %77, align 4
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %78 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %78)
  %79 = load i64, ptr %6, align 4
  %80 = alloca i64, align 8
  store i64 8, ptr %80, align 4
  call void @runtime.StoreHiddenPointee(i64 %79, ptr %80, i64 8)
  store i64 0, ptr %80, align 4
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %81 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %8, align 4
  %83 = alloca i64, align 8
  store i64 23, ptr %83, align 4
  call void @runtime.StoreHiddenPointee(i64 %82, ptr %83, i64 8)
  store i64 0, ptr %83, align 4
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %10, align 4
  %86 = alloca i64, align 8
  store i64 2, ptr %86, align 4
  call void @runtime.StoreHiddenPointee(i64 %85, ptr %86, i64 8)
  store i64 0, ptr %86, align 4
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %87 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %12, align 4
  %89 = alloca i64, align 8
  store i64 7, ptr %89, align 4
  call void @runtime.StoreHiddenPointee(i64 %88, ptr %89, i64 8)
  store i64 0, ptr %89, align 4
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  store ptr @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b$1", ptr %14, align 8
  %90 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load i64, ptr %2, align 4
  %92 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 5)
  %93 = mul i64 %92, 8
  %94 = call i64 @runtime.AdvanceHiddenPointer(i64 %91, i64 %93)
  store i64 %94, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %94)
  %95 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %95)
  %96 = load i64, ptr %15, align 4
  %97 = and i64 %96, 72057594037927935
  %98 = lshr i64 %97, 17
  %99 = select i1 false, i64 0, i64 %98
  %100 = shl i64 %97, 39
  %101 = select i1 false, i64 0, i64 %100
  %102 = or i64 %99, %101
  %103 = and i64 %102, 72057594037927935
  %104 = xor i64 %103, 25399393228665167
  %105 = inttoptr i64 %104 to ptr
  store ptr %105, ptr %17, align 8
  %106 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load ptr, ptr %14, align 8
  store ptr %107, ptr %18, align 8
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %109 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load ptr, ptr %17, align 8
  %111 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %111)
  %112 = load ptr, ptr %18, align 8
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @qsort(ptr %110, i64 5, i64 8, ptr %112)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %108)
  %113 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %2, align 4
  %115 = alloca [5 x i64], align 8
  call void @runtime.LoadHiddenPointee(ptr %115, i64 %114, i64 40)
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load [5 x i64], ptr %115, align 4
  store [5 x i64] zeroinitializer, ptr %115, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %118 = phi i64 [ -1, %_llgo_0 ], [ %119, %_llgo_2 ]
  %119 = add i64 %118, 1
  %120 = icmp slt i64 %119, 5
  br i1 %120, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %121 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load i64, ptr %2, align 4
  %123 = and i64 %122, 72057594037927935
  %124 = lshr i64 %123, 17
  %125 = select i1 false, i64 0, i64 %124
  %126 = shl i64 %123, 39
  %127 = select i1 false, i64 0, i64 %126
  %128 = or i64 %125, %127
  %129 = and i64 %128, 72057594037927935
  %130 = xor i64 %129, 25399393228665167
  %131 = inttoptr i64 %130 to ptr
  %132 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %119, i64 5)
  %133 = getelementptr inbounds i64, ptr %131, i64 %132
  %134 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i64, ptr %133, align 4
  %136 = and i64 ptrtoint (ptr @19 to i64), 72057594037927935
  %137 = xor i64 %136, 25399393228665167
  %138 = shl i64 %137, 17
  %139 = select i1 false, i64 0, i64 %138
  %140 = lshr i64 %137, 39
  %141 = select i1 false, i64 0, i64 %140
  %142 = or i64 %139, %141
  %143 = and i64 %142, 72057594037927935
  %144 = or i64 %143, -6557241057451442176
  store i64 %144, ptr %19, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %20, i64 %144)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %146 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load i64, ptr %19, align 4
  %148 = and i64 %147, 72057594037927935
  %149 = lshr i64 %148, 17
  %150 = select i1 false, i64 0, i64 %149
  %151 = shl i64 %148, 39
  %152 = select i1 false, i64 0, i64 %151
  %153 = or i64 %150, %152
  %154 = and i64 %153, 72057594037927935
  %155 = xor i64 %154, 25399393228665167
  %156 = inttoptr i64 %155 to ptr
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store i64 0, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 24)
  call void @runtime.ClobberPointerRegs()
  %157 = call i32 (ptr, ...) @printf(ptr %156, i64 %135)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %145)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/qsortfn.sort5b$1"(ptr %0, ptr %1) {
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

declare void @"github.com/goplus/llgo/cl/_testrt/qsortfn/qsort.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i32 @printf(ptr, ...)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i64 @runtime.AllocZHidden(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @qsort(ptr, i64, i64, ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)
