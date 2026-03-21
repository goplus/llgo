; ModuleID = 'github.com/goplus/llgo/cl/_testgo/returnorder'
source_filename = "github.com/goplus/llgo/cl/_testgo/returnorder"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/cl/_testgo/returnorder.state" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/returnorder.init$guard" = global i1 false, align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr @"*_llgo_int" }, align 8
@0 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@1 = private unnamed_addr constant [46 x i8] c"return order mismatch: got (%d,%d), want (2,2)", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr @"*_llgo_string" }, align 8
@2 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@3 = private unnamed_addr constant [2 x i8] c"ok", align 1

define void @"github.com/goplus/llgo/cl/_testgo/returnorder.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/returnorder.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/returnorder.init$guard", align 1
  call void @fmt.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/returnorder.main"() {
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
  %12 = alloca { i64, i64 }, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/cl/_testgo/returnorder.state", align 8
  call void @llvm.memset(ptr %14, i8 0, i64 8, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %16 = call { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } @"github.com/goplus/llgo/cl/_testgo/returnorder.returnStateAndMut"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %15)
  %17 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } %16, 0
  store %"github.com/goplus/llgo/cl/_testgo/returnorder.state" %17, ptr %14, align 4
  %18 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } %16, 1
  %19 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %14, i32 0, i32 0
  %21 = ptrtoint ptr %20 to i64
  %22 = and i64 %21, 72057594037927935
  %23 = xor i64 %22, 25399393228665167
  %24 = shl i64 %23, 17
  %25 = select i1 false, i64 0, i64 %24
  %26 = lshr i64 %23, 39
  %27 = select i1 false, i64 0, i64 %26
  %28 = or i64 %25, %27
  %29 = and i64 %28, 72057594037927935
  %30 = or i64 %29, -6557241057451442176
  store i64 %30, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %30)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %31 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = load i64, ptr %0, align 4
  %33 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %33, i64 %32, i64 8)
  %34 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = load i64, ptr %33, align 4
  store i64 0, ptr %33, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %36 = icmp ne i64 %35, 2
  br i1 %36, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %37 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %14, i32 0, i32 0
  %39 = ptrtoint ptr %38 to i64
  %40 = and i64 %39, 72057594037927935
  %41 = xor i64 %40, 25399393228665167
  %42 = shl i64 %41, 17
  %43 = select i1 false, i64 0, i64 %42
  %44 = lshr i64 %41, 39
  %45 = select i1 false, i64 0, i64 %44
  %46 = or i64 %43, %45
  %47 = and i64 %46, 72057594037927935
  %48 = or i64 %47, -6557241057451442176
  store i64 %48, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %48)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %49 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load i64, ptr %2, align 4
  %51 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %51, i64 %50, i64 8)
  %52 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %52)
  %53 = load i64, ptr %51, align 4
  store i64 0, ptr %51, align 4
  store %"github.com/goplus/llgo/cl/_testgo/returnorder.state" zeroinitializer, ptr %14, align 4
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %54 = call i64 @runtime.AllocZHidden(i64 32)
  store i64 %54, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %54)
  %55 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load i64, ptr %4, align 4
  %57 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 2)
  %58 = mul i64 %57, 16
  %59 = call i64 @runtime.AdvanceHiddenPointer(i64 %56, i64 %58)
  store i64 %59, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %59)
  %60 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %2, align 4
  %62 = and i64 %61, 72057594037927935
  %63 = lshr i64 %62, 17
  %64 = select i1 false, i64 0, i64 %63
  %65 = shl i64 %62, 39
  %66 = select i1 false, i64 0, i64 %65
  %67 = or i64 %64, %66
  %68 = and i64 %67, 72057594037927935
  %69 = xor i64 %68, 25399393228665167
  %70 = inttoptr i64 %69 to ptr
  %71 = icmp eq ptr %70, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr @_llgo_int, ptr %72, ptr %70)
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %72, 1
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %74 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %74)
  %75 = load i64, ptr %6, align 4
  %76 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %73, ptr %76, align 8
  call void @runtime.StoreHiddenPointee(i64 %75, ptr %76, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %76, align 8
  call void @runtime.TouchConservativeSlot(ptr %76, i64 16)
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %77 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load i64, ptr %4, align 4
  %79 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 2)
  %80 = mul i64 %79, 16
  %81 = call i64 @runtime.AdvanceHiddenPointer(i64 %78, i64 %80)
  store i64 %81, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %81)
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 %18, ptr %82, align 4
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %82, 1
  %84 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load i64, ptr %8, align 4
  %86 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %83, ptr %86, align 8
  call void @runtime.StoreHiddenPointee(i64 %85, ptr %86, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %86, align 8
  call void @runtime.TouchConservativeSlot(ptr %86, i64 16)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %87 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %87)
  %88 = load i64, ptr %4, align 4
  %89 = and i64 %88, 72057594037927935
  %90 = lshr i64 %89, 17
  %91 = select i1 false, i64 0, i64 %90
  %92 = shl i64 %89, 39
  %93 = select i1 false, i64 0, i64 %92
  %94 = or i64 %91, %93
  %95 = and i64 %94, 72057594037927935
  %96 = xor i64 %95, 25399393228665167
  %97 = inttoptr i64 %96 to ptr
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %97, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, i64 2, 1
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 2, 2
  %101 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, ptr %101, align 8
  %102 = icmp eq ptr %101, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %102)
  %103 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %101, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, ptr %11, align 8
  %104 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, 0
  %105 = ptrtoint ptr %104 to i64
  %106 = and i64 %105, 72057594037927935
  %107 = xor i64 %106, 25399393228665167
  %108 = shl i64 %107, 17
  %109 = select i1 false, i64 0, i64 %108
  %110 = lshr i64 %107, 39
  %111 = select i1 false, i64 0, i64 %110
  %112 = or i64 %109, %111
  %113 = and i64 %112, 72057594037927935
  %114 = or i64 %113, -6557241057451442176
  %115 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, 1
  %116 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, 2
  %117 = insertvalue { i64, i64, i64 } undef, i64 %114, 0
  %118 = insertvalue { i64, i64, i64 } %117, i64 %115, 1
  %119 = insertvalue { i64, i64, i64 } %118, i64 %116, 2
  store { i64, i64, i64 } %119, ptr %10, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %101, align 8
  call void @runtime.TouchConservativeSlot(ptr %101, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %121 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %11, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %123 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @fmt.Sprintf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 46 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %120)
  %124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %123, ptr %124, align 8
  %125 = icmp eq ptr %124, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %125)
  %126 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %124, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %126, ptr %13, align 8
  %127 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %126, 0
  %128 = ptrtoint ptr %127 to i64
  %129 = and i64 %128, 72057594037927935
  %130 = xor i64 %129, 25399393228665167
  %131 = shl i64 %130, 17
  %132 = select i1 false, i64 0, i64 %131
  %133 = lshr i64 %130, 39
  %134 = select i1 false, i64 0, i64 %133
  %135 = or i64 %132, %134
  %136 = and i64 %135, 72057594037927935
  %137 = or i64 %136, -6557241057451442176
  %138 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %126, 1
  %139 = insertvalue { i64, i64 } undef, i64 %137, 0
  %140 = insertvalue { i64, i64 } %139, i64 %138, 1
  store { i64, i64 } %140, ptr %12, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %124, align 8
  call void @runtime.TouchConservativeSlot(ptr %124, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %141 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %141)
  %142 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %13, align 8
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %142, ptr %143, align 8
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %143, 1
  store { i64, i64 } zeroinitializer, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %144)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %145)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %146 = icmp ne i64 %18, 2
  br i1 %146, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; No predecessors!
  unreachable
}

define { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } @"github.com/goplus/llgo/cl/_testgo/returnorder.returnStateAndMut"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/returnorder.state", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %2, i32 0, i32 0
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 72057594037927935
  %7 = xor i64 %6, 25399393228665167
  %8 = shl i64 %7, 17
  %9 = select i1 false, i64 0, i64 %8
  %10 = lshr i64 %7, 39
  %11 = select i1 false, i64 0, i64 %10
  %12 = or i64 %9, %11
  %13 = and i64 %12, 72057594037927935
  %14 = or i64 %13, -6557241057451442176
  store i64 %14, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %14)
  call void @runtime.ClobberPointerRegs()
  %15 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load i64, ptr %0, align 4
  %17 = alloca i64, align 8
  store i64 1, ptr %17, align 4
  call void @runtime.StoreHiddenPointee(i64 %16, ptr %17, i64 8)
  store i64 0, ptr %17, align 4
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %19 = call i64 @runtime.HiddenPointerKey(ptr %2)
  %20 = alloca i64, align 8
  store i64 %19, ptr %20, align 4
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %20, align 4
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  %23 = call i64 @"github.com/goplus/llgo/cl/_testgo/returnorder.(*state).mutate$hiddencall"(i64 %22, i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %18)
  call void @runtime.ClobberPointerRegs()
  %24 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %2, align 4
  store %"github.com/goplus/llgo/cl/_testgo/returnorder.state" zeroinitializer, ptr %2, align 4
  call void @runtime.ClobberPointerRegs()
  store %"github.com/goplus/llgo/cl/_testgo/returnorder.state" zeroinitializer, ptr %2, align 4
  %26 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } undef, %"github.com/goplus/llgo/cl/_testgo/returnorder.state" %25, 0
  %27 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } %26, i64 %23, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/returnorder.state", i64 } %27
}

