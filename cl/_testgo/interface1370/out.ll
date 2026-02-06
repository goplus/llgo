; ModuleID = 'github.com/goplus/llgo/cl/_testgo/interface1370'
source_filename = "github.com/goplus/llgo/cl/_testgo/interface1370"

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
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/interface1370.init$guard" = global i1 false, align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [4 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -942717799, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 22 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, i16 4, i16 2, i32 24 }, [4 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area", ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID", ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 54 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID", ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 57 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate", ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate" }] }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 -121183544, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 22 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 48 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@_llgo_float64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1233032631, i8 4, i8 8, i8 8, i8 46, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr @"*_llgo_float64" }, align 8
@"*_llgo_float64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1664509894, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr null }, ptr @_llgo_float64 }, align 8
@0 = private unnamed_addr constant [7 x i8] c"float64", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@2 = private unnamed_addr constant [22 x i8] c"geometry1370.Rectangle", align 1
@3 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testdata/geometry1370", align 1
@4 = private unnamed_addr constant [5 x i8] c"Width", align 1
@5 = private unnamed_addr constant [6 x i8] c"Height", align 1
@6 = private unnamed_addr constant [2 x i8] c"id", align 1
@"github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_float64, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 }, ptr @_llgo_float64, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr @_llgo_int, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@7 = private unnamed_addr constant [4 x i8] c"Area", align 1
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1927177058, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 14 }, ptr @"*_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -682142518, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 14 }, ptr null }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, align 8
@8 = private unnamed_addr constant [14 x i8] c"func() float64", align 1
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_float64], align 8
@9 = private unnamed_addr constant [5 x i8] c"GetID", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@10 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@11 = private unnamed_addr constant [5 x i8] c"setID", align 1
@12 = private unnamed_addr constant [54 x i8] c"github.com/goplus/llgo/cl/_testdata/geometry1370.setID", align 1
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -637187458, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr @"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@"*_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 735356155, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 9 }, ptr null }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, align 8
@13 = private unnamed_addr constant [9 x i8] c"func(int)", align 1
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@14 = private unnamed_addr constant [8 x i8] c"validate", align 1
@15 = private unnamed_addr constant [57 x i8] c"github.com/goplus/llgo/cl/_testdata/geometry1370.validate", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr @"*_llgo_bool" }, align 8
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@16 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@17 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1231748956, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 83 }, ptr @"*github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o$imethods", i64 3, i64 3 } }, align 8
@"*github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1892416297, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 83 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o" }, align 8
@18 = private unnamed_addr constant [83 x i8] c"interface { Area() float64; geometry1370.setID(int); geometry1370.validate() bool }", align 1
@19 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/interface1370", align 1
@"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o$imethods" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 54 }, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 57 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }], align 8
@20 = private unnamed_addr constant [3 x i8] c"ID:", align 1

define void @"github.com/goplus/llgo/cl/_testgo/interface1370.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/geometry1370.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface1370.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.NewRectangle"(double 5.000000e+00, double 3.000000e+00)
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o", ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle")
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %0, 1
  call void @"github.com/goplus/llgo/cl/_testdata/geometry1370.RegisterShape"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, i64 42)
  %4 = call i64 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/cl/_testdata/geometry1370.init"()

declare ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.NewRectangle"(double, double)

declare void @"github.com/goplus/llgo/cl/_testdata/geometry1370.RegisterShape"(%"github.com/goplus/llgo/runtime/internal/runtime.iface", i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare double @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area"(ptr)

declare i64 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID"(ptr, i64)

declare i1 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
