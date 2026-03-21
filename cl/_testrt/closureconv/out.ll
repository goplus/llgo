; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closureconv'
source_filename = "github.com/goplus/llgo/cl/_testrt/closureconv"

%"github.com/goplus/llgo/cl/_testrt/closureconv.Call" = type { %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", i64 }
%"github.com/goplus/llgo/cl/_testrt/closureconv.Func" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/closureconv.Func2" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = add i64 %1, %2
  %7 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %5, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %3, align 4
  %23 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %23, i64 %22, i64 8)
  %24 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %23, align 4
  store i64 0, ptr %23, align 4
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = add i64 %6, %25
  ret i64 %26
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.add"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { ptr, ptr }, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %12 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %12, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %12)
  %13 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load i64, ptr %1, align 4
  %15 = and i64 %14, 72057594037927935
  %16 = lshr i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = shl i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = xor i64 %21, 25399393228665167
  %23 = inttoptr i64 %22 to ptr
  %24 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i64
  %27 = and i64 %26, 72057594037927935
  %28 = xor i64 %27, 25399393228665167
  %29 = shl i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = lshr i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = or i64 %34, -6557241057451442176
  store i64 %35, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %35)
  call void @runtime.ClobberPointerRegs()
  %36 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %3, align 4
  %38 = alloca i64, align 8
  store i64 %0, ptr %38, align 4
  call void @runtime.StoreHiddenPointee(i64 %37, ptr %38, i64 8)
  store i64 0, ptr %38, align 4
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load i64, ptr %1, align 4
  %41 = and i64 %40, 72057594037927935
  %42 = lshr i64 %41, 17
  %43 = select i1 false, i64 0, i64 %42
  %44 = shl i64 %41, 39
  %45 = select i1 false, i64 0, i64 %44
  %46 = or i64 %43, %45
  %47 = and i64 %46, 72057594037927935
  %48 = xor i64 %47, 25399393228665167
  %49 = inttoptr i64 %48 to ptr
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %51 = getelementptr inbounds { ptr }, ptr %50, i32 0, i32 0
  store ptr %49, ptr %51, align 8
  %52 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef }, ptr %50, 1
  store { ptr, ptr } %52, ptr %5, align 8
  %53 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load i64, ptr %1, align 4
  %55 = and i64 %54, 72057594037927935
  %56 = lshr i64 %55, 17
  %57 = select i1 false, i64 0, i64 %56
  %58 = shl i64 %55, 39
  %59 = select i1 false, i64 0, i64 %58
  %60 = or i64 %57, %59
  %61 = and i64 %60, 72057594037927935
  %62 = xor i64 %61, 25399393228665167
  %63 = inttoptr i64 %62 to ptr
  %64 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %63, i32 0, i32 0
  %66 = ptrtoint ptr %65 to i64
  %67 = and i64 %66, 72057594037927935
  %68 = xor i64 %67, 25399393228665167
  %69 = shl i64 %68, 17
  %70 = select i1 false, i64 0, i64 %69
  %71 = lshr i64 %68, 39
  %72 = select i1 false, i64 0, i64 %71
  %73 = or i64 %70, %72
  %74 = and i64 %73, 72057594037927935
  %75 = or i64 %74, -6557241057451442176
  store i64 %75, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %75)
  call void @runtime.ClobberPointerRegs()
  %76 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load { ptr, ptr }, ptr %5, align 8
  %78 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %77, ptr %78, align 8
  %79 = icmp eq ptr %78, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %78, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %80, ptr %8, align 8
  %81 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %81)
  %82 = load i64, ptr %6, align 4
  %83 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %8, align 8
  %85 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %84, ptr %85, align 8
  call void @runtime.StoreHiddenPointee(i64 %82, ptr %85, i64 16)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %85, align 8
  call void @runtime.TouchConservativeSlot(ptr %85, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %86 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load i64, ptr %1, align 4
  %88 = and i64 %87, 72057594037927935
  %89 = lshr i64 %88, 17
  %90 = select i1 false, i64 0, i64 %89
  %91 = shl i64 %88, 39
  %92 = select i1 false, i64 0, i64 %91
  %93 = or i64 %90, %92
  %94 = and i64 %93, 72057594037927935
  %95 = xor i64 %94, 25399393228665167
  %96 = inttoptr i64 %95 to ptr
  %97 = icmp eq ptr %96, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/closureconv.Call", ptr %96, i32 0, i32 0
  %99 = ptrtoint ptr %98 to i64
  %100 = and i64 %99, 72057594037927935
  %101 = xor i64 %100, 25399393228665167
  %102 = shl i64 %101, 17
  %103 = select i1 false, i64 0, i64 %102
  %104 = lshr i64 %101, 39
  %105 = select i1 false, i64 0, i64 %104
  %106 = or i64 %103, %105
  %107 = and i64 %106, 72057594037927935
  %108 = or i64 %107, -6557241057451442176
  store i64 %108, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %108)
  call void @runtime.ClobberPointerRegs()
  %109 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %109)
  %110 = load i64, ptr %9, align 4
  %111 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  call void @runtime.LoadHiddenPointee(ptr %111, i64 %110, i64 16)
  %112 = icmp eq ptr %111, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %111, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %111, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %113, ptr %11, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %114 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %114)
  %115 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %11, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %115
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { ptr, ptr }, align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %4 = call i64 @runtime.AllocZHidden(i64 24)
  store i64 %4, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %4)
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load i64, ptr %0, align 4
  %7 = and i64 %6, 72057594037927935
  %8 = lshr i64 %7, 17
  %9 = select i1 false, i64 0, i64 %8
  %10 = shl i64 %7, 39
  %11 = select i1 false, i64 0, i64 %10
  %12 = or i64 %9, %11
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = inttoptr i64 %14 to ptr
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %17 = getelementptr inbounds { ptr }, ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound", ptr undef }, ptr %16, 1
  store { ptr, ptr } %18, ptr %2, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load { ptr, ptr }, ptr %2, align 8
  %21 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %20, ptr %21, align 8
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %21, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %23, ptr %3, align 8
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %3, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %25
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add", ptr null }, ptr %0, align 8
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %0, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %2
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1", ptr null }, ptr %0, align 8
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %0, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %2
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { ptr, ptr }, align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %5 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %5, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %5)
  %6 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load i64, ptr %1, align 4
  %8 = alloca i64, align 8
  store i64 %0, ptr %8, align 4
  call void @runtime.StoreHiddenPointee(i64 %7, ptr %8, i64 8)
  store i64 0, ptr %8, align 4
  %9 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = load i64, ptr %1, align 4
  %11 = and i64 %10, 72057594037927935
  %12 = lshr i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = shl i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = xor i64 %17, 25399393228665167
  %19 = inttoptr i64 %18 to ptr
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %21 = getelementptr inbounds { ptr }, ptr %20, i32 0, i32 0
  store ptr %19, ptr %21, align 8
  %22 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1", ptr undef }, ptr %20, 1
  store { ptr, ptr } %22, ptr %3, align 8
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load { ptr, ptr }, ptr %3, align 8
  %25 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  store { ptr, ptr } %24, ptr %25, align 8
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %25, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %27, ptr %4, align 8
  %28 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %4, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %29
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = add i64 %1, %2
  %4 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load { ptr }, ptr %0, align 8
  %6 = extractvalue { ptr } %5, 0
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load i64, ptr %6, align 4
  %9 = add i64 %3, %8
  ret i64 %9
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closureconv.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %5 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %6 = alloca { ptr, ptr }, align 8
  %7 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", align 8
  %8 = alloca %"github.com/goplus/llgo/cl/_testrt/closureconv.Func2", align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %10 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo1"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %9)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %10, ptr %0, align 8
  %11 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %0, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 16)
  call void @runtime.ClobberPointerRegs()
  %14 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %12, 1
  %15 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %12, 0
  %16 = call i64 %15(ptr %14, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %13)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %17)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %19 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo2"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %18)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %19, ptr %1, align 8
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %1, align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  %23 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %21, 1
  %24 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %21, 0
  %25 = call i64 %24(ptr %23, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %22)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %26)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %28 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo3"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %28, ptr %2, align 8
  %29 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %2, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %32 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %30, 1
  %33 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %30, 0
  %34 = call i64 %33(ptr %32, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %31)
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %37 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %36)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %37, ptr %3, align 8
  %38 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %3, align 8
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %41 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %39, 1
  %42 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %39, 0
  %43 = call i64 %42(ptr %41, i64 100, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %40)
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %44)
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %46 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %45)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %46, ptr %4, align 8
  %47 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %4, align 8
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %50 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %48, 1
  %51 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %48, 0
  %52 = call i64 %51(ptr %50, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %49)
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %53)
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %55 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %54)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %55, ptr %5, align 8
  %56 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %5, align 8
  %58 = alloca { ptr, ptr }, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %57, ptr %58, align 8
  %59 = icmp eq ptr %58, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load { ptr, ptr }, ptr %58, align 8
  store { ptr, ptr } %60, ptr %6, align 8
  %61 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %61)
  %62 = load { ptr, ptr }, ptr %6, align 8
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store { ptr, ptr } zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %64 = extractvalue { ptr, ptr } %62, 1
  %65 = extractvalue { ptr, ptr } %62, 0
  %66 = call i64 %65(ptr %64, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %63)
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %67)
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %69 = call %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" @"github.com/goplus/llgo/cl/_testrt/closureconv.demo5"(i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %68)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %69, ptr %7, align 8
  %70 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func", ptr %7, align 8
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" %71, ptr %8, align 8
  %72 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %72)
  %73 = load %"github.com/goplus/llgo/cl/_testrt/closureconv.Func2", ptr %8, align 8
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  store %"github.com/goplus/llgo/cl/_testrt/closureconv.Func2" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 16)
  call void @runtime.ClobberPointerRegs()
  %75 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func2" %73, 1
  %76 = extractvalue %"github.com/goplus/llgo/cl/_testrt/closureconv.Func2" %73, 0
  %77 = call i64 %76(ptr %75, i64 99, i64 200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %74)
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %78)
  ret void
}

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

define i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add$bound"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load { ptr }, ptr %0, align 8
  %5 = extractvalue { ptr } %4, 0
  %6 = call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.(*Call).add"(ptr %5, i64 %1, i64 %2)
  ret i64 %6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.add"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.add")
  %4 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.add"(i64 %1, i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i64 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1")
  %4 = tail call i64 @"github.com/goplus/llgo/cl/_testrt/closureconv.demo4$1"(i64 %1, i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i64 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
