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
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2001801254, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 46 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value" }] }, align 8
@0 = private unnamed_addr constant [11 x i8] c"main.M[int]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 2506501, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@1 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst", align 1
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [5 x i8] c"Value", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@6 = private unnamed_addr constant [5 x i8] c"value", align 1
@7 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst.value", align 1
@"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 2114492924, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 25 }, ptr @"*_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8$imethods", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [25 x i8] c"interface { Value() int }", align 1
@"*_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1773985388, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 25 }, ptr null }, ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" }, align 8
@"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@9 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*_llgo_string" }, align 8
@10 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1041065950, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 46 }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value" }] }, align 8
@11 = private unnamed_addr constant [15 x i8] c"main.M[float64]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1922884649, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@_llgo_float64 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -1233032631, i8 4, i8 8, i8 8, i8 14, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr @"*_llgo_float64" }, align 8
@12 = private unnamed_addr constant [7 x i8] c"float64", align 1
@"*_llgo_float64" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1664509894, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr null }, ptr @_llgo_float64 }, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_float64, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1927177058, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 14 }, ptr @"*_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$out", i64 1, i64 1 } }, align 8
@13 = private unnamed_addr constant [14 x i8] c"func() float64", align 1
@"*_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -682142518, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 14 }, ptr null }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }, align 8
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8$out" = weak_odr constant [1 x ptr] [ptr @_llgo_float64], align 8
@"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 825626853, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 29 }, ptr @"*_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk$imethods", i64 1, i64 1 } }, align 8
@14 = private unnamed_addr constant [29 x i8] c"interface { Value() float64 }", align 1
@"*_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1780193741, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 29 }, ptr null }, ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" }, align 8
@"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" }], align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -817087661, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 30 }, ptr @"*github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww$imethods", i64 1, i64 1 } }, align 8
@15 = private unnamed_addr constant [30 x i8] c"interface { main.value() int }", align 1
@"*github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -739630974, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 30 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" }, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 46 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }], align 8
@16 = private unnamed_addr constant [95 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/tpinst.I[int] -> interface{value() int} failed", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value", ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value"], section "llvm.metadata"

define void @"github.com/goplus/llgo/cl/_testgo/tpinst.demo"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  store i64 100, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %0, 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %5)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, 0
  %8 = getelementptr ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = insertvalue { ptr, ptr } undef, ptr %9, 0
  %11 = insertvalue { ptr, ptr } %10, ptr %6, 1
  %12 = extractvalue { ptr, ptr } %11, 1
  %13 = extractvalue { ptr, ptr } %11, 0
  %14 = call i64 %13(ptr %12)
  %15 = icmp ne i64 %14, 100
  br i1 %15, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %19 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %18, i32 0, i32 0
  store double 1.001000e+02, ptr %20, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]")
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %21, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %22, ptr %18, 1
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %23)
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, 0
  %26 = getelementptr ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = insertvalue { ptr, ptr } undef, ptr %27, 0
  %29 = insertvalue { ptr, ptr } %28, ptr %24, 1
  %30 = extractvalue { ptr, ptr } %29, 1
  %31 = extractvalue { ptr, ptr } %29, 0
  %32 = call double %31(ptr %30)
  %33 = fcmp une double %32, 1.001000e+02
  br i1 %33, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %34, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %5)
  %37 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", ptr %36)
  br i1 %37, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_7
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %38, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  unreachable

_llgo_6:                                          ; preds = %_llgo_7
  ret void

_llgo_7:                                          ; preds = %_llgo_4
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, 1
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", ptr %36)
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %42, ptr %40, 1
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 0
  %46 = getelementptr ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  %48 = insertvalue { ptr, ptr } undef, ptr %47, 0
  %49 = insertvalue { ptr, ptr } %48, ptr %44, 1
  %50 = extractvalue { ptr, ptr } %49, 1
  %51 = extractvalue { ptr, ptr } %49, 0
  %52 = call i64 %51(ptr %50)
  %53 = icmp ne i64 %52, 100
  br i1 %53, label %_llgo_5, label %_llgo_6

_llgo_8:                                          ; preds = %_llgo_4
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 95 }, ptr %54, align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %54, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %55)
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load i64, ptr %2, align 4
  ret i64 %4
}

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load i64, ptr %2, align 4
  ret i64 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
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
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load double, ptr %2, align 8
  ret double %4
}

define linkonce double @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %0, i32 0, i32 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load double, ptr %2, align 8
  ret double %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f64equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)
