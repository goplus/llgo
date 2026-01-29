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
%"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.structTypeUncommon" = type { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType" }
%"github.com/goplus/llgo/runtime/abi.u#0" = type { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType" }
%"github.com/goplus/llgo/runtime/abi.u#1" = type { %"github.com/goplus/llgo/runtime/abi.FuncType", %"github.com/goplus/llgo/runtime/abi.UncommonType" }
%"github.com/goplus/llgo/runtime/abi.u#3" = type { %"github.com/goplus/llgo/runtime/abi.ArrayType", %"github.com/goplus/llgo/runtime/abi.UncommonType" }
%"github.com/goplus/llgo/runtime/abi.ArrayType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.u#4" = type { %"github.com/goplus/llgo/runtime/abi.ChanType", %"github.com/goplus/llgo/runtime/abi.UncommonType" }
%"github.com/goplus/llgo/runtime/abi.ChanType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.u#5" = type { %"github.com/goplus/llgo/runtime/abi.MapType", %"github.com/goplus/llgo/runtime/abi.UncommonType" }
%"github.com/goplus/llgo/runtime/abi.MapType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr, ptr, ptr, { ptr, ptr }, i8, i8, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.u#7" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType" }
%union.castUnion = type { double }
%struct.unw_cursor_t = type { [204 x i64] }
%struct.unw_context_t = type { [167 x i64] }
%"github.com/goplus/llgo/runtime/internal/clite/debug.Frame" = type { i64, i64, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }
%"github.com/goplus/llgo/runtime/internal/clite/signal.sigactiont" = type { ptr, ptr, i32, i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.itab" = type { ptr, ptr, i32, [1 x i64] }
%"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]" = type { ptr, i64, { ptr, ptr } }

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

define void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).M"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr %0, align 1
  call void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T.M"()
  ret void
}

define void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.(*T).N"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T", ptr %0, align 1
  call void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T.N"()
  ret void
}

define void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T" zeroinitializer, ptr %0, align 1
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$f14WsslTA1u5wwC83jLU0HU2u2mmAWxBVE38vPBbRAo", ptr @"_llgo_github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T")
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %0, 1
  call void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.use"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  ret void
}

define void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.use"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  call void %8(ptr %7)
  ret void
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  ret i1 %3
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

define void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T.M"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.T.N"() {
_llgo_0:
  ret void
}

define i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 6
  %2 = load i8, ptr %1, align 1
  %3 = and i8 %2, 31
  %4 = zext i8 %3 to i64
  ret i64 %4
}

define ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 3
  %2 = load i8, ptr %1, align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret ptr null

_llgo_2:                                          ; preds = %_llgo_0
  %5 = call i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr %0)
  %6 = icmp eq i64 %5, 25
  br i1 %6, label %_llgo_3, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_2
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.structTypeUncommon", ptr %0, i32 0, i32 1
  ret ptr %7

_llgo_4:                                          ; preds = %_llgo_5
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.u#0", ptr %0, i32 0, i32 1
  ret ptr %8

_llgo_5:                                          ; preds = %_llgo_2
  %9 = icmp eq i64 %5, 22
  br i1 %9, label %_llgo_4, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_7
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.u#1", ptr %0, i32 0, i32 1
  ret ptr %10

_llgo_7:                                          ; preds = %_llgo_5
  %11 = icmp eq i64 %5, 19
  br i1 %11, label %_llgo_6, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_9
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.u#0", ptr %0, i32 0, i32 1
  ret ptr %12

_llgo_9:                                          ; preds = %_llgo_7
  %13 = icmp eq i64 %5, 23
  br i1 %13, label %_llgo_8, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_11
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.u#3", ptr %0, i32 0, i32 1
  ret ptr %14

_llgo_11:                                         ; preds = %_llgo_9
  %15 = icmp eq i64 %5, 17
  br i1 %15, label %_llgo_10, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_13
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.u#4", ptr %0, i32 0, i32 1
  ret ptr %16

_llgo_13:                                         ; preds = %_llgo_11
  %17 = icmp eq i64 %5, 18
  br i1 %17, label %_llgo_12, label %_llgo_15

_llgo_14:                                         ; preds = %_llgo_15
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.u#5", ptr %0, i32 0, i32 1
  ret ptr %18

_llgo_15:                                         ; preds = %_llgo_13
  %19 = icmp eq i64 %5, 21
  br i1 %19, label %_llgo_14, label %_llgo_17

_llgo_16:                                         ; preds = %_llgo_17
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.structTypeUncommon", ptr %0, i32 0, i32 1
  ret ptr %20

_llgo_17:                                         ; preds = %_llgo_15
  %21 = icmp eq i64 %5, 20
  br i1 %21, label %_llgo_16, label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.u#7", ptr %0, i32 0, i32 1
  ret ptr %22
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

define ptr @"github.com/goplus/llgo/runtime/abi.addChecked"(ptr %0, i64 %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" %2) {
_llgo_0:
  %3 = ptrtoint ptr %0 to i64
  %4 = add i64 %3, %1
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 3
  %2 = load i8, ptr %1, align 1
  %3 = and i8 %2, 2
  %4 = icmp ne i8 %3, 0
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 9
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %7

_llgo_2:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 9
  %9 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %8, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %9
}

define void @"github.com/goplus/llgo/runtime/abi.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/runtime/abi.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/runtime/abi.init$guard", align 1
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 432)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 7 }, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 3 }, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 3
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 4 }, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 5
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 5 }, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 6
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 7
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 4 }, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 5 }, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 9
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 6 }, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 10
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 6 }, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 11
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 6 }, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 12
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 7 }, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 13
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 7 }, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 14
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 7 }, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 15
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 9 }, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 16
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 10 }, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 17
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 18
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 4 }, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 19
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 4 }, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 20
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 9 }, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 21
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 3 }, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 22
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 3 }, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 23
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 5 }, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 24
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 6 }, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 25
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 6 }, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i64 26
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 14 }, ptr %28, align 8
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 27, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 27, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, ptr @"github.com/goplus/llgo/runtime/abi.kindNames", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %0, align 8
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = call ptr @"github.com/goplus/llgo/runtime/abi.addChecked"(ptr %1, i64 %8, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 12 })
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i64
  %13 = zext i16 %11 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %2, i64 %12, i64 %13, i64 40)
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_4, %_llgo_2
  %15 = phi i64 [ 0, %_llgo_2 ], [ %29, %_llgo_4 ]
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %1, i32 0, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i64
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %20 = mul i64 %15, 40
  %21 = call ptr @"github.com/goplus/llgo/runtime/abi.addChecked"(ptr %9, i64 %20, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 24 })
  %22 = load %"github.com/goplus/llgo/runtime/abi.Method", ptr %21, align 8
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, 0
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, 1
  %25 = icmp slt i64 %15, 0
  %26 = icmp sge i64 %15, %24
  %27 = or i1 %26, %25
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %27)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Method", ptr %23, i64 %15
  store %"github.com/goplus/llgo/runtime/abi.Method" %22, ptr %28, align 8
  %29 = add i64 %15, 1
  br label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_3
  call void @llvm.memcpy.p0.p0.i64(ptr %0, ptr %2, i64 24, i1 false)
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/clite.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/runtime/internal/clite.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/runtime/internal/clite.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @llgoToFloat64(i64 noundef %0) #1 {
  %2 = alloca i64, align 8
  %3 = alloca %union.castUnion, align 8
  store i64 %0, ptr %2, align 8
  %4 = load i64, ptr %2, align 8
  store i64 %4, ptr %3, align 8
  %5 = load double, ptr %3, align 8
  ret double %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @llgoToFloat32(i32 noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %union.castUnion, align 8
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = sext i32 %4 to i64
  store i64 %5, ptr %3, align 8
  %6 = load float, ptr %3, align 8
  ret float %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llgo_addrinfo(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call i32 @dladdr(ptr noundef %5, ptr noundef %6) #6
  ret i32 %7
}

; Function Attrs: nounwind
declare i32 @dladdr(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @llgo_stacktrace(i32 noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.unw_cursor_t, align 8
  %8 = alloca %struct.unw_context_t, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [256 x i8], align 1
  %13 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %14 = call i32 @unw_getcontext(ptr noundef %8)
  %15 = call i32 @unw_init_local(ptr noundef %7, ptr noundef %8)
  store i32 0, ptr %13, align 4
  br label %16

16:                                               ; preds = %46, %23, %3
  %17 = call i32 @unw_step(ptr noundef %7)
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load i32, ptr %13, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, ptr %13, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %13, align 4
  br label %16, !llvm.loop !6

26:                                               ; preds = %19
  %27 = call i32 @unw_get_reg(ptr noundef %7, i32 noundef -1, ptr noundef %10)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = getelementptr inbounds [256 x i8], ptr %12, i64 0, i64 0
  %31 = call i32 @unw_get_proc_name(ptr noundef %7, ptr noundef %30, i64 noundef 256, ptr noundef %9)
  %32 = call i32 @unw_get_reg(ptr noundef %7, i32 noundef -2, ptr noundef %11)
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %5, align 8
  %35 = load i64, ptr %10, align 8
  %36 = inttoptr i64 %35 to ptr
  %37 = load i64, ptr %9, align 8
  %38 = inttoptr i64 %37 to ptr
  %39 = load i64, ptr %11, align 8
  %40 = inttoptr i64 %39 to ptr
  %41 = getelementptr inbounds [256 x i8], ptr %12, i64 0, i64 0
  %42 = call i32 %33(ptr noundef %34, ptr noundef %36, ptr noundef %38, ptr noundef %40, ptr noundef %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %47

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %26
  br label %16, !llvm.loop !6

47:                                               ; preds = %44, %16
  ret void
}

declare i32 @unw_getcontext(ptr noundef) #4

declare i32 @unw_init_local(ptr noundef, ptr noundef) #4

declare i32 @unw_step(ptr noundef) #4

declare i32 @unw_get_reg(ptr noundef, i32 noundef, ptr noundef) #4

declare i32 @unw_get_proc_name(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #4

define void @"github.com/goplus/llgo/runtime/internal/clite/debug.PrintStack"(i64 %0) {
_llgo_0:
  %1 = add i64 %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/clite/debug.StackTrace"(i64 %1, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/clite/debug.PrintStack$1", ptr null })
  ret void
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/clite/debug.PrintStack$1"(ptr %0, ptr %1) {
_llgo_0:
  %2 = tail call i1 @"github.com/goplus/llgo/runtime/internal/clite/debug.PrintStack$1"(ptr %1)
  ret i1 %2
}

define void @"github.com/goplus/llgo/runtime/internal/clite/debug.StackTrace"(i64 %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } %1, ptr %2, align 8
  %3 = add i64 1, %0
  %4 = trunc i64 %3 to i32
  call void @llgo_stacktrace(i32 %4, ptr %2, ptr @"github.com/goplus/llgo/runtime/internal/clite/debug.StackTrace$1")
  ret void
}

define i32 @"github.com/goplus/llgo/runtime/internal/clite/debug.StackTrace$1"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) {
_llgo_0:
  %5 = load { ptr, ptr }, ptr %0, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/debug.Frame", ptr %6, i32 0, i32 0
  %8 = ptrtoint ptr %1 to i64
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/debug.Frame", ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %2 to i64
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/debug.Frame", ptr %6, i32 0, i32 2
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/debug.Frame", ptr %6, i32 0, i32 3
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromCStr"(ptr %4)
  store i64 %8, ptr %7, align 4
  store i64 %10, ptr %9, align 4
  store ptr %3, ptr %11, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, ptr %12, align 8
  %14 = extractvalue { ptr, ptr } %5, 1
  %15 = extractvalue { ptr, ptr } %5, 0
  %16 = call i1 %15(ptr %14, ptr %6)
  br i1 %16, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  ret i32 0

_llgo_2:                                          ; preds = %_llgo_0
  ret i32 1
}

