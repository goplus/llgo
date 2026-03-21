; ModuleID = 'github.com/goplus/llgo/cl/_testrt/intgen'
source_filename = "github.com/goplus/llgo/cl/_testrt/intgen"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testrt/intgen.generator" = type { i32 }

@"github.com/goplus/llgo/cl/_testrt/intgen.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %0, i64 %0, i64 4)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %5)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = phi i64 [ -1, %_llgo_0 ], [ %8, %_llgo_2 ]
  %8 = add i64 %7, 1
  %9 = icmp slt i64 %8, %6
  br i1 %9, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %11 = extractvalue { ptr, ptr } %1, 1
  %12 = extractvalue { ptr, ptr } %1, 0
  %13 = call i32 %12(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %10)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, 0
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, 1
  %16 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %8, i64 %15)
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 72057594037927935
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
  %28 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %2, align 4
  %30 = alloca i32, align 4
  store i32 %13, ptr %30, align 4
  call void @runtime.StoreHiddenPointee(i64 %29, ptr %30, i64 4)
  store i32 0, ptr %30, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4
}

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %9, i32 0, i32 0
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
  store i64 %21, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %1, align 4
  %24 = alloca i32, align 4
  call void @runtime.LoadHiddenPointee(ptr %24, i64 %23, i64 4)
  %25 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i32, ptr %24, align 4
  store i32 0, ptr %24, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %27 = add i32 %26, 1
  %28 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load ptr, ptr %7, align 8
  %30 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %29, i32 0, i32 0
  %32 = ptrtoint ptr %31 to i64
  %33 = and i64 %32, 72057594037927935
  %34 = xor i64 %33, 25399393228665167
  %35 = shl i64 %34, 17
  %36 = select i1 false, i64 0, i64 %35
  %37 = lshr i64 %34, 39
  %38 = select i1 false, i64 0, i64 %37
  %39 = or i64 %36, %38
  %40 = and i64 %39, 72057594037927935
  %41 = or i64 %40, -6557241057451442176
  store i64 %41, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %41)
  call void @runtime.ClobberPointerRegs()
  %42 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = load i64, ptr %3, align 4
  %44 = alloca i32, align 4
  store i32 %27, ptr %44, align 4
  call void @runtime.StoreHiddenPointee(i64 %43, ptr %44, i64 4)
  store i32 0, ptr %44, align 4
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load ptr, ptr %7, align 8
  %47 = icmp eq ptr %46, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %46, i32 0, i32 0
  %49 = ptrtoint ptr %48 to i64
  %50 = and i64 %49, 72057594037927935
  %51 = xor i64 %50, 25399393228665167
  %52 = shl i64 %51, 17
  %53 = select i1 false, i64 0, i64 %52
  %54 = lshr i64 %51, 39
  %55 = select i1 false, i64 0, i64 %54
  %56 = or i64 %53, %55
  %57 = and i64 %56, 72057594037927935
  %58 = or i64 %57, -6557241057451442176
  store i64 %58, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %58)
  call void @runtime.ClobberPointerRegs()
  %59 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load i64, ptr %5, align 4
  %61 = alloca i32, align 4
  call void @runtime.LoadHiddenPointee(ptr %61, i64 %60, i64 4)
  %62 = icmp eq ptr %61, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = load i32, ptr %61, align 4
  store i32 0, ptr %61, align 4
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret i32 %63
}

