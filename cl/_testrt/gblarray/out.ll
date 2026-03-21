; ModuleID = 'github.com/goplus/llgo/cl/_testrt/gblarray'
source_filename = "github.com/goplus/llgo/cl/_testrt/gblarray"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes" = global [25 x ptr] zeroinitializer, align 8
@"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes" = global [25 x i64] zeroinitializer, align 8
@0 = private unnamed_addr constant [20 x i8] c"Kind: %d, Size: %d\0A\00", align 1

define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic"(i64 %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %5 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexUint"(i64 %0, i64 25)
  %6 = getelementptr inbounds ptr, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes", i64 %5
  %7 = ptrtoint ptr %6 to i64
  %8 = and i64 %7, 72057594037927935
  %9 = xor i64 %8, 25399393228665167
  %10 = shl i64 %9, 17
  %11 = select i1 false, i64 0, i64 %10
  %12 = lshr i64 %9, 39
  %13 = select i1 false, i64 0, i64 %12
  %14 = or i64 %11, %13
  %15 = and i64 %14, 72057594037927935
  %16 = or i64 %15, -6557241057451442176
  store i64 %16, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %16)
  call void @runtime.ClobberPointerRegs()
  %17 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load i64, ptr %1, align 4
  %19 = call i64 @runtime.LoadHiddenPointerKey(i64 %18)
  store i64 %19, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %19)
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %3, align 4
  %22 = and i64 %21, 72057594037927935
  %23 = lshr i64 %22, 17
  %24 = select i1 false, i64 0, i64 %23
  %25 = shl i64 %22, 39
  %26 = select i1 false, i64 0, i64 %25
  %27 = or i64 %24, %26
  %28 = and i64 %27, 72057594037927935
  %29 = xor i64 %28, 25399393228665167
  %30 = inttoptr i64 %29 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %30
}

define ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicType"(i64 %0) {
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
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = call i64 @runtime.AllocZHidden(i64 72)
  store i64 %11, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %11)
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load i64, ptr %1, align 4
  %14 = and i64 %13, 72057594037927935
  %15 = lshr i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = shl i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = xor i64 %20, 25399393228665167
  %22 = inttoptr i64 %21 to ptr
  %23 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %22, i32 0, i32 0
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = shl i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = lshr i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = or i64 %33, -6557241057451442176
  store i64 %34, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %34)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %35 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexUint"(i64 %0, i64 25)
  %36 = getelementptr inbounds i64, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes", i64 %35
  %37 = ptrtoint ptr %36 to i64
  %38 = and i64 %37, 72057594037927935
  %39 = xor i64 %38, 25399393228665167
  %40 = shl i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = lshr i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = or i64 %45, -6557241057451442176
  store i64 %46, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %46)
  call void @runtime.ClobberPointerRegs()
  %47 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %5, align 4
  %49 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %49, i64 %48, i64 8)
  %50 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %49, align 4
  store i64 0, ptr %49, align 4
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %52 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load i64, ptr %1, align 4
  %54 = and i64 %53, 72057594037927935
  %55 = lshr i64 %54, 17
  %56 = select i1 false, i64 0, i64 %55
  %57 = shl i64 %54, 39
  %58 = select i1 false, i64 0, i64 %57
  %59 = or i64 %56, %58
  %60 = and i64 %59, 72057594037927935
  %61 = xor i64 %60, 25399393228665167
  %62 = inttoptr i64 %61 to ptr
  %63 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %62, i32 0, i32 2
  %65 = ptrtoint ptr %64 to i64
  %66 = and i64 %65, 72057594037927935
  %67 = xor i64 %66, 25399393228665167
  %68 = shl i64 %67, 17
  %69 = select i1 false, i64 0, i64 %68
  %70 = lshr i64 %67, 39
  %71 = select i1 false, i64 0, i64 %70
  %72 = or i64 %69, %71
  %73 = and i64 %72, 72057594037927935
  %74 = or i64 %73, -6557241057451442176
  store i64 %74, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %74)
  call void @runtime.ClobberPointerRegs()
  %75 = trunc i64 %0 to i32
  %76 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load i64, ptr %1, align 4
  %78 = and i64 %77, 72057594037927935
  %79 = lshr i64 %78, 17
  %80 = select i1 false, i64 0, i64 %79
  %81 = shl i64 %78, 39
  %82 = select i1 false, i64 0, i64 %81
  %83 = or i64 %80, %82
  %84 = and i64 %83, 72057594037927935
  %85 = xor i64 %84, 25399393228665167
  %86 = inttoptr i64 %85 to ptr
  %87 = icmp eq ptr %86, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %86, i32 0, i32 6
  %89 = ptrtoint ptr %88 to i64
  %90 = and i64 %89, 72057594037927935
  %91 = xor i64 %90, 25399393228665167
  %92 = shl i64 %91, 17
  %93 = select i1 false, i64 0, i64 %92
  %94 = lshr i64 %91, 39
  %95 = select i1 false, i64 0, i64 %94
  %96 = or i64 %93, %95
  %97 = and i64 %96, 72057594037927935
  %98 = or i64 %97, -6557241057451442176
  store i64 %98, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %98)
  call void @runtime.ClobberPointerRegs()
  %99 = trunc i64 %0 to i8
  %100 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %100)
  %101 = load i64, ptr %3, align 4
  %102 = alloca i64, align 8
  store i64 %51, ptr %102, align 4
  call void @runtime.StoreHiddenPointee(i64 %101, ptr %102, i64 8)
  store i64 0, ptr %102, align 4
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %103 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %103)
  %104 = load i64, ptr %7, align 4
  %105 = alloca i32, align 4
  store i32 %75, ptr %105, align 4
  call void @runtime.StoreHiddenPointee(i64 %104, ptr %105, i64 4)
  store i32 0, ptr %105, align 4
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %106 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load i64, ptr %9, align 4
  %108 = alloca i8, align 1
  store i8 %99, ptr %108, align 1
  call void @runtime.StoreHiddenPointee(i64 %107, ptr %108, i64 1)
  store i8 0, ptr %108, align 1
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %109 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load i64, ptr %1, align 4
  %111 = and i64 %110, 72057594037927935
  %112 = lshr i64 %111, 17
  %113 = select i1 false, i64 0, i64 %112
  %114 = shl i64 %111, 39
  %115 = select i1 false, i64 0, i64 %114
  %116 = or i64 %113, %115
  %117 = and i64 %116, 72057594037927935
  %118 = xor i64 %117, 25399393228665167
  %119 = inttoptr i64 %118 to ptr
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %119
}