define i64 @"github.com/goplus/llgo/cl/_testgo/returnorder.(*state).mutate"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %8, i32 0, i32 0
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
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = alloca i64, align 8
  store i64 %1, ptr %23, align 4
  call void @runtime.StoreHiddenPointee(i64 %22, ptr %23, i64 8)
  store i64 0, ptr %23, align 4
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load ptr, ptr %6, align 8
  %26 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/returnorder.state", ptr %25, i32 0, i32 0
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 72057594037927935
  %30 = xor i64 %29, 25399393228665167
  %31 = shl i64 %30, 17
  %32 = select i1 false, i64 0, i64 %31
  %33 = lshr i64 %30, 39
  %34 = select i1 false, i64 0, i64 %33
  %35 = or i64 %32, %34
  %36 = and i64 %35, 72057594037927935
  %37 = or i64 %36, -6557241057451442176
  store i64 %37, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %37)
  call void @runtime.ClobberPointerRegs()
  %38 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load i64, ptr %4, align 4
  %40 = alloca i64, align 8
  call void @runtime.LoadHiddenPointee(ptr %40, i64 %39, i64 8)
  %41 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %41)
  %42 = load i64, ptr %40, align 4
  store i64 0, ptr %40, align 4
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret i64 %42
}

; Function Attrs: noinline
define i64 @"github.com/goplus/llgo/cl/_testgo/returnorder.(*state).mutate$hiddencall"(i64 %0, i64 %1) #0 {
_llgo_0:
  %2 = and i64 %0, 72057594037927935
  %3 = lshr i64 %2, 17
  %4 = select i1 false, i64 0, i64 %3
  %5 = shl i64 %2, 39
  %6 = select i1 false, i64 0, i64 %5
  %7 = or i64 %4, %6
  %8 = and i64 %7, 72057594037927935
  %9 = xor i64 %8, 25399393228665167
  %10 = inttoptr i64 %9 to ptr
  %11 = call i64 @"github.com/goplus/llgo/cl/_testgo/returnorder.(*state).mutate"(ptr %10, i64 %1)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  ret i64 %11
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @fmt.init()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare i64 @runtime.AllocZHidden(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @fmt.Sprintf(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare i64 @runtime.HiddenPointerKey(ptr)

attributes #0 = { noinline }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
