; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/argv'
source_filename = "github.com/goplus/llgo/cl/_testlibc/argv"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testlibc/argv.init$guard" = global i1 false, align 1
@__llgo_argc = external global i32, align 4
@0 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__llgo_argv = external global ptr, align 8

define void @"github.com/goplus/llgo/cl/_testlibc/argv.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibc/argv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibc/argv.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/argv.main"() {
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
  %10 = alloca { i64, i64, i64 }, align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %12 = phi i32 [ 0, %_llgo_0 ], [ %83, %_llgo_2 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %13 = load i32, ptr @__llgo_argc, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %15 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %16 = xor i64 %15, 25399393228665167
  %17 = shl i64 %16, 17
  %18 = select i1 false, i64 0, i64 %17
  %19 = lshr i64 %16, 39
  %20 = select i1 false, i64 0, i64 %19
  %21 = or i64 %18, %20
  %22 = and i64 %21, 72057594037927935
  %23 = or i64 %22, -6557241057451442176
  store i64 %23, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %23)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %24 = load ptr, ptr @__llgo_argv, align 8
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
  store i64 %34, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %34)
  call void @runtime.ClobberPointerRegs()
  %35 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %2, align 4
  %37 = and i64 %36, 72057594037927935
  %38 = lshr i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = shl i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = inttoptr i64 %44 to ptr
  %46 = getelementptr ptr, ptr %45, i32 %12
  %47 = icmp eq ptr %46, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load ptr, ptr %46, align 8
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
  store i64 %58, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %58)
  call void @runtime.ClobberPointerRegs()
  %59 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %59)
  %60 = load i64, ptr %4, align 4
  %61 = and i64 %60, 72057594037927935
  %62 = lshr i64 %61, 17
  %63 = select i1 false, i64 0, i64 %62
  %64 = shl i64 %61, 39
  %65 = select i1 false, i64 0, i64 %64
  %66 = or i64 %63, %65
  %67 = and i64 %66, 72057594037927935
  %68 = xor i64 %67, 25399393228665167
  %69 = inttoptr i64 %68 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
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
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  call void @runtime.ClobberPointerRegs()
  %82 = call i32 (ptr, ...) @printf(ptr %81, ptr %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %70)
  %83 = add i32 %12, 1
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)
