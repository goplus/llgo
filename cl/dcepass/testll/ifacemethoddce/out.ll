; ModuleID = '/root/.cache/go-build/20/209b55607c26b3c0b80eca320b8d454ac8442a3e279eb8ad05e07203a52f47ad-d.bc'
source_filename = "github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-linux-gnu"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]" = type { i32, { ptr, ptr } }
%"github.com/goplus/llgo/runtime/internal/runtime.mutex" = type { [48 x i8] }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 1337347132, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 56 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).M", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T.M" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr null, ptr null, ptr null }] }, align 8
@"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1994894008, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 56 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).M", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).M" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr null, ptr null, ptr null }] }, align 8
@0 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@1 = private unnamed_addr constant [56 x i8] c"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod", align 1
@2 = private unnamed_addr constant [1 x i8] c"M", align 1
@3 = private unnamed_addr constant [6 x i8] c"func()", align 1
@"__llgo_relocstr$08f271887ce94707" = private unnamed_addr constant [1 x i8] c"M", align 1
@4 = private unnamed_addr constant [1 x i8] c"N", align 1
@"__llgo_relocstr$8ce86a6ae65d3692" = private unnamed_addr constant [1 x i8] c"N", align 1
@"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -190070821, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr @"*_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 56 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo$imethods", i64 2, i64 2 } }, align 8
@"*_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -695065581, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 22 }, ptr null }, ptr @"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo" }, align 8
@5 = private unnamed_addr constant [22 x i8] c"interface { M(); N() }", align 1
@"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }], align 8
@__llgo_relocs = internal unnamed_addr constant [22 x { i32, ptr, ptr, i64, ptr, ptr }] [{ i32, ptr, ptr, i64, ptr, ptr } { i32 6, ptr @"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 6, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 6, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, ptr @"__llgo_relocstr$08f271887ce94707", ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).M", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).M", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 1, ptr @"__llgo_relocstr$8ce86a6ae65d3692", ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).N", i64 1, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).N", i64 1, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 6, ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"*_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, ptr @"__llgo_relocstr$08f271887ce94707", ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).M", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T.M", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 1, ptr @"__llgo_relocstr$8ce86a6ae65d3692", ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).N", i64 1, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 4, ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T.N", i64 1, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 1, ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.main", ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 6, ptr @"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 6, ptr @"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 6, ptr @"*_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo", ptr @"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 6, ptr @"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo", ptr @"*_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo", i64 0, ptr null, ptr null }, { i32, ptr, ptr, i64, ptr, ptr } { i32 2, ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.use", ptr @"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo", i64 0, ptr @"__llgo_relocstr$08f271887ce94707", ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }]
@"github.com/goplus/llgo/runtime/abi.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/abi.kindNames" = global %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, align 8
@6 = private unnamed_addr constant [1 x i8] c"*", align 1
@7 = private unnamed_addr constant [12 x i8] c"t.xcount > 0", align 1
@8 = private unnamed_addr constant [24 x i8] c"accessing method element", align 1
@9 = private unnamed_addr constant [12 x i8] c"t.mcount > 0", align 1
@10 = private unnamed_addr constant [7 x i8] c"invalid", align 1
@11 = private unnamed_addr constant [4 x i8] c"bool", align 1
@12 = private unnamed_addr constant [3 x i8] c"int", align 1
@13 = private unnamed_addr constant [4 x i8] c"int8", align 1
@14 = private unnamed_addr constant [5 x i8] c"int16", align 1
@15 = private unnamed_addr constant [5 x i8] c"int32", align 1
@16 = private unnamed_addr constant [5 x i8] c"int64", align 1
@17 = private unnamed_addr constant [4 x i8] c"uint", align 1
@18 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@19 = private unnamed_addr constant [6 x i8] c"uint16", align 1
@20 = private unnamed_addr constant [6 x i8] c"uint32", align 1
@21 = private unnamed_addr constant [6 x i8] c"uint64", align 1
@22 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@23 = private unnamed_addr constant [7 x i8] c"float32", align 1
@24 = private unnamed_addr constant [7 x i8] c"float64", align 1
@25 = private unnamed_addr constant [9 x i8] c"complex64", align 1
@26 = private unnamed_addr constant [10 x i8] c"complex128", align 1
@27 = private unnamed_addr constant [5 x i8] c"array", align 1
@28 = private unnamed_addr constant [4 x i8] c"chan", align 1
@29 = private unnamed_addr constant [4 x i8] c"func", align 1
@30 = private unnamed_addr constant [9 x i8] c"interface", align 1
@31 = private unnamed_addr constant [3 x i8] c"map", align 1
@32 = private unnamed_addr constant [3 x i8] c"ptr", align 1
@33 = private unnamed_addr constant [5 x i8] c"slice", align 1
@34 = private unnamed_addr constant [6 x i8] c"string", align 1
@35 = private unnamed_addr constant [6 x i8] c"struct", align 1
@36 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"github.com/goplus/llgo/runtime/internal/clite.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/clite/bdwgc.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/clite/bitcast.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/clite/debug.init$guard" = global i1 false, align 1
@37 = private unnamed_addr constant [29 x i8] c"[0x%08X %s+0x%x, SP = 0x%x]\0A\00", align 1
@"github.com/goplus/llgo/runtime/internal/clite/pthread.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/clite/signal.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/clite/tls.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/runtime/goarch.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/runtime/math.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/runtime.ZeroVal" = global [1024 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts" = global [9 x %"github.com/goplus/llgo/runtime/internal/runtime.String"] zeroinitializer, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.boundsNegErrorFmts" = global [8 x %"github.com/goplus/llgo/runtime/internal/runtime.String"] zeroinitializer, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.deferTLS" = global %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]" zeroinitializer, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.divideError" = global { ptr, ptr } zeroinitializer, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.excepKey" = global i32 0, align 4
@"github.com/goplus/llgo/runtime/internal/runtime.goexitKey" = global i32 0, align 4
@"github.com/goplus/llgo/runtime/internal/runtime.hashkey" = global [4 x i64] zeroinitializer, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/runtime/internal/runtime.itabTable" = global { %"github.com/goplus/llgo/runtime/internal/runtime.mutex", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" } zeroinitializer, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.mainThread" = global ptr null, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.overflowError" = global { ptr, ptr } zeroinitializer, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.printFormatPrefixHex" = global ptr null, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.printFormatPrefixInt" = global ptr null, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.printFormatPrefixUInt" = global ptr null, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.shiftError" = global { ptr, ptr } zeroinitializer, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.typelist" = global %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, align 8
@"github.com/goplus/llgo/runtime/internal/runtime.zeroVal" = global [1024 x i8] zeroinitializer, align 1
@38 = private unnamed_addr constant [22 x i8] c"integer divide by zero", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 6 }, ptr @"*_llgo_string" }, align 8
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@39 = private unnamed_addr constant [6 x i8] c"string", align 1
@40 = private unnamed_addr constant [18 x i8] c"index out of range", align 1
@41 = private unnamed_addr constant [21 x i8] c"negative shift amount", align 1
@42 = private unnamed_addr constant [28 x i8] c"comparing uncomparable type ", align 1
@43 = private unnamed_addr constant [49 x i8] c"invalid memory address or nil pointer dereference", align 1
@44 = private unnamed_addr constant [25 x i8] c"slice index out of bounds", align 1
@"_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsError" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 -1656724762, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsError" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsError" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/runtime/internal/runtime.struct$iQ5Dvu_S_FITuocupRv6uKZIL9Ve_FCH-KJtl9LnPN4$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*boundsError).Error", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsError.Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 12 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*boundsError).RuntimeError", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsError.RuntimeError" }] }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsError" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2044016507, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsError" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*boundsError).Error", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*boundsError).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 12 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*boundsError).RuntimeError", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*boundsError).RuntimeError" }] }, align 8
@45 = private unnamed_addr constant [19 x i8] c"runtime.boundsError", align 1
@46 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/runtime/internal/runtime", align 1
@47 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@48 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@49 = private unnamed_addr constant [12 x i8] c"RuntimeError", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1790696805, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr @"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -130179135, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr null }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" }, align 8
@_llgo_int64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 394795202, i8 12, i8 8, i8 8, i8 38, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 5 }, ptr @"*_llgo_int64" }, align 8
@"*_llgo_int64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1901231210, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 5 }, ptr null }, ptr @_llgo_int64 }, align 8
@50 = private unnamed_addr constant [5 x i8] c"int64", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 3 }, ptr @"*_llgo_int" }, align 8
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@51 = private unnamed_addr constant [3 x i8] c"int", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr @"*_llgo_bool" }, align 8
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@52 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsErrorCode" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 933975884, i8 13, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 23 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsErrorCode" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsErrorCode" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1820431726, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 23 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsErrorCode" }, align 8
@53 = private unnamed_addr constant [23 x i8] c"runtime.boundsErrorCode", align 1
@54 = private unnamed_addr constant [1 x i8] c"x", align 1
@55 = private unnamed_addr constant [1 x i8] c"y", align 1
@56 = private unnamed_addr constant [6 x i8] c"signed", align 1
@57 = private unnamed_addr constant [4 x i8] c"code", align 1
@"github.com/goplus/llgo/runtime/internal/runtime.struct$iQ5Dvu_S_FITuocupRv6uKZIL9Ve_FCH-KJtl9LnPN4$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 1 }, ptr @_llgo_int64, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 1 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 6 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.boundsErrorCode", i64 17, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@stderr = external global ptr, align 8
@58 = private unnamed_addr constant [1 x i8] c"(", align 1
@59 = private unnamed_addr constant [2 x i8] c"i)", align 1
@60 = private unnamed_addr constant [1 x i8] c",", align 1
@61 = private unnamed_addr constant [1 x i8] c")", align 1
@62 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@63 = private unnamed_addr constant [4 x i8] c"%+e\00", align 1
@64 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@65 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@66 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@67 = private unnamed_addr constant [1 x i8] c"[", align 1
@68 = private unnamed_addr constant [1 x i8] c"/", align 1
@69 = private unnamed_addr constant [1 x i8] c"]", align 1
@70 = private unnamed_addr constant [54 x i8] c"no goroutines (main called runtime.Goexit) - deadlock!", align 1
@71 = private unnamed_addr constant [32 x i8] c"string slice index out of bounds", align 1
@72 = private unnamed_addr constant [7 x i8] c"panic: ", align 1
@73 = private unnamed_addr constant [1 x i8] c"\0A", align 1
@74 = private unnamed_addr constant [22 x i8] c"interface conversion: ", align 1
@75 = private unnamed_addr constant [13 x i8] c" is nil, not ", align 1
@76 = private unnamed_addr constant [4 x i8] c" is ", align 1
@77 = private unnamed_addr constant [6 x i8] c", not ", align 1
@78 = private unnamed_addr constant [8 x i8] c" is not ", align 1
@79 = private unnamed_addr constant [17 x i8] c": missing method ", align 1
@80 = private unnamed_addr constant [32 x i8] c" (types from different packages)", align 1
@81 = private unnamed_addr constant [30 x i8] c" (types from different scopes)", align 1
@82 = private unnamed_addr constant [9 x i8] c"interface", align 1
@"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.TypeAssertionError" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2108740050, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @197, i64 26 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.TypeAssertionError" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*TypeAssertionError).Error", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*TypeAssertionError).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 12 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*TypeAssertionError).RuntimeError", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*TypeAssertionError).RuntimeError" }] }, align 8
@"_llgo_github.com/goplus/llgo/runtime/internal/runtime.TypeAssertionError" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 32, i32 456317917, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.TypeAssertionError" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @197, i64 26 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.TypeAssertionError" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/runtime/internal/runtime.struct$g8LKhNNLWC_liqIfzC0ASFdixL47rM-hLm6eEUO9A5U$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.Type" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [24 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 545827750, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 8 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 24, i16 24, i32 24 }, [24 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 4 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @118, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @128, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @129, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @131, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @134, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @135, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @136, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @144, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @145, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @146, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @147, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @151, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @166, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @167, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @169, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @171, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @181, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon" }] }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.Type" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 72, i32 -917965754, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$2mXuqn9SiezStb0ROUShDkM7v8PjmuD-3YekCy58xL4$fields", i64 11, i64 11 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 44, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@83 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@_llgo_uint32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 -625909322, i8 12, i8 4, i8 4, i8 42, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 6 }, ptr @"*_llgo_uint32" }, align 8
@"*_llgo_uint32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1605480511, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 6 }, ptr null }, ptr @_llgo_uint32 }, align 8
@84 = private unnamed_addr constant [6 x i8] c"uint32", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.TFlag" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 -970537592, i8 13, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.TFlag" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.TFlag" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1505104728, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag" }, align 8
@85 = private unnamed_addr constant [9 x i8] c"abi.TFlag", align 1
@86 = private unnamed_addr constant [34 x i8] c"github.com/goplus/llgo/runtime/abi", align 1
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@87 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 220675220, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 77 }, ptr @"*_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU$fields", i64 2, i64 2 } }, align 8
@"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1881567500, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 41 }, ptr @"*_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E$out", i64 1, i64 1 } }, align 8
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@88 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -625305683, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 41 }, ptr null }, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" }, align 8
@89 = private unnamed_addr constant [41 x i8] c"func(unsafe.Pointer, unsafe.Pointer) bool", align 1
@"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E$in" = weak_odr constant [2 x ptr] [ptr @_llgo_Pointer, ptr @_llgo_Pointer], align 8
@"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@"*_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1820227339, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 77 }, ptr null }, ptr @"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" }, align 8
@90 = private unnamed_addr constant [77 x i8] c"struct { $f func(unsafe.Pointer, unsafe.Pointer) bool; $data unsafe.Pointer }", align 1
@91 = private unnamed_addr constant [2 x i8] c"$f", align 1
@92 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 2 }, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@93 = private unnamed_addr constant [8 x i8] c"abi.Type", align 1
@94 = private unnamed_addr constant [5 x i8] c"Size_", align 1
@95 = private unnamed_addr constant [8 x i8] c"PtrBytes", align 1
@96 = private unnamed_addr constant [4 x i8] c"Hash", align 1
@97 = private unnamed_addr constant [5 x i8] c"TFlag", align 1
@98 = private unnamed_addr constant [6 x i8] c"Align_", align 1
@99 = private unnamed_addr constant [11 x i8] c"FieldAlign_", align 1
@100 = private unnamed_addr constant [5 x i8] c"Kind_", align 1
@101 = private unnamed_addr constant [5 x i8] c"Equal", align 1
@102 = private unnamed_addr constant [6 x i8] c"GCData", align 1
@103 = private unnamed_addr constant [4 x i8] c"Str_", align 1
@104 = private unnamed_addr constant [10 x i8] c"PtrToThis_", align 1
@"_llgo_struct$2mXuqn9SiezStb0ROUShDkM7v8PjmuD-3YekCy58xL4$fields" = weak_odr constant [11 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 5 }, ptr @_llgo_uintptr, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 8 }, ptr @_llgo_uintptr, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 4 }, ptr @_llgo_uint32, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 6 }, ptr @_llgo_uint8, i64 21, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 11 }, ptr @_llgo_uint8, i64 22, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 5 }, ptr @_llgo_uint8, i64 23, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 5 }, ptr @"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 6 }, ptr @"*_llgo_uint8", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 4 }, ptr @_llgo_string, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@105 = private unnamed_addr constant [5 x i8] c"Align", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@106 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@107 = private unnamed_addr constant [9 x i8] c"ArrayType", align 1
@"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -568587198, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @196, i64 21 }, ptr @"*_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk$out", i64 1, i64 1 } }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [22 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1143616567, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 22, i16 22, i32 24 }, [22 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @118, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @128, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @129, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @131, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @134, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @135, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @136, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @144, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @145, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @146, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @147, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @151, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @166, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @167, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @169, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @171, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @181, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon" }] }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 96, i64 80, i32 1407757354, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@108 = private unnamed_addr constant [13 x i8] c"abi.ArrayType", align 1
@109 = private unnamed_addr constant [4 x i8] c"Type", align 1
@110 = private unnamed_addr constant [4 x i8] c"Elem", align 1
@111 = private unnamed_addr constant [5 x i8] c"Slice", align 1
@112 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 3 }, ptr @_llgo_uintptr, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@113 = private unnamed_addr constant [7 x i8] c"ChanDir", align 1
@"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1945881610, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @115, i64 18 }, ptr @"*_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc$out", i64 1, i64 1 } }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1144193706, i8 13, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @114, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ChanDir" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.ChanDir" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -460673264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @114, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir" }, align 8
@114 = private unnamed_addr constant [11 x i8] c"abi.ChanDir", align 1
@"*_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -326435628, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @115, i64 18 }, ptr null }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc" }, align 8
@115 = private unnamed_addr constant [18 x i8] c"func() abi.ChanDir", align 1
@"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir"], align 8
@116 = private unnamed_addr constant [6 x i8] c"Common", align 1
@"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -621142733, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @117, i64 16 }, ptr @"*_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -604370089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @117, i64 16 }, ptr null }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw" }, align 8
@117 = private unnamed_addr constant [16 x i8] c"func() *abi.Type", align 1
@"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type"], align 8
@118 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
@"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1479346325, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @195, i64 19 }, ptr @"*_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM$out", i64 1, i64 1 } }, align 8
@"[]_llgo_github.com/goplus/llgo/runtime/abi.Method" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1637102155, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @194, i64 12 }, ptr @"*[]_llgo_github.com/goplus/llgo/runtime/abi.Method" }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method" }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.Method" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 -1245790161, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @119, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Method" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.Method" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -140914931, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @119, i64 10 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @120, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @122, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @123, i64 7 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath" }] }, align 8
@119 = private unnamed_addr constant [10 x i8] c"abi.Method", align 1
@120 = private unnamed_addr constant [8 x i8] c"Exported", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @121, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @121, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@121 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@122 = private unnamed_addr constant [4 x i8] c"Name", align 1
@123 = private unnamed_addr constant [7 x i8] c"PkgPath", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [25 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 491823088, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @125, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 25, i16 25, i32 24 }, [25 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 4 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @118, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @128, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @129, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @131, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @134, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @135, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @136, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @144, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @145, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @146, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @147, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @151, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @166, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @167, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @169, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @171, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @181, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @190, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic" }] }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.FuncType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 104, i32 1656572858, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @125, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -2083999987, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @124, i64 11 }, ptr @"*[]*_llgo_github.com/goplus/llgo/runtime/abi.Type" }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type" }, align 8
@"*[]*_llgo_github.com/goplus/llgo/runtime/abi.Type" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1658716233, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @124, i64 11 }, ptr null }, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type" }, align 8
@124 = private unnamed_addr constant [11 x i8] c"[]*abi.Type", align 1
@125 = private unnamed_addr constant [12 x i8] c"abi.FuncType", align 1
@126 = private unnamed_addr constant [2 x i8] c"In", align 1
@127 = private unnamed_addr constant [3 x i8] c"Out", align 1
@"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @126, i64 2 }, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @127, i64 3 }, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@128 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@129 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -243139427, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @130, i64 20 }, ptr @"*_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1060671735, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @130, i64 20 }, ptr null }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88" }, align 8
@130 = private unnamed_addr constant [20 x i8] c"func() *abi.FuncType", align 1
@"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"], align 8
@131 = private unnamed_addr constant [7 x i8] c"GcSlice", align 1
@"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1226011959, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @133, i64 29 }, ptr @"*_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q$out", i64 1, i64 1 } }, align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @132, i64 6 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @132, i64 6 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@132 = private unnamed_addr constant [6 x i8] c"[]byte", align 1
@"*_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1534710063, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @133, i64 29 }, ptr null }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q" }, align 8
@133 = private unnamed_addr constant [29 x i8] c"func(uintptr, uintptr) []byte", align 1
@"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q$in" = weak_odr constant [2 x ptr] [ptr @_llgo_uintptr, ptr @_llgo_uintptr], align 8
@"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q$out" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@134 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@135 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@136 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1440566841, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @189, i64 25 }, ptr @"*_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM$out", i64 1, i64 1 } }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [24 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 724358305, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @141, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 24, i16 24, i32 24 }, [24 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 4 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @118, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @128, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @129, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @131, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @134, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @135, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @136, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @144, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @145, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @146, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @147, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @151, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @166, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @167, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @169, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @171, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @181, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon" }] }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 96, i32 1536385028, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @141, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -39305035, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @140, i64 13 }, ptr @"*[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 -379303371, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @137, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 37073138, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @137, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @120, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @122, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @123, i64 7 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath" }] }, align 8
@137 = private unnamed_addr constant [11 x i8] c"abi.Imethod", align 1
@138 = private unnamed_addr constant [5 x i8] c"Name_", align 1
@139 = private unnamed_addr constant [4 x i8] c"Typ_", align 1
@"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @138, i64 5 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @139, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -658871917, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @140, i64 13 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, align 8
@140 = private unnamed_addr constant [13 x i8] c"[]abi.Imethod", align 1
@141 = private unnamed_addr constant [17 x i8] c"abi.InterfaceType", align 1
@142 = private unnamed_addr constant [8 x i8] c"PkgPath_", align 1
@143 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @142, i64 8 }, ptr @_llgo_string, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @143, i64 7 }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@144 = private unnamed_addr constant [9 x i8] c"IsClosure", align 1
@145 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@146 = private unnamed_addr constant [3 x i8] c"Key", align 1
@147 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1946464100, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @150, i64 15 }, ptr @"*_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc$out", i64 1, i64 1 } }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.Kind" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 563955062, i8 13, i8 8, i8 8, i8 39, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @148, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Kind" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", ptr @"github.com/goplus/llgo/runtime/abi.Kind.String" }] }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.Kind" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1420086957, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @148, i64 8 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String" }] }, align 8
@148 = private unnamed_addr constant [8 x i8] c"abi.Kind", align 1
@149 = private unnamed_addr constant [6 x i8] c"String", align 1
@"*_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1206160253, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @150, i64 15 }, ptr null }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc" }, align 8
@150 = private unnamed_addr constant [15 x i8] c"func() abi.Kind", align 1
@"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind"], align 8
@151 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1658338794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @188, i64 19 }, ptr @"*_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY$out", i64 1, i64 1 } }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.MapType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [27 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 486837881, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @155, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 27, i16 27, i32 24 }, [27 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @118, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @128, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @129, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @131, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @134, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @162, i64 14 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @135, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @163, i64 12 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @164, i64 11 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @136, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @144, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @145, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @147, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @151, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @165, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @166, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @167, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @168, i64 12 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @169, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @171, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @181, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon" }] }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.MapType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 96, i32 1754886760, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @155, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$lDRrMowV9eYDzNBl7cGxdCzQBq1_z9jGv2HZ-n39ws4$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1253407582, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @153, i64 73 }, ptr @"*_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc$fields", i64 2, i64 2 } }, align 8
@"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1335751043, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @152, i64 37 }, ptr @"*_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1028745106, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @152, i64 37 }, ptr null }, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" }, align 8
@152 = private unnamed_addr constant [37 x i8] c"func(unsafe.Pointer, uintptr) uintptr", align 1
@"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20$in" = weak_odr constant [2 x ptr] [ptr @_llgo_Pointer, ptr @_llgo_uintptr], align 8
@"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20$out" = weak_odr constant [1 x ptr] [ptr @_llgo_uintptr], align 8
@"*_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1055040396, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @153, i64 73 }, ptr null }, ptr @"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" }, align 8
@153 = private unnamed_addr constant [73 x i8] c"struct { $f func(unsafe.Pointer, uintptr) uintptr; $data unsafe.Pointer }", align 1
@"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 2 }, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@_llgo_uint16 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -75471123, i8 12, i8 2, i8 2, i8 41, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @154, i64 6 }, ptr @"*_llgo_uint16" }, align 8
@"*_llgo_uint16" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 530818523, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @154, i64 6 }, ptr null }, ptr @_llgo_uint16 }, align 8
@154 = private unnamed_addr constant [6 x i8] c"uint16", align 1
@155 = private unnamed_addr constant [11 x i8] c"abi.MapType", align 1
@156 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@157 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@158 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@159 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@160 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@161 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@"_llgo_struct$lDRrMowV9eYDzNBl7cGxdCzQBq1_z9jGv2HZ-n39ws4$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @146, i64 3 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @156, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @157, i64 6 }, ptr @"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @158, i64 7 }, ptr @_llgo_uint8, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @159, i64 9 }, ptr @_llgo_uint8, i64 113, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @160, i64 10 }, ptr @_llgo_uint16, i64 114, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @161, i64 5 }, ptr @_llgo_uint32, i64 116, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@162 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@163 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@164 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@165 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@166 = private unnamed_addr constant [9 x i8] c"NumMethod", align 1
@167 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@168 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@169 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1975075885, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @170, i64 14 }, ptr @"*_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -14168058, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @170, i64 14 }, ptr null }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" }, align 8
@170 = private unnamed_addr constant [14 x i8] c"func() uintptr", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s$out" = weak_odr constant [1 x ptr] [ptr @_llgo_uintptr], align 8
@171 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1605675141, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @187, i64 22 }, ptr @"*_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0$out", i64 1, i64 1 } }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.StructType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [24 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -210439964, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @179, i64 14 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 24, i16 24, i32 24 }, [24 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 4 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @118, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @128, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @129, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @131, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @134, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @135, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @136, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @144, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @145, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @146, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @147, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @151, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @166, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @167, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @169, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @171, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @181, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon" }] }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.StructType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 96, i32 -26741086, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @179, i64 14 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1426441800, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @178, i64 17 }, ptr @"*[]_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.StructField" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 32, i32 -725357339, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @172, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.StructField" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -698174886, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @172, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @173, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @120, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported" }] }, align 8
@172 = private unnamed_addr constant [15 x i8] c"abi.StructField", align 1
@173 = private unnamed_addr constant [8 x i8] c"Embedded", align 1
@174 = private unnamed_addr constant [3 x i8] c"Typ", align 1
@175 = private unnamed_addr constant [6 x i8] c"Offset", align 1
@176 = private unnamed_addr constant [4 x i8] c"Tag_", align 1
@177 = private unnamed_addr constant [9 x i8] c"Embedded_", align 1
@"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @138, i64 5 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @174, i64 3 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @175, i64 6 }, ptr @_llgo_uintptr, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @176, i64 4 }, ptr @_llgo_string, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @177, i64 9 }, ptr @_llgo_bool, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*[]_llgo_github.com/goplus/llgo/runtime/abi.StructField" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 104736662, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @178, i64 17 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, align 8
@178 = private unnamed_addr constant [17 x i8] c"[]abi.StructField", align 1
@179 = private unnamed_addr constant [14 x i8] c"abi.StructType", align 1
@180 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @142, i64 8 }, ptr @_llgo_string, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @180, i64 6 }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@181 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 332297899, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @186, i64 24 }, ptr @"*_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio$out", i64 1, i64 1 } }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 31999548, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @182, i64 16 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @118, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @143, i64 7 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods" }] }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 191659378, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @182, i64 16 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@182 = private unnamed_addr constant [16 x i8] c"abi.UncommonType", align 1
@183 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@184 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@185 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @142, i64 8 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @183, i64 6 }, ptr @_llgo_uint16, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @184, i64 6 }, ptr @_llgo_uint16, i64 18, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @185, i64 4 }, ptr @_llgo_uint32, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1064629314, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @186, i64 24 }, ptr null }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio" }, align 8
@186 = private unnamed_addr constant [24 x i8] c"func() *abi.UncommonType", align 1
@"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType"], align 8
@"*_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1720334943, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @187, i64 22 }, ptr null }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0" }, align 8
@187 = private unnamed_addr constant [22 x i8] c"func() *abi.StructType", align 1
@"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType"], align 8
@"*_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -643721358, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @188, i64 19 }, ptr null }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY" }, align 8
@188 = private unnamed_addr constant [19 x i8] c"func() *abi.MapType", align 1
@"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType"], align 8
@"*_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1947977531, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @189, i64 25 }, ptr null }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM" }, align 8
@189 = private unnamed_addr constant [25 x i8] c"func() *abi.InterfaceType", align 1
@"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"], align 8
@190 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@191 = private unnamed_addr constant [5 x i8] c"Mtyp_", align 1
@192 = private unnamed_addr constant [4 x i8] c"Ifn_", align 1
@193 = private unnamed_addr constant [4 x i8] c"Tfn_", align 1
@"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @138, i64 5 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @191, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @192, i64 4 }, ptr @_llgo_Pointer, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @193, i64 4 }, ptr @_llgo_Pointer, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"*[]_llgo_github.com/goplus/llgo/runtime/abi.Method" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -556563584, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @194, i64 12 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method" }, align 8
@194 = private unnamed_addr constant [12 x i8] c"[]abi.Method", align 1
@"*_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -7285509, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @195, i64 19 }, ptr null }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM" }, align 8
@195 = private unnamed_addr constant [19 x i8] c"func() []abi.Method", align 1
@"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM$out" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method"], align 8
@"*_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 755696907, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @196, i64 21 }, ptr null }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk" }, align 8
@196 = private unnamed_addr constant [21 x i8] c"func() *abi.ArrayType", align 1
@"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"], align 8
@197 = private unnamed_addr constant [26 x i8] c"runtime.TypeAssertionError", align 1
@198 = private unnamed_addr constant [10 x i8] c"_interface", align 1
@199 = private unnamed_addr constant [8 x i8] c"concrete", align 1
@200 = private unnamed_addr constant [8 x i8] c"asserted", align 1
@201 = private unnamed_addr constant [13 x i8] c"missingMethod", align 1
@"github.com/goplus/llgo/runtime/internal/runtime.struct$g8LKhNNLWC_liqIfzC0ASFdixL47rM-hLm6eEUO9A5U$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @198, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @199, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @200, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @201, i64 13 }, ptr @_llgo_string, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@202 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@203 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@204 = private unnamed_addr constant [15 x i8] c"runtime error: ", align 1
@205 = private unnamed_addr constant [33 x i8] c"concurrent map read and map write", align 1
@_llgo_any = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1376530322, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @206, i64 12 }, ptr @"*_llgo_any" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_any" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1741196194, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @206, i64 12 }, ptr null }, ptr @_llgo_any }, align 8
@206 = private unnamed_addr constant [12 x i8] c"interface {}", align 1
@207 = private unnamed_addr constant [18 x i8] c"invalid eface elem", align 1
@208 = private unnamed_addr constant [13 x i8] c"bad map state", align 1
@209 = private unnamed_addr constant [14 x i8] c"bad evacuatedN", align 1
@210 = private unnamed_addr constant [13 x i8] c"fatal error: ", align 1
@211 = private unnamed_addr constant [31 x i8] c"internal error - misuse of itab", align 1
@212 = private unnamed_addr constant [22 x i8] c"oldoverflow is not nil", align 1
@213 = private unnamed_addr constant [38 x i8] c"index out of range [%x] with length %y", align 1
@214 = private unnamed_addr constant [46 x i8] c"slice bounds out of range [:%x] with length %y", align 1
@215 = private unnamed_addr constant [48 x i8] c"slice bounds out of range [:%x] with capacity %y", align 1
@216 = private unnamed_addr constant [33 x i8] c"slice bounds out of range [%x:%y]", align 1
@217 = private unnamed_addr constant [47 x i8] c"slice bounds out of range [::%x] with length %y", align 1
@218 = private unnamed_addr constant [49 x i8] c"slice bounds out of range [::%x] with capacity %y", align 1
@219 = private unnamed_addr constant [34 x i8] c"slice bounds out of range [:%x:%y]", align 1
@220 = private unnamed_addr constant [34 x i8] c"slice bounds out of range [%x:%y:]", align 1
@221 = private unnamed_addr constant [79 x i8] c"cannot convert slice with length %y to array or pointer to array with length %x", align 1
@222 = private unnamed_addr constant [23 x i8] c"index out of range [%x]", align 1
@223 = private unnamed_addr constant [31 x i8] c"slice bounds out of range [:%x]", align 1
@224 = private unnamed_addr constant [31 x i8] c"slice bounds out of range [%x:]", align 1
@225 = private unnamed_addr constant [32 x i8] c"slice bounds out of range [::%x]", align 1
@226 = private unnamed_addr constant [32 x i8] c"slice bounds out of range [:%x:]", align 1
@227 = private unnamed_addr constant [32 x i8] c"slice bounds out of range [%x::]", align 1
@"_llgo_github.com/goplus/llgo/runtime/internal/runtime.errorString" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1514497342, i8 5, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @228, i64 19 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.errorString" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).Error", ptr @"github.com/goplus/llgo/runtime/internal/runtime.errorString.Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 12 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).RuntimeError", ptr @"github.com/goplus/llgo/runtime/internal/runtime.errorString.RuntimeError" }] }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.errorString" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1292146479, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @228, i64 19 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.errorString" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).Error", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).Error" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 12 }, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).RuntimeError", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).RuntimeError" }] }, align 8
@228 = private unnamed_addr constant [19 x i8] c"runtime.errorString", align 1
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1583200459, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @229, i64 28 }, ptr @"*_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 722800013, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @229, i64 28 }, ptr null }, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" }, align 8
@229 = private unnamed_addr constant [28 x i8] c"interface { Error() string }", align 1
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@230 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@231 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@232 = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@233 = private unnamed_addr constant [25 x i8] c"unexpected signal value: ", align 1
@234 = private unnamed_addr constant [24 x i8] c"hash of unhashable type ", align 1
@235 = private unnamed_addr constant [30 x i8] c"assignment to entry in nil map", align 1
@"_llgo_github.com/goplus/llgo/runtime/internal/runtime.plainError" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 -1553320602, i8 5, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @236, i64 18 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.plainError" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*plainError).Error", ptr @"github.com/goplus/llgo/runtime/internal/runtime.plainError.Error" }] }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/internal/runtime.plainError" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 539414273, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @236, i64 18 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.plainError" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*plainError).Error", ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*plainError).Error" }] }, align 8
@236 = private unnamed_addr constant [18 x i8] c"runtime.plainError", align 1
@237 = private unnamed_addr constant [21 x i8] c"concurrent map writes", align 1
@238 = private unnamed_addr constant [34 x i8] c"concurrent map clone and map write", align 1
@239 = private unnamed_addr constant [24 x i8] c"hash_iter size incorrect", align 1
@240 = private unnamed_addr constant [38 x i8] c"concurrent map iteration and map write", align 1
@241 = private unnamed_addr constant [37 x i8] c"runtime: allocation size out of range", align 1
@242 = private unnamed_addr constant [27 x i8] c"makeslice: cap out of range", align 1
@243 = private unnamed_addr constant [27 x i8] c"makeslice: len out of range", align 1
@244 = private unnamed_addr constant [3 x i8] c"nil", align 1
@_llgo_int8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 1444672578, i8 12, i8 1, i8 1, i8 35, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @245, i64 4 }, ptr @"*_llgo_int8" }, align 8
@"*_llgo_int8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1399554408, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @245, i64 4 }, ptr null }, ptr @_llgo_int8 }, align 8
@245 = private unnamed_addr constant [4 x i8] c"int8", align 1
@_llgo_int16 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 1041867489, i8 12, i8 2, i8 2, i8 36, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @246, i64 5 }, ptr @"*_llgo_int16" }, align 8
@"*_llgo_int16" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 575772759, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @246, i64 5 }, ptr null }, ptr @_llgo_int16 }, align 8
@246 = private unnamed_addr constant [5 x i8] c"int16", align 1
@_llgo_int32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 1448558410, i8 12, i8 4, i8 4, i8 37, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @247, i64 5 }, ptr @"*_llgo_int32" }, align 8
@"*_llgo_int32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -38689692, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @247, i64 5 }, ptr null }, ptr @_llgo_int32 }, align 8
@247 = private unnamed_addr constant [5 x i8] c"int32", align 1
@_llgo_uint = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 172771804, i8 12, i8 8, i8 8, i8 39, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @248, i64 4 }, ptr @"*_llgo_uint" }, align 8
@"*_llgo_uint" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1001256076, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @248, i64 4 }, ptr null }, ptr @_llgo_uint }, align 8
@248 = private unnamed_addr constant [4 x i8] c"uint", align 1
@_llgo_uint64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1994022077, i8 12, i8 8, i8 8, i8 43, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @249, i64 6 }, ptr @"*_llgo_uint64" }, align 8
@"*_llgo_uint64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 89591114, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @249, i64 6 }, ptr null }, ptr @_llgo_uint64 }, align 8
@249 = private unnamed_addr constant [6 x i8] c"uint64", align 1
@_llgo_float32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 62173712, i8 4, i8 4, i8 4, i8 45, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @250, i64 7 }, ptr @"*_llgo_float32" }, align 8
@"*_llgo_float32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1426958587, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @250, i64 7 }, ptr null }, ptr @_llgo_float32 }, align 8
@250 = private unnamed_addr constant [7 x i8] c"float32", align 1
@_llgo_float64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1233032631, i8 4, i8 8, i8 8, i8 46, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @251, i64 7 }, ptr @"*_llgo_float64" }, align 8
@"*_llgo_float64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1664509894, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @251, i64 7 }, ptr null }, ptr @_llgo_float64 }, align 8
@251 = private unnamed_addr constant [7 x i8] c"float64", align 1
@_llgo_complex64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1545857875, i8 4, i8 4, i8 4, i8 15, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @252, i64 9 }, ptr @"*_llgo_complex64" }, align 8
@"*_llgo_complex64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1953092460, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @252, i64 9 }, ptr null }, ptr @_llgo_complex64 }, align 8
@252 = private unnamed_addr constant [9 x i8] c"complex64", align 1
@_llgo_complex128 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 -185553283, i8 4, i8 8, i8 8, i8 16, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c128equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @253, i64 10 }, ptr @"*_llgo_complex128" }, align 8
@"*_llgo_complex128" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -210097625, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @253, i64 10 }, ptr null }, ptr @_llgo_complex128 }, align 8
@253 = private unnamed_addr constant [10 x i8] c"complex128", align 1
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @254, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @254, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@254 = private unnamed_addr constant [5 x i8] c"error", align 1
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -195205541, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @255, i64 29 }, ptr @"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 876051709, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @255, i64 29 }, ptr null }, ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U" }, align 8
@255 = private unnamed_addr constant [29 x i8] c"interface { String() string }", align 1
@"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @149, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@256 = private unnamed_addr constant [2 x i8] c"(\22", align 1
@257 = private unnamed_addr constant [2 x i8] c"\22)", align 1
@258 = private unnamed_addr constant [2 x i8] c") ", align 1
@259 = private unnamed_addr constant [1 x i8] c"_", align 1
@260 = private unnamed_addr constant [43 x i8] c"tls: pthread_key_create failed (errno=%d)\0A\00", align 1
@261 = private unnamed_addr constant [46 x i8] c"tls: failed to create thread local storage key", align 1
@262 = private unnamed_addr constant [35 x i8] c"tls: failed to allocate thread slot", align 1
@263 = private unnamed_addr constant [44 x i8] c"tls: pthread_setspecific failed (errno=%d)\0A\00", align 1
@264 = private unnamed_addr constant [45 x i8] c"tls: failed to set thread local storage value", align 1
@265 = private unnamed_addr constant [30 x i8] c"tls: slot size exceeds maximum", align 1
@266 = private unnamed_addr constant [45 x i8] c"tls: pointer arithmetic overflow in rootRange", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #1

; Function Attrs: nounwind
declare i32 @dladdr(ptr noundef, ptr noundef) #2

declare i32 @unw_getcontext(ptr noundef) #3

declare i32 @unw_init_local(ptr noundef, ptr noundef) #3

declare i32 @unw_step(ptr noundef) #3

declare i32 @unw_get_reg(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @unw_get_proc_name(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @fprintf(ptr, ptr, ...)

declare i32 @pthread_key_delete(i32)

declare ptr @pthread_getspecific(i32)

declare i32 @pthread_setspecific(i32, ptr)

declare i32 @pthread_cond_broadcast(ptr)

declare i32 @pthread_cond_destroy(ptr)

declare i32 @pthread_cond_init(ptr, ptr)

declare i32 @pthread_cond_signal(ptr)

declare i32 @pthread_cond_timedwait(ptr, ptr, ptr)

declare i32 @pthread_cond_wait(ptr, ptr)

declare i32 @pthread_mutex_destroy(ptr)

declare i32 @pthread_mutex_init(ptr, ptr)

declare i32 @pthread_mutex_lock(ptr)

declare i32 @pthread_mutex_trylock(ptr)

declare i32 @pthread_mutex_unlock(ptr)

declare i32 @pthread_rwlock_destroy(ptr)

declare i32 @pthread_rwlock_wrlock(ptr)

declare i32 @pthread_rwlock_rdlock(ptr)

declare i32 @pthread_rwlock_unlock(ptr)

declare i32 @sigaction(i32, ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @GC_malloc(i64)

declare ptr @malloc(i64)

declare void @free(ptr)

declare void @exit(i32)

declare void @siglongjmp(ptr, i32)

declare ptr @pthread_self()

declare i32 @pthread_equal(ptr, ptr)

declare void @pthread_exit(ptr)

declare i64 @fwrite(ptr, i64, i64, ptr)

declare i32 @fputc(i32, ptr)

declare ptr @memset(ptr, i32, i64)

declare void @GC_register_finalizer(ptr, ptr, ptr, ptr, ptr)

declare i32 @GC_pthread_create(ptr, ptr, ptr, ptr)

declare void @GC_free(ptr)

declare i64 @strlen(ptr)

declare i32 @rand()

declare ptr @memmove(ptr, ptr, i64)

declare ptr @calloc(i64, i64)

declare void @GC_add_roots(ptr, ptr)

declare i32 @pthread_key_create(ptr, ptr)

declare i64 @time(ptr)

declare void @srand(i32)

declare void @GC_remove_roots(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ChanType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ChanType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ChanType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ChanType).Common"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ChanType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ChanType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ChanType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ChanType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ChanType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ChanType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ChanType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ChanType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ChanType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ChanType).Len"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ChanType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ChanType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ChanType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ChanType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*ChanType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ChanType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ChanType).Uncommon"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*FuncType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.lastDot"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.splitName"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.IsExported"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.Kind.String"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Kind).String"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*MapType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Method).Exported"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Method).Name"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*PtrType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*PtrType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*PtrType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*PtrType).Common"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*PtrType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*PtrType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*PtrType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*PtrType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*PtrType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*PtrType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*PtrType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*PtrType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*PtrType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*PtrType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*PtrType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*PtrType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*PtrType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*PtrType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*PtrType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*PtrType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*PtrType).Uncommon"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*SliceType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*SliceType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*SliceType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*SliceType).Common"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*SliceType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*SliceType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*SliceType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*SliceType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*SliceType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*SliceType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*SliceType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*SliceType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*SliceType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*SliceType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*SliceType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*SliceType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*SliceType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*SliceType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*SliceType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*SliceType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*SliceType).Uncommon"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*StructType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).FuncType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).Uncommon"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*ArrayType).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*Type).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*ChanType).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*ChanType).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*FuncType).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*MapType).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*PtrType).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*PtrType).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*SliceType).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*SliceType).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*StructType).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).ExportedMethods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.(*structTypeUncommon).GcSlice"(ptr, ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/clite/bdwgc.init"()

; Function Attrs: noinline nounwind optnone uwtable
declare i64 @llgoFromFloat64(double) #5

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @llgoFromFloat32(float) #5

declare void @"github.com/goplus/llgo/runtime/internal/clite/bitcast.init"()

; Function Attrs: noinline nounwind optnone uwtable
declare ptr @llgo_address() #5

declare void @"github.com/goplus/llgo/runtime/internal/clite/debug.init"()

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread.(*Key).Delete"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/clite/pthread.(*Key).Get"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread.(*Key).Set"(ptr, ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread.__noop__"()

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread.init"()

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Cond).Broadcast"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Cond).Destroy"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Cond).Init"(ptr, ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Cond).Signal"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Cond).TimedWait"(ptr, ptr, ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Cond).Wait"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Destroy"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).TryLock"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*RWLock).Destroy"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*RWLock).Lock"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*RWLock).RLock"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*RWLock).RUnlock"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*RWLock).Unlock"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.init"()