define void @"github.com/goplus/llgo/cl/_testrt/gblarray.init"() {
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %6 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard", align 1
  br i1 %6, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %7 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexUint"(i64 24, i64 25)
  %8 = getelementptr inbounds i64, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.sizeBasicTypes", i64 %7
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %0, align 4
  %21 = alloca i64, align 8
  store i64 16, ptr %21, align 4
  call void @runtime.StoreHiddenPointee(i64 %20, ptr %21, i64 8)
  store i64 0, ptr %21, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %22 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexUint"(i64 24, i64 25)
  %23 = getelementptr inbounds ptr, ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicTypes", i64 %22
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = shl i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = lshr i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = or i64 %32, -6557241057451442176
  store i64 %33, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %33)
  call void @runtime.ClobberPointerRegs()
  %34 = call ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.basicType"(i64 24)
  %35 = ptrtoint ptr %34 to i64
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = shl i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = lshr i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = or i64 %43, -6557241057451442176
  store i64 %44, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %44)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load i64, ptr %2, align 4
  %47 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %4, align 4
  %49 = and i64 %48, 72057594037927935
  %50 = lshr i64 %49, 17
  %51 = select i1 false, i64 0, i64 %50
  %52 = shl i64 %49, 39
  %53 = select i1 false, i64 0, i64 %52
  %54 = or i64 %51, %53
  %55 = and i64 %54, 72057594037927935
  %56 = xor i64 %55, 25399393228665167
  %57 = inttoptr i64 %56 to ptr
  %58 = alloca ptr, align 8
  store ptr %57, ptr %58, align 8
  call void @runtime.StoreHiddenPointee(i64 %46, ptr %58, i64 8)
  store ptr null, ptr %58, align 8
  call void @runtime.TouchConservativeSlot(ptr %58, i64 8)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/gblarray.main"() {
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
  %14 = alloca { i64, i64, i64 }, align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %17 = call ptr @"github.com/goplus/llgo/cl/_testrt/gblarray.Basic"(i64 24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %16)
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
  store i64 %27, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %27)
  call void @runtime.ClobberPointerRegs()
  %28 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %29 = xor i64 %28, 25399393228665167
  %30 = shl i64 %29, 17
  %31 = select i1 false, i64 0, i64 %30
  %32 = lshr i64 %29, 39
  %33 = select i1 false, i64 0, i64 %32
  %34 = or i64 %31, %33
  %35 = and i64 %34, 72057594037927935
  %36 = or i64 %35, -6557241057451442176
  store i64 %36, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %36)
  call void @runtime.ClobberPointerRegs()
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
  %48 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %47, i32 0, i32 6
  %50 = ptrtoint ptr %49 to i64
  %51 = and i64 %50, 72057594037927935
  %52 = xor i64 %51, 25399393228665167
  %53 = shl i64 %52, 17
  %54 = select i1 false, i64 0, i64 %53
  %55 = lshr i64 %52, 39
  %56 = select i1 false, i64 0, i64 %55
  %57 = or i64 %54, %56
  %58 = and i64 %57, 72057594037927935
  %59 = or i64 %58, -6557241057451442176
  store i64 %59, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %59)
  call void @runtime.ClobberPointerRegs()
  %60 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %4, align 4
  %62 = call i8 @runtime.LoadHiddenUint8(i64 %61)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %63 = zext i8 %62 to i64
  %64 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %0, align 4
  %66 = and i64 %65, 72057594037927935
  %67 = lshr i64 %66, 17
  %68 = select i1 false, i64 0, i64 %67
  %69 = shl i64 %66, 39
  %70 = select i1 false, i64 0, i64 %69
  %71 = or i64 %68, %70
  %72 = and i64 %71, 72057594037927935
  %73 = xor i64 %72, 25399393228665167
  %74 = inttoptr i64 %73 to ptr
  %75 = icmp eq ptr %74, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %75)
  %76 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %74, i32 0, i32 0
  %77 = ptrtoint ptr %76 to i64
  %78 = and i64 %77, 72057594037927935
  %79 = xor i64 %78, 25399393228665167
  %80 = shl i64 %79, 17
  %81 = select i1 false, i64 0, i64 %80
  %82 = lshr i64 %79, 39
  %83 = select i1 false, i64 0, i64 %82
  %84 = or i64 %81, %83
  %85 = and i64 %84, 72057594037927935
  %86 = or i64 %85, -6557241057451442176
  store i64 %86, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %86)
  call void @runtime.ClobberPointerRegs()
  %87 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %6, align 4
  %89 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %89, i64 %88, i64 8)
  %90 = icmp eq ptr %89, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = load i64, ptr %89, align 4
  store i64 0, ptr %89, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %93 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %93)
  %94 = load i64, ptr %2, align 4
  %95 = and i64 %94, 72057594037927935
  %96 = lshr i64 %95, 17
  %97 = select i1 false, i64 0, i64 %96
  %98 = shl i64 %95, 39
  %99 = select i1 false, i64 0, i64 %98
  %100 = or i64 %97, %99
  %101 = and i64 %100, 72057594037927935
  %102 = xor i64 %101, 25399393228665167
  %103 = inttoptr i64 %102 to ptr
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 24)
  call void @runtime.ClobberPointerRegs()
  %104 = call i32 (ptr, ...) @printf(ptr %103, i64 %63, i64 %91)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %92)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexUint"(i64, i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i64 @runtime.LoadHiddenPointerKey(i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare void @"github.com/goplus/lib/c.init"()

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i8 @runtime.LoadHiddenUint8(i64)

declare i32 @printf(ptr, ...)
