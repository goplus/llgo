; ModuleID = 'github.com/goplus/llgo/cl/_testlibgo/atomic'
source_filename = "github.com/goplus/llgo/cl/_testlibgo/atomic"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testlibgo/atomic.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"store:", align 1
@1 = private unnamed_addr constant [4 x i8] c"ret:", align 1
@2 = private unnamed_addr constant [2 x i8] c"v:", align 1
@3 = private unnamed_addr constant [4 x i8] c"swp:", align 1

define void @"github.com/goplus/llgo/cl/_testlibgo/atomic.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibgo/atomic.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibgo/atomic.init$guard", align 1
  call void @"sync/atomic.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibgo/atomic.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %2, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %2)
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load i64, ptr %0, align 4
  %5 = and i64 %4, 72057594037927935
  %6 = lshr i64 %5, 17
  %7 = select i1 false, i64 0, i64 %6
  %8 = shl i64 %5, 39
  %9 = select i1 false, i64 0, i64 %8
  %10 = or i64 %7, %9
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = inttoptr i64 %12 to ptr
  store atomic i64 100, ptr %13 seq_cst, align 4
  %14 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = load i64, ptr %0, align 4
  %16 = and i64 %15, 72057594037927935
  %17 = lshr i64 %16, 17
  %18 = select i1 false, i64 0, i64 %17
  %19 = shl i64 %16, 39
  %20 = select i1 false, i64 0, i64 %19
  %21 = or i64 %18, %20
  %22 = and i64 %21, 72057594037927935
  %23 = xor i64 %22, 25399393228665167
  %24 = inttoptr i64 %23 to ptr
  %25 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %25)
  %26 = load atomic i64, ptr %24 seq_cst, align 4
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  %28 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load i64, ptr %0, align 4
  %30 = and i64 %29, 72057594037927935
  %31 = lshr i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = shl i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = xor i64 %36, 25399393228665167
  %38 = inttoptr i64 %37 to ptr
  %39 = atomicrmw add ptr %38, i64 1 seq_cst, align 8
  %40 = add i64 %39, 1
  %41 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load i64, ptr %0, align 4
  %43 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %43, i64 %42, i64 8)
  %44 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load i64, ptr %43, align 4
  store i64 0, ptr %43, align 4
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %46)
  %47 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %0, align 4
  %49 = and i64 %48, 72057594037927935
  %50 = lshr i64 %49, 17
  %51 = select i1 false, i64 0, i64 %50
  %52 = shl i64 %49, 39
  %53 = select i1 false, i64 0, i64 %52
  %54 = or i64 %51, %53
  %55 = and i64 %54, 72057594037927935
  %56 = xor i64 %55, 25399393228665167
  %57 = inttoptr i64 %56 to ptr
  %58 = cmpxchg ptr %57, i64 100, i64 102 seq_cst seq_cst, align 8
  %59 = extractvalue { i64, i1 } %58, 1
  %60 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %0, align 4
  %62 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %62, i64 %61, i64 8)
  %63 = icmp eq ptr %62, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %63)
  %64 = load i64, ptr %62, align 4
  store i64 0, ptr %62, align 4
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %64)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %65)
  %66 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load i64, ptr %0, align 4
  %68 = and i64 %67, 72057594037927935
  %69 = lshr i64 %68, 17
  %70 = select i1 false, i64 0, i64 %69
  %71 = shl i64 %68, 39
  %72 = select i1 false, i64 0, i64 %71
  %73 = or i64 %70, %72
  %74 = and i64 %73, 72057594037927935
  %75 = xor i64 %74, 25399393228665167
  %76 = inttoptr i64 %75 to ptr
  %77 = cmpxchg ptr %76, i64 101, i64 102 seq_cst seq_cst, align 8
  %78 = extractvalue { i64, i1 } %77, 1
  %79 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = load i64, ptr %0, align 4
  %81 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %81, i64 %80, i64 8)
  %82 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = load i64, ptr %81, align 4
  store i64 0, ptr %81, align 4
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %83)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %84)
  %85 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = load i64, ptr %0, align 4
  %87 = and i64 %86, 72057594037927935
  %88 = lshr i64 %87, 17
  %89 = select i1 false, i64 0, i64 %88
  %90 = shl i64 %87, 39
  %91 = select i1 false, i64 0, i64 %90
  %92 = or i64 %89, %91
  %93 = and i64 %92, 72057594037927935
  %94 = xor i64 %93, 25399393228665167
  %95 = inttoptr i64 %94 to ptr
  %96 = atomicrmw add ptr %95, i64 -1 seq_cst, align 8
  %97 = add i64 %96, -1
  %98 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = load i64, ptr %0, align 4
  %100 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %100, i64 %99, i64 8)
  %101 = icmp eq ptr %100, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load i64, ptr %100, align 4
  store i64 0, ptr %100, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %97)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %102)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %103)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"sync/atomic.init"()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()
