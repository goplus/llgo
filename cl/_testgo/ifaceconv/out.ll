; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifaceconv'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifaceconv"

%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = type {}
%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$guard" = global i1 false, align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" = weak_odr global %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 144245872, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@0 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 288500811, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" }, align 8
=======
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" = weak_odr global %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2044467036, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@0 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1442808563, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2044467036, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@0 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1442808563, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv", align 1
@2 = private unnamed_addr constant [21 x i8] c"nil i0.(I0) succeeded", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 0, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @"*_llgo_string" }, align 8
@3 = private unnamed_addr constant [6 x i8] c"string", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"*_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 9101, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" = weak_odr global %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 144246208, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4$imethods", i64 1, i64 1 } }, align 8
@4 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 288501483, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" }, align 8
=======
@"*_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" = weak_odr global %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1120599641, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4$imethods", i64 1, i64 1 } }, align 8
@4 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2091389668, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1120599641, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4$imethods", i64 1, i64 1 } }, align 8
@4 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2091389668, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@5 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.f", align 1
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1187156019, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 42 }, ptr @"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields", i64 2, i64 2 } }, align 8
@6 = private unnamed_addr constant [42 x i8] c"struct { $f func(); $data unsafe.Pointer }", align 1
@"*_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -30397043, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 42 }, ptr null }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, align 8
@7 = private unnamed_addr constant [2 x i8] c"$f", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 82187, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$in", i64 0, i64 0 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$out", i64 0, i64 0 } }, align 8
@8 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 173441, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$in" = weak_odr global [0 x ptr] zeroinitializer, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac$out" = weak_odr global [0 x ptr] zeroinitializer, align 8
=======
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@8 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@8 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@9 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 8, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@10 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }], align 8
@11 = private unnamed_addr constant [21 x i8] c"nil i1.(I1) succeeded", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" = weak_odr global %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 144246160, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw$imethods", i64 2, i64 2 } }, align 8
@12 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 288501387, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" }, align 8
=======
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" = weak_odr global %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1039680758, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw$imethods", i64 2, i64 2 } }, align 8
@12 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -890875891, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1039680758, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw$imethods", i64 2, i64 2 } }, align 8
@12 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -890875891, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@13 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.g", align 1
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" }], align 8
@14 = private unnamed_addr constant [21 x i8] c"nil i2.(I2) succeeded", align 1
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1745212255, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 17 }, ptr @"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [17 x i8] c"interface { f() }", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1210036093, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 17 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 144246064, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f" }] }, align 8
@16 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 288501195, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f" }] }, align 8
=======
@"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 667895438, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 17 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -493806667, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f" }] }, align 8
@16 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1642496426, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f" }] }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 667895438, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 17 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -493806667, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f" }] }, align 8
@16 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1642496426, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 1, i16 0, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f" }] }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@17 = private unnamed_addr constant [1 x i8] c"f", align 1
@18 = private unnamed_addr constant [17 x i8] c"C1 i1.(I0) failed", align 1
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -2012628237, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 22 }, ptr @"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw$imethods", i64 2, i64 2 } }, align 8
@19 = private unnamed_addr constant [22 x i8] c"interface { f(); g() }", align 1
@"*github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1002778765, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 22 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" }, align 8
@20 = private unnamed_addr constant [17 x i8] c"C1 i1.(I1) failed", align 1
@21 = private unnamed_addr constant [20 x i8] c"C1 i1.(I2) succeeded", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 144246400, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g" }] }, align 8
@22 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 288501867, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g" }] }, align 8
=======
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 149759393, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g" }] }, align 8
@22 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1861337055, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g" }] }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 149759393, i8 13, i8 0, i8 0, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 46 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g" }] }, align 8
@22 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1861337055, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 46 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr @"_llgo_closure$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g" }] }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@23 = private unnamed_addr constant [1 x i8] c"g", align 1
@24 = private unnamed_addr constant [17 x i8] c"C2 i1.(I0) failed", align 1
@25 = private unnamed_addr constant [17 x i8] c"C2 i1.(I1) failed", align 1
@26 = private unnamed_addr constant [17 x i8] c"C2 i1.(I2) failed", align 1
@27 = private unnamed_addr constant [17 x i8] c"C1 I0(i1) was nil", align 1
@28 = private unnamed_addr constant [17 x i8] c"C1 I1(i1) was nil", align 1
@29 = private unnamed_addr constant [4 x i8] c"pass", align 1

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", ptr %0, align 1
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", ptr %0, align 1
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", ptr %0, align 1
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.main"() {
_llgo_0:
  br i1 false, label %_llgo_23, label %_llgo_24

_llgo_1:                                          ; preds = %_llgo_25
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 21 }, ptr %0, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1)
  unreachable

_llgo_2:                                          ; preds = %_llgo_25
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  br i1 false, label %_llgo_26, label %_llgo_27

_llgo_3:                                          ; preds = %_llgo_28
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 21 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  unreachable

_llgo_4:                                          ; preds = %_llgo_28
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  br i1 false, label %_llgo_29, label %_llgo_30

_llgo_5:                                          ; preds = %_llgo_31
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 21 }, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %6, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  unreachable

