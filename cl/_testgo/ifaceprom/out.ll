; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifaceprom'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifaceprom"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"two", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -288235710, i8 13, i8 1, i8 1, i8 25, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 47 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two" }] }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal0" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal0", i64 0 }
@1 = private unnamed_addr constant [9 x i8] c"main.impl", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -606537795, i8 11, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 47 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two" }] }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }
@2 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom", align 1
@3 = private unnamed_addr constant [3 x i8] c"one", align 1
@4 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.one", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"*_llgo_int" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", i64 0 }
@6 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@7 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.two", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_string" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", i64 0 }
@9 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1944276081, i8 0, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 47 }, ptr @"*github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods", i64 2, i64 2 } }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", i64 0 }
@10 = private unnamed_addr constant [47 x i8] c"interface { main.one() int; main.two() string }", align 1
@"*github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1980688929, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 47 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" }, align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 47 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1602411912, i8 4, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods", i64 2, i64 2 } }, align 8
@11 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 486411694, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" }, align 8
@12 = private unnamed_addr constant [116 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/ifaceprom.I -> github.com/goplus/llgo/cl/_testgo/ifaceprom.I failed", align 1
@13 = private unnamed_addr constant [4 x i8] c"pass", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 1
  store i64 1, ptr %10, align 4
  %11 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 2
  store ptr %4, ptr %11, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr i8, ptr %8, i64 16
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %8, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %15)
  %16 = call i64 %12(ptr %14)
  ret i64 %16
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 1
  store i64 1, ptr %10, align 4
  %11 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 2
  store ptr %4, ptr %11, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr i8, ptr %8, i64 16
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %8, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %15)
  %16 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %12(ptr %14)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %16
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %8 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 2
  store ptr %3, ptr %10, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr i8, ptr %7, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %7, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %14)
  %15 = call i64 %11(ptr %13)
  ret i64 %15
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).two"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %8 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 2
  store ptr %3, ptr %10, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr i8, ptr %7, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %7, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %14)
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %11(ptr %13)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %15
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret i64 1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1)
  ret i64 %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" zeroinitializer, ptr %2, align 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl")
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %2, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %1, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 0
  %10 = getelementptr ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %13 = getelementptr inbounds { ptr, i64, ptr }, ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds { ptr, i64, ptr }, ptr %12, i32 0, i32 1
  store i64 1, ptr %14, align 4
  %15 = getelementptr inbounds { ptr, i64, ptr }, ptr %12, i32 0, i32 2
  store ptr %8, ptr %15, align 8
  %16 = load ptr, ptr %12, align 8
  %17 = getelementptr i8, ptr %12, i64 16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %12, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %19)
  %20 = call i64 %16(ptr %18)
  %21 = icmp ne i64 %20, 1
  br i1 %21, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %22 = inttoptr i64 %20 to ptr
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %22, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %24 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %25 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %24, 0
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %25)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, 0
  %28 = getelementptr ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %31 = getelementptr inbounds { ptr, i64, ptr }, ptr %30, i32 0, i32 0
  store ptr %29, ptr %31, align 8
  %32 = getelementptr inbounds { ptr, i64, ptr }, ptr %30, i32 0, i32 1
  store i64 1, ptr %32, align 4
  %33 = getelementptr inbounds { ptr, i64, ptr }, ptr %30, i32 0, i32 2
  store ptr %26, ptr %33, align 8
  %34 = load ptr, ptr %30, align 8
  %35 = getelementptr i8, ptr %30, i64 16
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %30, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %37)
  %38 = call i64 %34(ptr %36)
  %39 = icmp ne i64 %38, 1
  br i1 %39, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %40 = inttoptr i64 %38 to ptr
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %40, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %42, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 1
  br i1 true, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %46 = inttoptr i64 %110 to ptr
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %46, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %48 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %49 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %48, 0
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %49)
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, 1
  br i1 true, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %52 = inttoptr i64 %120 to ptr
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %52, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %55 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %54, align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %55)
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %55, 0
  %58 = getelementptr ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %61 = getelementptr inbounds { ptr, i64, ptr }, ptr %60, i32 0, i32 0
  store ptr %59, ptr %61, align 8
  %62 = getelementptr inbounds { ptr, i64, ptr }, ptr %60, i32 0, i32 1
  store i64 1, ptr %62, align 4
  %63 = getelementptr inbounds { ptr, i64, ptr }, ptr %60, i32 0, i32 2
  store ptr %56, ptr %63, align 8
  %64 = load ptr, ptr %60, align 8
  %65 = getelementptr i8, ptr %60, i64 16
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr i8, ptr %60, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %67)
  %68 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %64(ptr %66)
  %69 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %68, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %70 = xor i1 %69, true
  br i1 %70, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %71, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %73 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %74 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %73, 0
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %74)
  %76 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %74, 0
  %77 = getelementptr ptr, ptr %76, i64 4
  %78 = load ptr, ptr %77, align 8
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %80 = getelementptr inbounds { ptr, i64, ptr }, ptr %79, i32 0, i32 0
  store ptr %78, ptr %80, align 8
  %81 = getelementptr inbounds { ptr, i64, ptr }, ptr %79, i32 0, i32 1
  store i64 1, ptr %81, align 4
  %82 = getelementptr inbounds { ptr, i64, ptr }, ptr %79, i32 0, i32 2
  store ptr %75, ptr %82, align 8
  %83 = load ptr, ptr %79, align 8
  %84 = getelementptr i8, ptr %79, i64 16
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr i8, ptr %79, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %86)
  %87 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %83(ptr %85)
  %88 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %87, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %89 = xor i1 %88, true
  br i1 %89, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %87, ptr %90, align 8
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %90, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %91)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %92 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %92, align 8
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %93)
  %95 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %93, 1
  br i1 true, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %130, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %96, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %97)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %98 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %99 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %98, 0
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %99)
  %101 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %99, 1
  br i1 true, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %141, ptr %102, align 8
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %102, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %103)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_17:                                         ; preds = %_llgo_4
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %105 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %104, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr %105, align 8
  %106 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %104, i32 0, i32 1
  store i64 1, ptr %106, align 4
  %107 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %104, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %107, align 8
  %108 = load ptr, ptr %104, align 8
  %109 = getelementptr i8, ptr %104, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %109)
  %110 = call i64 %108()
  %111 = icmp ne i64 %110, 1
  br i1 %111, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 116 }, ptr %112, align 8
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %112, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %113)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %115 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %114, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr %115, align 8
  %116 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %114, i32 0, i32 1
  store i64 1, ptr %116, align 4
  %117 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %114, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, ptr %117, align 8
  %118 = load ptr, ptr %114, align 8
  %119 = getelementptr i8, ptr %114, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %119)
  %120 = call i64 %118()
  %121 = icmp ne i64 %120, 1
  br i1 %121, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 116 }, ptr %122, align 8
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %122, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %123)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %125 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %124, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr %125, align 8
  %126 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %124, i32 0, i32 1
  store i64 1, ptr %126, align 4
  %127 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %124, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %93, ptr %127, align 8
  %128 = load ptr, ptr %124, align 8
  %129 = getelementptr i8, ptr %124, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %129)
  %130 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %128()
  %131 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %130, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %132 = xor i1 %131, true
  br i1 %132, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 116 }, ptr %133, align 8
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %133, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %134)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %136 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %135, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr %136, align 8
  %137 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %135, i32 0, i32 1
  store i64 1, ptr %137, align 4
  %138 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %135, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %99, ptr %138, align 8
  %139 = load ptr, ptr %135, align 8
  %140 = getelementptr i8, ptr %135, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %140)
  %141 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %139()
  %142 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %141, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %143 = xor i1 %142, true
  br i1 %143, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 116 }, ptr %144, align 8
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %144, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %145)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %8 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 2
  store ptr %3, ptr %10, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr i8, ptr %7, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %7, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %14)
  %15 = call i64 %11(ptr %13)
  ret i64 %15
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %8 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 1
  store i64 1, ptr %9, align 4
  %10 = getelementptr inbounds { ptr, i64, ptr }, ptr %7, i32 0, i32 2
  store ptr %3, ptr %10, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr i8, ptr %7, i64 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %7, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %14)
  %15 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %11(ptr %13)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %15
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