define i1 @"github.com/goplus/llgo/runtime/internal/clite/debug.PrintStack$1"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/debug.Frame", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = inttoptr i64 %3 to ptr
  %5 = call i32 @llgo_addrinfo(ptr %4, ptr %1)
  %6 = load ptr, ptr @stderr, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/debug.Frame", ptr %0, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/debug.Frame", ptr %0, i32 0, i32 3
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/debug.Frame", ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/debug.Frame", ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr %6, ptr @37, i64 %8, %"github.com/goplus/llgo/runtime/internal/runtime.String" %10, i64 %12, ptr %14)
  ret i1 true
}

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

define i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Init"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call i32 @pthread_mutex_init(ptr %0, ptr %1)
  ret i32 %2
}

declare i32 @pthread_mutex_init(ptr, ptr)

define void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Lock"(ptr %0) {
_llgo_0:
  %1 = call i32 @pthread_mutex_lock(ptr %0)
  ret void
}

declare i32 @pthread_mutex_lock(ptr)

declare i32 @pthread_mutex_trylock(ptr)

define void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Unlock"(ptr %0) {
_llgo_0:
  %1 = call i32 @pthread_mutex_unlock(ptr %0)
  ret void
}

declare i32 @pthread_mutex_unlock(ptr)

declare i32 @pthread_rwlock_destroy(ptr)

declare i32 @pthread_rwlock_wrlock(ptr)

declare i32 @pthread_rwlock_rdlock(ptr)

declare i32 @pthread_rwlock_unlock(ptr)

define i32 @"github.com/goplus/llgo/runtime/internal/clite/signal.Signal"(i32 %0, ptr %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/signal.sigactiont", ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = call i32 @sigaction(i32 %0, ptr %2, ptr null)
  ret i32 %4
}

declare i32 @sigaction(i32, ptr, ptr)

define void @"github.com/goplus/llgo/runtime/internal/clite/tls.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/runtime/internal/clite/tls.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/runtime/internal/clite/tls.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/internal/clite.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime/goarch.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/runtime/internal/runtime/goarch.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/runtime/internal/runtime/goarch.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime/math.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/runtime/internal/runtime/math.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/runtime/internal/runtime/math.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime/goarch.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime/math.MulUintptr"(i64 %0, i64 %1) {
_llgo_0:
  %2 = or i64 %0, %1
  %3 = icmp ult i64 %2, 4294967296
  br i1 %3, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %4 = mul i64 %0, %1
  %5 = insertvalue { i64, i1 } undef, i64 %4, 0
  %6 = insertvalue { i64, i1 } %5, i1 false, 1
  %7 = alloca { i64, i1 }, align 8
  store { i64, i1 } %6, ptr %7, align 4
  %8 = load [2 x i64], ptr %7, align 4
  ret [2 x i64] %8

_llgo_2:                                          ; preds = %_llgo_3
  %9 = udiv i64 -1, %0
  %10 = icmp ugt i64 %1, %9
  %11 = mul i64 %0, %1
  %12 = insertvalue { i64, i1 } undef, i64 %11, 0
  %13 = insertvalue { i64, i1 } %12, i1 %10, 1
  %14 = alloca { i64, i1 }, align 8
  store { i64, i1 } %13, ptr %14, align 4
  %15 = load [2 x i64], ptr %14, align 4
  ret [2 x i64] %15

_llgo_3:                                          ; preds = %_llgo_0
  %16 = icmp eq i64 %0, 0
  br i1 %16, label %_llgo_1, label %_llgo_2
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, align 8
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %4 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2, %"github.com/goplus/llgo/runtime/internal/runtime.String" %3)
  ret i1 %4
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @llvm.memset.p0.i64(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @llvm.memset.p0.i64(ptr %3, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 1
  %7 = load i64, ptr %6, align 4
  %8 = icmp ne i64 %5, %7
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i1 false

_llgo_2:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %10, %12
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  br label %_llgo_5

_llgo_4.loopexit:                                 ; preds = %_llgo_5
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_4.loopexit, %_llgo_2
  ret i1 true

_llgo_5:                                          ; preds = %_llgo_8, %_llgo_3
  %14 = phi i64 [ 0, %_llgo_3 ], [ %27, %_llgo_8 ]
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %_llgo_6, label %_llgo_4.loopexit

_llgo_6:                                          ; preds = %_llgo_5
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i64 %14
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i64 %14
  %25 = load i8, ptr %24, align 1
  %26 = icmp ne i8 %21, %25
  br i1 %26, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  ret i1 false

_llgo_8:                                          ; preds = %_llgo_6
  %27 = add i64 %14, 1
  br label %_llgo_5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

define void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.errorString.Error"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 18 })
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @_llgo_string, ptr undef }, ptr %2, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %3)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 %0) {
_llgo_0:
  %1 = call ptr @GC_malloc(i64 %0)
  %2 = call ptr @memset(ptr %1, i32 0, i64 %0)
  ret ptr %2
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) {
_llgo_0:
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @llvm.memset.p0.i64(ptr %7, i8 0, i64 24, i1 false)
  %8 = icmp slt i64 %4, 0
  br i1 %8, label %_llgo_1, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_4, %_llgo_3, %_llgo_0
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 25 }, ptr %9, align 8
  %10 = insertvalue { ptr, ptr } { ptr @_llgo_string, ptr undef }, ptr %9, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %10)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  %11 = sub i64 %5, %4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, i32 0, i32 1
  store i64 %11, ptr %12, align 4
  %13 = sub i64 %6, %4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, i32 0, i32 2
  store i64 %13, ptr %14, align 4
  %15 = sub i64 %6, %4
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %_llgo_6, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_4
  %17 = icmp sgt i64 %6, %3
  br i1 %17, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_5
  %18 = icmp slt i64 %6, %5
  br i1 %18, label %_llgo_1, label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_0
  %19 = icmp slt i64 %5, %4
  br i1 %19, label %_llgo_1, label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_2
  %20 = mul i64 %4, %2
  %21 = getelementptr i8, ptr %1, i64 %20
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, i32 0, i32 0
  store ptr %21, ptr %22, align 8
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %0, ptr %7, i64 24, i1 false)
  ret void

_llgo_8:                                          ; preds = %_llgo_2
  %24 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, i32 0, i32 0
  store ptr %1, ptr %24, align 8
  br label %_llgo_7
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %0, ptr %1, ptr %2, i64 %3, i64 %4) {
_llgo_0:
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @llvm.memset.p0.i64(ptr %8, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, ptr %1, align 8
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %0, ptr %1, i64 24, i1 false)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, i32 0, i32 1
  %12 = load i64, ptr %11, align 4
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %6, ptr %1, i64 24, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.GrowSlice"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %7, ptr %6, i64 %3, i64 %4)
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %7, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, ptr %1, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = mul i64 %12, %4
  %18 = getelementptr i8, ptr %16, i64 %17
  %19 = mul i64 %3, %4
  %20 = call ptr @memcpy(ptr %18, ptr %2, i64 %19)
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %0, ptr %1, i64 24, i1 false)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %0, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @llvm.memset.p0.i64(ptr %2, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1, ptr %0, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %0, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFrom"(ptr %4, i64 %6)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %7
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.itoa"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %0, ptr %1, i64 %2) {
_llgo_0:
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %6 = sub i64 %5, 1
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %7 = urem i64 %30, 10
  %8 = add i64 %7, 48
  %9 = trunc i64 %8 to i8
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 0
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %12 = icmp slt i64 %31, 0
  %13 = icmp sge i64 %31, %11
  %14 = or i1 %13, %12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %14)
  %15 = getelementptr inbounds i8, ptr %10, i64 %31
  store i8 %9, ptr %15, align 1
  %16 = sub i64 %31, 1
  %17 = udiv i64 %30, 10
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  %.lcssa1 = phi i64 [ %30, %_llgo_3 ]
  %.lcssa = phi i64 [ %31, %_llgo_3 ]
  %18 = add i64 %.lcssa1, 48
  %19 = trunc i64 %18 to i8
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 0
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %22 = icmp slt i64 %.lcssa, 0
  %23 = icmp sge i64 %.lcssa, %21
  %24 = or i1 %23, %22
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %24)
  %25 = getelementptr inbounds i8, ptr %20, i64 %.lcssa
  store i8 %19, ptr %25, align 1
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 2
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %4, ptr %28, i64 1, i64 %26, i64 %.lcssa, i64 %27, i64 %26)
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %0, ptr %4, i64 24, i1 false)
  ret void

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %30 = phi i64 [ %2, %_llgo_0 ], [ %17, %_llgo_1 ]
  %31 = phi i64 [ %6, %_llgo_0 ], [ %16, %_llgo_1 ]
  %32 = icmp uge i64 %30, 10
  br i1 %32, label %_llgo_1, label %_llgo_2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFrom"(ptr %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @llvm.memset.p0.i64(ptr %2, i8 0, i64 16, i1 false)
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %4

_llgo_2:                                          ; preds = %_llgo_0
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 %1, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 %1)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = call ptr @memcpy(ptr %9, ptr %0, i64 %1)
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %11
}

define ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 %0) {
_llgo_0:
  %1 = call ptr @GC_malloc(i64 %0)
  ret ptr %1
}

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @GC_malloc(i64)

define void @"github.com/goplus/llgo/runtime/internal/runtime.GrowSlice"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %0, ptr %1, i64 %2, i64 %3) {
_llgo_0:
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @llvm.memset.p0.i64(ptr %5, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, ptr %1, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, i32 0, i32 1
  %7 = load i64, ptr %6, align 4
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, i32 0, i32 2
  %10 = load i64, ptr %9, align 4
  %11 = icmp sgt i64 %8, %10
  br i1 %11, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, i32 0, i32 2
  %13 = load i64, ptr %12, align 4
  %14 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.nextslicecap"(i64 %8, i64 %13)
  %15 = mul i64 %14, %3
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 %15)
  %17 = icmp ne i64 %7, 0
  br i1 %17, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_4, %_llgo_0
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, i32 0, i32 1
  store i64 %8, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %0, ptr %1, i64 24, i1 false)
  ret void

_llgo_3:                                          ; preds = %_llgo_1
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = mul i64 %7, %3
  %23 = call ptr @memcpy(ptr %16, ptr %21, i64 %22)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_1
  %24 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, i32 0, i32 0
  store ptr %16, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1, i32 0, i32 2
  store i64 %14, ptr %25, align 4
  br label %_llgo_2
}

define i64 @"github.com/goplus/llgo/runtime/internal/runtime.nextslicecap"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %1, %1
  %3 = icmp sgt i64 %0, %2
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i64 %0

_llgo_2:                                          ; preds = %_llgo_0
  %4 = icmp slt i64 %1, 256
  br i1 %4, label %_llgo_3, label %_llgo_4.preheader

_llgo_4.preheader:                                ; preds = %_llgo_2
  br label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  ret i64 %2

_llgo_4:                                          ; preds = %_llgo_4.preheader, %_llgo_4
  %5 = phi i64 [ %8, %_llgo_4 ], [ %1, %_llgo_4.preheader ]
  %6 = add i64 %5, 768
  %7 = ashr i64 %6, 2
  %8 = add i64 %5, %7
  %9 = icmp uge i64 %8, %0
  br i1 %9, label %_llgo_5, label %_llgo_4

_llgo_5:                                          ; preds = %_llgo_4
  %.lcssa = phi i64 [ %8, %_llgo_4 ]
  %10 = icmp sle i64 %.lcssa, 0
  br i1 %10, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  ret i64 %0

_llgo_7:                                          ; preds = %_llgo_5
  ret i64 %.lcssa
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @malloc(i64 16)
  store { ptr, ptr } %0, ptr %1, align 8
  %2 = load i32, ptr @"github.com/goplus/llgo/runtime/internal/runtime.excepKey", align 4
  %3 = call i32 @pthread_setspecific(i32 %2, ptr %1)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %4)
  ret void
}

declare ptr @malloc(i64)

define ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", align 8
  %1 = load %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr @"github.com/goplus/llgo/runtime/internal/runtime.deferTLS", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %0, ptr @"github.com/goplus/llgo/runtime/internal/runtime.deferTLS", i64 24, i1 false)
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer].Get"(ptr %0)
  ret ptr %2
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %0) {
_llgo_0:
  %1 = load i32, ptr @"github.com/goplus/llgo/runtime/internal/runtime.excepKey", align 4
  %2 = call ptr @pthread_getspecific(i32 %1)
  %3 = icmp ne ptr %2, null
  br i1 %3, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %4 = icmp eq ptr %0, null
  br i1 %4, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_9, %_llgo_7, %_llgo_5, %_llgo_4, %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %5 = icmp eq ptr %0, null
  br i1 %5, label %_llgo_7, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_1
  %6 = load { ptr, ptr }, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.TracePanic"({ ptr, ptr } %6)
  call void @"github.com/goplus/llgo/runtime/internal/clite/debug.PrintStack"(i64 2)
  call void @free(ptr %2)
  call void @exit(i32 2)
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_1
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %0, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  call void @siglongjmp(ptr %8, i32 1)
  br label %_llgo_2

_llgo_6:                                          ; preds = %_llgo_7
  %9 = load ptr, ptr @"github.com/goplus/llgo/runtime/internal/runtime.mainThread", align 8
  %10 = call ptr @pthread_self()
  %11 = call i32 @pthread_equal(ptr %9, ptr %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %_llgo_8, label %_llgo_9

_llgo_7:                                          ; preds = %_llgo_3
  %13 = load i32, ptr @"github.com/goplus/llgo/runtime/internal/runtime.goexitKey", align 4
  %14 = call ptr @pthread_getspecific(i32 %13)
  %15 = icmp ne ptr %14, null
  br i1 %15, label %_llgo_6, label %_llgo_2

_llgo_8:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.fatal"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 54 })
  call void @exit(i32 2)
  br label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8, %_llgo_6
  call void @pthread_exit(ptr null)
  br label %_llgo_2
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.TracePanic"({ ptr, ptr } %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.printany"({ ptr, ptr } %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @free(ptr)

declare void @exit(i32)

declare void @siglongjmp(ptr, i32)

declare ptr @pthread_self()

declare i32 @pthread_equal(ptr, ptr)

define void @"github.com/goplus/llgo/runtime/internal/runtime.fatal"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @210, i64 13 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 1 })
  ret void
}

declare void @pthread_exit(ptr)

define void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @llvm.memset.p0.i64(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = load ptr, ptr @stderr, align 8
  %7 = call i64 @fwrite(ptr %3, i64 1, i64 %5, ptr %6)
  ret void
}

declare i64 @fwrite(ptr, i64, i64, ptr)

define void @"github.com/goplus/llgo/runtime/internal/runtime.printany"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"({ ptr, ptr } %0, { ptr, ptr } zeroinitializer)
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_41, %_llgo_40, %_llgo_38, %_llgo_36, %_llgo_34, %_llgo_32, %_llgo_30, %_llgo_28, %_llgo_26, %_llgo_24, %_llgo_22, %_llgo_20, %_llgo_18, %_llgo_16, %_llgo_14, %_llgo_12, %_llgo_10, %_llgo_8, %_llgo_6, %_llgo_4, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @244, i64 3 })
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_0
  %2 = extractvalue { ptr, ptr } %0, 0
  %3 = icmp eq ptr %2, @_llgo_bool
  br i1 %3, label %_llgo_42, label %_llgo_43

_llgo_4:                                          ; preds = %_llgo_44
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %77)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_44
  %4 = extractvalue { ptr, ptr } %0, 0
  %5 = icmp eq ptr %4, @_llgo_int
  br i1 %5, label %_llgo_45, label %_llgo_46

_llgo_6:                                          ; preds = %_llgo_47
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %84)
  br label %_llgo_1

_llgo_7:                                          ; preds = %_llgo_47
  %6 = extractvalue { ptr, ptr } %0, 0
  %7 = icmp eq ptr %6, @_llgo_int8
  br i1 %7, label %_llgo_48, label %_llgo_49

_llgo_8:                                          ; preds = %_llgo_50
  %8 = sext i8 %92 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %8)
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_50
  %9 = extractvalue { ptr, ptr } %0, 0
  %10 = icmp eq ptr %9, @_llgo_int16
  br i1 %10, label %_llgo_51, label %_llgo_52

_llgo_10:                                         ; preds = %_llgo_53
  %11 = sext i16 %100 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  br label %_llgo_1

_llgo_11:                                         ; preds = %_llgo_53
  %12 = extractvalue { ptr, ptr } %0, 0
  %13 = icmp eq ptr %12, @_llgo_int32
  br i1 %13, label %_llgo_54, label %_llgo_55

_llgo_12:                                         ; preds = %_llgo_56
  %14 = sext i32 %108 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  br label %_llgo_1

_llgo_13:                                         ; preds = %_llgo_56
  %15 = extractvalue { ptr, ptr } %0, 0
  %16 = icmp eq ptr %15, @_llgo_int64
  br i1 %16, label %_llgo_57, label %_llgo_58

_llgo_14:                                         ; preds = %_llgo_59
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %115)
  br label %_llgo_1

_llgo_15:                                         ; preds = %_llgo_59
  %17 = extractvalue { ptr, ptr } %0, 0
  %18 = icmp eq ptr %17, @_llgo_uint
  br i1 %18, label %_llgo_60, label %_llgo_61

_llgo_16:                                         ; preds = %_llgo_62
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %122)
  br label %_llgo_1

_llgo_17:                                         ; preds = %_llgo_62
  %19 = extractvalue { ptr, ptr } %0, 0
  %20 = icmp eq ptr %19, @_llgo_uint8
  br i1 %20, label %_llgo_63, label %_llgo_64

_llgo_18:                                         ; preds = %_llgo_65
  %21 = zext i8 %130 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %21)
  br label %_llgo_1

_llgo_19:                                         ; preds = %_llgo_65
  %22 = extractvalue { ptr, ptr } %0, 0
  %23 = icmp eq ptr %22, @_llgo_uint16
  br i1 %23, label %_llgo_66, label %_llgo_67

_llgo_20:                                         ; preds = %_llgo_68
  %24 = zext i16 %138 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %24)
  br label %_llgo_1

_llgo_21:                                         ; preds = %_llgo_68
  %25 = extractvalue { ptr, ptr } %0, 0
  %26 = icmp eq ptr %25, @_llgo_uint32
  br i1 %26, label %_llgo_69, label %_llgo_70

_llgo_22:                                         ; preds = %_llgo_71
  %27 = zext i32 %146 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %27)
  br label %_llgo_1

_llgo_23:                                         ; preds = %_llgo_71
  %28 = extractvalue { ptr, ptr } %0, 0
  %29 = icmp eq ptr %28, @_llgo_uint64
  br i1 %29, label %_llgo_72, label %_llgo_73

_llgo_24:                                         ; preds = %_llgo_74
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %153)
  br label %_llgo_1

_llgo_25:                                         ; preds = %_llgo_74
  %30 = extractvalue { ptr, ptr } %0, 0
  %31 = icmp eq ptr %30, @_llgo_uintptr
  br i1 %31, label %_llgo_75, label %_llgo_76

_llgo_26:                                         ; preds = %_llgo_77
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %160)
  br label %_llgo_1

_llgo_27:                                         ; preds = %_llgo_77
  %32 = extractvalue { ptr, ptr } %0, 0
  %33 = icmp eq ptr %32, @_llgo_float32
  br i1 %33, label %_llgo_78, label %_llgo_79

_llgo_28:                                         ; preds = %_llgo_80
  %34 = fpext float %169 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %34)
  br label %_llgo_1

_llgo_29:                                         ; preds = %_llgo_80
  %35 = extractvalue { ptr, ptr } %0, 0
  %36 = icmp eq ptr %35, @_llgo_float64
  br i1 %36, label %_llgo_81, label %_llgo_82

_llgo_30:                                         ; preds = %_llgo_83
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %177)
  br label %_llgo_1

_llgo_31:                                         ; preds = %_llgo_83
  %37 = extractvalue { ptr, ptr } %0, 0
  %38 = icmp eq ptr %37, @_llgo_complex64
  br i1 %38, label %_llgo_84, label %_llgo_85

_llgo_32:                                         ; preds = %_llgo_86
  %39 = extractvalue { float, float } %184, 0
  %40 = extractvalue { float, float } %184, 1
  %41 = fpext float %39 to double
  %42 = fpext float %40 to double
  %43 = insertvalue { double, double } undef, double %41, 0
  %44 = insertvalue { double, double } %43, double %42, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %44)
  br label %_llgo_1

_llgo_33:                                         ; preds = %_llgo_86
  %45 = extractvalue { ptr, ptr } %0, 0
  %46 = icmp eq ptr %45, @_llgo_complex128
  br i1 %46, label %_llgo_87, label %_llgo_88

_llgo_34:                                         ; preds = %_llgo_89
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %191)
  br label %_llgo_1

_llgo_35:                                         ; preds = %_llgo_89
  %47 = extractvalue { ptr, ptr } %0, 0
  %48 = icmp eq ptr %47, @_llgo_string
  br i1 %48, label %_llgo_90, label %_llgo_91

_llgo_36:                                         ; preds = %_llgo_92
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %198)
  br label %_llgo_1

_llgo_37:                                         ; preds = %_llgo_92
  %49 = extractvalue { ptr, ptr } %0, 0
  %50 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @_llgo_error, ptr %49)
  br i1 %50, label %_llgo_93, label %_llgo_94

_llgo_38:                                         ; preds = %_llgo_95
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"({ ptr, ptr } %207)
  %52 = extractvalue { ptr, ptr } %207, 0
  %53 = getelementptr ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  %55 = insertvalue { ptr, ptr } undef, ptr %54, 0
  %56 = insertvalue { ptr, ptr } %55, ptr %51, 1
  %57 = extractvalue { ptr, ptr } %56, 1
  %58 = extractvalue { ptr, ptr } %56, 0
  %59 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %58(ptr %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %59)
  br label %_llgo_1

_llgo_39:                                         ; preds = %_llgo_95
  %60 = extractvalue { ptr, ptr } %0, 0
  %61 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr %60)
  br i1 %61, label %_llgo_96, label %_llgo_97

_llgo_40:                                         ; preds = %_llgo_98
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"({ ptr, ptr } %216)
  %63 = extractvalue { ptr, ptr } %216, 0
  %64 = getelementptr ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  %66 = insertvalue { ptr, ptr } undef, ptr %65, 0
  %67 = insertvalue { ptr, ptr } %66, ptr %62, 1
  %68 = extractvalue { ptr, ptr } %67, 1
  %69 = extractvalue { ptr, ptr } %67, 0
  %70 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %69(ptr %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %70)
  br label %_llgo_1

_llgo_41:                                         ; preds = %_llgo_98
  call void @"github.com/goplus/llgo/runtime/internal/runtime.printanycustomtype"({ ptr, ptr } %0)
  br label %_llgo_1

_llgo_42:                                         ; preds = %_llgo_3
  %71 = extractvalue { ptr, ptr } %0, 1
  %72 = ptrtoint ptr %71 to i64
  %73 = trunc i64 %72 to i1
  %74 = insertvalue { i1, i1 } undef, i1 %73, 0
  %75 = insertvalue { i1, i1 } %74, i1 true, 1
  br label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_3
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %76 = phi { i1, i1 } [ %75, %_llgo_42 ], [ zeroinitializer, %_llgo_43 ]
  %77 = extractvalue { i1, i1 } %76, 0
  %78 = extractvalue { i1, i1 } %76, 1
  br i1 %78, label %_llgo_4, label %_llgo_5

_llgo_45:                                         ; preds = %_llgo_5
  %79 = extractvalue { ptr, ptr } %0, 1
  %80 = ptrtoint ptr %79 to i64
  %81 = insertvalue { i64, i1 } undef, i64 %80, 0
  %82 = insertvalue { i64, i1 } %81, i1 true, 1
  br label %_llgo_47

