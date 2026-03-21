; ModuleID = 'github.com/goplus/llgo/cl/_testgo/typerecur'
source_filename = "github.com/goplus/llgo/cl/_testgo/typerecur"

%"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/typerecur.counter" = type { i64, i64, %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/typerecur.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"count:", align 1

define %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" @"github.com/goplus/llgo/cl/_testgo/typerecur.countState"(ptr %0) {
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
  %11 = alloca %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %12, align 8
  call void @runtime.ClobberPointerRegs()
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %14, i32 0, i32 0
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 72057594037927935
  %19 = xor i64 %18, 25399393228665167
  %20 = shl i64 %19, 17
  %21 = select i1 false, i64 0, i64 %20
  %22 = lshr i64 %19, 39
  %23 = select i1 false, i64 0, i64 %22
  %24 = or i64 %21, %23
  %25 = and i64 %24, 72057594037927935
  %26 = or i64 %25, -6557241057451442176
  store i64 %26, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %26)
  call void @runtime.ClobberPointerRegs()
  %27 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = load i64, ptr %1, align 4
  %29 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %29, i64 %28, i64 8)
  %30 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = load i64, ptr %29, align 4
  store i64 0, ptr %29, align 4
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %32 = add i64 %31, 1
  %33 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load ptr, ptr %12, align 8
  %35 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %34, i32 0, i32 0
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
  store i64 %46, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %46)
  call void @runtime.ClobberPointerRegs()
  %47 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %3, align 4
  %49 = alloca i64, align 8
  store i64 %32, ptr %49, align 4
  call void @runtime.StoreHiddenPointee(i64 %48, ptr %49, i64 8)
  store i64 0, ptr %49, align 4
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %50 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load ptr, ptr %12, align 8
  %52 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %51, i32 0, i32 0
  %54 = ptrtoint ptr %53 to i64
  %55 = and i64 %54, 72057594037927935
  %56 = xor i64 %55, 25399393228665167
  %57 = shl i64 %56, 17
  %58 = select i1 false, i64 0, i64 %57
  %59 = lshr i64 %56, 39
  %60 = select i1 false, i64 0, i64 %59
  %61 = or i64 %58, %60
  %62 = and i64 %61, 72057594037927935
  %63 = or i64 %62, -6557241057451442176
  store i64 %63, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %63)
  call void @runtime.ClobberPointerRegs()
  %64 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %5, align 4
  %66 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %66, i64 %65, i64 8)
  %67 = icmp eq ptr %66, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = load i64, ptr %66, align 4
  store i64 0, ptr %66, align 4
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %69)
  %70 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load ptr, ptr %12, align 8
  %72 = icmp eq ptr %71, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %71, i32 0, i32 0
  %74 = ptrtoint ptr %73 to i64
  %75 = and i64 %74, 72057594037927935
  %76 = xor i64 %75, 25399393228665167
  %77 = shl i64 %76, 17
  %78 = select i1 false, i64 0, i64 %77
  %79 = lshr i64 %76, 39
  %80 = select i1 false, i64 0, i64 %79
  %81 = or i64 %78, %80
  %82 = and i64 %81, 72057594037927935
  %83 = or i64 %82, -6557241057451442176
  store i64 %83, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %83)
  call void @runtime.ClobberPointerRegs()
  %84 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %7, align 4
  %86 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %86, i64 %85, i64 8)
  %87 = icmp eq ptr %86, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %86, align 4
  store i64 0, ptr %86, align 4
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %89 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %89)
  %90 = load ptr, ptr %12, align 8
  %91 = icmp eq ptr %90, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i64
  %94 = and i64 %93, 72057594037927935
  %95 = xor i64 %94, 25399393228665167
  %96 = shl i64 %95, 17
  %97 = select i1 false, i64 0, i64 %96
  %98 = lshr i64 %95, 39
  %99 = select i1 false, i64 0, i64 %98
  %100 = or i64 %97, %99
  %101 = and i64 %100, 72057594037927935
  %102 = or i64 %101, -6557241057451442176
  store i64 %102, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %102)
  call void @runtime.ClobberPointerRegs()
  %103 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %103)
  %104 = load i64, ptr %9, align 4
  %105 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %105, i64 %104, i64 8)
  %106 = icmp eq ptr %105, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = load i64, ptr %105, align 4
  store i64 0, ptr %105, align 4
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %108 = icmp sge i64 %88, %107
  br i1 %108, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer

