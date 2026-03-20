; ModuleID = 'github.com/goplus/llgo/cl/_testrt/abinamed'
source_filename = "github.com/goplus/llgo/cl/_testrt/abinamed"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.SliceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/cl/_testrt/abinamed.T" = type { ptr, ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/abinamed.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/abinamed.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 48, i64 32, i32 -1108492871, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@0 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1680135300, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" }, align 8
@1 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/abinamed", align 1
@2 = private unnamed_addr constant [1 x i8] c"p", align 1
@3 = private unnamed_addr constant [1 x i8] c"t", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.Type" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [24 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 545827750, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 24, i16 24, i32 24 }, [24 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon" }] }, align 8
@4 = private unnamed_addr constant [8 x i8] c"abi.Type", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.Type" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 72, i64 72, i32 -917965754, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$2mXuqn9SiezStb0ROUShDkM7v8PjmuD-3YekCy58xL4$fields", i64 11, i64 11 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@5 = private unnamed_addr constant [5 x i8] c"Size_", align 1
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 12, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@6 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@7 = private unnamed_addr constant [8 x i8] c"PtrBytes", align 1
@8 = private unnamed_addr constant [4 x i8] c"Hash", align 1
@_llgo_uint32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 -625909322, i8 12, i8 4, i8 4, i8 10, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_uint32" }, align 8
@9 = private unnamed_addr constant [6 x i8] c"uint32", align 1
@"*_llgo_uint32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1605480511, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @_llgo_uint32 }, align 8
@10 = private unnamed_addr constant [5 x i8] c"TFlag", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.TFlag" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 -970537592, i8 13, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.TFlag" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@11 = private unnamed_addr constant [9 x i8] c"abi.TFlag", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.TFlag" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1505104728, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag" }, align 8
@12 = private unnamed_addr constant [34 x i8] c"github.com/goplus/llgo/runtime/abi", align 1
@13 = private unnamed_addr constant [6 x i8] c"Align_", align 1
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@14 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@15 = private unnamed_addr constant [11 x i8] c"FieldAlign_", align 1
@16 = private unnamed_addr constant [5 x i8] c"Kind_", align 1
@17 = private unnamed_addr constant [5 x i8] c"Equal", align 1
@"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 220675220, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 41 }, ptr @"*_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU$fields", i64 2, i64 2 } }, align 8
@18 = private unnamed_addr constant [41 x i8] c"func(unsafe.Pointer, unsafe.Pointer) bool", align 1
@"*_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1820227339, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 41 }, ptr null }, ptr @"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU" }, align 8
@19 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1881567500, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 41 }, ptr @"*_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -625305683, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 41 }, ptr null }, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E" }, align 8
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@20 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E$in" = weak_odr constant [2 x ptr] [ptr @_llgo_Pointer, ptr @_llgo_Pointer], align 8
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 1, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr @"*_llgo_bool" }, align 8
@21 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@22 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, ptr @"_llgo_func$fC75jGwF1nV5TF91gEeTF_JCtbG9Z7_yOawHBxqBh6E", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@23 = private unnamed_addr constant [6 x i8] c"GCData", align 1
@24 = private unnamed_addr constant [4 x i8] c"Str_", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, ptr @"*_llgo_string" }, align 8
@25 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @25, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@26 = private unnamed_addr constant [10 x i8] c"PtrToThis_", align 1
@"_llgo_struct$2mXuqn9SiezStb0ROUShDkM7v8PjmuD-3YekCy58xL4$fields" = weak_odr constant [11 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr @_llgo_uintptr, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 8 }, ptr @_llgo_uintptr, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr @_llgo_uint32, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.TFlag", i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 6 }, ptr @_llgo_uint8, i64 21, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 11 }, ptr @_llgo_uint8, i64 22, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 5 }, ptr @_llgo_uint8, i64 23, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 5 }, ptr @"_llgo_closure$6Ehc6TOqEXOG056rtIWcVOuWzJK8QENYOqW7yQ1sEPU", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 6 }, ptr @"*_llgo_uint8", i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @24, i64 4 }, ptr @_llgo_string, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @26, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 64, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@27 = private unnamed_addr constant [5 x i8] c"Align", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@28 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @28, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr @"*_llgo_int" }, align 8
@29 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @29, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@30 = private unnamed_addr constant [9 x i8] c"ArrayType", align 1
@"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -568587198, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 21 }, ptr @"*_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk$out", i64 1, i64 1 } }, align 8
@31 = private unnamed_addr constant [21 x i8] c"func() *abi.ArrayType", align 1
@"*_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 755696907, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @31, i64 21 }, ptr null }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk" }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [22 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1143616567, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 22, i16 22, i32 24 }, [22 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon" }] }, align 8
@32 = private unnamed_addr constant [13 x i8] c"abi.ArrayType", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 96, i64 80, i32 1407757354, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @32, i64 13 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@33 = private unnamed_addr constant [4 x i8] c"Type", align 1
@34 = private unnamed_addr constant [4 x i8] c"Elem", align 1
@35 = private unnamed_addr constant [5 x i8] c"Slice", align 1
@36 = private unnamed_addr constant [3 x i8] c"Len", align 1
@"_llgo_struct$_wxpay9lRP3cWU1eNzUY8uwDJyoHmQ6toXBadyiL6io$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @35, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr @_llgo_uintptr, i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@37 = private unnamed_addr constant [7 x i8] c"ChanDir", align 1
@"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1945881610, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 18 }, ptr @"*_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc$out", i64 1, i64 1 } }, align 8
@38 = private unnamed_addr constant [18 x i8] c"func() abi.ChanDir", align 1
@"*_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -326435628, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @38, i64 18 }, ptr null }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc" }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1144193706, i8 13, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ChanDir" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@39 = private unnamed_addr constant [11 x i8] c"abi.ChanDir", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.ChanDir" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -460673264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @39, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir" }, align 8
@"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/runtime/abi.ChanDir"], align 8
@40 = private unnamed_addr constant [6 x i8] c"Common", align 1
@"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -621142733, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 16 }, ptr @"*_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw$out", i64 1, i64 1 } }, align 8
@41 = private unnamed_addr constant [16 x i8] c"func() *abi.Type", align 1
@"*_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -604370089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @41, i64 16 }, ptr null }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw" }, align 8
@"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type"], align 8
@42 = private unnamed_addr constant [15 x i8] c"ExportedMethods", align 1
@"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1479346325, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 19 }, ptr @"*_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM$out", i64 1, i64 1 } }, align 8
@43 = private unnamed_addr constant [19 x i8] c"func() []abi.Method", align 1
@"*_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -7285509, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @43, i64 19 }, ptr null }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM" }, align 8
@"[]_llgo_github.com/goplus/llgo/runtime/abi.Method" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1637102155, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 12 }, ptr @"*[]_llgo_github.com/goplus/llgo/runtime/abi.Method" }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method" }, align 8
@44 = private unnamed_addr constant [12 x i8] c"[]abi.Method", align 1
@"*[]_llgo_github.com/goplus/llgo/runtime/abi.Method" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -556563584, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @44, i64 12 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method" }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.Method" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 40, i64 40, i32 -1245790161, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Method" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@45 = private unnamed_addr constant [10 x i8] c"abi.Method", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.Method" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -140914931, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @45, i64 10 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Method" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Exported" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).Name" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 7 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath", ptr @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath" }] }, align 8
@46 = private unnamed_addr constant [8 x i8] c"Exported", align 1
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -541022001, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 11 }, ptr @"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out", i64 1, i64 1 } }, align 8
@47 = private unnamed_addr constant [11 x i8] c"func() bool", align 1
@"*_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -367308996, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @47, i64 11 }, ptr null }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" }, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk$out" = weak_odr constant [1 x ptr] [ptr @_llgo_bool], align 8
@48 = private unnamed_addr constant [4 x i8] c"Name", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@49 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @49, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@50 = private unnamed_addr constant [7 x i8] c"PkgPath", align 1
@51 = private unnamed_addr constant [5 x i8] c"Name_", align 1
@52 = private unnamed_addr constant [5 x i8] c"Mtyp_", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [25 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 491823088, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.FuncType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 25, i16 25, i32 24 }, [25 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Uncommon" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @117, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic", ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Variadic" }] }, align 8
@53 = private unnamed_addr constant [12 x i8] c"abi.FuncType", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.FuncType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 104, i32 1656572858, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @53, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@54 = private unnamed_addr constant [2 x i8] c"In", align 1
@"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -2083999987, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr @"*[]*_llgo_github.com/goplus/llgo/runtime/abi.Type" }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type" }, align 8
@55 = private unnamed_addr constant [11 x i8] c"[]*abi.Type", align 1
@"*[]*_llgo_github.com/goplus/llgo/runtime/abi.Type" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1658716233, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @55, i64 11 }, ptr null }, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type" }, align 8
@56 = private unnamed_addr constant [3 x i8] c"Out", align 1
@"_llgo_struct$1ug-gfLTkNOIzG-RN7EFFwGKI01E7iqUGVZBMudT8KA$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @54, i64 2 }, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @56, i64 3 }, ptr @"[]*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@57 = private unnamed_addr constant [10 x i8] c"FieldAlign", align 1
@58 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -243139427, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 20 }, ptr @"*_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88$out", i64 1, i64 1 } }, align 8
@59 = private unnamed_addr constant [20 x i8] c"func() *abi.FuncType", align 1
@"*_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1060671735, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @59, i64 20 }, ptr null }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88" }, align 8
@"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType"], align 8
@60 = private unnamed_addr constant [7 x i8] c"GcSlice", align 1
@"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1226011959, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 30 }, ptr @"*_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q$out", i64 1, i64 1 } }, align 8
@61 = private unnamed_addr constant [30 x i8] c"func(uintptr, uintptr) []uint8", align 1
@"*_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1534710063, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @61, i64 30 }, ptr null }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q" }, align 8
@"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q$in" = weak_odr constant [2 x ptr] [ptr @_llgo_uintptr, ptr @_llgo_uintptr], align 8
@"[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 370346748, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 7 }, ptr @"*[]_llgo_uint8" }, ptr @_llgo_uint8 }, align 8
@62 = private unnamed_addr constant [7 x i8] c"[]uint8", align 1
@"*[]_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2143776929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @62, i64 7 }, ptr null }, ptr @"[]_llgo_uint8" }, align 8
@"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q$out" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_uint8"], align 8
@63 = private unnamed_addr constant [7 x i8] c"HasName", align 1
@64 = private unnamed_addr constant [10 x i8] c"IfaceIndir", align 1
@65 = private unnamed_addr constant [13 x i8] c"InterfaceType", align 1
@"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1440566841, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 25 }, ptr @"*_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM$out", i64 1, i64 1 } }, align 8
@66 = private unnamed_addr constant [25 x i8] c"func() *abi.InterfaceType", align 1
@"*_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1947977531, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @66, i64 25 }, ptr null }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM" }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [24 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 724358305, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 17 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 24, i16 24, i32 24 }, [24 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon" }] }, align 8
@67 = private unnamed_addr constant [17 x i8] c"abi.InterfaceType", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 96, i32 1536385028, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @67, i64 17 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@68 = private unnamed_addr constant [8 x i8] c"PkgPath_", align 1
@69 = private unnamed_addr constant [7 x i8] c"Methods", align 1
@"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 -39305035, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 13 }, ptr @"*[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, align 8
@70 = private unnamed_addr constant [13 x i8] c"[]abi.Imethod", align 1
@"*[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -658871917, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @70, i64 13 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 24, i32 -379303371, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@71 = private unnamed_addr constant [11 x i8] c"abi.Imethod", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.Imethod" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [3 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 37073138, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @71, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Imethod" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 3, i16 3, i32 24 }, [3 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @48, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @50, i64 7 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath", ptr @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath" }] }, align 8
@72 = private unnamed_addr constant [4 x i8] c"Typ_", align 1
@"_llgo_struct$nK3p3a0VXRT6CeR0p3-gSrD3XdcHx2I7dlhqG-Zjudw$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @72, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_struct$eoXJdAUqA_SyytMpb3QTBaQ2Bh9nLc089-gvCiW55io$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 8 }, ptr @_llgo_string, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 7 }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Imethod", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@73 = private unnamed_addr constant [9 x i8] c"IsClosure", align 1
@74 = private unnamed_addr constant [13 x i8] c"IsDirectIface", align 1
@75 = private unnamed_addr constant [3 x i8] c"Key", align 1
@76 = private unnamed_addr constant [4 x i8] c"Kind", align 1
@"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1946464100, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 15 }, ptr @"*_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc$out", i64 1, i64 1 } }, align 8
@77 = private unnamed_addr constant [15 x i8] c"func() abi.Kind", align 1
@"*_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1206160253, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @77, i64 15 }, ptr null }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc" }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.Kind" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 563955062, i8 13, i8 8, i8 8, i8 7, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Kind" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", ptr @"github.com/goplus/llgo/runtime/abi.Kind.String" }] }, align 8
@78 = private unnamed_addr constant [8 x i8] c"abi.Kind", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.Kind" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1420086957, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @78, i64 8 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String", ptr @"github.com/goplus/llgo/runtime/abi.(*Kind).String" }] }, align 8
@79 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc$out" = weak_odr constant [1 x ptr] [ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Kind"], align 8
@80 = private unnamed_addr constant [7 x i8] c"MapType", align 1
@"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1658338794, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 19 }, ptr @"*_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY$out", i64 1, i64 1 } }, align 8
@81 = private unnamed_addr constant [19 x i8] c"func() *abi.MapType", align 1
@"*_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -643721358, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @81, i64 19 }, ptr null }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY" }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.MapType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [27 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 486837881, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 11 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.MapType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 27, i16 27, i32 24 }, [27 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @91, i64 14 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).HashMightPanic" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @92, i64 12 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectElem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @93, i64 11 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IndirectKey" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @94, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NeedKeyUpdate" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @97, i64 12 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ReflexiveKey" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon" }] }, align 8
@82 = private unnamed_addr constant [11 x i8] c"abi.MapType", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.MapType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 120, i64 96, i32 1754886760, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @82, i64 11 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$lDRrMowV9eYDzNBl7cGxdCzQBq1_z9jGv2HZ-n39ws4$fields", i64 9, i64 9 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@83 = private unnamed_addr constant [6 x i8] c"Bucket", align 1
@84 = private unnamed_addr constant [6 x i8] c"Hasher", align 1
@"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1253407582, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 37 }, ptr @"*_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc$fields", i64 2, i64 2 } }, align 8
@85 = private unnamed_addr constant [37 x i8] c"func(unsafe.Pointer, uintptr) uintptr", align 1
@"*_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1055040396, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 37 }, ptr null }, ptr @"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc" }, align 8
@"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1335751043, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 37 }, ptr @"*_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1028745106, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @85, i64 37 }, ptr null }, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20" }, align 8
@"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20$in" = weak_odr constant [2 x ptr] [ptr @_llgo_Pointer, ptr @_llgo_uintptr], align 8
@"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20$out" = weak_odr constant [1 x ptr] [ptr @_llgo_uintptr], align 8
@"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, ptr @"_llgo_func$ahHMZCcDhfW-lrs446sPkiW0NoVa2vpmK_wKarVa_20", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@86 = private unnamed_addr constant [7 x i8] c"KeySize", align 1
@87 = private unnamed_addr constant [9 x i8] c"ValueSize", align 1
@88 = private unnamed_addr constant [10 x i8] c"BucketSize", align 1
@_llgo_uint16 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 2, i64 0, i32 -75471123, i8 12, i8 2, i8 2, i8 9, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 6 }, ptr @"*_llgo_uint16" }, align 8
@89 = private unnamed_addr constant [6 x i8] c"uint16", align 1
@"*_llgo_uint16" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 530818523, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @89, i64 6 }, ptr null }, ptr @_llgo_uint16 }, align 8
@90 = private unnamed_addr constant [5 x i8] c"Flags", align 1
@"_llgo_struct$lDRrMowV9eYDzNBl7cGxdCzQBq1_z9jGv2HZ-n39ws4$fields" = weak_odr constant [9 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 3 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 80, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @83, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @84, i64 6 }, ptr @"_llgo_closure$Oy3XhjARgY_pH1HU6oBj0nSC2Qs1A6CU4bRajpBttZc", i64 96, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @86, i64 7 }, ptr @_llgo_uint8, i64 112, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @87, i64 9 }, ptr @_llgo_uint8, i64 113, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @88, i64 10 }, ptr @_llgo_uint16, i64 114, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @90, i64 5 }, ptr @_llgo_uint32, i64 116, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@91 = private unnamed_addr constant [14 x i8] c"HashMightPanic", align 1
@92 = private unnamed_addr constant [12 x i8] c"IndirectElem", align 1
@93 = private unnamed_addr constant [11 x i8] c"IndirectKey", align 1
@94 = private unnamed_addr constant [13 x i8] c"NeedKeyUpdate", align 1
@95 = private unnamed_addr constant [9 x i8] c"NumMethod", align 1
@96 = private unnamed_addr constant [8 x i8] c"Pointers", align 1
@97 = private unnamed_addr constant [12 x i8] c"ReflexiveKey", align 1
@98 = private unnamed_addr constant [4 x i8] c"Size", align 1
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1975075885, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 14 }, ptr @"*_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s$out", i64 1, i64 1 } }, align 8
@99 = private unnamed_addr constant [14 x i8] c"func() uintptr", align 1
@"*_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -14168058, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @99, i64 14 }, ptr null }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s" }, align 8
@"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s$out" = weak_odr constant [1 x ptr] [ptr @_llgo_uintptr], align 8
@100 = private unnamed_addr constant [10 x i8] c"StructType", align 1
@"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1605675141, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 22 }, ptr @"*_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0$out", i64 1, i64 1 } }, align 8
@101 = private unnamed_addr constant [22 x i8] c"func() *abi.StructType", align 1
@"*_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1720334943, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @101, i64 22 }, ptr null }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0" }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.StructType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [24 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -210439964, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 14 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 24, i16 24, i32 24 }, [24 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @27, i64 5 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Align" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @30, i64 9 }, ptr @"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @37, i64 7 }, ptr @"_llgo_func$Qwe8YykhcqDIDEcT1jS_t1iUv4Im6IdGf17ASgXRQdc", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @40, i64 6 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @34, i64 4 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @57, i64 10 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @58, i64 8 }, ptr @"_llgo_func$Jm50llMLYG9ysTYiSohNC-Ho1mhjzn-vnTRBILhJI88", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @60, i64 7 }, ptr @"_llgo_func$LzCekhEgu6zUWu4l1EXz60BKkQEwZP0N14TLH8aZW6Q", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).GcSlice", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).GcSlice" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @63, i64 7 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).HasName" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @64, i64 10 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IfaceIndir" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @65, i64 13 }, ptr @"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).InterfaceType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @73, i64 9 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsClosure" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @74, i64 13 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).IsDirectIface" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @75, i64 3 }, ptr @"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Key" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @76, i64 4 }, ptr @"_llgo_func$Hsg8cfKiWmyMHfTCLbUouCMFmF6kp9x3qasAGPBLLfc", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Kind" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @36, i64 3 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Len" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @80, i64 7 }, ptr @"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).MapType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @95, i64 9 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).NumMethod" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @96, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Pointers" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @98, i64 4 }, ptr @"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Size" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @79, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).String" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @100, i64 10 }, ptr @"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).StructType" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @111, i64 8 }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon", ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Uncommon" }] }, align 8
@102 = private unnamed_addr constant [14 x i8] c"abi.StructType", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.StructType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 112, i64 96, i32 -26741086, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @102, i64 14 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0$fields", i64 3, i64 3 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@103 = private unnamed_addr constant [6 x i8] c"Fields", align 1
@"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1426441800, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 17 }, ptr @"*[]_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, align 8
@104 = private unnamed_addr constant [17 x i8] c"[]abi.StructField", align 1
@"*[]_llgo_github.com/goplus/llgo/runtime/abi.StructField" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 104736662, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @104, i64 17 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, align 8
@"_llgo_github.com/goplus/llgo/runtime/abi.StructField" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 56, i64 32, i32 -725357339, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 15 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU$fields", i64 5, i64 5 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@105 = private unnamed_addr constant [15 x i8] c"abi.StructField", align 1
@"*_llgo_github.com/goplus/llgo/runtime/abi.StructField" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -698174886, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @105, i64 15 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.StructField" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @106, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded", ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @46, i64 8 }, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported", ptr @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported" }] }, align 8
@106 = private unnamed_addr constant [8 x i8] c"Embedded", align 1
@107 = private unnamed_addr constant [3 x i8] c"Typ", align 1
@108 = private unnamed_addr constant [6 x i8] c"Offset", align 1
@109 = private unnamed_addr constant [4 x i8] c"Tag_", align 1
@110 = private unnamed_addr constant [9 x i8] c"Embedded_", align 1
@"_llgo_struct$kJjSbRGD6vW5GBpnW3h2bqoH3rm-w30ibwmCd552LPU$fields" = weak_odr constant [5 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @107, i64 3 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @108, i64 6 }, ptr @_llgo_uintptr, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @109, i64 4 }, ptr @_llgo_string, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @110, i64 9 }, ptr @_llgo_bool, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_struct$a40Ph0zKu8cPeYh4GJjFLIY8XDqrC7uc-XzprrJaUh0$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @33, i64 4 }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 8 }, ptr @_llgo_string, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @103, i64 6 }, ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.StructField", i64 88, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@111 = private unnamed_addr constant [8 x i8] c"Uncommon", align 1
@"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 332297899, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 24 }, ptr @"*_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio$out", i64 1, i64 1 } }, align 8
@112 = private unnamed_addr constant [24 x i8] c"func() *abi.UncommonType", align 1
@"*_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1064629314, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @112, i64 24 }, ptr null }, ptr @"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio" }, align 8
@"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 31999548, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 16 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @42, i64 15 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods", ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @69, i64 7 }, ptr @"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM", ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods", ptr @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods" }] }, align 8
@113 = private unnamed_addr constant [16 x i8] c"abi.UncommonType", align 1
@"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 0, i32 191659378, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @113, i64 16 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI$fields", i64 4, i64 4 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 34 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@114 = private unnamed_addr constant [6 x i8] c"Mcount", align 1
@115 = private unnamed_addr constant [6 x i8] c"Xcount", align 1
@116 = private unnamed_addr constant [4 x i8] c"Moff", align 1
@"_llgo_struct$OKIlItfBJsawrEMnVSc2VQ7pxNxCHIgSoitcM9n4FVI$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @68, i64 8 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @114, i64 6 }, ptr @_llgo_uint16, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @115, i64 6 }, ptr @_llgo_uint16, i64 18, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @116, i64 4 }, ptr @_llgo_uint32, i64 20, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.UncommonType"], align 8
@"_llgo_func$JNZyRh9Ldf2v-LKH-spUrxoORHTTH5NO358kWdhabp0$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.StructType"], align 8
@"_llgo_func$v23QoXYwI62Le4EtGc42fZr4iF7nBhA8A8t9lvpy0QY$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.MapType"], align 8
@"_llgo_func$gPJieW0gawapuP7u0nJWjqAizA6ianfpIMmF5SojVDM$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.InterfaceType"], align 8
@117 = private unnamed_addr constant [8 x i8] c"Variadic", align 1
@118 = private unnamed_addr constant [4 x i8] c"Ifn_", align 1
@119 = private unnamed_addr constant [4 x i8] c"Tfn_", align 1
@"_llgo_struct$jXUHcnL1PMmNRB-pn2cBRAQ7OYcwCM_YkvLqlL0ZYaE$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @51, i64 5 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @52, i64 5 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.FuncType", i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @118, i64 4 }, ptr @_llgo_Pointer, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @119, i64 4 }, ptr @_llgo_Pointer, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_func$fPOUeAcTITSSbJEvFFjAWZP6Eli7dk4j7E9mFFHRoNM$out" = weak_odr constant [1 x ptr] [ptr @"[]_llgo_github.com/goplus/llgo/runtime/abi.Method"], align 8
@"_llgo_func$E73lcQT8QN1_ra27XNBjrI9wUEDUjSPMu2bmnQKIbfk$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.ArrayType"], align 8
@120 = private unnamed_addr constant [1 x i8] c"n", align 1
@121 = private unnamed_addr constant [1 x i8] c"a", align 1
@"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.SliceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 1063250446, i8 0, i8 8, i8 8, i8 23, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @122, i64 8 }, ptr @"*[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" }, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" }, align 8
@122 = private unnamed_addr constant [8 x i8] c"[]main.T", align 1
@"*[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1451366068, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @122, i64 8 }, ptr null }, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T" }, align 8
@"github.com/goplus/llgo/cl/_testrt/abinamed.struct$EvjTmKky0pIMIGP-Uwj_AJEuFg2LHJG7T5nEc5t6SpE$fields" = weak_odr constant [4 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr @"*_llgo_github.com/goplus/llgo/runtime/abi.Type", i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @120, i64 1 }, ptr @_llgo_uintptr, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @121, i64 1 }, ptr @"[]_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@123 = private unnamed_addr constant [13 x i8] c"error field 0", align 1
@124 = private unnamed_addr constant [18 x i8] c"error field 0 elem", align 1
@125 = private unnamed_addr constant [13 x i8] c"error field 1", align 1
@126 = private unnamed_addr constant [18 x i8] c"error field 1 elem", align 1
@127 = private unnamed_addr constant [13 x i8] c"error field 2", align 1
@128 = private unnamed_addr constant [13 x i8] c"error field 3", align 1