_llgo_46:                                         ; preds = %_llgo_5
  br label %_llgo_47

_llgo_47:                                         ; preds = %_llgo_46, %_llgo_45
  %83 = phi { i64, i1 } [ %82, %_llgo_45 ], [ zeroinitializer, %_llgo_46 ]
  %84 = extractvalue { i64, i1 } %83, 0
  %85 = extractvalue { i64, i1 } %83, 1
  br i1 %85, label %_llgo_6, label %_llgo_7

_llgo_48:                                         ; preds = %_llgo_7
  %86 = extractvalue { ptr, ptr } %0, 1
  %87 = ptrtoint ptr %86 to i64
  %88 = trunc i64 %87 to i8
  %89 = insertvalue { i8, i1 } undef, i8 %88, 0
  %90 = insertvalue { i8, i1 } %89, i1 true, 1
  br label %_llgo_50

_llgo_49:                                         ; preds = %_llgo_7
  br label %_llgo_50

_llgo_50:                                         ; preds = %_llgo_49, %_llgo_48
  %91 = phi { i8, i1 } [ %90, %_llgo_48 ], [ zeroinitializer, %_llgo_49 ]
  %92 = extractvalue { i8, i1 } %91, 0
  %93 = extractvalue { i8, i1 } %91, 1
  br i1 %93, label %_llgo_8, label %_llgo_9

_llgo_51:                                         ; preds = %_llgo_9
  %94 = extractvalue { ptr, ptr } %0, 1
  %95 = ptrtoint ptr %94 to i64
  %96 = trunc i64 %95 to i16
  %97 = insertvalue { i16, i1 } undef, i16 %96, 0
  %98 = insertvalue { i16, i1 } %97, i1 true, 1
  br label %_llgo_53

_llgo_52:                                         ; preds = %_llgo_9
  br label %_llgo_53

_llgo_53:                                         ; preds = %_llgo_52, %_llgo_51
  %99 = phi { i16, i1 } [ %98, %_llgo_51 ], [ zeroinitializer, %_llgo_52 ]
  %100 = extractvalue { i16, i1 } %99, 0
  %101 = extractvalue { i16, i1 } %99, 1
  br i1 %101, label %_llgo_10, label %_llgo_11

_llgo_54:                                         ; preds = %_llgo_11
  %102 = extractvalue { ptr, ptr } %0, 1
  %103 = ptrtoint ptr %102 to i64
  %104 = trunc i64 %103 to i32
  %105 = insertvalue { i32, i1 } undef, i32 %104, 0
  %106 = insertvalue { i32, i1 } %105, i1 true, 1
  br label %_llgo_56

_llgo_55:                                         ; preds = %_llgo_11
  br label %_llgo_56

_llgo_56:                                         ; preds = %_llgo_55, %_llgo_54
  %107 = phi { i32, i1 } [ %106, %_llgo_54 ], [ zeroinitializer, %_llgo_55 ]
  %108 = extractvalue { i32, i1 } %107, 0
  %109 = extractvalue { i32, i1 } %107, 1
  br i1 %109, label %_llgo_12, label %_llgo_13

_llgo_57:                                         ; preds = %_llgo_13
  %110 = extractvalue { ptr, ptr } %0, 1
  %111 = ptrtoint ptr %110 to i64
  %112 = insertvalue { i64, i1 } undef, i64 %111, 0
  %113 = insertvalue { i64, i1 } %112, i1 true, 1
  br label %_llgo_59

_llgo_58:                                         ; preds = %_llgo_13
  br label %_llgo_59

_llgo_59:                                         ; preds = %_llgo_58, %_llgo_57
  %114 = phi { i64, i1 } [ %113, %_llgo_57 ], [ zeroinitializer, %_llgo_58 ]
  %115 = extractvalue { i64, i1 } %114, 0
  %116 = extractvalue { i64, i1 } %114, 1
  br i1 %116, label %_llgo_14, label %_llgo_15

_llgo_60:                                         ; preds = %_llgo_15
  %117 = extractvalue { ptr, ptr } %0, 1
  %118 = ptrtoint ptr %117 to i64
  %119 = insertvalue { i64, i1 } undef, i64 %118, 0
  %120 = insertvalue { i64, i1 } %119, i1 true, 1
  br label %_llgo_62

_llgo_61:                                         ; preds = %_llgo_15
  br label %_llgo_62

_llgo_62:                                         ; preds = %_llgo_61, %_llgo_60
  %121 = phi { i64, i1 } [ %120, %_llgo_60 ], [ zeroinitializer, %_llgo_61 ]
  %122 = extractvalue { i64, i1 } %121, 0
  %123 = extractvalue { i64, i1 } %121, 1
  br i1 %123, label %_llgo_16, label %_llgo_17

_llgo_63:                                         ; preds = %_llgo_17
  %124 = extractvalue { ptr, ptr } %0, 1
  %125 = ptrtoint ptr %124 to i64
  %126 = trunc i64 %125 to i8
  %127 = insertvalue { i8, i1 } undef, i8 %126, 0
  %128 = insertvalue { i8, i1 } %127, i1 true, 1
  br label %_llgo_65

_llgo_64:                                         ; preds = %_llgo_17
  br label %_llgo_65

_llgo_65:                                         ; preds = %_llgo_64, %_llgo_63
  %129 = phi { i8, i1 } [ %128, %_llgo_63 ], [ zeroinitializer, %_llgo_64 ]
  %130 = extractvalue { i8, i1 } %129, 0
  %131 = extractvalue { i8, i1 } %129, 1
  br i1 %131, label %_llgo_18, label %_llgo_19

_llgo_66:                                         ; preds = %_llgo_19
  %132 = extractvalue { ptr, ptr } %0, 1
  %133 = ptrtoint ptr %132 to i64
  %134 = trunc i64 %133 to i16
  %135 = insertvalue { i16, i1 } undef, i16 %134, 0
  %136 = insertvalue { i16, i1 } %135, i1 true, 1
  br label %_llgo_68

_llgo_67:                                         ; preds = %_llgo_19
  br label %_llgo_68

_llgo_68:                                         ; preds = %_llgo_67, %_llgo_66
  %137 = phi { i16, i1 } [ %136, %_llgo_66 ], [ zeroinitializer, %_llgo_67 ]
  %138 = extractvalue { i16, i1 } %137, 0
  %139 = extractvalue { i16, i1 } %137, 1
  br i1 %139, label %_llgo_20, label %_llgo_21

_llgo_69:                                         ; preds = %_llgo_21
  %140 = extractvalue { ptr, ptr } %0, 1
  %141 = ptrtoint ptr %140 to i64
  %142 = trunc i64 %141 to i32
  %143 = insertvalue { i32, i1 } undef, i32 %142, 0
  %144 = insertvalue { i32, i1 } %143, i1 true, 1
  br label %_llgo_71

_llgo_70:                                         ; preds = %_llgo_21
  br label %_llgo_71

_llgo_71:                                         ; preds = %_llgo_70, %_llgo_69
  %145 = phi { i32, i1 } [ %144, %_llgo_69 ], [ zeroinitializer, %_llgo_70 ]
  %146 = extractvalue { i32, i1 } %145, 0
  %147 = extractvalue { i32, i1 } %145, 1
  br i1 %147, label %_llgo_22, label %_llgo_23

_llgo_72:                                         ; preds = %_llgo_23
  %148 = extractvalue { ptr, ptr } %0, 1
  %149 = ptrtoint ptr %148 to i64
  %150 = insertvalue { i64, i1 } undef, i64 %149, 0
  %151 = insertvalue { i64, i1 } %150, i1 true, 1
  br label %_llgo_74

_llgo_73:                                         ; preds = %_llgo_23
  br label %_llgo_74

_llgo_74:                                         ; preds = %_llgo_73, %_llgo_72
  %152 = phi { i64, i1 } [ %151, %_llgo_72 ], [ zeroinitializer, %_llgo_73 ]
  %153 = extractvalue { i64, i1 } %152, 0
  %154 = extractvalue { i64, i1 } %152, 1
  br i1 %154, label %_llgo_24, label %_llgo_25

_llgo_75:                                         ; preds = %_llgo_25
  %155 = extractvalue { ptr, ptr } %0, 1
  %156 = ptrtoint ptr %155 to i64
  %157 = insertvalue { i64, i1 } undef, i64 %156, 0
  %158 = insertvalue { i64, i1 } %157, i1 true, 1
  br label %_llgo_77

_llgo_76:                                         ; preds = %_llgo_25
  br label %_llgo_77

_llgo_77:                                         ; preds = %_llgo_76, %_llgo_75
  %159 = phi { i64, i1 } [ %158, %_llgo_75 ], [ zeroinitializer, %_llgo_76 ]
  %160 = extractvalue { i64, i1 } %159, 0
  %161 = extractvalue { i64, i1 } %159, 1
  br i1 %161, label %_llgo_26, label %_llgo_27

_llgo_78:                                         ; preds = %_llgo_27
  %162 = extractvalue { ptr, ptr } %0, 1
  %163 = ptrtoint ptr %162 to i64
  %164 = trunc i64 %163 to i32
  %165 = bitcast i32 %164 to float
  %166 = insertvalue { float, i1 } undef, float %165, 0
  %167 = insertvalue { float, i1 } %166, i1 true, 1
  br label %_llgo_80

_llgo_79:                                         ; preds = %_llgo_27
  br label %_llgo_80

_llgo_80:                                         ; preds = %_llgo_79, %_llgo_78
  %168 = phi { float, i1 } [ %167, %_llgo_78 ], [ zeroinitializer, %_llgo_79 ]
  %169 = extractvalue { float, i1 } %168, 0
  %170 = extractvalue { float, i1 } %168, 1
  br i1 %170, label %_llgo_28, label %_llgo_29

_llgo_81:                                         ; preds = %_llgo_29
  %171 = extractvalue { ptr, ptr } %0, 1
  %172 = ptrtoint ptr %171 to i64
  %173 = bitcast i64 %172 to double
  %174 = insertvalue { double, i1 } undef, double %173, 0
  %175 = insertvalue { double, i1 } %174, i1 true, 1
  br label %_llgo_83

_llgo_82:                                         ; preds = %_llgo_29
  br label %_llgo_83

_llgo_83:                                         ; preds = %_llgo_82, %_llgo_81
  %176 = phi { double, i1 } [ %175, %_llgo_81 ], [ zeroinitializer, %_llgo_82 ]
  %177 = extractvalue { double, i1 } %176, 0
  %178 = extractvalue { double, i1 } %176, 1
  br i1 %178, label %_llgo_30, label %_llgo_31

_llgo_84:                                         ; preds = %_llgo_31
  %179 = extractvalue { ptr, ptr } %0, 1
  %180 = load { float, float }, ptr %179, align 4
  %181 = insertvalue { { float, float }, i1 } undef, { float, float } %180, 0
  %182 = insertvalue { { float, float }, i1 } %181, i1 true, 1
  br label %_llgo_86

_llgo_85:                                         ; preds = %_llgo_31
  br label %_llgo_86

_llgo_86:                                         ; preds = %_llgo_85, %_llgo_84
  %183 = phi { { float, float }, i1 } [ %182, %_llgo_84 ], [ zeroinitializer, %_llgo_85 ]
  %184 = extractvalue { { float, float }, i1 } %183, 0
  %185 = extractvalue { { float, float }, i1 } %183, 1
  br i1 %185, label %_llgo_32, label %_llgo_33

_llgo_87:                                         ; preds = %_llgo_33
  %186 = extractvalue { ptr, ptr } %0, 1
  %187 = load { double, double }, ptr %186, align 8
  %188 = insertvalue { { double, double }, i1 } undef, { double, double } %187, 0
  %189 = insertvalue { { double, double }, i1 } %188, i1 true, 1
  br label %_llgo_89

_llgo_88:                                         ; preds = %_llgo_33
  br label %_llgo_89

