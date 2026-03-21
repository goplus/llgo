; ModuleID = 'github.com/goplus/llgo/cl/_testlibc/demangle'
source_filename = "github.com/goplus/llgo/cl/_testlibc/demangle"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testlibc/demangle.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [29 x i8] c"__ZNK9INIReader10ParseErrorEv", align 1
@1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@2 = private unnamed_addr constant [18 x i8] c"Failed to demangle", align 1

define void @"github.com/goplus/llgo/cl/_testlibc/demangle.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testlibc/demangle.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testlibc/demangle.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testlibc/demangle.main"() {
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
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %11 = call ptr @_ZN4llvm15itaniumDemangleENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEb(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 29 }, i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %10)
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
  store i64 %21, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %0, align 4
  %24 = and i64 %23, 72057594037927935
  %25 = lshr i64 %24, 17
  %26 = select i1 false, i64 0, i64 %25
  %27 = shl i64 %24, 39
  %28 = select i1 false, i64 0, i64 %27
  %29 = or i64 %26, %28
  %30 = and i64 %29, 72057594037927935
  %31 = xor i64 %30, 25399393228665167
  %32 = inttoptr i64 %31 to ptr
  %33 = icmp ne ptr %32, null
  br i1 %33, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %34 = and i64 ptrtoint (ptr @1 to i64), 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = shl i64 %35, 17
  %37 = select i1 false, i64 0, i64 %36
  %38 = lshr i64 %35, 39
  %39 = select i1 false, i64 0, i64 %38
  %40 = or i64 %37, %39
  %41 = and i64 %40, 72057594037927935
  %42 = or i64 %41, -6557241057451442176
  store i64 %42, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %42)
  call void @runtime.ClobberPointerRegs()
  %43 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %43)
  %44 = load i64, ptr %0, align 4
  %45 = and i64 %44, 72057594037927935
  %46 = lshr i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = shl i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = xor i64 %51, 25399393228665167
  %53 = inttoptr i64 %52 to ptr
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %55 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %2, align 4
  %57 = and i64 %56, 72057594037927935
  %58 = lshr i64 %57, 17
  %59 = select i1 false, i64 0, i64 %58
  %60 = shl i64 %57, 39
  %61 = select i1 false, i64 0, i64 %60
  %62 = or i64 %59, %61
  %63 = and i64 %62, 72057594037927935
  %64 = xor i64 %63, 25399393228665167
  %65 = inttoptr i64 %64 to ptr
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
  %66 = call i32 (ptr, ...) @printf(ptr %65, ptr %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %54)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 18 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %67)
  br label %_llgo_2
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/lib/c.init"()

declare void @"github.com/goplus/lib/cpp/llvm.init"()

declare ptr @_ZN4llvm15itaniumDemangleENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEEb(%"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i32 @printf(ptr, ...)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