define void @"github.com/goplus/llgo/cl/_testrt/abinamed.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/abinamed.main"() {
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
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr null, ptr %11, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store ptr null, ptr %13, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  store ptr null, ptr %17, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  store ptr null, ptr %19, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  store ptr null, ptr %21, align 8
  %22 = alloca i64, align 8
  %23 = alloca ptr, align 8
  store ptr null, ptr %23, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  store ptr null, ptr %25, align 8
  %26 = alloca i64, align 8
  %27 = alloca ptr, align 8
  store ptr null, ptr %27, align 8
  %28 = alloca i64, align 8
  %29 = alloca ptr, align 8
  store ptr null, ptr %29, align 8
  %30 = alloca i64, align 8
  %31 = alloca ptr, align 8
  store ptr null, ptr %31, align 8
  %32 = alloca i64, align 8
  %33 = alloca ptr, align 8
  store ptr null, ptr %33, align 8
  %34 = alloca i64, align 8
  %35 = alloca ptr, align 8
  store ptr null, ptr %35, align 8
  %36 = alloca { i64, i64, i64 }, align 8
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %37, align 8
  %38 = alloca i64, align 8
  %39 = alloca ptr, align 8
  store ptr null, ptr %39, align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %41 = alloca i64, align 8
  %42 = alloca ptr, align 8
  store ptr null, ptr %42, align 8
  %43 = alloca i64, align 8
  %44 = alloca ptr, align 8
  store ptr null, ptr %44, align 8
  %45 = alloca i64, align 8
  %46 = alloca ptr, align 8
  store ptr null, ptr %46, align 8
  %47 = alloca i64, align 8
  %48 = alloca ptr, align 8
  store ptr null, ptr %48, align 8
  %49 = alloca i64, align 8
  %50 = alloca ptr, align 8
  store ptr null, ptr %50, align 8
  %51 = alloca i64, align 8
  %52 = alloca ptr, align 8
  store ptr null, ptr %52, align 8
  %53 = alloca i64, align 8
  %54 = alloca ptr, align 8
  store ptr null, ptr %54, align 8
  %55 = alloca i64, align 8
  %56 = alloca ptr, align 8
  store ptr null, ptr %56, align 8
  %57 = alloca i64, align 8
  %58 = alloca ptr, align 8
  store ptr null, ptr %58, align 8
  %59 = alloca i64, align 8
  %60 = alloca ptr, align 8
  store ptr null, ptr %60, align 8
  %61 = alloca i64, align 8
  %62 = alloca ptr, align 8
  store ptr null, ptr %62, align 8
  %63 = alloca i64, align 8
  %64 = alloca ptr, align 8
  store ptr null, ptr %64, align 8
  %65 = alloca i64, align 8
  %66 = alloca ptr, align 8
  store ptr null, ptr %66, align 8
  %67 = alloca i64, align 8
  %68 = alloca ptr, align 8
  store ptr null, ptr %68, align 8
  %69 = alloca i64, align 8
  %70 = alloca ptr, align 8
  store ptr null, ptr %70, align 8
  %71 = alloca { i64, i64, i64 }, align 8
  %72 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %72, align 8
  %73 = alloca i64, align 8
  %74 = alloca ptr, align 8
  store ptr null, ptr %74, align 8
  %75 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %76 = alloca i64, align 8
  %77 = alloca ptr, align 8
  store ptr null, ptr %77, align 8
  %78 = alloca i64, align 8
  %79 = alloca ptr, align 8
  store ptr null, ptr %79, align 8
  %80 = alloca i64, align 8
  %81 = alloca ptr, align 8
  store ptr null, ptr %81, align 8
  %82 = alloca i64, align 8
  %83 = alloca ptr, align 8
  store ptr null, ptr %83, align 8
  %84 = alloca i64, align 8
  %85 = alloca ptr, align 8
  store ptr null, ptr %85, align 8
  %86 = alloca i64, align 8
  %87 = alloca ptr, align 8
  store ptr null, ptr %87, align 8
  %88 = alloca i64, align 8
  %89 = alloca ptr, align 8
  store ptr null, ptr %89, align 8
  %90 = alloca i64, align 8
  %91 = alloca ptr, align 8
  store ptr null, ptr %91, align 8
  %92 = alloca i64, align 8
  %93 = alloca ptr, align 8
  store ptr null, ptr %93, align 8
  %94 = alloca i64, align 8
  %95 = alloca ptr, align 8
  store ptr null, ptr %95, align 8
  %96 = alloca i64, align 8
  %97 = alloca ptr, align 8
  store ptr null, ptr %97, align 8
  %98 = alloca i64, align 8
  %99 = alloca ptr, align 8
  store ptr null, ptr %99, align 8
  %100 = alloca i64, align 8
  %101 = alloca ptr, align 8
  store ptr null, ptr %101, align 8
  %102 = alloca i64, align 8
  %103 = alloca ptr, align 8
  store ptr null, ptr %103, align 8
  %104 = alloca i64, align 8
  %105 = alloca ptr, align 8
  store ptr null, ptr %105, align 8
  %106 = alloca { i64, i64, i64 }, align 8
  %107 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %107, align 8
  %108 = alloca i64, align 8
  %109 = alloca ptr, align 8
  store ptr null, ptr %109, align 8
  %110 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %111 = alloca i64, align 8
  %112 = alloca ptr, align 8
  store ptr null, ptr %112, align 8
  %113 = alloca i64, align 8
  %114 = alloca ptr, align 8
  store ptr null, ptr %114, align 8
  %115 = alloca i64, align 8
  %116 = alloca ptr, align 8
  store ptr null, ptr %116, align 8
  %117 = alloca i64, align 8
  %118 = alloca ptr, align 8
  store ptr null, ptr %118, align 8
  %119 = alloca i64, align 8
  %120 = alloca ptr, align 8
  store ptr null, ptr %120, align 8
  %121 = alloca i64, align 8
  %122 = alloca ptr, align 8
  store ptr null, ptr %122, align 8
  %123 = alloca { i64, i64, i64 }, align 8
  %124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %124, align 8
  %125 = alloca i64, align 8
  %126 = alloca ptr, align 8
  store ptr null, ptr %126, align 8
  %127 = alloca i64, align 8
  %128 = alloca ptr, align 8
  store ptr null, ptr %128, align 8
  %129 = alloca i64, align 8
  %130 = alloca ptr, align 8
  store ptr null, ptr %130, align 8
  %131 = alloca i64, align 8
  %132 = alloca ptr, align 8
  store ptr null, ptr %132, align 8
  %133 = alloca i64, align 8
  %134 = alloca ptr, align 8
  store ptr null, ptr %134, align 8
  %135 = alloca i64, align 8
  %136 = alloca ptr, align 8
  store ptr null, ptr %136, align 8
  %137 = alloca i64, align 8
  %138 = alloca ptr, align 8
  store ptr null, ptr %138, align 8
  %139 = alloca { i64, i64, i64 }, align 8
  %140 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %140, align 8
  %141 = alloca i64, align 8
  %142 = alloca ptr, align 8
  store ptr null, ptr %142, align 8
  %143 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %144 = alloca i64, align 8
  %145 = alloca ptr, align 8
  store ptr null, ptr %145, align 8
  %146 = alloca i64, align 8
  %147 = alloca ptr, align 8
  store ptr null, ptr %147, align 8
  %148 = alloca i64, align 8
  %149 = alloca ptr, align 8
  store ptr null, ptr %149, align 8
  %150 = alloca i64, align 8
  %151 = alloca ptr, align 8
  store ptr null, ptr %151, align 8
  %152 = alloca i64, align 8
  %153 = alloca ptr, align 8
  store ptr null, ptr %153, align 8
  %154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testrt/abinamed.T" zeroinitializer, ptr %154, align 8
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/abinamed.T", ptr undef }, ptr %154, 1
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %157 = call ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %156)
  %158 = ptrtoint ptr %157 to i64
  %159 = and i64 %158, 72057594037927935
  %160 = xor i64 %159, 25399393228665167
  %161 = shl i64 %160, 17
  %162 = select i1 false, i64 0, i64 %161
  %163 = lshr i64 %160, 39
  %164 = select i1 false, i64 0, i64 %163
  %165 = or i64 %162, %164
  %166 = and i64 %165, 72057594037927935
  %167 = or i64 %166, -6557241057451442176
  store i64 %167, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %167)
  call void @runtime.ClobberPointerRegs()
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 72)
  store %"github.com/goplus/llgo/runtime/abi.Type" zeroinitializer, ptr %168, align 8
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/runtime/abi.Type", ptr undef }, ptr %168, 1
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %171 = call ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %169)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %170)
  %172 = ptrtoint ptr %171 to i64
  %173 = and i64 %172, 72057594037927935
  %174 = xor i64 %173, 25399393228665167
  %175 = shl i64 %174, 17
  %176 = select i1 false, i64 0, i64 %175
  %177 = lshr i64 %174, 39
  %178 = select i1 false, i64 0, i64 %177
  %179 = or i64 %176, %178
  %180 = and i64 %179, 72057594037927935
  %181 = or i64 %180, -6557241057451442176
  store i64 %181, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %181)
  call void @runtime.ClobberPointerRegs()
  %182 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %182)
  %183 = load i64, ptr %0, align 4
  %184 = and i64 %183, 72057594037927935
  %185 = lshr i64 %184, 17
  %186 = select i1 false, i64 0, i64 %185
  %187 = shl i64 %184, 39
  %188 = select i1 false, i64 0, i64 %187
  %189 = or i64 %186, %188
  %190 = and i64 %189, 72057594037927935
  %191 = xor i64 %190, 25399393228665167
  %192 = inttoptr i64 %191 to ptr
  %193 = icmp eq ptr %192, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %193)
  %194 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %192, i32 0, i32 0
  %195 = ptrtoint ptr %194 to i64
  %196 = and i64 %195, 72057594037927935
  %197 = xor i64 %196, 25399393228665167
  %198 = shl i64 %197, 17
  %199 = select i1 false, i64 0, i64 %198
  %200 = lshr i64 %197, 39
  %201 = select i1 false, i64 0, i64 %200
  %202 = or i64 %199, %201
  %203 = and i64 %202, 72057594037927935
  %204 = or i64 %203, -6557241057451442176
  store i64 %204, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %204)
  call void @runtime.ClobberPointerRegs()
  %205 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %205)
  %206 = load i64, ptr %4, align 4
  %207 = call i64 @runtime.LoadHiddenPointerKey(i64 %206)
  store i64 %207, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %207)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %208 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %209 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %209)
  %210 = load i64, ptr %6, align 4
  %211 = and i64 %210, 72057594037927935
  %212 = lshr i64 %211, 17
  %213 = select i1 false, i64 0, i64 %212
  %214 = shl i64 %211, 39
  %215 = select i1 false, i64 0, i64 %214
  %216 = or i64 %213, %215
  %217 = and i64 %216, 72057594037927935
  %218 = xor i64 %217, 25399393228665167
  %219 = inttoptr i64 %218 to ptr
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %219)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %208)
  %220 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %220)
  %221 = load i64, ptr %0, align 4
  %222 = and i64 %221, 72057594037927935
  %223 = lshr i64 %222, 17
  %224 = select i1 false, i64 0, i64 %223
  %225 = shl i64 %222, 39
  %226 = select i1 false, i64 0, i64 %225
  %227 = or i64 %224, %226
  %228 = and i64 %227, 72057594037927935
  %229 = xor i64 %228, 25399393228665167
  %230 = inttoptr i64 %229 to ptr
  %231 = icmp eq ptr %230, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %231)
  %232 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %230, i32 0, i32 0
  %233 = ptrtoint ptr %232 to i64
  %234 = and i64 %233, 72057594037927935
  %235 = xor i64 %234, 25399393228665167
  %236 = shl i64 %235, 17
  %237 = select i1 false, i64 0, i64 %236
  %238 = lshr i64 %235, 39
  %239 = select i1 false, i64 0, i64 %238
  %240 = or i64 %237, %239
  %241 = and i64 %240, 72057594037927935
  %242 = or i64 %241, -6557241057451442176
  store i64 %242, ptr %8, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %9, i64 %242)
  call void @runtime.ClobberPointerRegs()
  %243 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %243)
  %244 = load i64, ptr %8, align 4
  %245 = call i64 @runtime.LoadHiddenPointerKey(i64 %244)
  store i64 %245, ptr %10, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %11, i64 %245)
  store i64 0, ptr %8, align 4
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  store ptr null, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 8)
  call void @runtime.ClobberPointerRegs()
  %246 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %246)
  %247 = load i64, ptr %10, align 4
  %248 = and i64 %247, 72057594037927935
  %249 = lshr i64 %248, 17
  %250 = select i1 false, i64 0, i64 %249
  %251 = shl i64 %248, 39
  %252 = select i1 false, i64 0, i64 %251
  %253 = or i64 %250, %252
  %254 = and i64 %253, 72057594037927935
  %255 = xor i64 %254, 25399393228665167
  %256 = inttoptr i64 %255 to ptr
  %257 = icmp eq ptr %256, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %257)
  %258 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %256, i32 0, i32 10
  %259 = ptrtoint ptr %258 to i64
  %260 = and i64 %259, 72057594037927935
  %261 = xor i64 %260, 25399393228665167
  %262 = shl i64 %261, 17
  %263 = select i1 false, i64 0, i64 %262
  %264 = lshr i64 %261, 39
  %265 = select i1 false, i64 0, i64 %264
  %266 = or i64 %263, %265
  %267 = and i64 %266, 72057594037927935
  %268 = or i64 %267, -6557241057451442176
  store i64 %268, ptr %12, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %13, i64 %268)
  call void @runtime.ClobberPointerRegs()
  %269 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %269)
  %270 = load i64, ptr %12, align 4
  %271 = call i64 @runtime.LoadHiddenPointerKey(i64 %270)
  store i64 %271, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %271)
  store i64 0, ptr %10, align 4
  call void @runtime.TouchConservativeSlot(ptr %10, i64 8)
  store ptr null, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store i64 0, ptr %12, align 4
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  store ptr null, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  call void @runtime.ClobberPointerRegs()
  %272 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %273 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %273)
  %274 = load i64, ptr %14, align 4
  %275 = and i64 %274, 72057594037927935
  %276 = lshr i64 %275, 17
  %277 = select i1 false, i64 0, i64 %276
  %278 = shl i64 %275, 39
  %279 = select i1 false, i64 0, i64 %278
  %280 = or i64 %277, %279
  %281 = and i64 %280, 72057594037927935
  %282 = xor i64 %281, 25399393228665167
  %283 = inttoptr i64 %282 to ptr
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %283)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %272)
  %284 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %284)
  %285 = load i64, ptr %2, align 4
  %286 = and i64 %285, 72057594037927935
  %287 = lshr i64 %286, 17
  %288 = select i1 false, i64 0, i64 %287
  %289 = shl i64 %286, 39
  %290 = select i1 false, i64 0, i64 %289
  %291 = or i64 %288, %290
  %292 = and i64 %291, 72057594037927935
  %293 = xor i64 %292, 25399393228665167
  %294 = inttoptr i64 %293 to ptr
  %295 = icmp eq ptr %294, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %295)
  %296 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %294, i32 0, i32 0
  %297 = ptrtoint ptr %296 to i64
  %298 = and i64 %297, 72057594037927935
  %299 = xor i64 %298, 25399393228665167
  %300 = shl i64 %299, 17
  %301 = select i1 false, i64 0, i64 %300
  %302 = lshr i64 %299, 39
  %303 = select i1 false, i64 0, i64 %302
  %304 = or i64 %301, %303
  %305 = and i64 %304, 72057594037927935
  %306 = or i64 %305, -6557241057451442176
  store i64 %306, ptr %16, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %17, i64 %306)
  call void @runtime.ClobberPointerRegs()
  %307 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %307)
  %308 = load i64, ptr %16, align 4
  %309 = call i64 @runtime.LoadHiddenPointerKey(i64 %308)
  store i64 %309, ptr %18, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %19, i64 %309)
  store i64 0, ptr %16, align 4
  call void @runtime.TouchConservativeSlot(ptr %16, i64 8)
  store ptr null, ptr %17, align 8
  call void @runtime.TouchConservativeSlot(ptr %17, i64 8)
  call void @runtime.ClobberPointerRegs()
  %310 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %311 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %311)
  %312 = load i64, ptr %18, align 4
  %313 = and i64 %312, 72057594037927935
  %314 = lshr i64 %313, 17
  %315 = select i1 false, i64 0, i64 %314
  %316 = shl i64 %313, 39
  %317 = select i1 false, i64 0, i64 %316
  %318 = or i64 %315, %317
  %319 = and i64 %318, 72057594037927935
  %320 = xor i64 %319, 25399393228665167
  %321 = inttoptr i64 %320 to ptr
  store i64 0, ptr %18, align 4
  call void @runtime.TouchConservativeSlot(ptr %18, i64 8)
  store ptr null, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %321)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %310)
  %322 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %322)
  %323 = load i64, ptr %2, align 4
  %324 = and i64 %323, 72057594037927935
  %325 = lshr i64 %324, 17
  %326 = select i1 false, i64 0, i64 %325
  %327 = shl i64 %324, 39
  %328 = select i1 false, i64 0, i64 %327
  %329 = or i64 %326, %328
  %330 = and i64 %329, 72057594037927935
  %331 = xor i64 %330, 25399393228665167
  %332 = inttoptr i64 %331 to ptr
  %333 = icmp eq ptr %332, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %333)
  %334 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %332, i32 0, i32 0
  %335 = ptrtoint ptr %334 to i64
  %336 = and i64 %335, 72057594037927935
  %337 = xor i64 %336, 25399393228665167
  %338 = shl i64 %337, 17
  %339 = select i1 false, i64 0, i64 %338
  %340 = lshr i64 %337, 39
  %341 = select i1 false, i64 0, i64 %340
  %342 = or i64 %339, %341
  %343 = and i64 %342, 72057594037927935
  %344 = or i64 %343, -6557241057451442176
  store i64 %344, ptr %20, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %21, i64 %344)
  call void @runtime.ClobberPointerRegs()
  %345 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %345)
  %346 = load i64, ptr %20, align 4
  %347 = call i64 @runtime.LoadHiddenPointerKey(i64 %346)
  store i64 %347, ptr %22, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %23, i64 %347)
  store i64 0, ptr %20, align 4
  call void @runtime.TouchConservativeSlot(ptr %20, i64 8)
  store ptr null, ptr %21, align 8
  call void @runtime.TouchConservativeSlot(ptr %21, i64 8)
  call void @runtime.ClobberPointerRegs()
  %348 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %348)
  %349 = load i64, ptr %22, align 4
  %350 = and i64 %349, 72057594037927935
  %351 = lshr i64 %350, 17
  %352 = select i1 false, i64 0, i64 %351
  %353 = shl i64 %350, 39
  %354 = select i1 false, i64 0, i64 %353
  %355 = or i64 %352, %354
  %356 = and i64 %355, 72057594037927935
  %357 = xor i64 %356, 25399393228665167
  %358 = inttoptr i64 %357 to ptr
  %359 = icmp eq ptr %358, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %359)
  %360 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %358, i32 0, i32 10
  %361 = ptrtoint ptr %360 to i64
  %362 = and i64 %361, 72057594037927935
  %363 = xor i64 %362, 25399393228665167
  %364 = shl i64 %363, 17
  %365 = select i1 false, i64 0, i64 %364
  %366 = lshr i64 %363, 39
  %367 = select i1 false, i64 0, i64 %366
  %368 = or i64 %365, %367
  %369 = and i64 %368, 72057594037927935
  %370 = or i64 %369, -6557241057451442176
  store i64 %370, ptr %24, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %25, i64 %370)
  call void @runtime.ClobberPointerRegs()
  %371 = icmp eq ptr %24, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %371)
  %372 = load i64, ptr %24, align 4
  %373 = call i64 @runtime.LoadHiddenPointerKey(i64 %372)
  store i64 %373, ptr %26, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %27, i64 %373)
  store i64 0, ptr %22, align 4
  call void @runtime.TouchConservativeSlot(ptr %22, i64 8)
  store ptr null, ptr %23, align 8
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store i64 0, ptr %24, align 4
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  store ptr null, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 8)
  call void @runtime.ClobberPointerRegs()
  %374 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %375 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %375)
  %376 = load i64, ptr %26, align 4
  %377 = and i64 %376, 72057594037927935
  %378 = lshr i64 %377, 17
  %379 = select i1 false, i64 0, i64 %378
  %380 = shl i64 %377, 39
  %381 = select i1 false, i64 0, i64 %380
  %382 = or i64 %379, %381
  %383 = and i64 %382, 72057594037927935
  %384 = xor i64 %383, 25399393228665167
  %385 = inttoptr i64 %384 to ptr
  store i64 0, ptr %26, align 4
  call void @runtime.TouchConservativeSlot(ptr %26, i64 8)
  store ptr null, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %385)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %374)
  %386 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %386, i8 0, i64 56, i1 false)
  %387 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %387)
  %388 = load i64, ptr %0, align 4
  %389 = and i64 %388, 72057594037927935
  %390 = lshr i64 %389, 17
  %391 = select i1 false, i64 0, i64 %390
  %392 = shl i64 %389, 39
  %393 = select i1 false, i64 0, i64 %392
  %394 = or i64 %391, %393
  %395 = and i64 %394, 72057594037927935
  %396 = xor i64 %395, 25399393228665167
  %397 = inttoptr i64 %396 to ptr
  %398 = icmp eq ptr %397, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %398)
  %399 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %397, i32 0, i32 0
  %400 = ptrtoint ptr %399 to i64
  %401 = and i64 %400, 72057594037927935
  %402 = xor i64 %401, 25399393228665167
  %403 = shl i64 %402, 17
  %404 = select i1 false, i64 0, i64 %403
  %405 = lshr i64 %402, 39
  %406 = select i1 false, i64 0, i64 %405
  %407 = or i64 %404, %406
  %408 = and i64 %407, 72057594037927935
  %409 = or i64 %408, -6557241057451442176
  store i64 %409, ptr %28, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %29, i64 %409)
  call void @runtime.ClobberPointerRegs()
  %410 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %410)
  %411 = load i64, ptr %28, align 4
  %412 = call i64 @runtime.LoadHiddenPointerKey(i64 %411)
  store i64 %412, ptr %30, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %31, i64 %412)
  store i64 0, ptr %28, align 4
  call void @runtime.TouchConservativeSlot(ptr %28, i64 8)
  store ptr null, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 8)
  call void @runtime.ClobberPointerRegs()
  %413 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %414 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %414)
  %415 = load i64, ptr %30, align 4
  %416 = and i64 %415, 72057594037927935
  %417 = lshr i64 %416, 17
  %418 = select i1 false, i64 0, i64 %417
  %419 = shl i64 %416, 39
  %420 = select i1 false, i64 0, i64 %419
  %421 = or i64 %418, %420
  %422 = and i64 %421, 72057594037927935
  %423 = xor i64 %422, 25399393228665167
  %424 = inttoptr i64 %423 to ptr
  store i64 0, ptr %30, align 4
  call void @runtime.TouchConservativeSlot(ptr %30, i64 8)
  store ptr null, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 8)
  call void @runtime.ClobberPointerRegs()
  %425 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %424)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %413)
  %426 = ptrtoint ptr %425 to i64
  %427 = and i64 %426, 72057594037927935
  %428 = xor i64 %427, 25399393228665167
  %429 = shl i64 %428, 17
  %430 = select i1 false, i64 0, i64 %429
  %431 = lshr i64 %428, 39
  %432 = select i1 false, i64 0, i64 %431
  %433 = or i64 %430, %432
  %434 = and i64 %433, 72057594037927935
  %435 = or i64 %434, -6557241057451442176
  store i64 %435, ptr %32, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %33, i64 %435)
  call void @runtime.ClobberPointerRegs()
  %436 = icmp eq ptr %32, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %436)
  %437 = load i64, ptr %32, align 4
  %438 = and i64 %437, 72057594037927935
  %439 = lshr i64 %438, 17
  %440 = select i1 false, i64 0, i64 %439
  %441 = shl i64 %438, 39
  %442 = select i1 false, i64 0, i64 %441
  %443 = or i64 %440, %442
  %444 = and i64 %443, 72057594037927935
  %445 = xor i64 %444, 25399393228665167
  %446 = inttoptr i64 %445 to ptr
  %447 = icmp eq ptr %446, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %447)
  %448 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %446, i32 0, i32 2
  %449 = ptrtoint ptr %448 to i64
  %450 = and i64 %449, 72057594037927935
  %451 = xor i64 %450, 25399393228665167
  %452 = shl i64 %451, 17
  %453 = select i1 false, i64 0, i64 %452
  %454 = lshr i64 %451, 39
  %455 = select i1 false, i64 0, i64 %454
  %456 = or i64 %453, %455
  %457 = and i64 %456, 72057594037927935
  %458 = or i64 %457, -6557241057451442176
  store i64 %458, ptr %34, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %35, i64 %458)
  call void @runtime.ClobberPointerRegs()
  %459 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %459)
  %460 = load i64, ptr %34, align 4
  %461 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %461, i64 %460, i64 24)
  %462 = icmp eq ptr %461, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %462)
  %463 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %461, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %461, align 8
  %464 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %463, ptr %464, align 8
  %465 = icmp eq ptr %464, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %465)
  %466 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %464, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %466, ptr %37, align 8
  %467 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %466, 0
  %468 = ptrtoint ptr %467 to i64
  %469 = and i64 %468, 72057594037927935
  %470 = xor i64 %469, 25399393228665167
  %471 = shl i64 %470, 17
  %472 = select i1 false, i64 0, i64 %471
  %473 = lshr i64 %470, 39
  %474 = select i1 false, i64 0, i64 %473
  %475 = or i64 %472, %474
  %476 = and i64 %475, 72057594037927935
  %477 = or i64 %476, -6557241057451442176
  %478 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %466, 1
  %479 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %466, 2
  %480 = insertvalue { i64, i64, i64 } undef, i64 %477, 0
  %481 = insertvalue { i64, i64, i64 } %480, i64 %478, 1
  %482 = insertvalue { i64, i64, i64 } %481, i64 %479, 2
  store { i64, i64, i64 } %482, ptr %36, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %464, align 8
  call void @runtime.TouchConservativeSlot(ptr %464, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 8)
  store ptr null, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 8)
  store i64 0, ptr %34, align 4
  call void @runtime.TouchConservativeSlot(ptr %34, i64 8)
  store ptr null, ptr %35, align 8
  call void @runtime.TouchConservativeSlot(ptr %35, i64 8)
  call void @runtime.ClobberPointerRegs()
  %483 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %483)
  %484 = load { i64, i64, i64 }, ptr %36, align 4
  %485 = extractvalue { i64, i64, i64 } %484, 0
  %486 = extractvalue { i64, i64, i64 } %484, 1
  %487 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %486)
  %488 = mul i64 %487, 56
  %489 = call i64 @runtime.AdvanceHiddenPointer(i64 %485, i64 %488)
  store i64 %489, ptr %38, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %39, i64 %489)
  %490 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %490)
  %491 = load i64, ptr %38, align 4
  %492 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @runtime.LoadHiddenPointee(ptr %492, i64 %491, i64 56)
  %493 = icmp eq ptr %492, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %493)
  %494 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %492, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %492, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %494, ptr %40, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %36, align 4
  call void @runtime.TouchConservativeSlot(ptr %36, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 24)
  store i64 0, ptr %38, align 4
  call void @runtime.TouchConservativeSlot(ptr %38, i64 8)
  store ptr null, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 8)
  call void @runtime.ClobberPointerRegs()
  %495 = icmp eq ptr %40, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %495)
  %496 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %40, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %496, ptr %386, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %40, align 8
  call void @runtime.TouchConservativeSlot(ptr %40, i64 56)
  call void @runtime.ClobberPointerRegs()
  %497 = icmp eq ptr %386, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %497)
  %498 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %386, i32 0, i32 1
  %499 = ptrtoint ptr %498 to i64
  %500 = and i64 %499, 72057594037927935
  %501 = xor i64 %500, 25399393228665167
  %502 = shl i64 %501, 17
  %503 = select i1 false, i64 0, i64 %502
  %504 = lshr i64 %501, 39
  %505 = select i1 false, i64 0, i64 %504
  %506 = or i64 %503, %505
  %507 = and i64 %506, 72057594037927935
  %508 = or i64 %507, -6557241057451442176
  store i64 %508, ptr %41, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %42, i64 %508)
  call void @runtime.ClobberPointerRegs()
  %509 = icmp eq ptr %41, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %509)
  %510 = load i64, ptr %41, align 4
  %511 = call i64 @runtime.LoadHiddenPointerKey(i64 %510)
  store i64 %511, ptr %43, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %44, i64 %511)
  store i64 0, ptr %41, align 4
  call void @runtime.TouchConservativeSlot(ptr %41, i64 8)
  store ptr null, ptr %42, align 8
  call void @runtime.TouchConservativeSlot(ptr %42, i64 8)
  call void @runtime.ClobberPointerRegs()
  %512 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %512)
  %513 = load i64, ptr %0, align 4
  %514 = and i64 %513, 72057594037927935
  %515 = lshr i64 %514, 17
  %516 = select i1 false, i64 0, i64 %515
  %517 = shl i64 %514, 39
  %518 = select i1 false, i64 0, i64 %517
  %519 = or i64 %516, %518
  %520 = and i64 %519, 72057594037927935
  %521 = xor i64 %520, 25399393228665167
  %522 = inttoptr i64 %521 to ptr
  %523 = icmp eq ptr %522, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %523)
  %524 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %522, i32 0, i32 0
  %525 = ptrtoint ptr %524 to i64
  %526 = and i64 %525, 72057594037927935
  %527 = xor i64 %526, 25399393228665167
  %528 = shl i64 %527, 17
  %529 = select i1 false, i64 0, i64 %528
  %530 = lshr i64 %527, 39
  %531 = select i1 false, i64 0, i64 %530
  %532 = or i64 %529, %531
  %533 = and i64 %532, 72057594037927935
  %534 = or i64 %533, -6557241057451442176
  store i64 %534, ptr %45, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %46, i64 %534)
  call void @runtime.ClobberPointerRegs()
  %535 = icmp eq ptr %45, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %535)
  %536 = load i64, ptr %45, align 4
  %537 = call i64 @runtime.LoadHiddenPointerKey(i64 %536)
  store i64 %537, ptr %47, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %48, i64 %537)
  store i64 0, ptr %45, align 4
  call void @runtime.TouchConservativeSlot(ptr %45, i64 8)
  store ptr null, ptr %46, align 8
  call void @runtime.TouchConservativeSlot(ptr %46, i64 8)
  call void @runtime.ClobberPointerRegs()
  %538 = icmp eq ptr %47, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %538)
  %539 = load i64, ptr %47, align 4
  %540 = and i64 %539, 72057594037927935
  %541 = lshr i64 %540, 17
  %542 = select i1 false, i64 0, i64 %541
  %543 = shl i64 %540, 39
  %544 = select i1 false, i64 0, i64 %543
  %545 = or i64 %542, %544
  %546 = and i64 %545, 72057594037927935
  %547 = xor i64 %546, 25399393228665167
  %548 = inttoptr i64 %547 to ptr
  %549 = icmp eq ptr %548, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %549)
  %550 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %548, i32 0, i32 10
  %551 = ptrtoint ptr %550 to i64
  %552 = and i64 %551, 72057594037927935
  %553 = xor i64 %552, 25399393228665167
  %554 = shl i64 %553, 17
  %555 = select i1 false, i64 0, i64 %554
  %556 = lshr i64 %553, 39
  %557 = select i1 false, i64 0, i64 %556
  %558 = or i64 %555, %557
  %559 = and i64 %558, 72057594037927935
  %560 = or i64 %559, -6557241057451442176
  store i64 %560, ptr %49, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %50, i64 %560)
  call void @runtime.ClobberPointerRegs()
  %561 = icmp eq ptr %49, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %561)
  %562 = load i64, ptr %49, align 4
  %563 = call i64 @runtime.LoadHiddenPointerKey(i64 %562)
  store i64 %563, ptr %51, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %52, i64 %563)
  store i64 0, ptr %47, align 4
  call void @runtime.TouchConservativeSlot(ptr %47, i64 8)
  store ptr null, ptr %48, align 8
  call void @runtime.TouchConservativeSlot(ptr %48, i64 8)
  store i64 0, ptr %49, align 4
  call void @runtime.TouchConservativeSlot(ptr %49, i64 8)
  store ptr null, ptr %50, align 8
  call void @runtime.TouchConservativeSlot(ptr %50, i64 8)
  call void @runtime.ClobberPointerRegs()
  %564 = icmp eq ptr %43, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %564)
  %565 = load i64, ptr %43, align 4
  %566 = and i64 %565, 72057594037927935
  %567 = lshr i64 %566, 17
  %568 = select i1 false, i64 0, i64 %567
  %569 = shl i64 %566, 39
  %570 = select i1 false, i64 0, i64 %569
  %571 = or i64 %568, %570
  %572 = and i64 %571, 72057594037927935
  %573 = xor i64 %572, 25399393228665167
  %574 = inttoptr i64 %573 to ptr
  %575 = icmp eq ptr %51, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %575)
  %576 = load i64, ptr %51, align 4
  %577 = and i64 %576, 72057594037927935
  %578 = lshr i64 %577, 17
  %579 = select i1 false, i64 0, i64 %578
  %580 = shl i64 %577, 39
  %581 = select i1 false, i64 0, i64 %580
  %582 = or i64 %579, %581
  %583 = and i64 %582, 72057594037927935
  %584 = xor i64 %583, 25399393228665167
  %585 = inttoptr i64 %584 to ptr
  %586 = icmp ne ptr %574, %585
  store i64 0, ptr %43, align 4
  call void @runtime.TouchConservativeSlot(ptr %43, i64 8)
  store ptr null, ptr %44, align 8
  call void @runtime.TouchConservativeSlot(ptr %44, i64 8)
  store i64 0, ptr %51, align 4
  call void @runtime.TouchConservativeSlot(ptr %51, i64 8)
  store ptr null, ptr %52, align 8
  call void @runtime.TouchConservativeSlot(ptr %52, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %586, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %386, align 8
  call void @runtime.TouchConservativeSlot(ptr %386, i64 56)
  call void @runtime.ClobberPointerRegs()
  %587 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @123, i64 13 }, ptr %587, align 8
  %588 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %587, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %588)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %589 = icmp eq ptr %386, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %589)
  %590 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %386, i32 0, i32 1
  %591 = ptrtoint ptr %590 to i64
  %592 = and i64 %591, 72057594037927935
  %593 = xor i64 %592, 25399393228665167
  %594 = shl i64 %593, 17
  %595 = select i1 false, i64 0, i64 %594
  %596 = lshr i64 %593, 39
  %597 = select i1 false, i64 0, i64 %596
  %598 = or i64 %595, %597
  %599 = and i64 %598, 72057594037927935
  %600 = or i64 %599, -6557241057451442176
  store i64 %600, ptr %53, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %54, i64 %600)
  call void @runtime.ClobberPointerRegs()
  %601 = icmp eq ptr %53, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %601)
  %602 = load i64, ptr %53, align 4
  %603 = call i64 @runtime.LoadHiddenPointerKey(i64 %602)
  store i64 %603, ptr %55, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %56, i64 %603)
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %386, align 8
  call void @runtime.TouchConservativeSlot(ptr %386, i64 56)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %53, align 4
  call void @runtime.TouchConservativeSlot(ptr %53, i64 8)
  store ptr null, ptr %54, align 8
  call void @runtime.TouchConservativeSlot(ptr %54, i64 8)
  call void @runtime.ClobberPointerRegs()
  %604 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %605 = icmp eq ptr %55, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %605)
  %606 = load i64, ptr %55, align 4
  %607 = and i64 %606, 72057594037927935
  %608 = lshr i64 %607, 17
  %609 = select i1 false, i64 0, i64 %608
  %610 = shl i64 %607, 39
  %611 = select i1 false, i64 0, i64 %610
  %612 = or i64 %609, %611
  %613 = and i64 %612, 72057594037927935
  %614 = xor i64 %613, 25399393228665167
  %615 = inttoptr i64 %614 to ptr
  store i64 0, ptr %55, align 4
  call void @runtime.TouchConservativeSlot(ptr %55, i64 8)
  store ptr null, ptr %56, align 8
  call void @runtime.TouchConservativeSlot(ptr %56, i64 8)
  call void @runtime.ClobberPointerRegs()
  %616 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %615)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %604)
  %617 = ptrtoint ptr %616 to i64
  %618 = and i64 %617, 72057594037927935
  %619 = xor i64 %618, 25399393228665167
  %620 = shl i64 %619, 17
  %621 = select i1 false, i64 0, i64 %620
  %622 = lshr i64 %619, 39
  %623 = select i1 false, i64 0, i64 %622
  %624 = or i64 %621, %623
  %625 = and i64 %624, 72057594037927935
  %626 = or i64 %625, -6557241057451442176
  store i64 %626, ptr %57, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %58, i64 %626)
  call void @runtime.ClobberPointerRegs()
  %627 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %627)
  %628 = load i64, ptr %0, align 4
  %629 = and i64 %628, 72057594037927935
  %630 = lshr i64 %629, 17
  %631 = select i1 false, i64 0, i64 %630
  %632 = shl i64 %629, 39
  %633 = select i1 false, i64 0, i64 %632
  %634 = or i64 %631, %633
  %635 = and i64 %634, 72057594037927935
  %636 = xor i64 %635, 25399393228665167
  %637 = inttoptr i64 %636 to ptr
  %638 = icmp eq ptr %637, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %638)
  %639 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %637, i32 0, i32 0
  %640 = ptrtoint ptr %639 to i64
  %641 = and i64 %640, 72057594037927935
  %642 = xor i64 %641, 25399393228665167
  %643 = shl i64 %642, 17
  %644 = select i1 false, i64 0, i64 %643
  %645 = lshr i64 %642, 39
  %646 = select i1 false, i64 0, i64 %645
  %647 = or i64 %644, %646
  %648 = and i64 %647, 72057594037927935
  %649 = or i64 %648, -6557241057451442176
  store i64 %649, ptr %59, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %60, i64 %649)
  call void @runtime.ClobberPointerRegs()
  %650 = icmp eq ptr %59, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %650)
  %651 = load i64, ptr %59, align 4
  %652 = call i64 @runtime.LoadHiddenPointerKey(i64 %651)
  store i64 %652, ptr %61, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %62, i64 %652)
  store i64 0, ptr %59, align 4
  call void @runtime.TouchConservativeSlot(ptr %59, i64 8)
  store ptr null, ptr %60, align 8
  call void @runtime.TouchConservativeSlot(ptr %60, i64 8)
  call void @runtime.ClobberPointerRegs()
  %653 = icmp eq ptr %57, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %653)
  %654 = load i64, ptr %57, align 4
  %655 = and i64 %654, 72057594037927935
  %656 = lshr i64 %655, 17
  %657 = select i1 false, i64 0, i64 %656
  %658 = shl i64 %655, 39
  %659 = select i1 false, i64 0, i64 %658
  %660 = or i64 %657, %659
  %661 = and i64 %660, 72057594037927935
  %662 = xor i64 %661, 25399393228665167
  %663 = inttoptr i64 %662 to ptr
  %664 = icmp eq ptr %61, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %664)
  %665 = load i64, ptr %61, align 4
  %666 = and i64 %665, 72057594037927935
  %667 = lshr i64 %666, 17
  %668 = select i1 false, i64 0, i64 %667
  %669 = shl i64 %666, 39
  %670 = select i1 false, i64 0, i64 %669
  %671 = or i64 %668, %670
  %672 = and i64 %671, 72057594037927935
  %673 = xor i64 %672, 25399393228665167
  %674 = inttoptr i64 %673 to ptr
  %675 = icmp ne ptr %663, %674
  store i64 0, ptr %57, align 4
  call void @runtime.TouchConservativeSlot(ptr %57, i64 8)
  store ptr null, ptr %58, align 8
  call void @runtime.TouchConservativeSlot(ptr %58, i64 8)
  store i64 0, ptr %61, align 4
  call void @runtime.TouchConservativeSlot(ptr %61, i64 8)
  store ptr null, ptr %62, align 8
  call void @runtime.TouchConservativeSlot(ptr %62, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %675, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %676 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @124, i64 18 }, ptr %676, align 8
  %677 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %676, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %677)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %678 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %678, i8 0, i64 56, i1 false)
  %679 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %679)
  %680 = load i64, ptr %0, align 4
  %681 = and i64 %680, 72057594037927935
  %682 = lshr i64 %681, 17
  %683 = select i1 false, i64 0, i64 %682
  %684 = shl i64 %681, 39
  %685 = select i1 false, i64 0, i64 %684
  %686 = or i64 %683, %685
  %687 = and i64 %686, 72057594037927935
  %688 = xor i64 %687, 25399393228665167
  %689 = inttoptr i64 %688 to ptr
  %690 = icmp eq ptr %689, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %690)
  %691 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %689, i32 0, i32 0
  %692 = ptrtoint ptr %691 to i64
  %693 = and i64 %692, 72057594037927935
  %694 = xor i64 %693, 25399393228665167
  %695 = shl i64 %694, 17
  %696 = select i1 false, i64 0, i64 %695
  %697 = lshr i64 %694, 39
  %698 = select i1 false, i64 0, i64 %697
  %699 = or i64 %696, %698
  %700 = and i64 %699, 72057594037927935
  %701 = or i64 %700, -6557241057451442176
  store i64 %701, ptr %63, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %64, i64 %701)
  call void @runtime.ClobberPointerRegs()
  %702 = icmp eq ptr %63, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %702)
  %703 = load i64, ptr %63, align 4
  %704 = call i64 @runtime.LoadHiddenPointerKey(i64 %703)
  store i64 %704, ptr %65, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %66, i64 %704)
  store i64 0, ptr %63, align 4
  call void @runtime.TouchConservativeSlot(ptr %63, i64 8)
  store ptr null, ptr %64, align 8
  call void @runtime.TouchConservativeSlot(ptr %64, i64 8)
  call void @runtime.ClobberPointerRegs()
  %705 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %706 = icmp eq ptr %65, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %706)
  %707 = load i64, ptr %65, align 4
  %708 = and i64 %707, 72057594037927935
  %709 = lshr i64 %708, 17
  %710 = select i1 false, i64 0, i64 %709
  %711 = shl i64 %708, 39
  %712 = select i1 false, i64 0, i64 %711
  %713 = or i64 %710, %712
  %714 = and i64 %713, 72057594037927935
  %715 = xor i64 %714, 25399393228665167
  %716 = inttoptr i64 %715 to ptr
  store i64 0, ptr %65, align 4
  call void @runtime.TouchConservativeSlot(ptr %65, i64 8)
  store ptr null, ptr %66, align 8
  call void @runtime.TouchConservativeSlot(ptr %66, i64 8)
  call void @runtime.ClobberPointerRegs()
  %717 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %716)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %705)
  %718 = ptrtoint ptr %717 to i64
  %719 = and i64 %718, 72057594037927935
  %720 = xor i64 %719, 25399393228665167
  %721 = shl i64 %720, 17
  %722 = select i1 false, i64 0, i64 %721
  %723 = lshr i64 %720, 39
  %724 = select i1 false, i64 0, i64 %723
  %725 = or i64 %722, %724
  %726 = and i64 %725, 72057594037927935
  %727 = or i64 %726, -6557241057451442176
  store i64 %727, ptr %67, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %68, i64 %727)
  call void @runtime.ClobberPointerRegs()
  %728 = icmp eq ptr %67, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %728)
  %729 = load i64, ptr %67, align 4
  %730 = and i64 %729, 72057594037927935
  %731 = lshr i64 %730, 17
  %732 = select i1 false, i64 0, i64 %731
  %733 = shl i64 %730, 39
  %734 = select i1 false, i64 0, i64 %733
  %735 = or i64 %732, %734
  %736 = and i64 %735, 72057594037927935
  %737 = xor i64 %736, 25399393228665167
  %738 = inttoptr i64 %737 to ptr
  %739 = icmp eq ptr %738, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %739)
  %740 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %738, i32 0, i32 2
  %741 = ptrtoint ptr %740 to i64
  %742 = and i64 %741, 72057594037927935
  %743 = xor i64 %742, 25399393228665167
  %744 = shl i64 %743, 17
  %745 = select i1 false, i64 0, i64 %744
  %746 = lshr i64 %743, 39
  %747 = select i1 false, i64 0, i64 %746
  %748 = or i64 %745, %747
  %749 = and i64 %748, 72057594037927935
  %750 = or i64 %749, -6557241057451442176
  store i64 %750, ptr %69, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %70, i64 %750)
  call void @runtime.ClobberPointerRegs()
  %751 = icmp eq ptr %69, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %751)
  %752 = load i64, ptr %69, align 4
  %753 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %753, i64 %752, i64 24)
  %754 = icmp eq ptr %753, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %754)
  %755 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %753, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %753, align 8
  %756 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %755, ptr %756, align 8
  %757 = icmp eq ptr %756, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %757)
  %758 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %756, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %758, ptr %72, align 8
  %759 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %758, 0
  %760 = ptrtoint ptr %759 to i64
  %761 = and i64 %760, 72057594037927935
  %762 = xor i64 %761, 25399393228665167
  %763 = shl i64 %762, 17
  %764 = select i1 false, i64 0, i64 %763
  %765 = lshr i64 %762, 39
  %766 = select i1 false, i64 0, i64 %765
  %767 = or i64 %764, %766
  %768 = and i64 %767, 72057594037927935
  %769 = or i64 %768, -6557241057451442176
  %770 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %758, 1
  %771 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %758, 2
  %772 = insertvalue { i64, i64, i64 } undef, i64 %769, 0
  %773 = insertvalue { i64, i64, i64 } %772, i64 %770, 1
  %774 = insertvalue { i64, i64, i64 } %773, i64 %771, 2
  store { i64, i64, i64 } %774, ptr %71, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %756, align 8
  call void @runtime.TouchConservativeSlot(ptr %756, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %67, align 4
  call void @runtime.TouchConservativeSlot(ptr %67, i64 8)
  store ptr null, ptr %68, align 8
  call void @runtime.TouchConservativeSlot(ptr %68, i64 8)
  store i64 0, ptr %69, align 4
  call void @runtime.TouchConservativeSlot(ptr %69, i64 8)
  store ptr null, ptr %70, align 8
  call void @runtime.TouchConservativeSlot(ptr %70, i64 8)
  call void @runtime.ClobberPointerRegs()
  %775 = icmp eq ptr %71, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %775)
  %776 = load { i64, i64, i64 }, ptr %71, align 4
  %777 = extractvalue { i64, i64, i64 } %776, 0
  %778 = extractvalue { i64, i64, i64 } %776, 1
  %779 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 1, i64 %778)
  %780 = mul i64 %779, 56
  %781 = call i64 @runtime.AdvanceHiddenPointer(i64 %777, i64 %780)
  store i64 %781, ptr %73, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %74, i64 %781)
  %782 = icmp eq ptr %73, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %782)
  %783 = load i64, ptr %73, align 4
  %784 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @runtime.LoadHiddenPointee(ptr %784, i64 %783, i64 56)
  %785 = icmp eq ptr %784, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %785)
  %786 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %784, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %784, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %786, ptr %75, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %71, align 4
  call void @runtime.TouchConservativeSlot(ptr %71, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %72, align 8
  call void @runtime.TouchConservativeSlot(ptr %72, i64 24)
  store i64 0, ptr %73, align 4
  call void @runtime.TouchConservativeSlot(ptr %73, i64 8)
  store ptr null, ptr %74, align 8
  call void @runtime.TouchConservativeSlot(ptr %74, i64 8)
  call void @runtime.ClobberPointerRegs()
  %787 = icmp eq ptr %75, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %787)
  %788 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %75, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %788, ptr %678, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %75, align 8
  call void @runtime.TouchConservativeSlot(ptr %75, i64 56)
  call void @runtime.ClobberPointerRegs()
  %789 = icmp eq ptr %678, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %789)
  %790 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %678, i32 0, i32 1
  %791 = ptrtoint ptr %790 to i64
  %792 = and i64 %791, 72057594037927935
  %793 = xor i64 %792, 25399393228665167
  %794 = shl i64 %793, 17
  %795 = select i1 false, i64 0, i64 %794
  %796 = lshr i64 %793, 39
  %797 = select i1 false, i64 0, i64 %796
  %798 = or i64 %795, %797
  %799 = and i64 %798, 72057594037927935
  %800 = or i64 %799, -6557241057451442176
  store i64 %800, ptr %76, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %77, i64 %800)
  call void @runtime.ClobberPointerRegs()
  %801 = icmp eq ptr %76, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %801)
  %802 = load i64, ptr %76, align 4
  %803 = call i64 @runtime.LoadHiddenPointerKey(i64 %802)
  store i64 %803, ptr %78, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %79, i64 %803)
  store i64 0, ptr %76, align 4
  call void @runtime.TouchConservativeSlot(ptr %76, i64 8)
  store ptr null, ptr %77, align 8
  call void @runtime.TouchConservativeSlot(ptr %77, i64 8)
  call void @runtime.ClobberPointerRegs()
  %804 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %804)
  %805 = load i64, ptr %2, align 4
  %806 = and i64 %805, 72057594037927935
  %807 = lshr i64 %806, 17
  %808 = select i1 false, i64 0, i64 %807
  %809 = shl i64 %806, 39
  %810 = select i1 false, i64 0, i64 %809
  %811 = or i64 %808, %810
  %812 = and i64 %811, 72057594037927935
  %813 = xor i64 %812, 25399393228665167
  %814 = inttoptr i64 %813 to ptr
  %815 = icmp eq ptr %814, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %815)
  %816 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %814, i32 0, i32 0
  %817 = ptrtoint ptr %816 to i64
  %818 = and i64 %817, 72057594037927935
  %819 = xor i64 %818, 25399393228665167
  %820 = shl i64 %819, 17
  %821 = select i1 false, i64 0, i64 %820
  %822 = lshr i64 %819, 39
  %823 = select i1 false, i64 0, i64 %822
  %824 = or i64 %821, %823
  %825 = and i64 %824, 72057594037927935
  %826 = or i64 %825, -6557241057451442176
  store i64 %826, ptr %80, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %81, i64 %826)
  call void @runtime.ClobberPointerRegs()
  %827 = icmp eq ptr %80, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %827)
  %828 = load i64, ptr %80, align 4
  %829 = call i64 @runtime.LoadHiddenPointerKey(i64 %828)
  store i64 %829, ptr %82, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %83, i64 %829)
  store i64 0, ptr %80, align 4
  call void @runtime.TouchConservativeSlot(ptr %80, i64 8)
  store ptr null, ptr %81, align 8
  call void @runtime.TouchConservativeSlot(ptr %81, i64 8)
  call void @runtime.ClobberPointerRegs()
  %830 = icmp eq ptr %82, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %830)
  %831 = load i64, ptr %82, align 4
  %832 = and i64 %831, 72057594037927935
  %833 = lshr i64 %832, 17
  %834 = select i1 false, i64 0, i64 %833
  %835 = shl i64 %832, 39
  %836 = select i1 false, i64 0, i64 %835
  %837 = or i64 %834, %836
  %838 = and i64 %837, 72057594037927935
  %839 = xor i64 %838, 25399393228665167
  %840 = inttoptr i64 %839 to ptr
  %841 = icmp eq ptr %840, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %841)
  %842 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %840, i32 0, i32 10
  %843 = ptrtoint ptr %842 to i64
  %844 = and i64 %843, 72057594037927935
  %845 = xor i64 %844, 25399393228665167
  %846 = shl i64 %845, 17
  %847 = select i1 false, i64 0, i64 %846
  %848 = lshr i64 %845, 39
  %849 = select i1 false, i64 0, i64 %848
  %850 = or i64 %847, %849
  %851 = and i64 %850, 72057594037927935
  %852 = or i64 %851, -6557241057451442176
  store i64 %852, ptr %84, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %85, i64 %852)
  call void @runtime.ClobberPointerRegs()
  %853 = icmp eq ptr %84, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %853)
  %854 = load i64, ptr %84, align 4
  %855 = call i64 @runtime.LoadHiddenPointerKey(i64 %854)
  store i64 %855, ptr %86, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %87, i64 %855)
  store i64 0, ptr %82, align 4
  call void @runtime.TouchConservativeSlot(ptr %82, i64 8)
  store ptr null, ptr %83, align 8
  call void @runtime.TouchConservativeSlot(ptr %83, i64 8)
  store i64 0, ptr %84, align 4
  call void @runtime.TouchConservativeSlot(ptr %84, i64 8)
  store ptr null, ptr %85, align 8
  call void @runtime.TouchConservativeSlot(ptr %85, i64 8)
  call void @runtime.ClobberPointerRegs()
  %856 = icmp eq ptr %78, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %856)
  %857 = load i64, ptr %78, align 4
  %858 = and i64 %857, 72057594037927935
  %859 = lshr i64 %858, 17
  %860 = select i1 false, i64 0, i64 %859
  %861 = shl i64 %858, 39
  %862 = select i1 false, i64 0, i64 %861
  %863 = or i64 %860, %862
  %864 = and i64 %863, 72057594037927935
  %865 = xor i64 %864, 25399393228665167
  %866 = inttoptr i64 %865 to ptr
  %867 = icmp eq ptr %86, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %867)
  %868 = load i64, ptr %86, align 4
  %869 = and i64 %868, 72057594037927935
  %870 = lshr i64 %869, 17
  %871 = select i1 false, i64 0, i64 %870
  %872 = shl i64 %869, 39
  %873 = select i1 false, i64 0, i64 %872
  %874 = or i64 %871, %873
  %875 = and i64 %874, 72057594037927935
  %876 = xor i64 %875, 25399393228665167
  %877 = inttoptr i64 %876 to ptr
  %878 = icmp ne ptr %866, %877
  store i64 0, ptr %78, align 4
  call void @runtime.TouchConservativeSlot(ptr %78, i64 8)
  store ptr null, ptr %79, align 8
  call void @runtime.TouchConservativeSlot(ptr %79, i64 8)
  store i64 0, ptr %86, align 4
  call void @runtime.TouchConservativeSlot(ptr %86, i64 8)
  store ptr null, ptr %87, align 8
  call void @runtime.TouchConservativeSlot(ptr %87, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %878, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %678, align 8
  call void @runtime.TouchConservativeSlot(ptr %678, i64 56)
  call void @runtime.ClobberPointerRegs()
  %879 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @125, i64 13 }, ptr %879, align 8
  %880 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %879, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %880)
  unreachable

