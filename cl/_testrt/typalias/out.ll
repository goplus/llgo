; ModuleID = 'github.com/goplus/llgo/cl/_testrt/typalias'
source_filename = "github.com/goplus/llgo/cl/_testrt/typalias"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/runtime/internal/runtime.cgoAlwaysFalse" = external global i1, align 1
@"github.com/goplus/llgo/cl/_testrt/typalias.format" = global [10 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/cl/_testrt/typalias.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/typalias.Print"(ptr %0) {
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
  %11 = alloca { i64, i64, i64 }, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %12, align 8
  %13 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds { i32, i1 }, ptr %0, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 72057594037927935
  %17 = xor i64 %16, 25399393228665167
  %18 = shl i64 %17, 17
  %19 = select i1 false, i64 0, i64 %18
  %20 = lshr i64 %17, 39
  %21 = select i1 false, i64 0, i64 %20
  %22 = or i64 %19, %21
  %23 = and i64 %22, 72057594037927935
  %24 = or i64 %23, -6557241057451442176
  store i64 %24, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %24)
  call void @runtime.ClobberPointerRegs()
  %25 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %1, align 4
  %27 = alloca i1, align 1
  call void @runtime.LoadHiddenPointee(ptr %27, i64 %26, i64 1)
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i1, ptr %27, align 1
  store i1 false, ptr %27, align 1
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %29, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %30 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 10)
  %31 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %30
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
  %42 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %42)
  %43 = getelementptr inbounds { i32, i1 }, ptr %0, i32 0, i32 0
  %44 = ptrtoint ptr %43 to i64
  %45 = and i64 %44, 72057594037927935
  %46 = xor i64 %45, 25399393228665167
  %47 = shl i64 %46, 17
  %48 = select i1 false, i64 0, i64 %47
  %49 = lshr i64 %46, 39
  %50 = select i1 false, i64 0, i64 %49
  %51 = or i64 %48, %50
  %52 = and i64 %51, 72057594037927935
  %53 = or i64 %52, -6557241057451442176
  store i64 %53, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %53)
  call void @runtime.ClobberPointerRegs()
  %54 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load i64, ptr %5, align 4
  %56 = alloca i32, align 4
  call void @runtime.LoadHiddenPointee(ptr %56, i64 %55, i64 4)
  %57 = icmp eq ptr %56, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %57)
  %58 = load i32, ptr %56, align 4
  store i32 0, ptr %56, align 4
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %60 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %3, align 4
  %62 = and i64 %61, 72057594037927935
  %63 = lshr i64 %62, 17
  %64 = select i1 false, i64 0, i64 %63
  %65 = shl i64 %62, 39
  %66 = select i1 false, i64 0, i64 %65
  %67 = or i64 %64, %66
  %68 = and i64 %67, 72057594037927935
  %69 = xor i64 %68, 25399393228665167
  %70 = inttoptr i64 %69 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void (ptr, ...) @printf(ptr %70, i32 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %59)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define ptr @"github.com/goplus/llgo/cl/_testrt/typalias._Cgo_ptr"(ptr %0) {
_llgo_0:
  %1 = alloca ptr, align 8
  store ptr %0, ptr %1, align 8
  call void @runtime.ClobberPointerRegs()
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load ptr, ptr %1, align 8
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %3
}