_llgo_89:                                         ; preds = %_llgo_88, %_llgo_87
  %190 = phi { { double, double }, i1 } [ %189, %_llgo_87 ], [ zeroinitializer, %_llgo_88 ]
  %191 = extractvalue { { double, double }, i1 } %190, 0
  %192 = extractvalue { { double, double }, i1 } %190, 1
  br i1 %192, label %_llgo_34, label %_llgo_35

_llgo_90:                                         ; preds = %_llgo_35
  %193 = extractvalue { ptr, ptr } %0, 1
  %194 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %193, align 8
  %195 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %194, 0
  %196 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %195, i1 true, 1
  br label %_llgo_92

_llgo_91:                                         ; preds = %_llgo_35
  br label %_llgo_92

_llgo_92:                                         ; preds = %_llgo_91, %_llgo_90
  %197 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } [ %196, %_llgo_90 ], [ zeroinitializer, %_llgo_91 ]
  %198 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %197, 0
  %199 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %197, 1
  br i1 %199, label %_llgo_36, label %_llgo_37

_llgo_93:                                         ; preds = %_llgo_37
  %200 = extractvalue { ptr, ptr } %0, 1
  %201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", ptr %49)
  %202 = insertvalue { ptr, ptr } undef, ptr %201, 0
  %203 = insertvalue { ptr, ptr } %202, ptr %200, 1
  %204 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %203, 0
  %205 = insertvalue { { ptr, ptr }, i1 } %204, i1 true, 1
  br label %_llgo_95

_llgo_94:                                         ; preds = %_llgo_37
  br label %_llgo_95

_llgo_95:                                         ; preds = %_llgo_94, %_llgo_93
  %206 = phi { { ptr, ptr }, i1 } [ %205, %_llgo_93 ], [ zeroinitializer, %_llgo_94 ]
  %207 = extractvalue { { ptr, ptr }, i1 } %206, 0
  %208 = extractvalue { { ptr, ptr }, i1 } %206, 1
  br i1 %208, label %_llgo_38, label %_llgo_39

_llgo_96:                                         ; preds = %_llgo_39
  %209 = extractvalue { ptr, ptr } %0, 1
  %210 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$O6rEVxIuA5O1E0KWpQBCgGx26X5gYhJ_nnJnHVL8_7U", ptr %60)
  %211 = insertvalue { ptr, ptr } undef, ptr %210, 0
  %212 = insertvalue { ptr, ptr } %211, ptr %209, 1
  %213 = insertvalue { { ptr, ptr }, i1 } undef, { ptr, ptr } %212, 0
  %214 = insertvalue { { ptr, ptr }, i1 } %213, i1 true, 1
  br label %_llgo_98

_llgo_97:                                         ; preds = %_llgo_39
  br label %_llgo_98

_llgo_98:                                         ; preds = %_llgo_97, %_llgo_96
  %215 = phi { { ptr, ptr }, i1 } [ %214, %_llgo_96 ], [ zeroinitializer, %_llgo_97 ]
  %216 = extractvalue { { ptr, ptr }, i1 } %215, 0
  %217 = extractvalue { { ptr, ptr }, i1 } %215, 1
  br i1 %217, label %_llgo_40, label %_llgo_41
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 %0) {
_llgo_0:
  %1 = zext i8 %0 to i32
  %2 = load ptr, ptr @stderr, align 8
  %3 = call i32 @fputc(i32 %1, ptr %2)
  ret void
}

declare i32 @fputc(i32, ptr)

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"({ ptr, ptr } %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = alloca { ptr, ptr }, align 8
  call void @llvm.memset.p0.i64(ptr %2, i8 0, i64 16, i1 false)
  store { ptr, ptr } %0, ptr %2, align 8
  %3 = alloca { ptr, ptr }, align 8
  call void @llvm.memset.p0.i64(ptr %3, i8 0, i64 16, i1 false)
  store { ptr, ptr } %1, ptr %3, align 8
  %4 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  %7 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %8, %10
  ret i1 %11

_llgo_2:                                          ; preds = %_llgo_3
  %12 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %13, %15
  br i1 %16, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %17 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  ret i1 false

_llgo_5:                                          ; preds = %_llgo_2
  %20 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr %21)
  br i1 %22, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %23 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %24, %26
  ret i1 %27

_llgo_7:                                          ; preds = %_llgo_5
  %28 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %29, i32 0, i32 7
  %31 = load { ptr, ptr }, ptr %30, align 8
  %32 = extractvalue { ptr, ptr } %31, 0
  %33 = icmp ne ptr %32, null
  br i1 %33, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  %34 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = extractvalue { ptr, ptr } %31, 1
  %39 = extractvalue { ptr, ptr } %31, 0
  %40 = call i1 %39(ptr %38, ptr %35, ptr %37)
  ret i1 %40

_llgo_9:                                          ; preds = %_llgo_7
  %41 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8
  %43 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr %42)
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" %43)
  %45 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.errorString.Error"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %44)
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %45, ptr %46, align 8
  %47 = insertvalue { ptr, ptr } { ptr @_llgo_string, ptr undef }, ptr %46, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %47)
  unreachable
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %0) {
_llgo_0:
  %1 = load ptr, ptr @stderr, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.boolCStr"(i1 %0)
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr %1, ptr %2)
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0) {
_llgo_0:
  %1 = load ptr, ptr @stderr, align 8
  %2 = load ptr, ptr @"github.com/goplus/llgo/runtime/internal/runtime.printFormatPrefixInt", align 8
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr %1, ptr %2, i64 %0)
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %0) {
_llgo_0:
  %1 = load ptr, ptr @stderr, align 8
  %2 = load ptr, ptr @"github.com/goplus/llgo/runtime/internal/runtime.printFormatPrefixUInt", align 8
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr %1, ptr %2, i64 %0)
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  %2 = load ptr, ptr @stderr, align 8
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr %2, ptr @62)
  ret void

_llgo_2:                                          ; preds = %_llgo_6
  %4 = fcmp ogt double %0, 0.000000e+00
  br i1 %4, label %_llgo_7, label %_llgo_9

_llgo_3:                                          ; preds = %_llgo_0
  %5 = fadd double %0, %0
  %6 = fcmp oeq double %5, %0
  br i1 %6, label %_llgo_5, label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_6
  %7 = load ptr, ptr @stderr, align 8
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr %7, ptr @63, double %0)
  ret void

_llgo_5:                                          ; preds = %_llgo_3
  %9 = fcmp une double %0, 0.000000e+00
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_3
  %10 = phi i1 [ false, %_llgo_3 ], [ %9, %_llgo_5 ]
  br i1 %10, label %_llgo_2, label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_2
  %11 = load ptr, ptr @stderr, align 8
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr %11, ptr @64)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_9, %_llgo_7
  ret void

_llgo_9:                                          ; preds = %_llgo_2
  %13 = load ptr, ptr @stderr, align 8
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr %13, ptr @65)
  br label %_llgo_8
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %0) {
_llgo_0:
  %1 = extractvalue { double, double } %0, 0
  %2 = extractvalue { double, double } %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 2 })
  ret void
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %3 = icmp eq ptr %1, null
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i1 false

_llgo_2:                                          ; preds = %_llgo_0
  %4 = call i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr %0)
  %5 = icmp ne i64 %4, 20
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  ret i1 false

_llgo_4:                                          ; preds = %_llgo_2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %0, i32 0, i32 2
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %6, align 8
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  ret i1 true

_llgo_6:                                          ; preds = %_llgo_4
  %10 = call i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr %1)
  %11 = icmp eq i64 %10, 20
  br i1 %11, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  br label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_6
  %12 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %1)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_16, label %_llgo_17

_llgo_9:                                          ; preds = %_llgo_13, %_llgo_7
  %14 = phi i64 [ 0, %_llgo_7 ], [ %46, %_llgo_13 ]
  %15 = phi i64 [ 0, %_llgo_7 ], [ %47, %_llgo_13 ]
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %1, i32 0, i32 2
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 1
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %_llgo_10, label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_9
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %0, i32 0, i32 2
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %20, align 8
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, 0
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, 1
  %24 = icmp slt i64 %14, 0
  %25 = icmp sge i64 %14, %23
  %26 = or i1 %25, %24
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %26)
  %27 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %22, i64 %14
  %28 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %1, i32 0, i32 2
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %28, align 8
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, 0
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, 1
  %32 = icmp slt i64 %15, 0
  %33 = icmp sge i64 %15, %31
  %34 = or i1 %33, %32
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %34)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %30, i64 %15
  %36 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %35, i32 0, i32 0
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %36, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %27, i32 0, i32 0
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %38, align 8
  %40 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %37, %"github.com/goplus/llgo/runtime/internal/runtime.String" %39)
  br i1 %40, label %_llgo_14, label %_llgo_13

_llgo_11:                                         ; preds = %_llgo_9
  ret i1 false

_llgo_12:                                         ; preds = %_llgo_14
  %41 = add i64 %14, 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %0, i32 0, i32 2
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %42, align 8
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, 1
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %_llgo_15, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_14, %_llgo_12, %_llgo_10
  %46 = phi i64 [ %14, %_llgo_10 ], [ %14, %_llgo_14 ], [ %41, %_llgo_12 ]
  %47 = add i64 %15, 1
  br label %_llgo_9

_llgo_14:                                         ; preds = %_llgo_10
  %48 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %35, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %27, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %_llgo_12, label %_llgo_13

_llgo_15:                                         ; preds = %_llgo_12
  ret i1 true

_llgo_16:                                         ; preds = %_llgo_8
  ret i1 false

_llgo_17:                                         ; preds = %_llgo_8
  call void @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %2, ptr %12)
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_22, %_llgo_17
  %54 = phi i64 [ 0, %_llgo_17 ], [ %86, %_llgo_22 ]
  %55 = phi i64 [ 0, %_llgo_17 ], [ %87, %_llgo_22 ]
  %56 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %12, i32 0, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i64
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %60 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %0, i32 0, i32 2
  %61 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %60, align 8
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 0
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 1
  %64 = icmp slt i64 %54, 0
  %65 = icmp sge i64 %54, %63
  %66 = or i1 %65, %64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %66)
  %67 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %62, i64 %54
  %68 = alloca %"github.com/goplus/llgo/runtime/abi.Method", align 8
  call void @llvm.memset.p0.i64(ptr %68, i8 0, i64 40, i1 false)
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 0
  %70 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 1
  %71 = icmp slt i64 %55, 0
  %72 = icmp sge i64 %55, %70
  %73 = or i1 %72, %71
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %73)
  %74 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Method", ptr %69, i64 %55
  %75 = load %"github.com/goplus/llgo/runtime/abi.Method", ptr %74, align 8
  store %"github.com/goplus/llgo/runtime/abi.Method" %75, ptr %68, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Method", ptr %68, i32 0, i32 0
  %77 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %76, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %67, i32 0, i32 0
  %79 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %78, align 8
  %80 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %77, %"github.com/goplus/llgo/runtime/internal/runtime.String" %79)
  br i1 %80, label %_llgo_23, label %_llgo_22

_llgo_20:                                         ; preds = %_llgo_18
  ret i1 false

_llgo_21:                                         ; preds = %_llgo_23
  %81 = add i64 %54, 1
  %82 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %0, i32 0, i32 2
  %83 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %82, align 8
  %84 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, 1
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %_llgo_24, label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_23, %_llgo_21, %_llgo_19
  %86 = phi i64 [ %54, %_llgo_19 ], [ %54, %_llgo_23 ], [ %81, %_llgo_21 ]
  %87 = add i64 %55, 1
  br label %_llgo_18

_llgo_23:                                         ; preds = %_llgo_19
  %88 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Method", ptr %68, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %67, i32 0, i32 1
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %_llgo_21, label %_llgo_22

_llgo_24:                                         ; preds = %_llgo_21
  ret i1 true
}

define ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } %0, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.errorString.Error"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 49 })
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, ptr %6, align 8
  %7 = insertvalue { ptr, ptr } { ptr @_llgo_string, ptr undef }, ptr %6, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %7)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %8 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = call i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr %11)
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_19, %_llgo_4
  %14 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  ret ptr %15