define void @"github.com/goplus/llgo/cl/_testrt/intgen.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/intgen.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/intgen.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/intgen.main"() {
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
  %8 = alloca { i64, i64, i64 }, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca { ptr, ptr }, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
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
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca i64, align 8
  %26 = alloca ptr, align 8
  store ptr null, ptr %26, align 8
  %27 = alloca { ptr, ptr }, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca i64, align 8
  %31 = alloca ptr, align 8
  store ptr null, ptr %31, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  store ptr null, ptr %33, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  store ptr null, ptr %35, align 8
  %36 = alloca { i64, i64, i64 }, align 8
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %37, align 8
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %39 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr } { ptr @__llgo_stub.rand, ptr null })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %38)
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %40)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %42 = phi i64 [ -1, %_llgo_0 ], [ %43, %_llgo_2 ]
  %43 = add i64 %42, 1
  %44 = icmp slt i64 %43, %41
  br i1 %44, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 0
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 1
  %47 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %43, i64 %46)
  %48 = getelementptr inbounds i32, ptr %45, i64 %47
  %49 = ptrtoint ptr %48 to i64
  %50 = and i64 %49, 72057594037927935
  %51 = xor i64 %50, 25399393228665167
  %52 = shl i64 %51, 17
  %53 = select i1 false, i64 0, i64 %52
  %54 = lshr i64 %51, 39
  %55 = select i1 false, i64 0, i64 %54
  %56 = or i64 %53, %55
  %57 = and i64 %56, 72057594037927935
  %58 = or i64 %57, -6557241057451442176
  store i64 %58, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %58)
  call void @runtime.ClobberPointerRegs()
  %59 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load i64, ptr %0, align 4
  %61 = alloca i32, align 4
  call void @runtime.LoadHiddenPointee(ptr %61, i64 %60, i64 4)
  %62 = icmp eq ptr %61, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = load i32, ptr %61, align 4
  store i32 0, ptr %61, align 4
  %64 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %65 = xor i64 %64, 25399393228665167
  %66 = shl i64 %65, 17
  %67 = select i1 false, i64 0, i64 %66
  %68 = lshr i64 %65, 39
  %69 = select i1 false, i64 0, i64 %68
  %70 = or i64 %67, %69
  %71 = and i64 %70, 72057594037927935
  %72 = or i64 %71, -6557241057451442176
  store i64 %72, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %72)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %74 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %2, align 4
  %76 = and i64 %75, 72057594037927935
  %77 = lshr i64 %76, 17
  %78 = select i1 false, i64 0, i64 %77
  %79 = shl i64 %76, 39
  %80 = select i1 false, i64 0, i64 %79
  %81 = or i64 %78, %80
  %82 = and i64 %81, 72057594037927935
  %83 = xor i64 %82, 25399393228665167
  %84 = inttoptr i64 %83 to ptr
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 24)
  call void @runtime.ClobberPointerRegs()
  %85 = call i32 (ptr, ...) @printf(ptr %84, i32 %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %73)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %86 = call i64 @runtime.AllocZHidden(i64 4)
  store i64 %86, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %86)
  %87 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %10, align 4
  %89 = alloca i32, align 4
  store i32 1, ptr %89, align 4
  call void @runtime.StoreHiddenPointee(i64 %88, ptr %89, i64 4)
  store i32 0, ptr %89, align 4
  %90 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load i64, ptr %10, align 4
  %92 = and i64 %91, 72057594037927935
  %93 = lshr i64 %92, 17
  %94 = select i1 false, i64 0, i64 %93
  %95 = shl i64 %92, 39
  %96 = select i1 false, i64 0, i64 %95
  %97 = or i64 %94, %96
  %98 = and i64 %97, 72057594037927935
  %99 = xor i64 %98, 25399393228665167
  %100 = inttoptr i64 %99 to ptr
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %102 = getelementptr inbounds { ptr }, ptr %101, i32 0, i32 0
  store ptr %100, ptr %102, align 8
  %103 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.main$1", ptr undef }, ptr %101, 1
  store { ptr, ptr } %103, ptr %12, align 8
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %105 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %105)
  %106 = load { ptr, ptr }, ptr %12, align 8
  store { ptr, ptr } zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  call void @runtime.ClobberPointerRegs()
  %107 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr } %106)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %104)
  %108 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %109 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %108)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %110 = phi i64 [ -1, %_llgo_3 ], [ %111, %_llgo_5 ]
  %111 = add i64 %110, 1
  %112 = icmp slt i64 %111, %109
  br i1 %112, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %113 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, 0
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, 1
  %115 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %111, i64 %114)
  %116 = getelementptr inbounds i32, ptr %113, i64 %115
  %117 = ptrtoint ptr %116 to i64
  %118 = and i64 %117, 72057594037927935
  %119 = xor i64 %118, 25399393228665167
  %120 = shl i64 %119, 17
  %121 = select i1 false, i64 0, i64 %120
  %122 = lshr i64 %119, 39
  %123 = select i1 false, i64 0, i64 %122
  %124 = or i64 %121, %123
  %125 = and i64 %124, 72057594037927935
  %126 = or i64 %125, -6557241057451442176
  store i64 %126, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %126)
  call void @runtime.ClobberPointerRegs()
  %127 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %127)
  %128 = load i64, ptr %13, align 4
  %129 = alloca i32, align 4
  call void @runtime.LoadHiddenPointee(ptr %129, i64 %128, i64 4)
  %130 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load i32, ptr %129, align 4
  store i32 0, ptr %129, align 4
  %132 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %133 = xor i64 %132, 25399393228665167
  %134 = shl i64 %133, 17
  %135 = select i1 false, i64 0, i64 %134
  %136 = lshr i64 %133, 39
  %137 = select i1 false, i64 0, i64 %136
  %138 = or i64 %135, %137
  %139 = and i64 %138, 72057594037927935
  %140 = or i64 %139, -6557241057451442176
  store i64 %140, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %140)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  store ptr null, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  call void @runtime.ClobberPointerRegs()
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %142 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %142)
  %143 = load i64, ptr %15, align 4
  %144 = and i64 %143, 72057594037927935
  %145 = lshr i64 %144, 17
  %146 = select i1 false, i64 0, i64 %145
  %147 = shl i64 %144, 39
  %148 = select i1 false, i64 0, i64 %147
  %149 = or i64 %146, %148
  %150 = and i64 %149, 72057594037927935
  %151 = xor i64 %150, 25399393228665167
  %152 = inttoptr i64 %151 to ptr
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
  %153 = call i32 (ptr, ...) @printf(ptr %152, i32 %131)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %141)
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_4
  %154 = call i64 @runtime.AllocZHidden(i64 4)
  store i64 %154, ptr %23, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %24, i64 %154)
  %155 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = load i64, ptr %23, align 4
  %157 = and i64 %156, 72057594037927935
  %158 = lshr i64 %157, 17
  %159 = select i1 false, i64 0, i64 %158
  %160 = shl i64 %157, 39
  %161 = select i1 false, i64 0, i64 %160
  %162 = or i64 %159, %161
  %163 = and i64 %162, 72057594037927935
  %164 = xor i64 %163, 25399393228665167
  %165 = inttoptr i64 %164 to ptr
  %166 = icmp eq ptr %165, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %166)
  %167 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/intgen.generator", ptr %165, i32 0, i32 0
  %168 = ptrtoint ptr %167 to i64
  %169 = and i64 %168, 72057594037927935
  %170 = xor i64 %169, 25399393228665167
  %171 = shl i64 %170, 17
  %172 = select i1 false, i64 0, i64 %171
  %173 = lshr i64 %170, 39
  %174 = select i1 false, i64 0, i64 %173
  %175 = or i64 %172, %174
  %176 = and i64 %175, 72057594037927935
  %177 = or i64 %176, -6557241057451442176
  store i64 %177, ptr %25, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %26, i64 %177)
  call void @runtime.ClobberPointerRegs()
  %178 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %178)
  %179 = load i64, ptr %25, align 4
  %180 = alloca i32, align 4
  store i32 1, ptr %180, align 4
  call void @runtime.StoreHiddenPointee(i64 %179, ptr %180, i64 4)
  store i32 0, ptr %180, align 4
  store i64 0, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  store ptr null, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  call void @runtime.ClobberPointerRegs()
  %181 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %181)
  %182 = load i64, ptr %23, align 4
  %183 = and i64 %182, 72057594037927935
  %184 = lshr i64 %183, 17
  %185 = select i1 false, i64 0, i64 %184
  %186 = shl i64 %183, 39
  %187 = select i1 false, i64 0, i64 %186
  %188 = or i64 %185, %187
  %189 = and i64 %188, 72057594037927935
  %190 = xor i64 %189, 25399393228665167
  %191 = inttoptr i64 %190 to ptr
  %192 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %193 = getelementptr inbounds { ptr }, ptr %192, i32 0, i32 0
  store ptr %191, ptr %193, align 8
  %194 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound", ptr undef }, ptr %192, 1
  store { ptr, ptr } %194, ptr %27, align 8
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %195 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %196 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %196)
  %197 = load { ptr, ptr }, ptr %27, align 8
  store { ptr, ptr } zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 16)
  call void @runtime.ClobberPointerRegs()
  %198 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testrt/intgen.genInts"(i64 5, { ptr, ptr } %197)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %195)
  %199 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %200 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %198, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %199)
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  %201 = phi i64 [ -1, %_llgo_6 ], [ %202, %_llgo_8 ]
  %202 = add i64 %201, 1
  %203 = icmp slt i64 %202, %200
  br i1 %203, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %204 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %198, 0
  %205 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %198, 1
  %206 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 %202, i64 %205)
  %207 = getelementptr inbounds i32, ptr %204, i64 %206
  %208 = ptrtoint ptr %207 to i64
  %209 = and i64 %208, 72057594037927935
  %210 = xor i64 %209, 25399393228665167
  %211 = shl i64 %210, 17
  %212 = select i1 false, i64 0, i64 %211
  %213 = lshr i64 %210, 39
  %214 = select i1 false, i64 0, i64 %213
  %215 = or i64 %212, %214
  %216 = and i64 %215, 72057594037927935
  %217 = or i64 %216, -6557241057451442176
  store i64 %217, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %217)
  call void @runtime.ClobberPointerRegs()
  %218 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %218)
  %219 = load i64, ptr %28, align 4
  %220 = alloca i32, align 4
  call void @runtime.LoadHiddenPointee(ptr %220, i64 %219, i64 4)
  %221 = icmp eq ptr %220, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %221)
  %222 = load i32, ptr %220, align 4
  store i32 0, ptr %220, align 4
  %223 = and i64 ptrtoint (ptr @2 to i64), 72057594037927935
  %224 = xor i64 %223, 25399393228665167
  %225 = shl i64 %224, 17
  %226 = select i1 false, i64 0, i64 %225
  %227 = lshr i64 %224, 39
  %228 = select i1 false, i64 0, i64 %227
  %229 = or i64 %226, %228
  %230 = and i64 %229, 72057594037927935
  %231 = or i64 %230, -6557241057451442176
  store i64 %231, ptr %30, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %31, i64 %231)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  store ptr null, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  call void @runtime.ClobberPointerRegs()
  %232 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %233 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %233)
  %234 = load i64, ptr %30, align 4
  %235 = and i64 %234, 72057594037927935
  %236 = lshr i64 %235, 17
  %237 = select i1 false, i64 0, i64 %236
  %238 = shl i64 %235, 39
  %239 = select i1 false, i64 0, i64 %238
  %240 = or i64 %237, %239
  %241 = and i64 %240, 72057594037927935
  %242 = xor i64 %241, 25399393228665167
  %243 = inttoptr i64 %242 to ptr
  store i64 0, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store ptr null, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %36, align 4
  call void @runtime.TouchConservativeSlot(ptr %36, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 24)
  call void @runtime.ClobberPointerRegs()
  %244 = call i32 (ptr, ...) @printf(ptr %243, i32 %222)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %232)
  br label %_llgo_7

_llgo_9:                                          ; preds = %_llgo_7
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.main$1"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i32, ptr %3, align 4
  %6 = mul i32 %5, 2
  %7 = extractvalue { ptr } %2, 0
  store i32 %6, ptr %7, align 4
  %8 = extractvalue { ptr } %2, 0
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load i32, ptr %8, align 4
  ret i32 %10
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @"github.com/goplus/lib/c.init"()

declare i32 @rand()

define linkonce i32 @__llgo_stub.rand(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @rand)
  %2 = tail call i32 @rand()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  ret i32 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i32 @printf(ptr, ...)

declare i64 @runtime.AllocZHidden(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next$bound"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = call i32 @"github.com/goplus/llgo/cl/_testrt/intgen.(*generator).next"(ptr %3)
  ret i32 %4
}