declare void @runtime.cgoUse(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @runtime.cgoCheckResult(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define void @"github.com/goplus/llgo/cl/_testrt/typalias.init"() {
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
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %20 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.init$guard", align 1
  br i1 %20, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.init$guard", align 1
  call void @syscall.init()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %21 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 10)
  %22 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %21
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 72057594037927935
  %25 = xor i64 %24, 25399393228665167
  %26 = shl i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = lshr i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = or i64 %31, -6557241057451442176
  store i64 %32, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %32)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %33 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 10)
  %34 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %33
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
  store i64 %44, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %44)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %45 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 10)
  %46 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %45
  %47 = ptrtoint ptr %46 to i64
  %48 = and i64 %47, 72057594037927935
  %49 = xor i64 %48, 25399393228665167
  %50 = shl i64 %49, 17
  %51 = select i1 false, i64 0, i64 %50
  %52 = lshr i64 %49, 39
  %53 = select i1 false, i64 0, i64 %52
  %54 = or i64 %51, %53
  %55 = and i64 %54, 72057594037927935
  %56 = or i64 %55, -6557241057451442176
  store i64 %56, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %56)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %57 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 10)
  %58 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %57
  %59 = ptrtoint ptr %58 to i64
  %60 = and i64 %59, 72057594037927935
  %61 = xor i64 %60, 25399393228665167
  %62 = shl i64 %61, 17
  %63 = select i1 false, i64 0, i64 %62
  %64 = lshr i64 %61, 39
  %65 = select i1 false, i64 0, i64 %64
  %66 = or i64 %63, %65
  %67 = and i64 %66, 72057594037927935
  %68 = or i64 %67, -6557241057451442176
  store i64 %68, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %68)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %69 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 4, i64 10)
  %70 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %69
  %71 = ptrtoint ptr %70 to i64
  %72 = and i64 %71, 72057594037927935
  %73 = xor i64 %72, 25399393228665167
  %74 = shl i64 %73, 17
  %75 = select i1 false, i64 0, i64 %74
  %76 = lshr i64 %73, 39
  %77 = select i1 false, i64 0, i64 %76
  %78 = or i64 %75, %77
  %79 = and i64 %78, 72057594037927935
  %80 = or i64 %79, -6557241057451442176
  store i64 %80, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %80)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %81 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 5, i64 10)
  %82 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %81
  %83 = ptrtoint ptr %82 to i64
  %84 = and i64 %83, 72057594037927935
  %85 = xor i64 %84, 25399393228665167
  %86 = shl i64 %85, 17
  %87 = select i1 false, i64 0, i64 %86
  %88 = lshr i64 %85, 39
  %89 = select i1 false, i64 0, i64 %88
  %90 = or i64 %87, %89
  %91 = and i64 %90, 72057594037927935
  %92 = or i64 %91, -6557241057451442176
  store i64 %92, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %92)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %93 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 6, i64 10)
  %94 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %93
  %95 = ptrtoint ptr %94 to i64
  %96 = and i64 %95, 72057594037927935
  %97 = xor i64 %96, 25399393228665167
  %98 = shl i64 %97, 17
  %99 = select i1 false, i64 0, i64 %98
  %100 = lshr i64 %97, 39
  %101 = select i1 false, i64 0, i64 %100
  %102 = or i64 %99, %101
  %103 = and i64 %102, 72057594037927935
  %104 = or i64 %103, -6557241057451442176
  store i64 %104, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %104)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %105 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 7, i64 10)
  %106 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %105
  %107 = ptrtoint ptr %106 to i64
  %108 = and i64 %107, 72057594037927935
  %109 = xor i64 %108, 25399393228665167
  %110 = shl i64 %109, 17
  %111 = select i1 false, i64 0, i64 %110
  %112 = lshr i64 %109, 39
  %113 = select i1 false, i64 0, i64 %112
  %114 = or i64 %111, %113
  %115 = and i64 %114, 72057594037927935
  %116 = or i64 %115, -6557241057451442176
  store i64 %116, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %116)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %117 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 8, i64 10)
  %118 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %117
  %119 = ptrtoint ptr %118 to i64
  %120 = and i64 %119, 72057594037927935
  %121 = xor i64 %120, 25399393228665167
  %122 = shl i64 %121, 17
  %123 = select i1 false, i64 0, i64 %122
  %124 = lshr i64 %121, 39
  %125 = select i1 false, i64 0, i64 %124
  %126 = or i64 %123, %125
  %127 = and i64 %126, 72057594037927935
  %128 = or i64 %127, -6557241057451442176
  store i64 %128, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %128)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %129 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 9, i64 10)
  %130 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testrt/typalias.format", i64 %129
  %131 = ptrtoint ptr %130 to i64
  %132 = and i64 %131, 72057594037927935
  %133 = xor i64 %132, 25399393228665167
  %134 = shl i64 %133, 17
  %135 = select i1 false, i64 0, i64 %134
  %136 = lshr i64 %133, 39
  %137 = select i1 false, i64 0, i64 %136
  %138 = or i64 %135, %137
  %139 = and i64 %138, 72057594037927935
  %140 = or i64 %139, -6557241057451442176
  store i64 %140, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %140)
  call void @runtime.ClobberPointerRegs()
  %141 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %141)
  %142 = load i64, ptr %0, align 4
  %143 = alloca i8, align 1
  store i8 72, ptr %143, align 1
  call void @runtime.StoreHiddenPointee(i64 %142, ptr %143, i64 1)
  store i8 0, ptr %143, align 1
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %144 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %144)
  %145 = load i64, ptr %2, align 4
  %146 = alloca i8, align 1
  store i8 101, ptr %146, align 1
  call void @runtime.StoreHiddenPointee(i64 %145, ptr %146, i64 1)
  store i8 0, ptr %146, align 1
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %147 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %147)
  %148 = load i64, ptr %4, align 4
  %149 = alloca i8, align 1
  store i8 108, ptr %149, align 1
  call void @runtime.StoreHiddenPointee(i64 %148, ptr %149, i64 1)
  store i8 0, ptr %149, align 1
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %150 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %150)
  %151 = load i64, ptr %6, align 4
  %152 = alloca i8, align 1
  store i8 108, ptr %152, align 1
  call void @runtime.StoreHiddenPointee(i64 %151, ptr %152, i64 1)
  store i8 0, ptr %152, align 1
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %153 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load i64, ptr %8, align 4
  %155 = alloca i8, align 1
  store i8 111, ptr %155, align 1
  call void @runtime.StoreHiddenPointee(i64 %154, ptr %155, i64 1)
  store i8 0, ptr %155, align 1
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %156 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %156)
  %157 = load i64, ptr %10, align 4
  %158 = alloca i8, align 1
  store i8 32, ptr %158, align 1
  call void @runtime.StoreHiddenPointee(i64 %157, ptr %158, i64 1)
  store i8 0, ptr %158, align 1
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  %159 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %159)
  %160 = load i64, ptr %12, align 4
  %161 = alloca i8, align 1
  store i8 37, ptr %161, align 1
  call void @runtime.StoreHiddenPointee(i64 %160, ptr %161, i64 1)
  store i8 0, ptr %161, align 1
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %162 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %162)
  %163 = load i64, ptr %14, align 4
  %164 = alloca i8, align 1
  store i8 100, ptr %164, align 1
  call void @runtime.StoreHiddenPointee(i64 %163, ptr %164, i64 1)
  store i8 0, ptr %164, align 1
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %165 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %165)
  %166 = load i64, ptr %16, align 4
  %167 = alloca i8, align 1
  store i8 10, ptr %167, align 1
  call void @runtime.StoreHiddenPointee(i64 %166, ptr %167, i64 1)
  store i8 0, ptr %167, align 1
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %168 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %168)
  %169 = load i64, ptr %18, align 4
  %170 = alloca i8, align 1
  store i8 0, ptr %170, align 1
  call void @runtime.StoreHiddenPointee(i64 %169, ptr %170, i64 1)
  store i8 0, ptr %170, align 1
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/typalias.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca { i32, i1 }, align 8
  call void @llvm.memset(ptr %4, i8 0, i64 8, i1 false)
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds { i32, i1 }, ptr %4, i32 0, i32 0
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
  store i64 %16, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %16)
  call void @runtime.ClobberPointerRegs()
  %17 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = getelementptr inbounds { i32, i1 }, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i64
  %20 = and i64 %19, 72057594037927935
  %21 = xor i64 %20, 25399393228665167
  %22 = shl i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = lshr i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = or i64 %27, -6557241057451442176
  store i64 %28, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %28)
  call void @runtime.ClobberPointerRegs()
  %29 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load i64, ptr %0, align 4
  %31 = alloca i32, align 4
  store i32 100, ptr %31, align 4
  call void @runtime.StoreHiddenPointee(i64 %30, ptr %31, i64 4)
  store i32 0, ptr %31, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %32 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load i64, ptr %2, align 4
  %34 = alloca i1, align 1
  store i1 true, ptr %34, align 1
  call void @runtime.StoreHiddenPointee(i64 %33, ptr %34, i64 1)
  store i1 false, ptr %34, align 1
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testrt/typalias.Print"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  store { i32, i1 } zeroinitializer, ptr %4, align 4
  call void @runtime.ClobberPointerRegs()
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare void @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @unsafe.init()

declare void @syscall.init()

declare void @"runtime/cgo.init"()

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
