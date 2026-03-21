; ModuleID = 'github.com/goplus/llgo/cl/_testrt/allocstr'
source_filename = "github.com/goplus/llgo/cl/_testrt/allocstr"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testrt/allocstr.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [12 x i8] c"Hello world\0A", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/allocstr.hello"() {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 12 }
}

define void @"github.com/goplus/llgo/cl/_testrt/allocstr.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/allocstr.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/allocstr.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/allocstr.main"() {
_llgo_0:
  %0 = alloca { i64, i64 }, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testrt/allocstr.hello"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %4)
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, ptr %6, align 8
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, ptr %1, align 8
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, 0
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
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, 1
  %21 = insertvalue { i64, i64 } undef, i64 %19, 0
  %22 = insertvalue { i64, i64 } %21, i64 %20, 1
  store { i64, i64 } %22, ptr %0, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %24, 1
  %26 = add i64 %25, 1
  %27 = alloca i8, i64 %26, align 1
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr %27, %"github.com/goplus/llgo/runtime/internal/runtime.String" %24)
  %29 = ptrtoint ptr %28 to i64
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = shl i64 %31, 17
  %33 = select i1 false, i64 0, i64 %32
  %34 = lshr i64 %31, 39
  %35 = select i1 false, i64 0, i64 %34
  %36 = or i64 %33, %35
  %37 = and i64 %36, 72057594037927935
  %38 = or i64 %37, -6557241057451442176
  store i64 %38, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %38)
  call void @runtime.ClobberPointerRegs()
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %40 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load i64, ptr %2, align 4
  %42 = and i64 %41, 72057594037927935
  %43 = lshr i64 %42, 17
  %44 = select i1 false, i64 0, i64 %43
  %45 = shl i64 %42, 39
  %46 = select i1 false, i64 0, i64 %45
  %47 = or i64 %44, %46
  %48 = and i64 %47, 72057594037927935
  %49 = xor i64 %48, 25399393228665167
  %50 = inttoptr i64 %49 to ptr
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %51 = call i32 (ptr, ...) @printf(ptr %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %39)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare i32 @printf(ptr, ...)