_llgo_4:                                          ; preds = %_llgo_19, %_llgo_18, %_llgo_17, %_llgo_16, %_llgo_15, %_llgo_14, %_llgo_13, %_llgo_12, %_llgo_11, %_llgo_10, %_llgo_9, %_llgo_8, %_llgo_7, %_llgo_6, %_llgo_5, %_llgo_2
  %16 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr %19)
  br i1 %20, label %_llgo_20, label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_2
  %21 = icmp eq i64 %12, 2
  br i1 %21, label %_llgo_4, label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5
  %22 = icmp eq i64 %12, 3
  br i1 %22, label %_llgo_4, label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_6
  %23 = icmp eq i64 %12, 4
  br i1 %23, label %_llgo_4, label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7
  %24 = icmp eq i64 %12, 5
  br i1 %24, label %_llgo_4, label %_llgo_9

_llgo_9:                                          ; preds = %_llgo_8
  %25 = icmp eq i64 %12, 6
  br i1 %25, label %_llgo_4, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %26 = icmp eq i64 %12, 7
  br i1 %26, label %_llgo_4, label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %27 = icmp eq i64 %12, 8
  br i1 %27, label %_llgo_4, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %28 = icmp eq i64 %12, 9
  br i1 %28, label %_llgo_4, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  %29 = icmp eq i64 %12, 10
  br i1 %29, label %_llgo_4, label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13
  %30 = icmp eq i64 %12, 11
  br i1 %30, label %_llgo_4, label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14
  %31 = icmp eq i64 %12, 12
  br i1 %31, label %_llgo_4, label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15
  %32 = icmp eq i64 %12, 13
  br i1 %32, label %_llgo_4, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  %33 = icmp eq i64 %12, 14
  br i1 %33, label %_llgo_4, label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17
  %34 = icmp eq i64 %12, 17
  br i1 %34, label %_llgo_4, label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18
  %35 = icmp eq i64 %12, 25
  br i1 %35, label %_llgo_4, label %_llgo_3

_llgo_20:                                         ; preds = %_llgo_4
  %36 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  ret ptr %36
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.printanycustomtype"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store { ptr, ptr } %0, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.efaceOf"(ptr %1)
  %3 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  %5 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr %4)
  %6 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = call i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr %7)
  %9 = icmp eq i64 %8, 24
  br i1 %9, label %_llgo_2, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_36, %_llgo_34, %_llgo_33, %_llgo_32, %_llgo_30, %_llgo_29, %_llgo_28, %_llgo_25, %_llgo_24, %_llgo_16, %_llgo_15, %_llgo_8, %_llgo_7, %_llgo_2
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %10 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %11, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @256, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @257, i64 2 })
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_4
  %13 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr %14)
  br i1 %15, label %_llgo_7, label %_llgo_8

_llgo_4:                                          ; preds = %_llgo_0
  %16 = icmp eq i64 %8, 1
  br i1 %16, label %_llgo_3, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_13, %_llgo_12, %_llgo_11, %_llgo_10, %_llgo_6
  %17 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr %18)
  br i1 %19, label %_llgo_15, label %_llgo_16

_llgo_6:                                          ; preds = %_llgo_4
  %20 = icmp eq i64 %8, 2
  br i1 %20, label %_llgo_5, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_3
  %21 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %22 to i64
  %24 = icmp ne i64 %23, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_3
  %25 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = load i1, ptr %26, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_9:                                          ; preds = %_llgo_22, %_llgo_21, %_llgo_20, %_llgo_19, %_llgo_18, %_llgo_14
  %28 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %29 = load ptr, ptr %28, align 8
  %30 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr %29)
  br i1 %30, label %_llgo_24, label %_llgo_25

_llgo_10:                                         ; preds = %_llgo_6
  %31 = icmp eq i64 %8, 3
  br i1 %31, label %_llgo_5, label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10
  %32 = icmp eq i64 %8, 4
  br i1 %32, label %_llgo_5, label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11
  %33 = icmp eq i64 %8, 5
  br i1 %33, label %_llgo_5, label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  %34 = icmp eq i64 %8, 6
  br i1 %34, label %_llgo_5, label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13
  %35 = icmp eq i64 %8, 7
  br i1 %35, label %_llgo_9, label %_llgo_18

_llgo_15:                                         ; preds = %_llgo_5
  %36 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %37 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_16:                                         ; preds = %_llgo_5
  %39 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load i64, ptr %40, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_17:                                         ; preds = %_llgo_23
  %42 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8
  %44 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr %43)
  br i1 %44, label %_llgo_28, label %_llgo_29

_llgo_18:                                         ; preds = %_llgo_14
  %45 = icmp eq i64 %8, 8
  br i1 %45, label %_llgo_9, label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_18
  %46 = icmp eq i64 %8, 9
  br i1 %46, label %_llgo_9, label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19
  %47 = icmp eq i64 %8, 10
  br i1 %47, label %_llgo_9, label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20
  %48 = icmp eq i64 %8, 11
  br i1 %48, label %_llgo_9, label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21
  %49 = icmp eq i64 %8, 12
  br i1 %49, label %_llgo_9, label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22
  %50 = icmp eq i64 %8, 13
  br i1 %50, label %_llgo_17, label %_llgo_27

_llgo_24:                                         ; preds = %_llgo_9
  %51 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = ptrtoint ptr %52 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_25:                                         ; preds = %_llgo_9
  %54 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = load i64, ptr %55, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_26:                                         ; preds = %_llgo_27
  %57 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr %58)
  br i1 %59, label %_llgo_32, label %_llgo_33

_llgo_27:                                         ; preds = %_llgo_23
  %60 = icmp eq i64 %8, 14
  br i1 %60, label %_llgo_26, label %_llgo_31

_llgo_28:                                         ; preds = %_llgo_17
  %61 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = ptrtoint ptr %62 to i64
  %64 = trunc i64 %63 to i32
  %65 = call float @llgoToFloat32(i32 %64)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  %66 = fpext float %65 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_29:                                         ; preds = %_llgo_17
  %67 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = load float, ptr %68, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  %70 = fpext float %69 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_30:                                         ; preds = %_llgo_31
  %71 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = load { float, float }, ptr %72, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %74 = extractvalue { float, float } %73, 0
  %75 = extractvalue { float, float } %73, 1
  %76 = fpext float %74 to double
  %77 = fpext float %75 to double
  %78 = insertvalue { double, double } undef, double %76, 0
  %79 = insertvalue { double, double } %78, double %77, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_31:                                         ; preds = %_llgo_27
  %80 = icmp eq i64 %8, 15
  br i1 %80, label %_llgo_30, label %_llgo_35

_llgo_32:                                         ; preds = %_llgo_26
  %81 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8
  %83 = ptrtoint ptr %82 to i64
  %84 = call double @llgoToFloat64(i64 %83)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_33:                                         ; preds = %_llgo_26
  %85 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = load double, ptr %86, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %87)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 1 })
  br label %_llgo_1

_llgo_34:                                         ; preds = %_llgo_35
  %88 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8
  %90 = load { double, double }, ptr %89, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintComplex"({ double, double } %90)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_35:                                         ; preds = %_llgo_31
  %91 = icmp eq i64 %8, 16
  br i1 %91, label %_llgo_34, label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35
  %92 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @258, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %93)
  br label %_llgo_1
}

define ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/abi.Imethod", align 8
  %4 = alloca [2 x i64], align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret ptr null

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.findItab"(ptr %0, ptr %1)
  %8 = icmp ne ptr %7, null
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  ret ptr %7

_llgo_4:                                          ; preds = %_llgo_2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %0, i32 0, i32 2
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %9, align 8
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, 1
  %12 = mul i64 %11, 8
  %13 = add i64 24, %12
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 %13)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %14, i32 0, i32 0
  store ptr %0, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %14, i32 0, i32 1
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %14, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %1)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_5, label %_llgo_7

_llgo_5:                                          ; preds = %_llgo_4
  %22 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %14, i32 0, i32 3
  %23 = getelementptr inbounds i64, ptr %22, i64 0
  store i64 0, ptr %23, align 4
  br label %_llgo_6

_llgo_6.loopexit:                                 ; preds = %_llgo_8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_6.loopexit, %_llgo_10, %_llgo_5
  %24 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %14, i32 0, i32 3
  %25 = getelementptr inbounds i64, ptr %24, i64 0
  %26 = load i64, ptr %25, align 4
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %_llgo_14, label %_llgo_15

_llgo_7:                                          ; preds = %_llgo_4
  %28 = getelementptr i8, ptr %14, i64 24
  call void @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %5, ptr %20)
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %5, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %0, i32 0, i32 2
  %31 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %30, align 8
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 1
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_13, %_llgo_7
  %33 = phi i64 [ -1, %_llgo_7 ], [ %34, %_llgo_13 ]
  %34 = add i64 %33, 1
  %35 = icmp slt i64 %34, %32
  br i1 %35, label %_llgo_9, label %_llgo_6.loopexit

_llgo_9:                                          ; preds = %_llgo_8
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 0
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 1
  %38 = icmp slt i64 %34, 0
  %39 = icmp sge i64 %34, %37
  %40 = or i1 %39, %38
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %40)
  %41 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %36, i64 %34
  %42 = load %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %41, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %2, ptr %5, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr %3, ptr %41, i64 24, i1 false)
  %43 = call [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime.findMethod"(ptr %2, ptr %3)
  store [2 x i64] %43, ptr %4, align 4
  %44 = load { ptr, i1 }, ptr %4, align 8
  %45 = extractvalue { ptr, i1 } %44, 0
  %46 = extractvalue { ptr, i1 } %44, 1
  br i1 %46, label %_llgo_11, label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9
  %47 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %14, i32 0, i32 3
  %48 = getelementptr inbounds i64, ptr %47, i64 0
  store i64 0, ptr %48, align 4
  br label %_llgo_6

_llgo_11:                                         ; preds = %_llgo_9
  %49 = icmp eq ptr %45, null
  br i1 %49, label %_llgo_12, label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_11
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %50 = phi ptr [ %45, %_llgo_11 ], [ null, %_llgo_12 ]
  %51 = getelementptr i64, ptr %28, i64 %34
  %52 = ptrtoint ptr %50 to i64
  store i64 %52, ptr %51, align 4
  br label %_llgo_8

_llgo_14:                                         ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.addItab"(ptr %14)
  br label %_llgo_15

_llgo_15:                                         ; preds = %_llgo_14, %_llgo_6
  ret ptr %14
}

define ptr @"github.com/goplus/llgo/runtime/internal/runtime.findItab"(ptr %0, ptr %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.(*mutex).Lock"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable")
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr getelementptr inbounds ({ %"github.com/goplus/llgo/runtime/internal/runtime.mutex", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }, ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable", i32 0, i32 1), align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_1.backedge, %_llgo_0
  %4 = phi i64 [ -1, %_llgo_0 ], [ %5, %_llgo_1.backedge ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %9 = icmp slt i64 %5, 0
  %10 = icmp sge i64 %5, %8
  %11 = or i1 %10, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %11)
  %12 = getelementptr inbounds ptr, ptr %7, i64 %5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %_llgo_5, label %_llgo_1.backedge

_llgo_1.backedge:                                 ; preds = %_llgo_2, %_llgo_5
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.(*mutex).Unlock"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable")
  ret ptr null

_llgo_4:                                          ; preds = %_llgo_5
  %.lcssa = phi ptr [ %13, %_llgo_5 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.(*mutex).Unlock"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable")
  ret ptr %.lcssa

_llgo_5:                                          ; preds = %_llgo_2
  %17 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %13, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %_llgo_4, label %_llgo_1.backedge
}