_llgo_2:                                          ; preds = %_llgo_0
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState", ptr null }, ptr %11, align 8
  %109 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %11, align 8
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %110
}

define void @"github.com/goplus/llgo/cl/_testgo/typerecur.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/typerecur.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/typerecur.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/typerecur.main"() {
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
  %6 = alloca %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", align 8
  %10 = alloca %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
  %15 = alloca %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", align 8
  %16 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %16, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %16)
  %17 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load i64, ptr %0, align 4
  %19 = and i64 %18, 72057594037927935
  %20 = lshr i64 %19, 17
  %21 = select i1 false, i64 0, i64 %20
  %22 = shl i64 %19, 39
  %23 = select i1 false, i64 0, i64 %22
  %24 = or i64 %21, %23
  %25 = and i64 %24, 72057594037927935
  %26 = xor i64 %25, 25399393228665167
  %27 = inttoptr i64 %26 to ptr
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i64
  %31 = and i64 %30, 72057594037927935
  %32 = xor i64 %31, 25399393228665167
  %33 = shl i64 %32, 17
  %34 = select i1 false, i64 0, i64 %33
  %35 = lshr i64 %32, 39
  %36 = select i1 false, i64 0, i64 %35
  %37 = or i64 %34, %36
  %38 = and i64 %37, 72057594037927935
  %39 = or i64 %38, -6557241057451442176
  store i64 %39, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %39)
  call void @runtime.ClobberPointerRegs()
  %40 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load i64, ptr %0, align 4
  %42 = and i64 %41, 72057594037927935
  %43 = lshr i64 %42, 17
  %44 = select i1 false, i64 0, i64 %43
  %45 = shl i64 %42, 39
  %46 = select i1 false, i64 0, i64 %45
  %47 = or i64 %44, %46
  %48 = and i64 %47, 72057594037927935
  %49 = xor i64 %48, 25399393228665167
  %50 = inttoptr i64 %49 to ptr
  %51 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i64
  %54 = and i64 %53, 72057594037927935
  %55 = xor i64 %54, 25399393228665167
  %56 = shl i64 %55, 17
  %57 = select i1 false, i64 0, i64 %56
  %58 = lshr i64 %55, 39
  %59 = select i1 false, i64 0, i64 %58
  %60 = or i64 %57, %59
  %61 = and i64 %60, 72057594037927935
  %62 = or i64 %61, -6557241057451442176
  store i64 %62, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %62)
  call void @runtime.ClobberPointerRegs()
  %63 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load i64, ptr %2, align 4
  %65 = alloca i64, align 8
  store i64 5, ptr %65, align 4
  call void @runtime.StoreHiddenPointee(i64 %64, ptr %65, i64 8)
  store i64 0, ptr %65, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState", ptr null }, ptr %6, align 8
  %66 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load i64, ptr %4, align 4
  %68 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %6, align 8
  %70 = alloca %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", align 8
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %69, ptr %70, align 8
  call void @runtime.StoreHiddenPointee(i64 %67, ptr %70, i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %70, align 8
  call void @runtime.TouchConservativeSlot(ptr %70, i64 16)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %71 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = load i64, ptr %0, align 4
  %73 = and i64 %72, 72057594037927935
  %74 = lshr i64 %73, 17
  %75 = select i1 false, i64 0, i64 %74
  %76 = shl i64 %73, 39
  %77 = select i1 false, i64 0, i64 %76
  %78 = or i64 %75, %77
  %79 = and i64 %78, 72057594037927935
  %80 = xor i64 %79, 25399393228665167
  %81 = inttoptr i64 %80 to ptr
  %82 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %81, i32 0, i32 2
  %84 = ptrtoint ptr %83 to i64
  %85 = and i64 %84, 72057594037927935
  %86 = xor i64 %85, 25399393228665167
  %87 = shl i64 %86, 17
  %88 = select i1 false, i64 0, i64 %87
  %89 = lshr i64 %86, 39
  %90 = select i1 false, i64 0, i64 %89
  %91 = or i64 %88, %90
  %92 = and i64 %91, 72057594037927935
  %93 = or i64 %92, -6557241057451442176
  store i64 %93, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %93)
  call void @runtime.ClobberPointerRegs()
  %94 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = load i64, ptr %7, align 4
  %96 = alloca %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", align 8
  call void @runtime.LoadHiddenPointee(ptr %96, i64 %95, i64 16)
  %97 = icmp eq ptr %96, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %96, align 8
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %96, align 8
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %98, ptr %9, align 8
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %99 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %99)
  %100 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %9, align 8
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %102 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %102)
  %103 = load i64, ptr %0, align 4
  %104 = and i64 %103, 72057594037927935
  %105 = lshr i64 %104, 17
  %106 = select i1 false, i64 0, i64 %105
  %107 = shl i64 %104, 39
  %108 = select i1 false, i64 0, i64 %107
  %109 = or i64 %106, %108
  %110 = and i64 %109, 72057594037927935
  %111 = xor i64 %110, 25399393228665167
  %112 = inttoptr i64 %111 to ptr
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %113 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %100, 1
  %114 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %100, 0
  %115 = call %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %114(ptr %113, ptr %112)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %101)
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %115, ptr %10, align 8
  %116 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load i64, ptr %0, align 4
  %118 = and i64 %117, 72057594037927935
  %119 = lshr i64 %118, 17
  %120 = select i1 false, i64 0, i64 %119
  %121 = shl i64 %118, 39
  %122 = select i1 false, i64 0, i64 %121
  %123 = or i64 %120, %122
  %124 = and i64 %123, 72057594037927935
  %125 = xor i64 %124, 25399393228665167
  %126 = inttoptr i64 %125 to ptr
  %127 = icmp eq ptr %126, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %127)
  %128 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %126, i32 0, i32 2
  %129 = ptrtoint ptr %128 to i64
  %130 = and i64 %129, 72057594037927935
  %131 = xor i64 %130, 25399393228665167
  %132 = shl i64 %131, 17
  %133 = select i1 false, i64 0, i64 %132
  %134 = lshr i64 %131, 39
  %135 = select i1 false, i64 0, i64 %134
  %136 = or i64 %133, %135
  %137 = and i64 %136, 72057594037927935
  %138 = or i64 %137, -6557241057451442176
  store i64 %138, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %138)
  call void @runtime.ClobberPointerRegs()
  %139 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %139)
  %140 = load i64, ptr %11, align 4
  %141 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %141)
  %142 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %10, align 8
  %143 = alloca %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", align 8
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %142, ptr %143, align 8
  call void @runtime.StoreHiddenPointee(i64 %140, ptr %143, i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %143, align 8
  call void @runtime.TouchConservativeSlot(ptr %143, i64 16)
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %144 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %144)
  %145 = load i64, ptr %0, align 4
  %146 = and i64 %145, 72057594037927935
  %147 = lshr i64 %146, 17
  %148 = select i1 false, i64 0, i64 %147
  %149 = shl i64 %146, 39
  %150 = select i1 false, i64 0, i64 %149
  %151 = or i64 %148, %150
  %152 = and i64 %151, 72057594037927935
  %153 = xor i64 %152, 25399393228665167
  %154 = inttoptr i64 %153 to ptr
  %155 = icmp eq ptr %154, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/typerecur.counter", ptr %154, i32 0, i32 2
  %157 = ptrtoint ptr %156 to i64
  %158 = and i64 %157, 72057594037927935
  %159 = xor i64 %158, 25399393228665167
  %160 = shl i64 %159, 17
  %161 = select i1 false, i64 0, i64 %160
  %162 = lshr i64 %159, 39
  %163 = select i1 false, i64 0, i64 %162
  %164 = or i64 %161, %163
  %165 = and i64 %164, 72057594037927935
  %166 = or i64 %165, -6557241057451442176
  store i64 %166, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %166)
  call void @runtime.ClobberPointerRegs()
  %167 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %167)
  %168 = load i64, ptr %13, align 4
  %169 = alloca %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", align 8
  call void @runtime.LoadHiddenPointee(ptr %169, i64 %168, i64 16)
  %170 = icmp eq ptr %169, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %170)
  %171 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %169, align 8
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %169, align 8
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %171, ptr %15, align 8
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  call void @runtime.ClobberPointerRegs()
  %172 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn", ptr %15, align 8
  %174 = extractvalue %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %173, 0
  %175 = icmp ne ptr %174, null
  store %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 16)
  call void @runtime.ClobberPointerRegs()
  br i1 %175, label %_llgo_1, label %_llgo_2
}

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

define linkonce %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/typerecur.countState"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/typerecur.countState")
  %3 = tail call %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" @"github.com/goplus/llgo/cl/_testgo/typerecur.countState"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret %"github.com/goplus/llgo/cl/_testgo/typerecur.stateFn" %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i64 @runtime.AllocZHidden(i64)