declare void @"github.com/goplus/llgo/runtime/internal/clite/signal.init"()

declare { i64, i64 } @"github.com/goplus/llgo/runtime/internal/runtime/math.Mul64"(i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.(*boundsError).Error"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.boundsError.Error"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*boundsError).RuntimeError"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.boundsError.RuntimeError"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.appendIntStr"(ptr, ptr, i64, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.add"(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.(*TypeAssertionError).Error"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*TypeAssertionError).RuntimeError"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.pkgpath"(ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.efaceeq"(ptr, ptr, ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.(*plainError).Error"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.plainError.Error"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.AddCleanupPtr"(ptr, { ptr, ptr })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.finalizer"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AddCleanupPtr$1"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AddCleanupPtr$2"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertDivideByZero"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNegativeShift"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertRuntimeError"(i1, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrCopy"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CStrDup"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.ChanClose"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.notifyOps"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*selectOp).notify"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanRecv"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanSend"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ChanTrySend"(ptr, ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.ClearThreadDefer"()

declare void @"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer].Clear"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoString"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.GoStringN"(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Goexit"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.IfaceE2I"(ptr, { ptr, ptr }, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.assertE2I"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.getitab"(ptr, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"({ ptr, ptr })

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.makemap"(ptr, i64, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.overLoadFactor"(i64, i8)

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.makeBucketArray"(ptr, i8, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.bucketShift"(i8)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.roundupsize"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.newarray"(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.memclrHasPointers"(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.memclrNoHeapPointers"(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*bmap).setoverflow"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeSmallMap"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.makemap_small"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.mapaccess1"(ptr, ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.bucketMask"(i8)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.(*hmap).sameSizeGrow"(ptr)

declare i8 @"github.com/goplus/llgo/runtime/internal/runtime.tophash"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.evacuated"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*bmap).overflow"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.mapassign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.newobject"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.(*hmap).growing"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.growWork"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.isEmpty"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.typedmemmove"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.hashGrow"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.tooManyOverflowBuckets"(i16, i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*hmap).newoverflow"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*hmap).incrnoverflow"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*hmap).createOverflow"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.throw"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemmove"(ptr, ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.(*hmap).oldbucketmask"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.evacuate"(ptr, ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.(*hmap).noldbuckets"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.advanceEvacuationMark"(ptr, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.bucketEvacuated"(ptr, ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapClear"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.mapclear"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.mapclear$1"(ptr, ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.mapdelete"(ptr, ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.New"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewArray"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.mapiterinit"(ptr, ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.fastrand64"()

declare i8 @"github.com/goplus/llgo/runtime/internal/runtime.atomicOr8"(ptr, i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.mapiternext"(ptr)

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.mapaccessK"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PanicSliceConvert"(i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"({ ptr, ptr })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintHex"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"({ ptr, ptr })

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer].Set"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer].ensureSlot"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/tls.registerSlot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.encoderune"(ptr, i32)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.ToEface"({ ptr, ptr })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Typedmemclr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.arrayequal"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.(*bmap).keys"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.c128hash"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.f64hash"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.memhash"(ptr, i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.mix"(i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.r4"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.r8"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.readUnaligned64"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.readUnaligned32"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.c64hash"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.f32hash"(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.copyKeys"(ptr, ptr, ptr, ptr, i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.copyValues"(ptr, ptr, ptr, ptr, i8)

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.eface.Elem"({ ptr, ptr })

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.eface.Kind"({ ptr, ptr })

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.(*eface).Elem"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.(*eface).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.efaceHash"({ ptr, ptr }, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.noescape"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.nilinterhash"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.typehash"(ptr, ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.memhash32"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.memhash64"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.strhash"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.interhash"(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.endSelect"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ifaceHash"({ ptr, ptr }, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.int32Hash"(i32, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.int64Hash"(i64, i64)

declare void @maps.keys({ ptr, ptr }, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.makemap64"(ptr, i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.mapaccess1_fat"(ptr, ptr, ptr, ptr)

declare { ptr, ptr } @maps.clone({ ptr, ptr })

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.mapclone2"(ptr, ptr)

declare { ptr, i64 } @"github.com/goplus/llgo/runtime/internal/runtime.moveToBmap"(ptr, ptr, ptr, i64, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal128"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.memhash0"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.memhash128"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.memhash16"(ptr, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.memhash8"(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.prepareSelect"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*selectOp).end"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*selectOp).init"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*selectOp).wait"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.stringHash"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64)

declare void @maps.values({ ptr, ptr }, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.CBytes"(ptr)

declare i16 @"github.com/goplus/llgo/runtime/internal/runtime.ChanTryRecv"(ptr, ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.GoBytes"(ptr, ptr, i64)

declare [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime.mapaccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(ptr)

declare [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime.Select"(ptr)

declare [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime.TrySelect"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SliceClear"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(ptr, ptr, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr, ptr)

declare [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime.decoderune"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.bytesHash"(ptr, i64)

declare [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime.mapaccess2_fat"(ptr, ptr, ptr, ptr)

declare void @syscall.init()

declare void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).M"(ptr)

declare void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).N"(ptr)

declare void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.init"()

declare void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.main"()

declare void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.use"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr, ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr, ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T.M"()

declare void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T.N"()

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.addChecked"(ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr)

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare void @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite.init"()

; Function Attrs: noinline nounwind optnone uwtable
declare double @llgoToFloat64(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
declare float @llgoToFloat32(i32) #5

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @llgo_addrinfo(ptr, ptr) #5

; Function Attrs: noinline nounwind optnone uwtable
declare void @llgo_stacktrace(i32, ptr, ptr) #5

declare void @"github.com/goplus/llgo/runtime/internal/clite/debug.PrintStack"(i64)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/clite/debug.PrintStack$1"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/debug.StackTrace"(i64, { ptr, ptr })

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/debug.StackTrace$1"(ptr, ptr, ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/clite/debug.PrintStack$1"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Init"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Lock"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Unlock"(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/clite/signal.Signal"(i32, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/tls.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime/goarch.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime/math.init"()

declare [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime/math.MulUintptr"(i64, i64)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr, ptr, ptr, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.itoa"(ptr, ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFrom"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.GrowSlice"(ptr, ptr, i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.nextslicecap"(i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr })

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.TracePanic"({ ptr, ptr })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.fatal"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.printany"({ ptr, ptr })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"({ ptr, ptr }, { ptr, ptr })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double })

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"({ ptr, ptr })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.printanycustomtype"({ ptr, ptr })

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.findItab"(ptr, ptr)

declare [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime.findMethod"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.addItab"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*mutex).Lock"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*mutex).Unlock"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.efaceOf"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.errorString.Error"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c128equal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.c128equal"(ptr, ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c64equal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.c64equal"(ptr, ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr, ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr, ptr)

declare i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.boolCStr"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer].Get"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).Error"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).RuntimeError"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.errorString.RuntimeError"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/clite/tls.(*slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]).rootRange"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromCStr"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.ifaceeq"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare void @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.init$1"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/tls.Alloc[*github.com/goplus/llgo/runtime/internal/runtime.Defer]"(ptr, { ptr, ptr })

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init#1"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init#2"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init#3"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init#4"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init#4$1"(i32)

declare void @"github.com/goplus/llgo/runtime/internal/clite/tls.slotDestructor[*github.com/goplus/llgo/runtime/internal/runtime.Defer]"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/clite/tls.deregisterSlot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init$1"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.panicmakeslicecap"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.panicmakeslicelen"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(ptr, i64, i64, i64)

declare void @runtime.init()

declare i32 @main(i32, ptr)

declare void @_start()

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Debian clang version 19.1.7 (3~deb12u1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 1}
