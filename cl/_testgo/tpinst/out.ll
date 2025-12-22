; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tpinst'
source_filename = "github.com/goplus/llgo/cl/_testgo/tpinst"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = type { double }

@"github.com/goplus/llgo/cl/_testgo/tpinst.init$guard" = global i1 false, align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 402723539, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 47 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 46 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value" }] }, align 8
@0 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 201357236, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 47 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
=======
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2001801254, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 47 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 46 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value" }] }, align 8
@0 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 2506501, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 47 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2001801254, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 47 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 46 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value" }] }, align 8
@0 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 2506501, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 47 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@1 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst", align 1
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 8, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"*_llgo_int" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 9071, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]$fields" = weak_odr global [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
=======
@"*_llgo_int" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr global [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
=======
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@4 = private unnamed_addr constant [5 x i8] c"Value", align 1
@"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1058413686, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr @"*_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields", i64 2, i64 2 } }, align 8
@5 = private unnamed_addr constant [46 x i8] c"struct { $f func() int; $data unsafe.Pointer }", align 1
@"*_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1449453798, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr null }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" }, align 8
@6 = private unnamed_addr constant [2 x i8] c"$f", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr global %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 82227, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$in", i64 0, i64 0 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@7 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 173521, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$in" = weak_odr global [0 x ptr] zeroinitializer, align 8
=======
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr global %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@7 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr global [1 x ptr] [ptr @_llgo_int], align 8
=======
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@7 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@8 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 8, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@9 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@10 = private unnamed_addr constant [5 x i8] c"value", align 1
@11 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst.value", align 1
@"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 2114492924, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 25 }, ptr @"*_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8$imethods", i64 1, i64 1 } }, align 8
@12 = private unnamed_addr constant [25 x i8] c"interface { Value() int }", align 1
@"*_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1773985388, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 25 }, ptr null }, ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" }, align 8
@"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" }], align 8
@13 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 0, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr @"*_llgo_string" }, align 8
@14 = private unnamed_addr constant [6 x i8] c"string", align 1
<<<<<<< HEAD
<<<<<<< HEAD
@"*_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 9101, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 402723587, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 51 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 46 }, ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value" }] }, align 8
@15 = private unnamed_addr constant [51 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 201357260, i8 5, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 51 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@_llgo_float64 = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 14, i8 0, i8 8, i8 8, i8 46, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr @"*_llgo_float64" }, align 8
@16 = private unnamed_addr constant [7 x i8] c"float64", align 1
@"*_llgo_float64" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 9095, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr null }, ptr @_llgo_float64 }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]$fields" = weak_odr global [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_float64, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0" = weak_odr global %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1677291214, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 50 }, ptr @"*_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0$fields", i64 2, i64 2 } }, align 8
@17 = private unnamed_addr constant [50 x i8] c"struct { $f func() float64; $data unsafe.Pointer }", align 1
@"*_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -940375801, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 50 }, ptr null }, ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0" }, align 8
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 82407, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 14 }, ptr @"*_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$in", i64 0, i64 0 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$out", i64 1, i64 1 } }, align 8
@18 = private unnamed_addr constant [14 x i8] c"func() float64", align 1
@"*_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 173881, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 14 }, ptr null }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, align 8
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$in" = weak_odr global [0 x ptr] zeroinitializer, align 8
=======
@"*_llgo_string" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1041065950, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 51 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 46 }, ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value" }] }, align 8
=======
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1041065950, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 51 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 46 }, ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value" }] }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@15 = private unnamed_addr constant [51 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1922884649, i8 5, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 51 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@_llgo_float64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1233032631, i8 0, i8 8, i8 8, i8 46, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr @"*_llgo_float64" }, align 8
@16 = private unnamed_addr constant [7 x i8] c"float64", align 1
@"*_llgo_float64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1664509894, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 7 }, ptr null }, ptr @_llgo_float64 }, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_float64, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1379243188, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 50 }, ptr @"*_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0$fields", i64 2, i64 2 } }, align 8
@17 = private unnamed_addr constant [50 x i8] c"struct { $f func() float64; $data unsafe.Pointer }", align 1
@"*_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2036250592, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 50 }, ptr null }, ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0" }, align 8
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1927177058, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 14 }, ptr @"*_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$out", i64 1, i64 1 } }, align 8
@18 = private unnamed_addr constant [14 x i8] c"func() float64", align 1
<<<<<<< HEAD
@"*_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -682142518, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 14 }, ptr null }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, align 8
>>>>>>> 713f84c8 (ssa: abi hash use sha256.sum by name)
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$out" = weak_odr global [1 x ptr] [ptr @_llgo_float64], align 8
@"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0$fields" = weak_odr global [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" = weak_odr global %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 825626853, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 29 }, ptr @"*_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk$imethods", i64 1, i64 1 } }, align 8
=======
@"*_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -682142518, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 14 }, ptr null }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, align 8
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_float64], align 8
@"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 825626853, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 29 }, ptr @"*_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk$imethods", i64 1, i64 1 } }, align 8
>>>>>>> fbfc8142 (ssa: abiType global set constant)
@19 = private unnamed_addr constant [29 x i8] c"interface { Value() float64 }", align 1
@"*_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1780193741, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 29 }, ptr null }, ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" }, align 8
@"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_closure$pJCiSqRRm7C1EVl9gbiUle8GkI-4H-SK_h3MoOQHyQ0" }], align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -817087661, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 25 }, ptr @"*github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww$imethods", i64 1, i64 1 } }, align 8
@20 = private unnamed_addr constant [25 x i8] c"interface { value() int }", align 1
@"*github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -739630974, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 25 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" }, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 46 }, ptr @"_llgo_closure$TWlEC03isGYe2Nyy2HYnOBsOYR1lIx43oIUpIyqvm4s" }], align 8
@21 = private unnamed_addr constant [95 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/tpinst.I[int] -> interface{value() int} failed", align 1

define void @"github.com/goplus/llgo/cl/_testgo/tpinst.demo"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  store i64 100, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call i64 %12(ptr %11)
  %14 = icmp ne i64 %13, 100
  br i1 %14, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %16)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %17, i32 0, i32 0
  store double 1.001000e+02, ptr %18, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]")
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %17, 1
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %21)
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, 0
  %24 = getelementptr ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = insertvalue { ptr, ptr } undef, ptr %25, 0
  %27 = insertvalue { ptr, ptr } %26, ptr %22, 1
  %28 = extractvalue { ptr, ptr } %27, 1
  %29 = extractvalue { ptr, ptr } %27, 0
  %30 = call double %29(ptr %28)
  %31 = fcmp une double %30, 1.001000e+02
  br i1 %31, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %35 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", ptr %34)
  br i1 %35, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_7
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %36, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %36, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  unreachable

_llgo_6:                                          ; preds = %_llgo_7
  ret void

_llgo_7:                                          ; preds = %_llgo_4
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", ptr %34)
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %39, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, ptr %38, 1
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %41)
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 0
  %44 = getelementptr ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  %46 = insertvalue { ptr, ptr } undef, ptr %45, 0
  %47 = insertvalue { ptr, ptr } %46, ptr %42, 1
  %48 = extractvalue { ptr, ptr } %47, 1
  %49 = extractvalue { ptr, ptr } %47, 0
  %50 = call i64 %49(ptr %48)
  %51 = icmp ne i64 %50, 100
  br i1 %51, label %_llgo_5, label %_llgo_6

_llgo_8:                                          ; preds = %_llgo_4
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 95 }, ptr %52, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %52, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/tpinst.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tpinst.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/tpinst.demo"()
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce double @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %0, i32 0, i32 0
  %2 = load double, ptr %1, align 8
  ret double %2
}

define linkonce double @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %0, i32 0, i32 0
  %2 = load double, ptr %1, align 8
  ret double %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)
