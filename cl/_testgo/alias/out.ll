; ModuleID = 'github.com/goplus/llgo/cl/_testgo/alias'
source_filename = "github.com/goplus/llgo/cl/_testgo/alias"

%"github.com/goplus/llgo/cl/_testgo/alias.Point" = type { double, double }

@"github.com/goplus/llgo/cl/_testgo/alias.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Move"(ptr %0, double %1, double %2) {
_llgo_0:
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
  %11 = alloca ptr, align 8
  store ptr %0, ptr %11, align 8
  call void @runtime.ClobberPointerRegs()
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %13, i32 0, i32 0
  %16 = ptrtoint ptr %15 to i64
  %17 = and i64 %16, 72057594037927935
  %18 = xor i64 %17, 25399393228665167
  %19 = shl i64 %18, 17
  %20 = select i1 false, i64 0, i64 %19
  %21 = lshr i64 %18, 39
  %22 = select i1 false, i64 0, i64 %21
  %23 = or i64 %20, %22
  %24 = and i64 %23, 72057594037927935
  %25 = or i64 %24, -6557241057451442176
  store i64 %25, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %25)
  call void @runtime.ClobberPointerRegs()
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %3, align 4
  %28 = alloca double, align 8
  call void @runtime.LoadHiddenPointee(ptr %28, i64 %27, i64 8)
  %29 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = load double, ptr %28, align 8
  store double 0.000000e+00, ptr %28, align 8
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %31 = fadd double %30, %1
  %32 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load ptr, ptr %11, align 8
  %34 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %33, i32 0, i32 0
  %36 = ptrtoint ptr %35 to i64
  %37 = and i64 %36, 72057594037927935
  %38 = xor i64 %37, 25399393228665167
  %39 = shl i64 %38, 17
  %40 = select i1 false, i64 0, i64 %39
  %41 = lshr i64 %38, 39
  %42 = select i1 false, i64 0, i64 %41
  %43 = or i64 %40, %42
  %44 = and i64 %43, 72057594037927935
  %45 = or i64 %44, -6557241057451442176
  store i64 %45, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %45)
  call void @runtime.ClobberPointerRegs()
  %46 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load i64, ptr %5, align 4
  %48 = alloca double, align 8
  store double %31, ptr %48, align 8
  call void @runtime.StoreHiddenPointee(i64 %47, ptr %48, i64 8)
  store double 0.000000e+00, ptr %48, align 8
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  %49 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load ptr, ptr %11, align 8
  %51 = icmp eq ptr %50, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %50, i32 0, i32 1
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
  store i64 %62, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %62)
  call void @runtime.ClobberPointerRegs()
  %63 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load i64, ptr %7, align 4
  %65 = alloca double, align 8
  call void @runtime.LoadHiddenPointee(ptr %65, i64 %64, i64 8)
  %66 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load double, ptr %65, align 8
  store double 0.000000e+00, ptr %65, align 8
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %68 = fadd double %67, %2
  %69 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load ptr, ptr %11, align 8
  %71 = icmp eq ptr %70, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %70, i32 0, i32 1
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
  store i64 %82, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %82)
  call void @runtime.ClobberPointerRegs()
  %83 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %83)
  %84 = load i64, ptr %9, align 4
  %85 = alloca double, align 8
  store double %68, ptr %85, align 8
  call void @runtime.StoreHiddenPointee(i64 %84, ptr %85, i64 8)
  store double 0.000000e+00, ptr %85, align 8
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Scale"(ptr %0, double %1) {
_llgo_0:
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
  %10 = alloca ptr, align 8
  store ptr %0, ptr %10, align 8
  call void @runtime.ClobberPointerRegs()
  %11 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %12, i32 0, i32 0
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
  store i64 %24, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %24)
  call void @runtime.ClobberPointerRegs()
  %25 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load i64, ptr %2, align 4
  %27 = alloca double, align 8
  call void @runtime.LoadHiddenPointee(ptr %27, i64 %26, i64 8)
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load double, ptr %27, align 8
  store double 0.000000e+00, ptr %27, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %30 = fmul double %29, %1
  %31 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load ptr, ptr %10, align 8
  %33 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %32, i32 0, i32 0
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
  %45 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load i64, ptr %4, align 4
  %47 = alloca double, align 8
  store double %30, ptr %47, align 8
  call void @runtime.StoreHiddenPointee(i64 %46, ptr %47, i64 8)
  store double 0.000000e+00, ptr %47, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %48 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %48)
  %49 = load ptr, ptr %10, align 8
  %50 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i64
  %53 = and i64 %52, 72057594037927935
  %54 = xor i64 %53, 25399393228665167
  %55 = shl i64 %54, 17
  %56 = select i1 false, i64 0, i64 %55
  %57 = lshr i64 %54, 39
  %58 = select i1 false, i64 0, i64 %57
  %59 = or i64 %56, %58
  %60 = and i64 %59, 72057594037927935
  %61 = or i64 %60, -6557241057451442176
  store i64 %61, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %61)
  call void @runtime.ClobberPointerRegs()
  %62 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %62)
  %63 = load i64, ptr %6, align 4
  %64 = alloca double, align 8
  call void @runtime.LoadHiddenPointee(ptr %64, i64 %63, i64 8)
  %65 = icmp eq ptr %64, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %65)
  %66 = load double, ptr %64, align 8
  store double 0.000000e+00, ptr %64, align 8
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %67 = fmul double %66, %1
  %68 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %68)
  %69 = load ptr, ptr %10, align 8
  %70 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i64
  %73 = and i64 %72, 72057594037927935
  %74 = xor i64 %73, 25399393228665167
  %75 = shl i64 %74, 17
  %76 = select i1 false, i64 0, i64 %75
  %77 = lshr i64 %74, 39
  %78 = select i1 false, i64 0, i64 %77
  %79 = or i64 %76, %78
  %80 = and i64 %79, 72057594037927935
  %81 = or i64 %80, -6557241057451442176
  store i64 %81, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %81)
  call void @runtime.ClobberPointerRegs()
  %82 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = load i64, ptr %8, align 4
  %84 = alloca double, align 8
  store double %67, ptr %84, align 8
  call void @runtime.StoreHiddenPointee(i64 %83, ptr %84, i64 8)
  store double 0.000000e+00, ptr %84, align 8
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/alias.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/alias.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/alias.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/alias.main"() {
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
  %8 = alloca %"github.com/goplus/llgo/cl/_testgo/alias.Point", align 8
  call void @llvm.memset(ptr %8, i8 0, i64 16, i1 false)
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %8, i32 0, i32 0
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
  store i64 %20, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %8, i32 0, i32 1
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
  store i64 %32, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %32)
  call void @runtime.ClobberPointerRegs()
  %33 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load i64, ptr %0, align 4
  %35 = alloca double, align 8
  store double 1.000000e+00, ptr %35, align 8
  call void @runtime.StoreHiddenPointee(i64 %34, ptr %35, i64 8)
  store double 0.000000e+00, ptr %35, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %36 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = load i64, ptr %2, align 4
  %38 = alloca double, align 8
  store double 2.000000e+00, ptr %38, align 8
  call void @runtime.StoreHiddenPointee(i64 %37, ptr %38, i64 8)
  store double 0.000000e+00, ptr %38, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Scale"(ptr %8, double 2.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %39)
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testgo/alias.(*Point).Move"(ptr %8, double 3.000000e+00, double 4.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %40)
  %41 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %8, i32 0, i32 0
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = shl i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = lshr i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = or i64 %51, -6557241057451442176
  store i64 %52, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %52)
  call void @runtime.ClobberPointerRegs()
  %53 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load i64, ptr %4, align 4
  %55 = alloca double, align 8
  call void @runtime.LoadHiddenPointee(ptr %55, i64 %54, i64 8)
  %56 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load double, ptr %55, align 8
  store double 0.000000e+00, ptr %55, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/alias.Point", ptr %8, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i64
  %61 = and i64 %60, 72057594037927935
  %62 = xor i64 %61, 25399393228665167
  %63 = shl i64 %62, 17
  %64 = select i1 false, i64 0, i64 %63
  %65 = lshr i64 %62, 39
  %66 = select i1 false, i64 0, i64 %65
  %67 = or i64 %64, %66
  %68 = and i64 %67, 72057594037927935
  %69 = or i64 %68, -6557241057451442176
  store i64 %69, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %69)
  call void @runtime.ClobberPointerRegs()
  %70 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = load i64, ptr %6, align 4
  %72 = alloca double, align 8
  call void @runtime.LoadHiddenPointee(ptr %72, i64 %71, i64 8)
  %73 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load double, ptr %72, align 8
  store double 0.000000e+00, ptr %72, align 8
  store %"github.com/goplus/llgo/cl/_testgo/alias.Point" zeroinitializer, ptr %8, align 8
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %74)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %75)
  ret void
}

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