define [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime.findMethod"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %0, align 8
  %3 = load %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/abi.Imethod", align 8
  call void @llvm.memset.p0.i64(ptr %4, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %3, ptr %1, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1, i32 0, i32 0
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %8 = phi i64 [ -1, %_llgo_0 ], [ %9, %_llgo_2 ]
  %9 = add i64 %8, 1
  %10 = icmp slt i64 %9, %7
  br i1 %10, label %_llgo_2, label %_llgo_3.loopexit

_llgo_2:                                          ; preds = %_llgo_1
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 0
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  %13 = icmp slt i64 %9, 0
  %14 = icmp sge i64 %9, %12
  %15 = or i1 %14, %13
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %15)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Method", ptr %11, i64 %9
  %17 = load %"github.com/goplus/llgo/runtime/abi.Method", ptr %16, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/abi.Method", align 8
  call void @llvm.memset.p0.i64(ptr %18, i8 0, i64 40, i1 false)
  store %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Method", ptr %18, i32 0, i32 0
  %20 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %19, align 8
  %21 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %20, %"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  %22 = xor i1 %21, true
  br i1 %22, label %_llgo_4, label %_llgo_1

_llgo_3.loopexit:                                 ; preds = %_llgo_1
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_3.loopexit, %_llgo_6, %_llgo_4
  %23 = alloca { ptr, i1 }, align 8
  store { ptr, i1 } zeroinitializer, ptr %23, align 8
  %24 = load [2 x i64], ptr %23, align 4
  ret [2 x i64] %24

_llgo_4:                                          ; preds = %_llgo_2
  %.lcssa1 = phi ptr [ %18, %_llgo_2 ]
  %.lcssa = phi %"github.com/goplus/llgo/runtime/internal/runtime.String" [ %20, %_llgo_2 ]
  %25 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %.lcssa, %"github.com/goplus/llgo/runtime/internal/runtime.String" %6)
  br i1 %25, label %_llgo_6, label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_6
  %26 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Method", ptr %.lcssa1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = insertvalue { ptr, i1 } undef, ptr %27, 0
  %29 = insertvalue { ptr, i1 } %28, i1 true, 1
  %30 = alloca { ptr, i1 }, align 8
  store { ptr, i1 } %29, ptr %30, align 8
  %31 = load [2 x i64], ptr %30, align 4
  ret [2 x i64] %31

_llgo_6:                                          ; preds = %_llgo_4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Method", ptr %.lcssa1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %_llgo_5, label %_llgo_3
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.addItab"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.(*mutex).Lock"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable")
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr getelementptr inbounds ({ %"github.com/goplus/llgo/runtime/internal/runtime.mutex", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }, ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable", i32 0, i32 1), align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %5 = getelementptr inbounds ptr, ptr %4, i64 0
  store ptr %0, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 0
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, 1
  call void @llvm.memcpy.p0.p0.i64(ptr %1, ptr getelementptr inbounds ({ %"github.com/goplus/llgo/runtime/internal/runtime.mutex", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }, ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable", i32 0, i32 1), i64 24, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %2, ptr %1, ptr %9, i64 %10, i64 8)
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, ptr getelementptr inbounds ({ %"github.com/goplus/llgo/runtime/internal/runtime.mutex", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }, ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable", i32 0, i32 1), align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.(*mutex).Unlock"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable")
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.(*mutex).Lock"(ptr %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Lock"(ptr %0)
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.(*mutex).Unlock"(ptr %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Unlock"(ptr %0)
  ret void
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @llvm.memset.p0.i64(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @llvm.memset.p0.i64(ptr %3, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 1
  %7 = load i64, ptr %6, align 4
  %8 = icmp sgt i64 %5, %7
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = phi i64 [ %5, %_llgo_0 ], [ %10, %_llgo_1 ]
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_9, %_llgo_2
  %12 = phi i64 [ 0, %_llgo_2 ], [ %29, %_llgo_9 ]
  %13 = icmp slt i64 %12, %11
  br i1 %13, label %_llgo_4, label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_3
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i64 %12
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i64 %12
  %21 = load i8, ptr %20, align 1
  %22 = icmp ult i8 %17, %21
  br i1 %22, label %_llgo_6, label %_llgo_7

_llgo_5:                                          ; preds = %_llgo_3
  %23 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 1
  %24 = load i64, ptr %23, align 4
  %25 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = icmp slt i64 %24, %26
  ret i1 %27

_llgo_6:                                          ; preds = %_llgo_4
  ret i1 true

_llgo_7:                                          ; preds = %_llgo_4
  %28 = icmp ugt i8 %17, %21
  br i1 %28, label %_llgo_8, label %_llgo_9

_llgo_8:                                          ; preds = %_llgo_7
  ret i1 false

_llgo_9:                                          ; preds = %_llgo_7
  %29 = add i64 %12, 1
  br label %_llgo_3
}

define ptr @"github.com/goplus/llgo/runtime/internal/runtime.efaceOf"(ptr %0) {
_llgo_0:
  ret ptr %0
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 6
  %2 = load i8, ptr %1, align 1
  %3 = and i8 %2, 32
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %0) {
_llgo_0:
  %1 = load ptr, ptr @stderr, align 8
  %2 = call i32 (ptr, ptr, ...) @fprintf(ptr %1, ptr @66)
  %3 = load ptr, ptr @stderr, align 8
  %4 = load ptr, ptr @"github.com/goplus/llgo/runtime/internal/runtime.printFormatPrefixHex", align 8
  %5 = ptrtoint ptr %0 to i64
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr %3, ptr %4, i64 %5)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.errorString.Error"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @204, i64 15 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @llvm.memset.p0.i64(ptr %2, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %0, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @llvm.memset.p0.i64(ptr %3, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 1
  %7 = load i64, ptr %6, align 4
  %8 = add i64 %5, %7
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 %8)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  %14 = call ptr @memcpy(ptr %9, ptr %11, i64 %13)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, i32 0, i32 1
  %16 = load i64, ptr %15, align 4
  %17 = getelementptr i8, ptr %9, i64 %16
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, i32 0, i32 1
  %21 = load i64, ptr %20, align 4
  %22 = call ptr @memcpy(ptr %17, ptr %19, i64 %21)
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @llvm.memset.p0.i64(ptr %23, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, i32 0, i32 1
  store ptr %9, ptr %24, align 8
  store i64 %8, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %26
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c128equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.c128equal"(ptr %1, ptr %2)
  ret i1 %3
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.c128equal"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load { double, double }, ptr %0, align 8
  %3 = load { double, double }, ptr %1, align 8
  %4 = extractvalue { double, double } %2, 0
  %5 = extractvalue { double, double } %2, 1
  %6 = extractvalue { double, double } %3, 0
  %7 = extractvalue { double, double } %3, 1
  %8 = fcmp oeq double %4, %6
  %9 = fcmp oeq double %5, %7
  %10 = and i1 %8, %9
  ret i1 %10
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.c64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.c64equal"(ptr %1, ptr %2)
  ret i1 %3
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.c64equal"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load { float, float }, ptr %0, align 4
  %3 = load { float, float }, ptr %1, align 4
  %4 = extractvalue { float, float } %2, 0
  %5 = extractvalue { float, float } %2, 1
  %6 = extractvalue { float, float } %3, 0
  %7 = extractvalue { float, float } %3, 1
  %8 = fcmp oeq float %4, %6
  %9 = fcmp oeq float %5, %7
  %10 = and i1 %8, %9
  ret i1 %10
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %1, ptr %2)
  ret i1 %3
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load double, ptr %0, align 8
  %3 = load double, ptr %1, align 8
  %4 = fcmp oeq double %2, %3
  ret i1 %4
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %1, ptr %2)
  ret i1 %3
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load float, ptr %0, align 4
  %3 = load float, ptr %1, align 4
  %4 = fcmp oeq float %2, %3
  ret i1 %4
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = icmp eq i64 %2, %3
  ret i1 %4
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  ret i1 %3
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i32, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %2, %3
  ret i1 %4
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr %1, ptr %2)
  ret i1 %3
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i16, ptr %0, align 2
  %3 = load i16, ptr %1, align 2
  %4 = icmp eq i16 %2, %3
  ret i1 %4
}

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i8, ptr %0, align 1
  %3 = load i8, ptr %1, align 1
  %4 = icmp eq i8 %2, %3
  ret i1 %4
}

define ptr @"github.com/goplus/llgo/runtime/internal/runtime.boolCStr"(i1 %0) {
_llgo_0:
  br i1 %0, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret ptr @202

_llgo_2:                                          ; preds = %_llgo_0
  ret ptr @203
}

define linkonce ptr @"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer].Get"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", align 8
  call void @llvm.memset.p0.i64(ptr %2, i8 0, i64 24, i1 false)
  store %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]" %1, ptr %0, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, i32 0, i32 0
  %4 = load i32, ptr %3, align 4
  %5 = call ptr @pthread_getspecific(i32 %4)
  %6 = icmp ne ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %5, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  ret ptr %8

_llgo_2:                                          ; preds = %_llgo_0
  ret ptr null
}

declare ptr @memset(ptr, i32, i64)

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).Error"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.errorString.Error"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.(*errorString).RuntimeError"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %0, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.errorString.RuntimeError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.errorString.RuntimeError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  ret void
}

declare void @GC_register_finalizer(ptr, ptr, ptr, ptr, ptr)

declare i32 @GC_pthread_create(ptr, ptr, ptr, ptr)

declare void @GC_free(ptr)

declare i64 @strlen(ptr)

declare i32 @rand()

declare ptr @memmove(ptr, ptr, i64)

declare ptr @calloc(i64, i64)

define linkonce { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/clite/tls.(*slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]).rootRange"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, align 8
  %2 = ptrtoint ptr %0 to i64
  %3 = icmp ugt i64 %2, -33
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @266, i64 45 }, ptr %4, align 8
  %5 = insertvalue { ptr, ptr } { ptr @_llgo_string, ptr undef }, ptr %4, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %6 = add i64 %2, 32
  %7 = inttoptr i64 %6 to ptr
  %8 = insertvalue { ptr, ptr } undef, ptr %0, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %7, 1
  ret { ptr, ptr } %9
}

declare void @GC_add_roots(ptr, ptr)

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromCStr"(ptr %0) {
_llgo_0:
  %1 = call i64 @strlen(ptr %0)
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFrom"(ptr %0, i64 %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.ifaceeq"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = icmp eq ptr %0, null
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret i1 true

_llgo_2:                                          ; preds = %_llgo_0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.itab", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %5, i32 0, i32 7
  %7 = load { ptr, ptr }, ptr %6, align 8
  %8 = extractvalue { ptr, ptr } %7, 0
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %5, i32 0, i32 9
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %10, align 8
  %12 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 28 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" %11)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.errorString.Error"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %12)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, ptr %14, align 8
  %15 = insertvalue { ptr, ptr } { ptr @_llgo_string, ptr undef }, ptr %14, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %15)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %16 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.isDirectIface"(ptr %5)
  br i1 %16, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %17 = icmp eq ptr %1, %2
  ret i1 %17

