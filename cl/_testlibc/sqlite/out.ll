; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/sqlite'
source_filename = "github.com/goplus/llgo/cl/_testlibc/sqlite"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testlibc/sqlite.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [20 x i8] c"==> Error: (%d) %s\0A\00", align 1
@1 = private unnamed_addr constant [9 x i8] c":memory:\00", align 1

define void @"github.com/goplus/llgo/cl/_testlibc/sqlite.check"(i32 %0) {
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
  %13 = icmp ne i32 %0, 0
  br i1 %13, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %14 = and i64 ptrtoint (ptr @0 to i64), 72057594037927935
  %15 = xor i64 %14, 25399393228665167
  %16 = shl i64 %15, 17
  %17 = select i1 false, i64 0, i64 %16
  %18 = lshr i64 %15, 39
  %19 = select i1 false, i64 0, i64 %18
  %20 = or i64 %17, %19
  %21 = and i64 %20, 72057594037927935
  %22 = or i64 %21, -6557241057451442176
  store i64 %22, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %22)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %24 = call ptr @sqlite3_errstr(i32 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
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
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %3, align 4
  %37 = and i64 %36, 72057594037927935
  %38 = lshr i64 %37, 17
  %39 = select i1 false, i64 0, i64 %38
  %40 = shl i64 %37, 39
  %41 = select i1 false, i64 0, i64 %40
  %42 = or i64 %39, %41
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = inttoptr i64 %44 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  call void @runtime.ClobberPointerRegs()
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %47 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %47)
  %48 = load i64, ptr %1, align 4
  %49 = and i64 %48, 72057594037927935
  %50 = lshr i64 %49, 17
  %51 = select i1 false, i64 0, i64 %50
  %52 = shl i64 %49, 39
  %53 = select i1 false, i64 0, i64 %52
  %54 = or i64 %51, %53
  %55 = and i64 %54, 72057594037927935
  %56 = xor i64 %55, 25399393228665167
  %57 = inttoptr i64 %56 to ptr
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 24)
  call void @runtime.ClobberPointerRegs()
  %58 = call i32 (ptr, ...) @printf(ptr %57, i32 %0, ptr %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %46)
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @exit(i32 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %59)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/sqlite.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibc/sqlite.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibc/sqlite.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/sqlite.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { ptr, i32 }, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %6 = xor i64 %5, 25399393228665167
  %7 = shl i64 %6, 17
  %8 = select i1 false, i64 0, i64 %7
  %9 = lshr i64 %6, 39
  %10 = select i1 false, i64 0, i64 %9
  %11 = or i64 %8, %10
  %12 = and i64 %11, 72057594037927935
  %13 = or i64 %12, -6557241057451442176
  store i64 %13, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %13)
  call void @runtime.ClobberPointerRegs()
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load i64, ptr %0, align 4
  %17 = and i64 %16, 72057594037927935
  %18 = lshr i64 %17, 17
  %19 = select i1 false, i64 0, i64 %18
  %20 = shl i64 %17, 39
  %21 = select i1 false, i64 0, i64 %20
  %22 = or i64 %19, %21
  %23 = and i64 %22, 72057594037927935
  %24 = xor i64 %23, 25399393228665167
  %25 = inttoptr i64 %24 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = call { ptr, i32 } @"github.com/goplus/lib/c/sqlite.OpenV2"(ptr %25, i32 130, ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %14)
  store { ptr, i32 } %26, ptr %2, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %28 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load { ptr, i32 }, ptr %2, align 8
  %30 = extractvalue { ptr, i32 } %29, 1
  call void @"github.com/goplus/llgo/cl/_testlibc/sqlite.check"(i32 %30)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %27)
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %32 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load { ptr, i32 }, ptr %2, align 8
  %34 = extractvalue { ptr, i32 } %33, 0
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
  store i64 %44, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %44)
  call void @runtime.ClobberPointerRegs()
  %45 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %45)
  %46 = load i64, ptr %3, align 4
  %47 = and i64 %46, 72057594037927935
  %48 = lshr i64 %47, 17
  %49 = select i1 false, i64 0, i64 %48
  %50 = shl i64 %47, 39
  %51 = select i1 false, i64 0, i64 %50
  %52 = or i64 %49, %51
  %53 = and i64 %52, 72057594037927935
  %54 = xor i64 %53, 25399393228665167
  %55 = inttoptr i64 %54 to ptr
  store { ptr, i32 } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %56 = call i32 @sqlite3_close(ptr %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %31)
  ret void
}

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @sqlite3_errstr(i32)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare i32 @printf(ptr, ...)

declare void @exit(i32)

declare void @"github.com/goplus/lib/c.init"()

declare void @"github.com/goplus/lib/c/sqlite.init"()

declare { ptr, i32 } @"github.com/goplus/lib/c/sqlite.OpenV2"(ptr, i32, ptr)

declare i32 @sqlite3_close(ptr)
