; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflectfn'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflectfn"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/reflectfn.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"demo", align 1
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1187156019, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields", i64 2, i64 2 } }, align 8
@1 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -30397043, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, align 8
@2 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@3 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@4 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.demo"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %0)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.init$guard", align 1
  call void @fmt.init()
  call void @reflect.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.main"() {
_llgo_0:
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca { ptr, ptr }, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr null, ptr %6, align 8
  %7 = alloca { i64, i64, i64 }, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr null, ptr %10, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = alloca { i64, i64, i64 }, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %14, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  store ptr null, ptr %16, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  store ptr null, ptr %18, align 8
  %19 = alloca { i64, i64, i64 }, align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %20, align 8
  %21 = alloca %reflect.Value, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca i64, align 8
  %26 = alloca ptr, align 8
  store ptr null, ptr %26, align 8
  %27 = alloca { i64, i64, i64 }, align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %28, align 8
  %29 = alloca %reflect.Value, align 8
  %30 = alloca ptr, align 8
  %31 = alloca i64, align 8
  %32 = alloca ptr, align 8
  store ptr null, ptr %32, align 8
  %33 = alloca i64, align 8
  %34 = alloca ptr, align 8
  store ptr null, ptr %34, align 8
  %35 = alloca { i64, i64, i64 }, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %36, align 8
  %37 = alloca %reflect.Value, align 8
  %38 = alloca ptr, align 8
  %39 = alloca i64, align 8
  %40 = alloca ptr, align 8
  store ptr null, ptr %40, align 8
  %41 = alloca i64, align 8
  %42 = alloca ptr, align 8
  store ptr null, ptr %42, align 8
  %43 = alloca { i64, i64, i64 }, align 8
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %44, align 8
  %45 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %45, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %45)
  %46 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load i64, ptr %0, align 4
  %48 = alloca i64, align 8
  store i64 100, ptr %48, align 4
  call void @runtime.StoreHiddenPointee(i64 %47, ptr %48, i64 8)
  store i64 0, ptr %48, align 4
  %49 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %49)
  %50 = load i64, ptr %0, align 4
  %51 = and i64 %50, 72057594037927935
  %52 = lshr i64 %51, 17
  %53 = select i1 false, i64 0, i64 %52
  %54 = shl i64 %51, 39
  %55 = select i1 false, i64 0, i64 %54
  %56 = or i64 %53, %55
  %57 = and i64 %56, 72057594037927935
  %58 = xor i64 %57, 25399393228665167
  %59 = inttoptr i64 %58 to ptr
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %61 = getelementptr inbounds { ptr }, ptr %60, i32 0, i32 0
  store ptr %59, ptr %61, align 8
  %62 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.main$1", ptr undef }, ptr %60, 1
  store { ptr, ptr } %62, ptr %2, align 8
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %63 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %63, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %63)
  %64 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %64)
  %65 = load i64, ptr %3, align 4
  %66 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %67 = mul i64 %66, 16
  %68 = call i64 @runtime.AdvanceHiddenPointer(i64 %65, i64 %67)
  store i64 %68, ptr %5, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %6, i64 %68)
  %69 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load { ptr, ptr }, ptr %2, align 8
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %70, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %71, 1
  %73 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = load i64, ptr %5, align 4
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %72, ptr %75, align 8
  call void @runtime.StoreHiddenPointee(i64 %74, ptr %75, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %75, align 8
  call void @runtime.TouchConservativeSlot(ptr %75, i64 16)
  store i64 0, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %76 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = load i64, ptr %3, align 4
  %78 = and i64 %77, 72057594037927935
  %79 = lshr i64 %78, 17
  %80 = select i1 false, i64 0, i64 %79
  %81 = shl i64 %78, 39
  %82 = select i1 false, i64 0, i64 %81
  %83 = or i64 %80, %82
  %84 = and i64 %83, 72057594037927935
  %85 = xor i64 %84, 25399393228665167
  %86 = inttoptr i64 %85 to ptr
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %86, 0
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, i64 1, 1
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, i64 1, 2
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, ptr %90, align 8
  %91 = icmp eq ptr %90, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %90, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, ptr %8, align 8
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, 0
  %94 = ptrtoint ptr %93 to i64
  %95 = and i64 %94, 72057594037927935
  %96 = xor i64 %95, 25399393228665167
  %97 = shl i64 %96, 17
  %98 = select i1 false, i64 0, i64 %97
  %99 = lshr i64 %96, 39
  %100 = select i1 false, i64 0, i64 %99
  %101 = or i64 %98, %100
  %102 = and i64 %101, 72057594037927935
  %103 = or i64 %102, -6557241057451442176
  %104 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, 1
  %105 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, 2
  %106 = insertvalue { i64, i64, i64 } undef, i64 %103, 0
  %107 = insertvalue { i64, i64, i64 } %106, i64 %104, 1
  %108 = insertvalue { i64, i64, i64 } %107, i64 %105, 2
  store { i64, i64, i64 } %108, ptr %7, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %90, align 8
  call void @runtime.TouchConservativeSlot(ptr %90, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %110 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %8, align 8
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %112 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %109)
  %113 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %113, ptr %9, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %10, i64 %113)
  %114 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %114)
  %115 = load i64, ptr %9, align 4
  %116 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %117 = mul i64 %116, 16
  %118 = call i64 @runtime.AdvanceHiddenPointer(i64 %115, i64 %117)
  store i64 %118, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %118)
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %119, align 8
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %119, 1
  %121 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load i64, ptr %11, align 4
  %123 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %120, ptr %123, align 8
  call void @runtime.StoreHiddenPointee(i64 %122, ptr %123, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %123, align 8
  call void @runtime.TouchConservativeSlot(ptr %123, i64 16)
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %124 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %124)
  %125 = load i64, ptr %9, align 4
  %126 = and i64 %125, 72057594037927935
  %127 = lshr i64 %126, 17
  %128 = select i1 false, i64 0, i64 %127
  %129 = shl i64 %126, 39
  %130 = select i1 false, i64 0, i64 %129
  %131 = or i64 %128, %130
  %132 = and i64 %131, 72057594037927935
  %133 = xor i64 %132, 25399393228665167
  %134 = inttoptr i64 %133 to ptr
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %134, 0
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135, i64 1, 1
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %136, i64 1, 2
  %138 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, ptr %138, align 8
  %139 = icmp eq ptr %138, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %139)
  %140 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %138, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, ptr %14, align 8
  %141 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 0
  %142 = ptrtoint ptr %141 to i64
  %143 = and i64 %142, 72057594037927935
  %144 = xor i64 %143, 25399393228665167
  %145 = shl i64 %144, 17
  %146 = select i1 false, i64 0, i64 %145
  %147 = lshr i64 %144, 39
  %148 = select i1 false, i64 0, i64 %147
  %149 = or i64 %146, %148
  %150 = and i64 %149, 72057594037927935
  %151 = or i64 %150, -6557241057451442176
  %152 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 1
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, 2
  %154 = insertvalue { i64, i64, i64 } undef, i64 %151, 0
  %155 = insertvalue { i64, i64, i64 } %154, i64 %152, 1
  %156 = insertvalue { i64, i64, i64 } %155, i64 %153, 2
  store { i64, i64, i64 } %156, ptr %13, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %138, align 8
  call void @runtime.TouchConservativeSlot(ptr %138, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %157 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %158 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %158)
  %159 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, align 8
  store i64 0, ptr %9, align 4
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  store ptr null, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %160 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %157)
  %161 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %161, ptr %15, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %16, i64 %161)
  %162 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %162)
  %163 = load i64, ptr %15, align 4
  %164 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %165 = mul i64 %164, 16
  %166 = call i64 @runtime.AdvanceHiddenPointer(i64 %163, i64 %165)
  store i64 %166, ptr %17, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %18, i64 %166)
  %167 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %167, align 8
  %168 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %167, 1
  %169 = icmp eq ptr %17, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %169)
  %170 = load i64, ptr %17, align 4
  %171 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %168, ptr %171, align 8
  call void @runtime.StoreHiddenPointee(i64 %170, ptr %171, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %171, align 8
  call void @runtime.TouchConservativeSlot(ptr %171, i64 16)
  store i64 0, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  store ptr null, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %172 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = load i64, ptr %15, align 4
  %174 = and i64 %173, 72057594037927935
  %175 = lshr i64 %174, 17
  %176 = select i1 false, i64 0, i64 %175
  %177 = shl i64 %174, 39
  %178 = select i1 false, i64 0, i64 %177
  %179 = or i64 %176, %178
  %180 = and i64 %179, 72057594037927935
  %181 = xor i64 %180, 25399393228665167
  %182 = inttoptr i64 %181 to ptr
  %183 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %182, 0
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183, i64 1, 1
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %184, i64 1, 2
  %186 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %185, ptr %186, align 8
  %187 = icmp eq ptr %186, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %187)
  %188 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %186, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, ptr %20, align 8
  %189 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, 0
  %190 = ptrtoint ptr %189 to i64
  %191 = and i64 %190, 72057594037927935
  %192 = xor i64 %191, 25399393228665167
  %193 = shl i64 %192, 17
  %194 = select i1 false, i64 0, i64 %193
  %195 = lshr i64 %192, 39
  %196 = select i1 false, i64 0, i64 %195
  %197 = or i64 %194, %196
  %198 = and i64 %197, 72057594037927935
  %199 = or i64 %198, -6557241057451442176
  %200 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, 1
  %201 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, 2
  %202 = insertvalue { i64, i64, i64 } undef, i64 %199, 0
  %203 = insertvalue { i64, i64, i64 } %202, i64 %200, 1
  %204 = insertvalue { i64, i64, i64 } %203, i64 %201, 2
  store { i64, i64, i64 } %204, ptr %19, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %186, align 8
  call void @runtime.TouchConservativeSlot(ptr %186, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %205 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %206 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %206)
  %207 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %20, align 8
  store i64 0, ptr %15, align 4
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  store ptr null, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %19, align 4
  call void @runtime.TouchConservativeSlot(ptr %19, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %208 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %207)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %205)
  %209 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %209)
  %210 = load { ptr, ptr }, ptr %2, align 8
  %211 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } %210, ptr %211, align 8
  %212 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %211, 1
  %213 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %214 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %212)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %213)
  store %reflect.Value %214, ptr %21, align 8
  %215 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %216 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %216)
  %217 = load %reflect.Value, ptr %21, align 8
  store %reflect.Value zeroinitializer, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %218 = call ptr @reflect.Value.UnsafePointer(%reflect.Value %217)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %215)
  store ptr %218, ptr %22, align 8
  %219 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %219, ptr %23, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %24, i64 %219)
  %220 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %220)
  %221 = load i64, ptr %23, align 4
  %222 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %223 = mul i64 %222, 16
  %224 = call i64 @runtime.AdvanceHiddenPointer(i64 %221, i64 %223)
  store i64 %224, ptr %25, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %26, i64 %224)
  %225 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %225)
  %226 = load ptr, ptr %22, align 8
  %227 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_Pointer, ptr undef }, ptr %226, 1
  %228 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %228)
  %229 = load i64, ptr %25, align 4
  %230 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %227, ptr %230, align 8
  call void @runtime.StoreHiddenPointee(i64 %229, ptr %230, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %230, align 8
  call void @runtime.TouchConservativeSlot(ptr %230, i64 16)
  store ptr null, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store i64 0, ptr %25, align 4
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  store ptr null, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %231 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %231)
  %232 = load i64, ptr %23, align 4
  %233 = and i64 %232, 72057594037927935
  %234 = lshr i64 %233, 17
  %235 = select i1 false, i64 0, i64 %234
  %236 = shl i64 %233, 39
  %237 = select i1 false, i64 0, i64 %236
  %238 = or i64 %235, %237
  %239 = and i64 %238, 72057594037927935
  %240 = xor i64 %239, 25399393228665167
  %241 = inttoptr i64 %240 to ptr
  %242 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %241, 0
  %243 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %242, i64 1, 1
  %244 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %243, i64 1, 2
  %245 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %244, ptr %245, align 8
  %246 = icmp eq ptr %245, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %246)
  %247 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %245, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %247, ptr %28, align 8
  %248 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %247, 0
  %249 = ptrtoint ptr %248 to i64
  %250 = and i64 %249, 72057594037927935
  %251 = xor i64 %250, 25399393228665167
  %252 = shl i64 %251, 17
  %253 = select i1 false, i64 0, i64 %252
  %254 = lshr i64 %251, 39
  %255 = select i1 false, i64 0, i64 %254
  %256 = or i64 %253, %255
  %257 = and i64 %256, 72057594037927935
  %258 = or i64 %257, -6557241057451442176
  %259 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %247, 1
  %260 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %247, 2
  %261 = insertvalue { i64, i64, i64 } undef, i64 %258, 0
  %262 = insertvalue { i64, i64, i64 } %261, i64 %259, 1
  %263 = insertvalue { i64, i64, i64 } %262, i64 %260, 2
  store { i64, i64, i64 } %263, ptr %27, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %245, align 8
  call void @runtime.TouchConservativeSlot(ptr %245, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %264 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %265 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %265)
  %266 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %28, align 8
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %27, align 4
  call void @runtime.TouchConservativeSlot(ptr %27, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %267 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %266)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %264)
  %268 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %268, align 8
  %269 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %268, 1
  %270 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %271 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %269)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %270)
  store %reflect.Value %271, ptr %29, align 8
  %272 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %273 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %273)
  %274 = load %reflect.Value, ptr %29, align 8
  store %reflect.Value zeroinitializer, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %275 = call ptr @reflect.Value.UnsafePointer(%reflect.Value %274)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %272)
  store ptr %275, ptr %30, align 8
  %276 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %276, ptr %31, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %32, i64 %276)
  %277 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %277)
  %278 = load i64, ptr %31, align 4
  %279 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %280 = mul i64 %279, 16
  %281 = call i64 @runtime.AdvanceHiddenPointer(i64 %278, i64 %280)
  store i64 %281, ptr %33, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %34, i64 %281)
  %282 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %282)
  %283 = load ptr, ptr %30, align 8
  %284 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_Pointer, ptr undef }, ptr %283, 1
  %285 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %285)
  %286 = load i64, ptr %33, align 4
  %287 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %284, ptr %287, align 8
  call void @runtime.StoreHiddenPointee(i64 %286, ptr %287, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %287, align 8
  call void @runtime.TouchConservativeSlot(ptr %287, i64 16)
  store ptr null, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store i64 0, ptr %33, align 4
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  store ptr null, ptr %34, align 8
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %288 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %288)
  %289 = load i64, ptr %31, align 4
  %290 = and i64 %289, 72057594037927935
  %291 = lshr i64 %290, 17
  %292 = select i1 false, i64 0, i64 %291
  %293 = shl i64 %290, 39
  %294 = select i1 false, i64 0, i64 %293
  %295 = or i64 %292, %294
  %296 = and i64 %295, 72057594037927935
  %297 = xor i64 %296, 25399393228665167
  %298 = inttoptr i64 %297 to ptr
  %299 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %298, 0
  %300 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %299, i64 1, 1
  %301 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %300, i64 1, 2
  %302 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %301, ptr %302, align 8
  %303 = icmp eq ptr %302, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %303)
  %304 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %302, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %304, ptr %36, align 8
  %305 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %304, 0
  %306 = ptrtoint ptr %305 to i64
  %307 = and i64 %306, 72057594037927935
  %308 = xor i64 %307, 25399393228665167
  %309 = shl i64 %308, 17
  %310 = select i1 false, i64 0, i64 %309
  %311 = lshr i64 %308, 39
  %312 = select i1 false, i64 0, i64 %311
  %313 = or i64 %310, %312
  %314 = and i64 %313, 72057594037927935
  %315 = or i64 %314, -6557241057451442176
  %316 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %304, 1
  %317 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %304, 2
  %318 = insertvalue { i64, i64, i64 } undef, i64 %315, 0
  %319 = insertvalue { i64, i64, i64 } %318, i64 %316, 1
  %320 = insertvalue { i64, i64, i64 } %319, i64 %317, 2
  store { i64, i64, i64 } %320, ptr %35, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %302, align 8
  call void @runtime.TouchConservativeSlot(ptr %302, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %321 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %322 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %322)
  %323 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %36, align 8
  store i64 0, ptr %31, align 4
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  store ptr null, ptr %32, align 8
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %35, align 4
  call void @runtime.TouchConservativeSlot(ptr %35, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %324 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %323)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %321)
  %325 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo", ptr null }, ptr %325, align 8
  %326 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr undef }, ptr %325, 1
  %327 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %328 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %326)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %327)
  store %reflect.Value %328, ptr %37, align 8
  %329 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %330 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %330)
  %331 = load %reflect.Value, ptr %37, align 8
  store %reflect.Value zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %332 = call ptr @reflect.Value.UnsafePointer(%reflect.Value %331)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %329)
  store ptr %332, ptr %38, align 8
  %333 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %333, ptr %39, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %40, i64 %333)
  %334 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %334)
  %335 = load i64, ptr %39, align 4
  %336 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 1)
  %337 = mul i64 %336, 16
  %338 = call i64 @runtime.AdvanceHiddenPointer(i64 %335, i64 %337)
  store i64 %338, ptr %41, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %42, i64 %338)
  %339 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %339)
  %340 = load ptr, ptr %38, align 8
  %341 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_Pointer, ptr undef }, ptr %340, 1
  %342 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %342)
  %343 = load i64, ptr %41, align 4
  %344 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %341, ptr %344, align 8
  call void @runtime.StoreHiddenPointee(i64 %343, ptr %344, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %344, align 8
  call void @runtime.TouchConservativeSlot(ptr %344, i64 16)
  store ptr null, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store i64 0, ptr %41, align 4
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  store ptr null, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %345 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %345)
  %346 = load i64, ptr %39, align 4
  %347 = and i64 %346, 72057594037927935
  %348 = lshr i64 %347, 17
  %349 = select i1 false, i64 0, i64 %348
  %350 = shl i64 %347, 39
  %351 = select i1 false, i64 0, i64 %350
  %352 = or i64 %349, %351
  %353 = and i64 %352, 72057594037927935
  %354 = xor i64 %353, 25399393228665167
  %355 = inttoptr i64 %354 to ptr
  %356 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %355, 0
  %357 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %356, i64 1, 1
  %358 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %357, i64 1, 2
  %359 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %358, ptr %359, align 8
  %360 = icmp eq ptr %359, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %360)
  %361 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %359, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %361, ptr %44, align 8
  %362 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %361, 0
  %363 = ptrtoint ptr %362 to i64
  %364 = and i64 %363, 72057594037927935
  %365 = xor i64 %364, 25399393228665167
  %366 = shl i64 %365, 17
  %367 = select i1 false, i64 0, i64 %366
  %368 = lshr i64 %365, 39
  %369 = select i1 false, i64 0, i64 %368
  %370 = or i64 %367, %369
  %371 = and i64 %370, 72057594037927935
  %372 = or i64 %371, -6557241057451442176
  %373 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %361, 1
  %374 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %361, 2
  %375 = insertvalue { i64, i64, i64 } undef, i64 %372, 0
  %376 = insertvalue { i64, i64, i64 } %375, i64 %373, 1
  %377 = insertvalue { i64, i64, i64 } %376, i64 %374, 2
  store { i64, i64, i64 } %377, ptr %43, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %359, align 8
  call void @runtime.TouchConservativeSlot(ptr %359, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %378 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %379 = icmp eq ptr %44, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %379)
  %380 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %44, align 8
  store i64 0, ptr %39, align 4
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  store ptr null, ptr %40, align 8
  call void @runtime.TouchConservativeSlot(ptr %40, i64 8)
  store { i64, i64, i64 } zeroinitializer, ptr %43, align 4
  call void @runtime.TouchConservativeSlot(ptr %43, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 24)
  call void @runtime.ClobberPointerRegs()
  call void asm sideeffect "mov x20, xzr\0A\09mov x21, xzr\0A\09mov x22, xzr\0A\09mov x23, xzr\0A\09mov x24, xzr\0A\09mov x25, xzr\0A\09mov x26, xzr\0A\09mov x27, xzr\0A\09mov x28, xzr", "~{x20},~{x21},~{x22},~{x23},~{x24},~{x25},~{x26},~{x27},~{x28},~{memory}"()
  %381 = call { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %380)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %378)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectfn.main$1"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %3, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %6)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @fmt.init()

declare void @reflect.init()

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare { i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" } @fmt.Println(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectfn.demo"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/reflectfn.demo")
  tail call void @"github.com/goplus/llgo/cl/_testgo/reflectfn.demo"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1)
  ret void
}

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @reflect.Value.UnsafePointer(%reflect.Value)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