_llgo_6:                                          ; preds = %_llgo_4
  %18 = extractvalue { ptr, ptr } %7, 1
  %19 = extractvalue { ptr, ptr } %7, 0
  %20 = call i1 %19(ptr %18, ptr %1, ptr %2)
  ret i1 %20
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.init"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", align 8
  %1 = load i1, ptr @"github.com/goplus/llgo/runtime/internal/runtime.init$guard", align 1
  br i1 %1, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/runtime/internal/runtime.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime/goarch.init"()
  call void @"github.com/goplus/llgo/runtime/internal/clite/tls.init"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime/math.init"()
  call void @"github.com/goplus/llgo/runtime/internal/clite.init"()
  call void @"github.com/goplus/llgo/runtime/internal/clite/tls.Alloc[*github.com/goplus/llgo/runtime/internal/runtime.Defer]"(ptr sret(%"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]") %0, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.init$1", ptr null })
  %2 = load %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, align 8
  store %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]" %2, ptr @"github.com/goplus/llgo/runtime/internal/runtime.deferTLS", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @213, i64 38 }, ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @214, i64 46 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts", i64 1), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @215, i64 48 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts", i64 2), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @216, i64 33 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts", i64 3), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @217, i64 47 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts", i64 4), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @218, i64 49 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts", i64 5), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @219, i64 34 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts", i64 6), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @220, i64 34 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts", i64 7), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @221, i64 79 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsErrorFmts", i64 8), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @222, i64 23 }, ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsNegErrorFmts", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @223, i64 31 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsNegErrorFmts", i64 1), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @223, i64 31 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsNegErrorFmts", i64 2), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @224, i64 31 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsNegErrorFmts", i64 3), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @225, i64 32 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsNegErrorFmts", i64 4), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @225, i64 32 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsNegErrorFmts", i64 5), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @226, i64 32 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsNegErrorFmts", i64 6), align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @227, i64 32 }, ptr getelementptr inbounds (%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr @"github.com/goplus/llgo/runtime/internal/runtime.boundsNegErrorFmts", i64 7), align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 21 }, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.errorString")
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %3, 1
  store { ptr, ptr } %6, ptr @"github.com/goplus/llgo/runtime/internal/runtime.shiftError", align 8
  store ptr @230, ptr @"github.com/goplus/llgo/runtime/internal/runtime.printFormatPrefixInt", align 8
  store ptr @231, ptr @"github.com/goplus/llgo/runtime/internal/runtime.printFormatPrefixUInt", align 8
  store ptr @232, ptr @"github.com/goplus/llgo/runtime/internal/runtime.printFormatPrefixHex", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init#1"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init#2"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init#3"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init#4"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.init$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/runtime/internal/runtime.init$1"(ptr %1)
  ret void
}

define linkonce void @"github.com/goplus/llgo/runtime/internal/clite/tls.Alloc[*github.com/goplus/llgo/runtime/internal/runtime.Defer]"(ptr sret(%"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]") %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %3 = call i32 @pthread_key_create(ptr %2, ptr @"github.com/goplus/llgo/runtime/internal/clite/tls.slotDestructor[*github.com/goplus/llgo/runtime/internal/runtime.Defer]")
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = load ptr, ptr @stderr, align 8
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr %5, ptr @260, i32 %3)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @261, i64 46 }, ptr %7, align 8
  %8 = insertvalue { ptr, ptr } { ptr @_llgo_string, ptr undef }, ptr %7, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %8)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", align 8
  call void @llvm.memset.p0.i64(ptr %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %9, i32 0, i32 0
  %11 = load i32, ptr %2, align 4
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %9, i32 0, i32 1
  store i32 %11, ptr %10, align 4
  store { ptr, ptr } %1, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/runtime/internal/clite/tls.Handle[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %0, ptr %9, i64 24, i1 false)
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.init#1"() {
_llgo_0:
  %0 = call i64 @time(ptr null)
  %1 = trunc i64 %0 to i32
  call void @srand(i32 %1)
  %2 = call i32 @rand()
  %3 = zext i32 %2 to i64
  %4 = or i64 %3, 1
  store i64 %4, ptr @"github.com/goplus/llgo/runtime/internal/runtime.hashkey", align 4
  %5 = call i32 @rand()
  %6 = zext i32 %5 to i64
  %7 = or i64 %6, 1
  store i64 %7, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/runtime/internal/runtime.hashkey", i64 1), align 4
  %8 = call i32 @rand()
  %9 = zext i32 %8 to i64
  %10 = or i64 %9, 1
  store i64 %10, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/runtime/internal/runtime.hashkey", i64 2), align 4
  %11 = call i32 @rand()
  %12 = zext i32 %11 to i64
  %13 = or i64 %12, 1
  store i64 %13, ptr getelementptr inbounds (i64, ptr @"github.com/goplus/llgo/runtime/internal/runtime.hashkey", i64 3), align 4
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.init#2"() {
_llgo_0:
  %0 = call i32 @"github.com/goplus/llgo/runtime/internal/clite/pthread/sync.(*Mutex).Init"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.itabTable", ptr null)
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.init#3"() {
_llgo_0:
  %0 = call i32 @pthread_key_create(ptr @"github.com/goplus/llgo/runtime/internal/runtime.excepKey", ptr null)
  %1 = call i32 @pthread_key_create(ptr @"github.com/goplus/llgo/runtime/internal/runtime.goexitKey", ptr null)
  %2 = call ptr @pthread_self()
  store ptr %2, ptr @"github.com/goplus/llgo/runtime/internal/runtime.mainThread", align 8
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.init#4"() {
_llgo_0:
  %0 = call i32 @"github.com/goplus/llgo/runtime/internal/clite/signal.Signal"(i32 11, ptr @"github.com/goplus/llgo/runtime/internal/runtime.init#4$1")
  ret void
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.init#4$1"(i32 %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  %4 = icmp eq i32 %0, 11
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 49 }, ptr %5, align 8
  %6 = insertvalue { ptr, ptr } { ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.errorString", ptr undef }, ptr %5, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %6)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 20)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 20, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 20, 2
  %11 = sext i32 %0 to i64
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, ptr %2, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.itoa"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %3, ptr %2, i64 %11)
  %12 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %1, ptr %3, i64 24, i1 false)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(ptr %1)
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @233, i64 25 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" %13)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, ptr %15, align 8
  %16 = insertvalue { ptr, ptr } { ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.errorString", ptr undef }, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %16)
  unreachable
}

declare i32 @pthread_key_create(ptr, ptr)

declare i64 @time(ptr)

declare void @srand(i32)

define linkonce void @"github.com/goplus/llgo/runtime/internal/clite/tls.slotDestructor[*github.com/goplus/llgo/runtime/internal/runtime.Defer]"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, i32 0, i32 2
  %3 = load { ptr, ptr }, ptr %2, align 8
  %4 = extractvalue { ptr, ptr } %3, 0
  %5 = icmp ne ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, i32 0, i32 2
  %7 = load { ptr, ptr }, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, i32 0, i32 0
  %9 = extractvalue { ptr, ptr } %7, 1
  %10 = extractvalue { ptr, ptr } %7, 0
  call void %10(ptr %9, ptr %8)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/clite/tls.deregisterSlot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]"(ptr %0)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, i32 0, i32 0
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, i32 0, i32 2
  store { ptr, ptr } zeroinitializer, ptr %12, align 8
  call void @free(ptr %0)
  ret void
}

define linkonce void @"github.com/goplus/llgo/runtime/internal/clite/tls.deregisterSlot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3, %_llgo_0
  ret void

_llgo_2:                                          ; preds = %_llgo_3
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, i32 0, i32 1
  %3 = load i64, ptr %2, align 4
  %4 = and i64 %3, -2
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, i32 0, i32 1
  store i64 %4, ptr %5, align 4
  %6 = call { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/clite/tls.(*slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]).rootRange"(ptr %0)
  %7 = extractvalue { ptr, ptr } %6, 0
  %8 = extractvalue { ptr, ptr } %6, 1
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %7 to i64
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_0
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/clite/tls.slot[*github.com/goplus/llgo/runtime/internal/runtime.Defer]", ptr %0, i32 0, i32 1
  %13 = load i64, ptr %12, align 4
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_2
  call void @GC_remove_roots(ptr %7, ptr %8)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_2
  ret void
}

declare void @GC_remove_roots(ptr, ptr)

define void @"github.com/goplus/llgo/runtime/internal/runtime.init$1"(ptr %0) {
_llgo_0:
  %1 = icmp ne ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr null, ptr %0, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca { ptr, ptr }, align 8
  call void @llvm.memset.p0.i64(ptr %2, i8 0, i64 16, i1 false)
  %3 = load { ptr, ptr }, ptr %0, align 8
  store { ptr, ptr } %3, ptr %2, align 8
  %4 = alloca { ptr, ptr }, align 8
  call void @llvm.memset.p0.i64(ptr %4, i8 0, i64 16, i1 false)
  %5 = load { ptr, ptr }, ptr %1, align 8
  store { ptr, ptr } %5, ptr %4, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %11 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds { ptr, ptr }, ptr %2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.ifaceeq"(ptr %12, ptr %14, ptr %16)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %18 = phi i1 [ false, %_llgo_0 ], [ %17, %_llgo_1 ]
  ret i1 %18
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1) {
_llgo_0:
  ret i1 true
}

define i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load i64, ptr %0, align 4
  %3 = load i64, ptr %1, align 4
  %4 = icmp eq i64 %2, %3
  ret i1 %4
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.panicmakeslicecap"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @242, i64 27 }, ptr %0, align 8
  %1 = insertvalue { ptr, ptr } { ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.errorString", ptr undef }, ptr %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %1)
  unreachable
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.panicmakeslicelen"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @243, i64 27 }, ptr %0, align 8
  %1 = insertvalue { ptr, ptr } { ptr @"_llgo_github.com/goplus/llgo/runtime/internal/runtime.errorString", ptr undef }, ptr %0, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"({ ptr, ptr } %1)
  unreachable
}

define void @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(ptr sret(%"github.com/goplus/llgo/runtime/internal/runtime.Slice") %0, i64 %1, i64 %2, i64 %3) {
_llgo_0:
  %4 = alloca [2 x i64], align 8
  %5 = call [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime/math.MulUintptr"(i64 %3, i64 %2)
  %6 = alloca [2 x i64], align 8
  store [2 x i64] %5, ptr %6, align 4
  %7 = load { i64, i1 }, ptr %6, align 4
  %8 = extractvalue { i64, i1 } %7, 0
  %9 = extractvalue { i64, i1 } %7, 1
  br i1 %9, label %_llgo_1, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_5, %_llgo_4, %_llgo_3, %_llgo_0
  %10 = call [2 x i64] @"github.com/goplus/llgo/runtime/internal/runtime/math.MulUintptr"(i64 %3, i64 %1)
  store [2 x i64] %10, ptr %4, align 4
  %11 = load { i64, i1 }, ptr %4, align 4
  %12 = extractvalue { i64, i1 } %11, 0
  %13 = extractvalue { i64, i1 } %11, 1
  br i1 %13, label %_llgo_6, label %_llgo_9

_llgo_2:                                          ; preds = %_llgo_7, %_llgo_3
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @llvm.memset.p0.i64(ptr %14, i8 0, i64 24, i1 false)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, i32 0, i32 0
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 %8)
  %17 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, i32 0, i32 1
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, i32 0, i32 2
  store ptr %16, ptr %15, align 8
  store i64 %1, ptr %17, align 4
  store i64 %2, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr %0, ptr %14, i64 24, i1 false)
  ret void

_llgo_3:                                          ; preds = %_llgo_4
  %20 = icmp sgt i64 %1, %2
  br i1 %20, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_5
  %21 = icmp slt i64 %1, 0
  br i1 %21, label %_llgo_1, label %_llgo_3

_llgo_5:                                          ; preds = %_llgo_0
  %22 = icmp ugt i64 %8, 281474976710656
  br i1 %22, label %_llgo_1, label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_9, %_llgo_8, %_llgo_1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.panicmakeslicelen"()
  br label %_llgo_7

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.panicmakeslicecap"()
  br label %_llgo_2

_llgo_8:                                          ; preds = %_llgo_9
  %23 = icmp slt i64 %1, 0
  br i1 %23, label %_llgo_6, label %_llgo_7

_llgo_9:                                          ; preds = %_llgo_1
  %24 = icmp ugt i64 %12, 281474976710656
  br i1 %24, label %_llgo_6, label %_llgo_8
}

define weak void @runtime.init() {
_llgo_0:
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @runtime.init()
  call void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.init"()
  call void @"github.com/goplus/llgo/cl/deadcode/_testdata/ifacemethod.main"()
  ret i32 0
}

define weak void @_start() {
_llgo_0:
  %0 = call i32 @main(i32 0, ptr null)
  ret void
}

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
declare i64 @llgoFromFloat64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
declare i32 @llgoFromFloat32(float) #1

declare void @"github.com/goplus/llgo/runtime/internal/clite/bitcast.init"()

; Function Attrs: noinline nounwind optnone uwtable
declare ptr @llgo_address() #1

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

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Debian clang version 19.1.7 (3~deb12u1)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