_llgo_6:                                          ; preds = %_llgo_31
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr null, 1
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr null, 1
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr %14)
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %16, ptr null, 1
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %18, align 1
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1")
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %18, 1
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %21)
  %23 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", ptr %22)
  br i1 %23, label %_llgo_32, label %_llgo_33

_llgo_7:                                          ; preds = %_llgo_34
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 17 }, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %24, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %25)
  unreachable

_llgo_8:                                          ; preds = %_llgo_34
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %21)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 1
  br i1 true, label %_llgo_35, label %_llgo_36

_llgo_9:                                          ; preds = %_llgo_37
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 17 }, ptr %28, align 8
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %28, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  unreachable

_llgo_10:                                         ; preds = %_llgo_37
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %21)
  %31 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", ptr %30)
  br i1 %31, label %_llgo_38, label %_llgo_39

_llgo_11:                                         ; preds = %_llgo_40
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 20 }, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  unreachable

_llgo_12:                                         ; preds = %_llgo_40
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" zeroinitializer, ptr %34, align 1
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2")
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %35, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, ptr %34, 1
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %37)
  %39 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", ptr %38)
  br i1 %39, label %_llgo_41, label %_llgo_42

_llgo_13:                                         ; preds = %_llgo_43
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 17 }, ptr %40, align 8
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %40, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  unreachable

_llgo_14:                                         ; preds = %_llgo_43
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %37)
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, 1
  br i1 true, label %_llgo_44, label %_llgo_45

_llgo_15:                                         ; preds = %_llgo_46
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 17 }, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  unreachable

_llgo_16:                                         ; preds = %_llgo_46
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %37)
  %47 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", ptr %46)
  br i1 %47, label %_llgo_47, label %_llgo_48

_llgo_17:                                         ; preds = %_llgo_49
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 17 }, ptr %48, align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %48, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %49)
  unreachable

_llgo_18:                                         ; preds = %_llgo_49
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %50, align 1
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1")
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %51, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, ptr %50, 1
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %53)
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %53, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %54, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %55, 1
  %58 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  br i1 %58, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 17 }, ptr %59, align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %59, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %60)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %53)
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %53, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %61, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, ptr %62, 1
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %65, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %66, ptr null, 1
  %68 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %64, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %67)
  br i1 %68, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 17 }, ptr %69, align 8
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %69, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %70)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_23:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_23
  %71 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, i1 true }, %_llgo_23 ], [ zeroinitializer, %_llgo_24 ]
  %72 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %71, 0
  %73 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %71, 1
  br i1 %73, label %_llgo_1, label %_llgo_2

_llgo_26:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %74 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_26 ], [ zeroinitializer, %_llgo_27 ]
  %75 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %74, 0
  %76 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %74, 1
  br i1 %76, label %_llgo_3, label %_llgo_4

_llgo_29:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30, %_llgo_29
  %77 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_29 ], [ zeroinitializer, %_llgo_30 ]
  %78 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %77, 0
  %79 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %77, 1
  br i1 %79, label %_llgo_5, label %_llgo_6

_llgo_32:                                         ; preds = %_llgo_6
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %22, 0
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %81, ptr %80, 1
  %83 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %82, 0
  %84 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %83, i1 true, 1
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_6
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %85 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %84, %_llgo_32 ], [ zeroinitializer, %_llgo_33 ]
  %86 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %85, 0
  %87 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %85, 1
  br i1 %87, label %_llgo_8, label %_llgo_7

_llgo_35:                                         ; preds = %_llgo_8
  %88 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 0
  %89 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %88, i1 true, 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_8
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %90 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %89, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
  %91 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %90, 0
  %92 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %90, 1
  br i1 %92, label %_llgo_10, label %_llgo_9

_llgo_38:                                         ; preds = %_llgo_10
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 1
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", ptr %30)
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %94, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, ptr %93, 1
  %97 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %96, 0
  %98 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %97, i1 true, 1
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_10
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %99 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %98, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
  %100 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %99, 0
  %101 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %99, 1
  br i1 %101, label %_llgo_11, label %_llgo_12

_llgo_41:                                         ; preds = %_llgo_12
  %102 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, 1
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %103, ptr %102, 1
  %105 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %104, 0
  %106 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %105, i1 true, 1
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_12
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %107 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %106, %_llgo_41 ], [ zeroinitializer, %_llgo_42 ]
  %108 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %107, 0
  %109 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %107, 1
  br i1 %109, label %_llgo_14, label %_llgo_13

_llgo_44:                                         ; preds = %_llgo_14
  %110 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, 0
  %111 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %110, i1 true, 1
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_14
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %112 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %111, %_llgo_44 ], [ zeroinitializer, %_llgo_45 ]
  %113 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %112, 0
  %114 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %112, 1
  br i1 %114, label %_llgo_16, label %_llgo_15

_llgo_47:                                         ; preds = %_llgo_16
  %115 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, 1
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", ptr %46)
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %116, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %117, ptr %115, 1
  %119 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %118, 0
  %120 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %119, i1 true, 1
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_16
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %121 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %120, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
  %122 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %121, 0
  %123 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %121, 1
  br i1 %123, label %_llgo_18, label %_llgo_17
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