_llgo_6:                                          ; preds = %_llgo_4
  %881 = icmp eq ptr %678, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %881)
  %882 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %678, i32 0, i32 1
  %883 = ptrtoint ptr %882 to i64
  %884 = and i64 %883, 72057594037927935
  %885 = xor i64 %884, 25399393228665167
  %886 = shl i64 %885, 17
  %887 = select i1 false, i64 0, i64 %886
  %888 = lshr i64 %885, 39
  %889 = select i1 false, i64 0, i64 %888
  %890 = or i64 %887, %889
  %891 = and i64 %890, 72057594037927935
  %892 = or i64 %891, -6557241057451442176
  store i64 %892, ptr %88, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %89, i64 %892)
  call void @runtime.ClobberPointerRegs()
  %893 = icmp eq ptr %88, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %893)
  %894 = load i64, ptr %88, align 4
  %895 = call i64 @runtime.LoadHiddenPointerKey(i64 %894)
  store i64 %895, ptr %90, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %91, i64 %895)
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %678, align 8
  call void @runtime.TouchConservativeSlot(ptr %678, i64 56)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %88, align 4
  call void @runtime.TouchConservativeSlot(ptr %88, i64 8)
  store ptr null, ptr %89, align 8
  call void @runtime.TouchConservativeSlot(ptr %89, i64 8)
  call void @runtime.ClobberPointerRegs()
  %896 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %897 = icmp eq ptr %90, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %897)
  %898 = load i64, ptr %90, align 4
  %899 = and i64 %898, 72057594037927935
  %900 = lshr i64 %899, 17
  %901 = select i1 false, i64 0, i64 %900
  %902 = shl i64 %899, 39
  %903 = select i1 false, i64 0, i64 %902
  %904 = or i64 %901, %903
  %905 = and i64 %904, 72057594037927935
  %906 = xor i64 %905, 25399393228665167
  %907 = inttoptr i64 %906 to ptr
  store i64 0, ptr %90, align 4
  call void @runtime.TouchConservativeSlot(ptr %90, i64 8)
  store ptr null, ptr %91, align 8
  call void @runtime.TouchConservativeSlot(ptr %91, i64 8)
  call void @runtime.ClobberPointerRegs()
  %908 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %907)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %896)
  %909 = ptrtoint ptr %908 to i64
  %910 = and i64 %909, 72057594037927935
  %911 = xor i64 %910, 25399393228665167
  %912 = shl i64 %911, 17
  %913 = select i1 false, i64 0, i64 %912
  %914 = lshr i64 %911, 39
  %915 = select i1 false, i64 0, i64 %914
  %916 = or i64 %913, %915
  %917 = and i64 %916, 72057594037927935
  %918 = or i64 %917, -6557241057451442176
  store i64 %918, ptr %92, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %93, i64 %918)
  call void @runtime.ClobberPointerRegs()
  %919 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %919)
  %920 = load i64, ptr %2, align 4
  %921 = and i64 %920, 72057594037927935
  %922 = lshr i64 %921, 17
  %923 = select i1 false, i64 0, i64 %922
  %924 = shl i64 %921, 39
  %925 = select i1 false, i64 0, i64 %924
  %926 = or i64 %923, %925
  %927 = and i64 %926, 72057594037927935
  %928 = xor i64 %927, 25399393228665167
  %929 = inttoptr i64 %928 to ptr
  %930 = icmp eq ptr %929, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %930)
  %931 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %929, i32 0, i32 0
  %932 = ptrtoint ptr %931 to i64
  %933 = and i64 %932, 72057594037927935
  %934 = xor i64 %933, 25399393228665167
  %935 = shl i64 %934, 17
  %936 = select i1 false, i64 0, i64 %935
  %937 = lshr i64 %934, 39
  %938 = select i1 false, i64 0, i64 %937
  %939 = or i64 %936, %938
  %940 = and i64 %939, 72057594037927935
  %941 = or i64 %940, -6557241057451442176
  store i64 %941, ptr %94, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %95, i64 %941)
  call void @runtime.ClobberPointerRegs()
  %942 = icmp eq ptr %94, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %942)
  %943 = load i64, ptr %94, align 4
  %944 = call i64 @runtime.LoadHiddenPointerKey(i64 %943)
  store i64 %944, ptr %96, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %97, i64 %944)
  store i64 0, ptr %94, align 4
  call void @runtime.TouchConservativeSlot(ptr %94, i64 8)
  store ptr null, ptr %95, align 8
  call void @runtime.TouchConservativeSlot(ptr %95, i64 8)
  call void @runtime.ClobberPointerRegs()
  %945 = icmp eq ptr %92, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %945)
  %946 = load i64, ptr %92, align 4
  %947 = and i64 %946, 72057594037927935
  %948 = lshr i64 %947, 17
  %949 = select i1 false, i64 0, i64 %948
  %950 = shl i64 %947, 39
  %951 = select i1 false, i64 0, i64 %950
  %952 = or i64 %949, %951
  %953 = and i64 %952, 72057594037927935
  %954 = xor i64 %953, 25399393228665167
  %955 = inttoptr i64 %954 to ptr
  %956 = icmp eq ptr %96, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %956)
  %957 = load i64, ptr %96, align 4
  %958 = and i64 %957, 72057594037927935
  %959 = lshr i64 %958, 17
  %960 = select i1 false, i64 0, i64 %959
  %961 = shl i64 %958, 39
  %962 = select i1 false, i64 0, i64 %961
  %963 = or i64 %960, %962
  %964 = and i64 %963, 72057594037927935
  %965 = xor i64 %964, 25399393228665167
  %966 = inttoptr i64 %965 to ptr
  %967 = icmp ne ptr %955, %966
  store i64 0, ptr %92, align 4
  call void @runtime.TouchConservativeSlot(ptr %92, i64 8)
  store ptr null, ptr %93, align 8
  call void @runtime.TouchConservativeSlot(ptr %93, i64 8)
  store i64 0, ptr %96, align 4
  call void @runtime.TouchConservativeSlot(ptr %96, i64 8)
  store ptr null, ptr %97, align 8
  call void @runtime.TouchConservativeSlot(ptr %97, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %967, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %968 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @126, i64 18 }, ptr %968, align 8
  %969 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %968, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %969)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %970 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %970, i8 0, i64 56, i1 false)
  %971 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %971)
  %972 = load i64, ptr %0, align 4
  %973 = and i64 %972, 72057594037927935
  %974 = lshr i64 %973, 17
  %975 = select i1 false, i64 0, i64 %974
  %976 = shl i64 %973, 39
  %977 = select i1 false, i64 0, i64 %976
  %978 = or i64 %975, %977
  %979 = and i64 %978, 72057594037927935
  %980 = xor i64 %979, 25399393228665167
  %981 = inttoptr i64 %980 to ptr
  %982 = icmp eq ptr %981, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %982)
  %983 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %981, i32 0, i32 0
  %984 = ptrtoint ptr %983 to i64
  %985 = and i64 %984, 72057594037927935
  %986 = xor i64 %985, 25399393228665167
  %987 = shl i64 %986, 17
  %988 = select i1 false, i64 0, i64 %987
  %989 = lshr i64 %986, 39
  %990 = select i1 false, i64 0, i64 %989
  %991 = or i64 %988, %990
  %992 = and i64 %991, 72057594037927935
  %993 = or i64 %992, -6557241057451442176
  store i64 %993, ptr %98, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %99, i64 %993)
  call void @runtime.ClobberPointerRegs()
  %994 = icmp eq ptr %98, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %994)
  %995 = load i64, ptr %98, align 4
  %996 = call i64 @runtime.LoadHiddenPointerKey(i64 %995)
  store i64 %996, ptr %100, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %101, i64 %996)
  store i64 0, ptr %98, align 4
  call void @runtime.TouchConservativeSlot(ptr %98, i64 8)
  store ptr null, ptr %99, align 8
  call void @runtime.TouchConservativeSlot(ptr %99, i64 8)
  call void @runtime.ClobberPointerRegs()
  %997 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %998 = icmp eq ptr %100, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %998)
  %999 = load i64, ptr %100, align 4
  %1000 = and i64 %999, 72057594037927935
  %1001 = lshr i64 %1000, 17
  %1002 = select i1 false, i64 0, i64 %1001
  %1003 = shl i64 %1000, 39
  %1004 = select i1 false, i64 0, i64 %1003
  %1005 = or i64 %1002, %1004
  %1006 = and i64 %1005, 72057594037927935
  %1007 = xor i64 %1006, 25399393228665167
  %1008 = inttoptr i64 %1007 to ptr
  store i64 0, ptr %100, align 4
  call void @runtime.TouchConservativeSlot(ptr %100, i64 8)
  store ptr null, ptr %101, align 8
  call void @runtime.TouchConservativeSlot(ptr %101, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1009 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %1008)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %997)
  %1010 = ptrtoint ptr %1009 to i64
  %1011 = and i64 %1010, 72057594037927935
  %1012 = xor i64 %1011, 25399393228665167
  %1013 = shl i64 %1012, 17
  %1014 = select i1 false, i64 0, i64 %1013
  %1015 = lshr i64 %1012, 39
  %1016 = select i1 false, i64 0, i64 %1015
  %1017 = or i64 %1014, %1016
  %1018 = and i64 %1017, 72057594037927935
  %1019 = or i64 %1018, -6557241057451442176
  store i64 %1019, ptr %102, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %103, i64 %1019)
  call void @runtime.ClobberPointerRegs()
  %1020 = icmp eq ptr %102, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1020)
  %1021 = load i64, ptr %102, align 4
  %1022 = and i64 %1021, 72057594037927935
  %1023 = lshr i64 %1022, 17
  %1024 = select i1 false, i64 0, i64 %1023
  %1025 = shl i64 %1022, 39
  %1026 = select i1 false, i64 0, i64 %1025
  %1027 = or i64 %1024, %1026
  %1028 = and i64 %1027, 72057594037927935
  %1029 = xor i64 %1028, 25399393228665167
  %1030 = inttoptr i64 %1029 to ptr
  %1031 = icmp eq ptr %1030, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1031)
  %1032 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %1030, i32 0, i32 2
  %1033 = ptrtoint ptr %1032 to i64
  %1034 = and i64 %1033, 72057594037927935
  %1035 = xor i64 %1034, 25399393228665167
  %1036 = shl i64 %1035, 17
  %1037 = select i1 false, i64 0, i64 %1036
  %1038 = lshr i64 %1035, 39
  %1039 = select i1 false, i64 0, i64 %1038
  %1040 = or i64 %1037, %1039
  %1041 = and i64 %1040, 72057594037927935
  %1042 = or i64 %1041, -6557241057451442176
  store i64 %1042, ptr %104, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %105, i64 %1042)
  call void @runtime.ClobberPointerRegs()
  %1043 = icmp eq ptr %104, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1043)
  %1044 = load i64, ptr %104, align 4
  %1045 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %1045, i64 %1044, i64 24)
  %1046 = icmp eq ptr %1045, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1046)
  %1047 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1045, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1045, align 8
  %1048 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1047, ptr %1048, align 8
  %1049 = icmp eq ptr %1048, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1049)
  %1050 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1048, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1050, ptr %107, align 8
  %1051 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1050, 0
  %1052 = ptrtoint ptr %1051 to i64
  %1053 = and i64 %1052, 72057594037927935
  %1054 = xor i64 %1053, 25399393228665167
  %1055 = shl i64 %1054, 17
  %1056 = select i1 false, i64 0, i64 %1055
  %1057 = lshr i64 %1054, 39
  %1058 = select i1 false, i64 0, i64 %1057
  %1059 = or i64 %1056, %1058
  %1060 = and i64 %1059, 72057594037927935
  %1061 = or i64 %1060, -6557241057451442176
  %1062 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1050, 1
  %1063 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1050, 2
  %1064 = insertvalue { i64, i64, i64 } undef, i64 %1061, 0
  %1065 = insertvalue { i64, i64, i64 } %1064, i64 %1062, 1
  %1066 = insertvalue { i64, i64, i64 } %1065, i64 %1063, 2
  store { i64, i64, i64 } %1066, ptr %106, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1048, align 8
  call void @runtime.TouchConservativeSlot(ptr %1048, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %102, align 4
  call void @runtime.TouchConservativeSlot(ptr %102, i64 8)
  store ptr null, ptr %103, align 8
  call void @runtime.TouchConservativeSlot(ptr %103, i64 8)
  store i64 0, ptr %104, align 4
  call void @runtime.TouchConservativeSlot(ptr %104, i64 8)
  store ptr null, ptr %105, align 8
  call void @runtime.TouchConservativeSlot(ptr %105, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1067 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1067)
  %1068 = load { i64, i64, i64 }, ptr %106, align 4
  %1069 = extractvalue { i64, i64, i64 } %1068, 0
  %1070 = extractvalue { i64, i64, i64 } %1068, 1
  %1071 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 2, i64 %1070)
  %1072 = mul i64 %1071, 56
  %1073 = call i64 @runtime.AdvanceHiddenPointer(i64 %1069, i64 %1072)
  store i64 %1073, ptr %108, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %109, i64 %1073)
  %1074 = icmp eq ptr %108, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1074)
  %1075 = load i64, ptr %108, align 4
  %1076 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @runtime.LoadHiddenPointee(ptr %1076, i64 %1075, i64 56)
  %1077 = icmp eq ptr %1076, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1077)
  %1078 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1076, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %1076, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1078, ptr %110, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %106, align 4
  call void @runtime.TouchConservativeSlot(ptr %106, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %107, align 8
  call void @runtime.TouchConservativeSlot(ptr %107, i64 24)
  store i64 0, ptr %108, align 4
  call void @runtime.TouchConservativeSlot(ptr %108, i64 8)
  store ptr null, ptr %109, align 8
  call void @runtime.TouchConservativeSlot(ptr %109, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1079 = icmp eq ptr %110, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1079)
  %1080 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %110, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1080, ptr %970, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %110, align 8
  call void @runtime.TouchConservativeSlot(ptr %110, i64 56)
  call void @runtime.ClobberPointerRegs()
  %1081 = icmp eq ptr %970, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1081)
  %1082 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %970, i32 0, i32 1
  %1083 = ptrtoint ptr %1082 to i64
  %1084 = and i64 %1083, 72057594037927935
  %1085 = xor i64 %1084, 25399393228665167
  %1086 = shl i64 %1085, 17
  %1087 = select i1 false, i64 0, i64 %1086
  %1088 = lshr i64 %1085, 39
  %1089 = select i1 false, i64 0, i64 %1088
  %1090 = or i64 %1087, %1089
  %1091 = and i64 %1090, 72057594037927935
  %1092 = or i64 %1091, -6557241057451442176
  store i64 %1092, ptr %111, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %112, i64 %1092)
  call void @runtime.ClobberPointerRegs()
  %1093 = icmp eq ptr %111, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1093)
  %1094 = load i64, ptr %111, align 4
  %1095 = call i64 @runtime.LoadHiddenPointerKey(i64 %1094)
  store i64 %1095, ptr %113, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %114, i64 %1095)
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %970, align 8
  call void @runtime.TouchConservativeSlot(ptr %970, i64 56)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %111, align 4
  call void @runtime.TouchConservativeSlot(ptr %111, i64 8)
  store ptr null, ptr %112, align 8
  call void @runtime.TouchConservativeSlot(ptr %112, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1096 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1096)
  %1097 = load i64, ptr %2, align 4
  %1098 = and i64 %1097, 72057594037927935
  %1099 = lshr i64 %1098, 17
  %1100 = select i1 false, i64 0, i64 %1099
  %1101 = shl i64 %1098, 39
  %1102 = select i1 false, i64 0, i64 %1101
  %1103 = or i64 %1100, %1102
  %1104 = and i64 %1103, 72057594037927935
  %1105 = xor i64 %1104, 25399393228665167
  %1106 = inttoptr i64 %1105 to ptr
  %1107 = icmp eq ptr %1106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1107)
  %1108 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %1106, i32 0, i32 0
  %1109 = ptrtoint ptr %1108 to i64
  %1110 = and i64 %1109, 72057594037927935
  %1111 = xor i64 %1110, 25399393228665167
  %1112 = shl i64 %1111, 17
  %1113 = select i1 false, i64 0, i64 %1112
  %1114 = lshr i64 %1111, 39
  %1115 = select i1 false, i64 0, i64 %1114
  %1116 = or i64 %1113, %1115
  %1117 = and i64 %1116, 72057594037927935
  %1118 = or i64 %1117, -6557241057451442176
  store i64 %1118, ptr %115, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %116, i64 %1118)
  call void @runtime.ClobberPointerRegs()
  %1119 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1119)
  %1120 = load i64, ptr %115, align 4
  %1121 = call i64 @runtime.LoadHiddenPointerKey(i64 %1120)
  store i64 %1121, ptr %117, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %118, i64 %1121)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %115, align 4
  call void @runtime.TouchConservativeSlot(ptr %115, i64 8)
  store ptr null, ptr %116, align 8
  call void @runtime.TouchConservativeSlot(ptr %116, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1123 = icmp eq ptr %117, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1123)
  %1124 = load i64, ptr %117, align 4
  %1125 = and i64 %1124, 72057594037927935
  %1126 = lshr i64 %1125, 17
  %1127 = select i1 false, i64 0, i64 %1126
  %1128 = shl i64 %1125, 39
  %1129 = select i1 false, i64 0, i64 %1128
  %1130 = or i64 %1127, %1129
  %1131 = and i64 %1130, 72057594037927935
  %1132 = xor i64 %1131, 25399393228665167
  %1133 = inttoptr i64 %1132 to ptr
  store i64 0, ptr %117, align 4
  call void @runtime.TouchConservativeSlot(ptr %117, i64 8)
  store ptr null, ptr %118, align 8
  call void @runtime.TouchConservativeSlot(ptr %118, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1134 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %1133)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1122)
  %1135 = ptrtoint ptr %1134 to i64
  %1136 = and i64 %1135, 72057594037927935
  %1137 = xor i64 %1136, 25399393228665167
  %1138 = shl i64 %1137, 17
  %1139 = select i1 false, i64 0, i64 %1138
  %1140 = lshr i64 %1137, 39
  %1141 = select i1 false, i64 0, i64 %1140
  %1142 = or i64 %1139, %1141
  %1143 = and i64 %1142, 72057594037927935
  %1144 = or i64 %1143, -6557241057451442176
  store i64 %1144, ptr %119, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %120, i64 %1144)
  call void @runtime.ClobberPointerRegs()
  %1145 = icmp eq ptr %119, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1145)
  %1146 = load i64, ptr %119, align 4
  %1147 = and i64 %1146, 72057594037927935
  %1148 = lshr i64 %1147, 17
  %1149 = select i1 false, i64 0, i64 %1148
  %1150 = shl i64 %1147, 39
  %1151 = select i1 false, i64 0, i64 %1150
  %1152 = or i64 %1149, %1151
  %1153 = and i64 %1152, 72057594037927935
  %1154 = xor i64 %1153, 25399393228665167
  %1155 = inttoptr i64 %1154 to ptr
  %1156 = icmp eq ptr %1155, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1156)
  %1157 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %1155, i32 0, i32 2
  %1158 = ptrtoint ptr %1157 to i64
  %1159 = and i64 %1158, 72057594037927935
  %1160 = xor i64 %1159, 25399393228665167
  %1161 = shl i64 %1160, 17
  %1162 = select i1 false, i64 0, i64 %1161
  %1163 = lshr i64 %1160, 39
  %1164 = select i1 false, i64 0, i64 %1163
  %1165 = or i64 %1162, %1164
  %1166 = and i64 %1165, 72057594037927935
  %1167 = or i64 %1166, -6557241057451442176
  store i64 %1167, ptr %121, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %122, i64 %1167)
  call void @runtime.ClobberPointerRegs()
  %1168 = icmp eq ptr %121, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1168)
  %1169 = load i64, ptr %121, align 4
  %1170 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %1170, i64 %1169, i64 24)
  %1171 = icmp eq ptr %1170, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1171)
  %1172 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1170, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1170, align 8
  %1173 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1172, ptr %1173, align 8
  %1174 = icmp eq ptr %1173, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1174)
  %1175 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1173, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1175, ptr %124, align 8
  %1176 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1175, 0
  %1177 = ptrtoint ptr %1176 to i64
  %1178 = and i64 %1177, 72057594037927935
  %1179 = xor i64 %1178, 25399393228665167
  %1180 = shl i64 %1179, 17
  %1181 = select i1 false, i64 0, i64 %1180
  %1182 = lshr i64 %1179, 39
  %1183 = select i1 false, i64 0, i64 %1182
  %1184 = or i64 %1181, %1183
  %1185 = and i64 %1184, 72057594037927935
  %1186 = or i64 %1185, -6557241057451442176
  %1187 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1175, 1
  %1188 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1175, 2
  %1189 = insertvalue { i64, i64, i64 } undef, i64 %1186, 0
  %1190 = insertvalue { i64, i64, i64 } %1189, i64 %1187, 1
  %1191 = insertvalue { i64, i64, i64 } %1190, i64 %1188, 2
  store { i64, i64, i64 } %1191, ptr %123, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1173, align 8
  call void @runtime.TouchConservativeSlot(ptr %1173, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %119, align 4
  call void @runtime.TouchConservativeSlot(ptr %119, i64 8)
  store ptr null, ptr %120, align 8
  call void @runtime.TouchConservativeSlot(ptr %120, i64 8)
  store i64 0, ptr %121, align 4
  call void @runtime.TouchConservativeSlot(ptr %121, i64 8)
  store ptr null, ptr %122, align 8
  call void @runtime.TouchConservativeSlot(ptr %122, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1192 = icmp eq ptr %123, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1192)
  %1193 = load { i64, i64, i64 }, ptr %123, align 4
  %1194 = extractvalue { i64, i64, i64 } %1193, 0
  %1195 = extractvalue { i64, i64, i64 } %1193, 1
  %1196 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 0, i64 %1195)
  %1197 = mul i64 %1196, 56
  %1198 = call i64 @runtime.AdvanceHiddenPointer(i64 %1194, i64 %1197)
  store i64 %1198, ptr %125, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %126, i64 %1198)
  %1199 = icmp eq ptr %125, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1199)
  %1200 = load i64, ptr %125, align 4
  %1201 = and i64 %1200, 72057594037927935
  %1202 = lshr i64 %1201, 17
  %1203 = select i1 false, i64 0, i64 %1202
  %1204 = shl i64 %1201, 39
  %1205 = select i1 false, i64 0, i64 %1204
  %1206 = or i64 %1203, %1205
  %1207 = and i64 %1206, 72057594037927935
  %1208 = xor i64 %1207, 25399393228665167
  %1209 = inttoptr i64 %1208 to ptr
  %1210 = icmp eq ptr %1209, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1210)
  %1211 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1209, i32 0, i32 1
  %1212 = ptrtoint ptr %1211 to i64
  %1213 = and i64 %1212, 72057594037927935
  %1214 = xor i64 %1213, 25399393228665167
  %1215 = shl i64 %1214, 17
  %1216 = select i1 false, i64 0, i64 %1215
  %1217 = lshr i64 %1214, 39
  %1218 = select i1 false, i64 0, i64 %1217
  %1219 = or i64 %1216, %1218
  %1220 = and i64 %1219, 72057594037927935
  %1221 = or i64 %1220, -6557241057451442176
  store i64 %1221, ptr %127, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %128, i64 %1221)
  call void @runtime.ClobberPointerRegs()
  %1222 = icmp eq ptr %127, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1222)
  %1223 = load i64, ptr %127, align 4
  %1224 = call i64 @runtime.LoadHiddenPointerKey(i64 %1223)
  store i64 %1224, ptr %129, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %130, i64 %1224)
  store { i64, i64, i64 } zeroinitializer, ptr %123, align 4
  call void @runtime.TouchConservativeSlot(ptr %123, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %124, align 8
  call void @runtime.TouchConservativeSlot(ptr %124, i64 24)
  store i64 0, ptr %125, align 4
  call void @runtime.TouchConservativeSlot(ptr %125, i64 8)
  store ptr null, ptr %126, align 8
  call void @runtime.TouchConservativeSlot(ptr %126, i64 8)
  store i64 0, ptr %127, align 4
  call void @runtime.TouchConservativeSlot(ptr %127, i64 8)
  store ptr null, ptr %128, align 8
  call void @runtime.TouchConservativeSlot(ptr %128, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1225 = icmp eq ptr %113, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1225)
  %1226 = load i64, ptr %113, align 4
  %1227 = and i64 %1226, 72057594037927935
  %1228 = lshr i64 %1227, 17
  %1229 = select i1 false, i64 0, i64 %1228
  %1230 = shl i64 %1227, 39
  %1231 = select i1 false, i64 0, i64 %1230
  %1232 = or i64 %1229, %1231
  %1233 = and i64 %1232, 72057594037927935
  %1234 = xor i64 %1233, 25399393228665167
  %1235 = inttoptr i64 %1234 to ptr
  %1236 = icmp eq ptr %129, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1236)
  %1237 = load i64, ptr %129, align 4
  %1238 = and i64 %1237, 72057594037927935
  %1239 = lshr i64 %1238, 17
  %1240 = select i1 false, i64 0, i64 %1239
  %1241 = shl i64 %1238, 39
  %1242 = select i1 false, i64 0, i64 %1241
  %1243 = or i64 %1240, %1242
  %1244 = and i64 %1243, 72057594037927935
  %1245 = xor i64 %1244, 25399393228665167
  %1246 = inttoptr i64 %1245 to ptr
  %1247 = icmp ne ptr %1235, %1246
  store i64 0, ptr %113, align 4
  call void @runtime.TouchConservativeSlot(ptr %113, i64 8)
  store ptr null, ptr %114, align 8
  call void @runtime.TouchConservativeSlot(ptr %114, i64 8)
  store i64 0, ptr %129, align 4
  call void @runtime.TouchConservativeSlot(ptr %129, i64 8)
  store ptr null, ptr %130, align 8
  call void @runtime.TouchConservativeSlot(ptr %130, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %1247, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %1248 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @127, i64 13 }, ptr %1248, align 8
  %1249 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %1248, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1249)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %1250 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @llvm.memset(ptr %1250, i8 0, i64 56, i1 false)
  %1251 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1251)
  %1252 = load i64, ptr %0, align 4
  %1253 = and i64 %1252, 72057594037927935
  %1254 = lshr i64 %1253, 17
  %1255 = select i1 false, i64 0, i64 %1254
  %1256 = shl i64 %1253, 39
  %1257 = select i1 false, i64 0, i64 %1256
  %1258 = or i64 %1255, %1257
  %1259 = and i64 %1258, 72057594037927935
  %1260 = xor i64 %1259, 25399393228665167
  %1261 = inttoptr i64 %1260 to ptr
  %1262 = icmp eq ptr %1261, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1262)
  %1263 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %1261, i32 0, i32 0
  %1264 = ptrtoint ptr %1263 to i64
  %1265 = and i64 %1264, 72057594037927935
  %1266 = xor i64 %1265, 25399393228665167
  %1267 = shl i64 %1266, 17
  %1268 = select i1 false, i64 0, i64 %1267
  %1269 = lshr i64 %1266, 39
  %1270 = select i1 false, i64 0, i64 %1269
  %1271 = or i64 %1268, %1270
  %1272 = and i64 %1271, 72057594037927935
  %1273 = or i64 %1272, -6557241057451442176
  store i64 %1273, ptr %131, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %132, i64 %1273)
  call void @runtime.ClobberPointerRegs()
  %1274 = icmp eq ptr %131, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1274)
  %1275 = load i64, ptr %131, align 4
  %1276 = call i64 @runtime.LoadHiddenPointerKey(i64 %1275)
  store i64 %1276, ptr %133, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %134, i64 %1276)
  store i64 0, ptr %131, align 4
  call void @runtime.TouchConservativeSlot(ptr %131, i64 8)
  store ptr null, ptr %132, align 8
  call void @runtime.TouchConservativeSlot(ptr %132, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1277 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1278 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1278)
  %1279 = load i64, ptr %133, align 4
  %1280 = and i64 %1279, 72057594037927935
  %1281 = lshr i64 %1280, 17
  %1282 = select i1 false, i64 0, i64 %1281
  %1283 = shl i64 %1280, 39
  %1284 = select i1 false, i64 0, i64 %1283
  %1285 = or i64 %1282, %1284
  %1286 = and i64 %1285, 72057594037927935
  %1287 = xor i64 %1286, 25399393228665167
  %1288 = inttoptr i64 %1287 to ptr
  store i64 0, ptr %133, align 4
  call void @runtime.TouchConservativeSlot(ptr %133, i64 8)
  store ptr null, ptr %134, align 8
  call void @runtime.TouchConservativeSlot(ptr %134, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1289 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr %1288)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1277)
  %1290 = ptrtoint ptr %1289 to i64
  %1291 = and i64 %1290, 72057594037927935
  %1292 = xor i64 %1291, 25399393228665167
  %1293 = shl i64 %1292, 17
  %1294 = select i1 false, i64 0, i64 %1293
  %1295 = lshr i64 %1292, 39
  %1296 = select i1 false, i64 0, i64 %1295
  %1297 = or i64 %1294, %1296
  %1298 = and i64 %1297, 72057594037927935
  %1299 = or i64 %1298, -6557241057451442176
  store i64 %1299, ptr %135, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %136, i64 %1299)
  call void @runtime.ClobberPointerRegs()
  %1300 = icmp eq ptr %135, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1300)
  %1301 = load i64, ptr %135, align 4
  %1302 = and i64 %1301, 72057594037927935
  %1303 = lshr i64 %1302, 17
  %1304 = select i1 false, i64 0, i64 %1303
  %1305 = shl i64 %1302, 39
  %1306 = select i1 false, i64 0, i64 %1305
  %1307 = or i64 %1304, %1306
  %1308 = and i64 %1307, 72057594037927935
  %1309 = xor i64 %1308, 25399393228665167
  %1310 = inttoptr i64 %1309 to ptr
  %1311 = icmp eq ptr %1310, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1311)
  %1312 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructType", ptr %1310, i32 0, i32 2
  %1313 = ptrtoint ptr %1312 to i64
  %1314 = and i64 %1313, 72057594037927935
  %1315 = xor i64 %1314, 25399393228665167
  %1316 = shl i64 %1315, 17
  %1317 = select i1 false, i64 0, i64 %1316
  %1318 = lshr i64 %1315, 39
  %1319 = select i1 false, i64 0, i64 %1318
  %1320 = or i64 %1317, %1319
  %1321 = and i64 %1320, 72057594037927935
  %1322 = or i64 %1321, -6557241057451442176
  store i64 %1322, ptr %137, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %138, i64 %1322)
  call void @runtime.ClobberPointerRegs()
  %1323 = icmp eq ptr %137, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1323)
  %1324 = load i64, ptr %137, align 4
  %1325 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  call void @runtime.LoadHiddenPointee(ptr %1325, i64 %1324, i64 24)
  %1326 = icmp eq ptr %1325, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1326)
  %1327 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1325, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1325, align 8
  %1328 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1327, ptr %1328, align 8
  %1329 = icmp eq ptr %1328, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1329)
  %1330 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %1328, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1330, ptr %140, align 8
  %1331 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1330, 0
  %1332 = ptrtoint ptr %1331 to i64
  %1333 = and i64 %1332, 72057594037927935
  %1334 = xor i64 %1333, 25399393228665167
  %1335 = shl i64 %1334, 17
  %1336 = select i1 false, i64 0, i64 %1335
  %1337 = lshr i64 %1334, 39
  %1338 = select i1 false, i64 0, i64 %1337
  %1339 = or i64 %1336, %1338
  %1340 = and i64 %1339, 72057594037927935
  %1341 = or i64 %1340, -6557241057451442176
  %1342 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1330, 1
  %1343 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1330, 2
  %1344 = insertvalue { i64, i64, i64 } undef, i64 %1341, 0
  %1345 = insertvalue { i64, i64, i64 } %1344, i64 %1342, 1
  %1346 = insertvalue { i64, i64, i64 } %1345, i64 %1343, 2
  store { i64, i64, i64 } %1346, ptr %139, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %1328, align 8
  call void @runtime.TouchConservativeSlot(ptr %1328, i64 24)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %135, align 4
  call void @runtime.TouchConservativeSlot(ptr %135, i64 8)
  store ptr null, ptr %136, align 8
  call void @runtime.TouchConservativeSlot(ptr %136, i64 8)
  store i64 0, ptr %137, align 4
  call void @runtime.TouchConservativeSlot(ptr %137, i64 8)
  store ptr null, ptr %138, align 8
  call void @runtime.TouchConservativeSlot(ptr %138, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1347 = icmp eq ptr %139, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1347)
  %1348 = load { i64, i64, i64 }, ptr %139, align 4
  %1349 = extractvalue { i64, i64, i64 } %1348, 0
  %1350 = extractvalue { i64, i64, i64 } %1348, 1
  %1351 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64 3, i64 %1350)
  %1352 = mul i64 %1351, 56
  %1353 = call i64 @runtime.AdvanceHiddenPointer(i64 %1349, i64 %1352)
  store i64 %1353, ptr %141, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %142, i64 %1353)
  %1354 = icmp eq ptr %141, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1354)
  %1355 = load i64, ptr %141, align 4
  %1356 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  call void @runtime.LoadHiddenPointee(ptr %1356, i64 %1355, i64 56)
  %1357 = icmp eq ptr %1356, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1357)
  %1358 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1356, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %1356, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1358, ptr %143, align 8
  store { i64, i64, i64 } zeroinitializer, ptr %139, align 4
  call void @runtime.TouchConservativeSlot(ptr %139, i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, ptr %140, align 8
  call void @runtime.TouchConservativeSlot(ptr %140, i64 24)
  store i64 0, ptr %141, align 4
  call void @runtime.TouchConservativeSlot(ptr %141, i64 8)
  store ptr null, ptr %142, align 8
  call void @runtime.TouchConservativeSlot(ptr %142, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1359 = icmp eq ptr %143, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1359)
  %1360 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %143, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" %1360, ptr %1250, align 8
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %143, align 8
  call void @runtime.TouchConservativeSlot(ptr %143, i64 56)
  call void @runtime.ClobberPointerRegs()
  %1361 = icmp eq ptr %1250, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1361)
  %1362 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.StructField", ptr %1250, i32 0, i32 1
  %1363 = ptrtoint ptr %1362 to i64
  %1364 = and i64 %1363, 72057594037927935
  %1365 = xor i64 %1364, 25399393228665167
  %1366 = shl i64 %1365, 17
  %1367 = select i1 false, i64 0, i64 %1366
  %1368 = lshr i64 %1365, 39
  %1369 = select i1 false, i64 0, i64 %1368
  %1370 = or i64 %1367, %1369
  %1371 = and i64 %1370, 72057594037927935
  %1372 = or i64 %1371, -6557241057451442176
  store i64 %1372, ptr %144, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %145, i64 %1372)
  call void @runtime.ClobberPointerRegs()
  %1373 = icmp eq ptr %144, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1373)
  %1374 = load i64, ptr %144, align 4
  %1375 = call i64 @runtime.LoadHiddenPointerKey(i64 %1374)
  store i64 %1375, ptr %146, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %147, i64 %1375)
  store %"github.com/goplus/llgo/runtime/abi.StructField" zeroinitializer, ptr %1250, align 8
  call void @runtime.TouchConservativeSlot(ptr %1250, i64 56)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %144, align 4
  call void @runtime.TouchConservativeSlot(ptr %144, i64 8)
  store ptr null, ptr %145, align 8
  call void @runtime.TouchConservativeSlot(ptr %145, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1376 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %1377 = icmp eq ptr %146, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1377)
  %1378 = load i64, ptr %146, align 4
  %1379 = and i64 %1378, 72057594037927935
  %1380 = lshr i64 %1379, 17
  %1381 = select i1 false, i64 0, i64 %1380
  %1382 = shl i64 %1379, 39
  %1383 = select i1 false, i64 0, i64 %1382
  %1384 = or i64 %1381, %1383
  %1385 = and i64 %1384, 72057594037927935
  %1386 = xor i64 %1385, 25399393228665167
  %1387 = inttoptr i64 %1386 to ptr
  store i64 0, ptr %146, align 4
  call void @runtime.TouchConservativeSlot(ptr %146, i64 8)
  store ptr null, ptr %147, align 8
  call void @runtime.TouchConservativeSlot(ptr %147, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1388 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %1387)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %1376)
  %1389 = ptrtoint ptr %1388 to i64
  %1390 = and i64 %1389, 72057594037927935
  %1391 = xor i64 %1390, 25399393228665167
  %1392 = shl i64 %1391, 17
  %1393 = select i1 false, i64 0, i64 %1392
  %1394 = lshr i64 %1391, 39
  %1395 = select i1 false, i64 0, i64 %1394
  %1396 = or i64 %1393, %1395
  %1397 = and i64 %1396, 72057594037927935
  %1398 = or i64 %1397, -6557241057451442176
  store i64 %1398, ptr %148, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %149, i64 %1398)
  call void @runtime.ClobberPointerRegs()
  %1399 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1399)
  %1400 = load i64, ptr %0, align 4
  %1401 = and i64 %1400, 72057594037927935
  %1402 = lshr i64 %1401, 17
  %1403 = select i1 false, i64 0, i64 %1402
  %1404 = shl i64 %1401, 39
  %1405 = select i1 false, i64 0, i64 %1404
  %1406 = or i64 %1403, %1405
  %1407 = and i64 %1406, 72057594037927935
  %1408 = xor i64 %1407, 25399393228665167
  %1409 = inttoptr i64 %1408 to ptr
  %1410 = icmp eq ptr %1409, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1410)
  %1411 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/abinamed.eface", ptr %1409, i32 0, i32 0
  %1412 = ptrtoint ptr %1411 to i64
  %1413 = and i64 %1412, 72057594037927935
  %1414 = xor i64 %1413, 25399393228665167
  %1415 = shl i64 %1414, 17
  %1416 = select i1 false, i64 0, i64 %1415
  %1417 = lshr i64 %1414, 39
  %1418 = select i1 false, i64 0, i64 %1417
  %1419 = or i64 %1416, %1418
  %1420 = and i64 %1419, 72057594037927935
  %1421 = or i64 %1420, -6557241057451442176
  store i64 %1421, ptr %150, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %151, i64 %1421)
  call void @runtime.ClobberPointerRegs()
  %1422 = icmp eq ptr %150, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1422)
  %1423 = load i64, ptr %150, align 4
  %1424 = call i64 @runtime.LoadHiddenPointerKey(i64 %1423)
  store i64 %1424, ptr %152, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %153, i64 %1424)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %150, align 4
  call void @runtime.TouchConservativeSlot(ptr %150, i64 8)
  store ptr null, ptr %151, align 8
  call void @runtime.TouchConservativeSlot(ptr %151, i64 8)
  call void @runtime.ClobberPointerRegs()
  %1425 = icmp eq ptr %148, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1425)
  %1426 = load i64, ptr %148, align 4
  %1427 = and i64 %1426, 72057594037927935
  %1428 = lshr i64 %1427, 17
  %1429 = select i1 false, i64 0, i64 %1428
  %1430 = shl i64 %1427, 39
  %1431 = select i1 false, i64 0, i64 %1430
  %1432 = or i64 %1429, %1431
  %1433 = and i64 %1432, 72057594037927935
  %1434 = xor i64 %1433, 25399393228665167
  %1435 = inttoptr i64 %1434 to ptr
  %1436 = icmp eq ptr %152, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1436)
  %1437 = load i64, ptr %152, align 4
  %1438 = and i64 %1437, 72057594037927935
  %1439 = lshr i64 %1438, 17
  %1440 = select i1 false, i64 0, i64 %1439
  %1441 = shl i64 %1438, 39
  %1442 = select i1 false, i64 0, i64 %1441
  %1443 = or i64 %1440, %1442
  %1444 = and i64 %1443, 72057594037927935
  %1445 = xor i64 %1444, 25399393228665167
  %1446 = inttoptr i64 %1445 to ptr
  %1447 = icmp ne ptr %1435, %1446
  store i64 0, ptr %148, align 4
  call void @runtime.TouchConservativeSlot(ptr %148, i64 8)
  store ptr null, ptr %149, align 8
  call void @runtime.TouchConservativeSlot(ptr %149, i64 8)
  store i64 0, ptr %152, align 4
  call void @runtime.TouchConservativeSlot(ptr %152, i64 8)
  store ptr null, ptr %153, align 8
  call void @runtime.TouchConservativeSlot(ptr %153, i64 8)
  call void @runtime.ClobberPointerRegs()
  br i1 %1447, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %1448 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @128, i64 13 }, ptr %1448, align 8
  %1449 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %1448, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %1449)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  ret void

_llgo_13:                                         ; No predecessors!
  unreachable

_llgo_14:                                         ; No predecessors!
  unreachable

_llgo_15:                                         ; No predecessors!
  unreachable

_llgo_16:                                         ; No predecessors!
  unreachable

_llgo_17:                                         ; No predecessors!
  unreachable

_llgo_18:                                         ; No predecessors!
  unreachable
}

define ptr @"github.com/goplus/llgo/cl/_testrt/abinamed.toEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = call i64 @runtime.AllocZHidden(i64 16)
  store i64 %6, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %6)
  %7 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load i64, ptr %1, align 4
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, ptr %9, align 8
  call void @runtime.StoreHiddenPointee(i64 %8, ptr %9, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load i64, ptr %1, align 4
  %12 = and i64 %11, 72057594037927935
  %13 = lshr i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = shl i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = xor i64 %18, 25399393228665167
  %20 = inttoptr i64 %19 to ptr
  store ptr %20, ptr %3, align 8
  %21 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load ptr, ptr %3, align 8
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 72057594037927935
  %25 = xor i64 %24, 25399393228665167
  %26 = shl i64 %25, 17
  %27 = select i1 false, i64 0, i64 %26
  %28 = lshr i64 %25, 39
  %29 = select i1 false, i64 0, i64 %28
  %30 = or i64 %27, %29
  %31 = and i64 %30, 72057594037927935
  %32 = or i64 %31, -6557241057451442176
  store i64 %32, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %32)
  call void @runtime.ClobberPointerRegs()
  %33 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = load i64, ptr %4, align 4
  %35 = and i64 %34, 72057594037927935
  %36 = lshr i64 %35, 17
  %37 = select i1 false, i64 0, i64 %36
  %38 = shl i64 %35, 39
  %39 = select i1 false, i64 0, i64 %38
  %40 = or i64 %37, %39
  %41 = and i64 %40, 72057594037927935
  %42 = xor i64 %41, 25399393228665167
  %43 = inttoptr i64 %42 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  ret ptr %43
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @unsafe.init()

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal32")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal32"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Common"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*ArrayType).ExportedMethods"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Method).Exported"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Method).Name"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Method).PkgPath"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).Elem"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*FuncType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*FuncType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).FuncType"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*FuncType).GcSlice"(ptr, i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*FuncType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*FuncType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Imethod).Exported"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Imethod).Name"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Imethod).PkgPath"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Elem"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).FuncType"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).GcSlice"(ptr, i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Kind"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Kind).String"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.Kind.String"(i64)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).MapType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal16")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal16"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Common"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*MapType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*MapType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).FuncType"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*MapType).GcSlice"(ptr, i64, i64)

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

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Embedded"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*StructField).Exported"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).Align"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).ArrayType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).Elem"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*StructType).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*StructType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*StructType).FuncType"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*StructType).GcSlice"(ptr, i64, i64)

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

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*UncommonType).ExportedMethods"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*UncommonType).Methods"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*MapType).Uncommon"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*InterfaceType).Uncommon"(ptr)

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

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).FuncType"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*ArrayType).GcSlice"(ptr, i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*ArrayType).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*ArrayType).Uncommon"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).ChanDir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Common"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*Type).ExportedMethods"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).FieldAlign"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).FuncType"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/abi.(*Type).GcSlice"(ptr, i64, i64)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).HasName"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).IfaceIndir"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).InterfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).IsClosure"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).IsDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Key"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Len"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).MapType"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).NumMethod"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/abi.(*Type).Pointers"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Size"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).StructType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare i64 @runtime.LoadHiddenPointerKey(i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.CheckIndexInt"(i64, i64)

declare i64 @runtime.AdvanceHiddenPointer(i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
