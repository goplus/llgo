; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifaceprom'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifaceprom"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
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
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -288235710, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 47 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two" }] }, align 8
@1 = private unnamed_addr constant [9 x i8] c"main.impl", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -606537795, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 47 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two" }] }, align 8
@2 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom", align 1
@3 = private unnamed_addr constant [3 x i8] c"one", align 1
@4 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.one", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"*_llgo_int" }, align 8
@6 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@7 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.two", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_string" }, align 8
@9 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1944276081, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 47 }, ptr @"*github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods", i64 2, i64 2 } }, align 8
@10 = private unnamed_addr constant [47 x i8] c"interface { main.one() int; main.two() string }", align 1
@"*github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1980688929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 47 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" }, align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 47 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1602411912, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods", i64 2, i64 2 } }, align 8
@11 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 486411694, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" }, align 8
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
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %13 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %10)
  %14 = call i64 %11(ptr %10)
  %15 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %12)
  ret i64 %14
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
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %13 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %10)
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %11(ptr %10)
  %15 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %12)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %14
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %12 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %9)
  %13 = call i64 %10(ptr %9)
  %14 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %11)
  ret i64 %13
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).two"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %12 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %9)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %10(ptr %9)
  %14 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %11)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %13
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
  %12 = insertvalue { ptr, ptr } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %8, 1
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  %16 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %17 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %14)
  %18 = call i64 %15(ptr %14)
  %19 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %16)
  %20 = icmp ne i64 %18, 1
  br i1 %20, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %21 = inttoptr i64 %18 to ptr
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %21, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %23 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %24 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %23, 0
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %24)
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, 0
  %27 = getelementptr ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = insertvalue { ptr, ptr } undef, ptr %28, 0
  %30 = insertvalue { ptr, ptr } %29, ptr %25, 1
  %31 = extractvalue { ptr, ptr } %30, 1
  %32 = extractvalue { ptr, ptr } %30, 0
  %33 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %34 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %31)
  %35 = call i64 %32(ptr %31)
  %36 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %33)
  %37 = icmp ne i64 %35, 1
  br i1 %37, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %38 = inttoptr i64 %35 to ptr
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %38, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %39)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %40, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %41)
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 1
  br i1 true, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %44 = inttoptr i64 %107 to ptr
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %46 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %47 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %46, 0
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %47)
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, 1
  br i1 true, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %50 = inttoptr i64 %119 to ptr
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %50, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %51)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %52 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %53 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %52, align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %53)
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %53, 0
  %56 = getelementptr ptr, ptr %55, i64 4
  %57 = load ptr, ptr %56, align 8
  %58 = insertvalue { ptr, ptr } undef, ptr %57, 0
  %59 = insertvalue { ptr, ptr } %58, ptr %54, 1
  %60 = extractvalue { ptr, ptr } %59, 1
  %61 = extractvalue { ptr, ptr } %59, 0
  %62 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %63 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %60)
  %64 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %61(ptr %60)
  %65 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %62)
  %66 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %64, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %67 = xor i1 %66, true
  br i1 %67, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %64, ptr %68, align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %68, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %69)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %70 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %71 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %70, 0
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %71)
  %73 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %71, 0
  %74 = getelementptr ptr, ptr %73, i64 4
  %75 = load ptr, ptr %74, align 8
  %76 = insertvalue { ptr, ptr } undef, ptr %75, 0
  %77 = insertvalue { ptr, ptr } %76, ptr %72, 1
  %78 = extractvalue { ptr, ptr } %77, 1
  %79 = extractvalue { ptr, ptr } %77, 0
  %80 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %81 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %78)
  %82 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %79(ptr %78)
  %83 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %80)
  %84 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %82, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %85 = xor i1 %84, true
  br i1 %85, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %82, ptr %86, align 8
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %86, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %87)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %88 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %89 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %88, align 8
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %89)
  %91 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %89, 1
  br i1 true, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %131, ptr %92, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %92, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %93)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %94 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %95 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %94, 0
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %95)
  %97 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, 1
  br i1 true, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %144, ptr %98, align 8
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %98, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %99)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_17:                                         ; preds = %_llgo_4
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %101 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %100, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %101, align 8
  %102 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %100, 1
  %103 = extractvalue { ptr, ptr } %102, 1
  %104 = extractvalue { ptr, ptr } %102, 0
  %105 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %106 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %103)
  %107 = call i64 %104()
  %108 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %105)
  %109 = icmp ne i64 %107, 1
  br i1 %109, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 116 }, ptr %110, align 8
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %110, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %111)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %113 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %112, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %113, align 8
  %114 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %112, 1
  %115 = extractvalue { ptr, ptr } %114, 1
  %116 = extractvalue { ptr, ptr } %114, 0
  %117 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %118 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %115)
  %119 = call i64 %116()
  %120 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %117)
  %121 = icmp ne i64 %119, 1
  br i1 %121, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 116 }, ptr %122, align 8
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %122, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %123)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %125 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %124, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %89, ptr %125, align 8
  %126 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %124, 1
  %127 = extractvalue { ptr, ptr } %126, 1
  %128 = extractvalue { ptr, ptr } %126, 0
  %129 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %130 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %127)
  %131 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %128()
  %132 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %129)
  %133 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %131, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %134 = xor i1 %133, true
  br i1 %134, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 116 }, ptr %135, align 8
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %135, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %136)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %138 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %137, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, ptr %138, align 8
  %139 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %137, 1
  %140 = extractvalue { ptr, ptr } %139, 1
  %141 = extractvalue { ptr, ptr } %139, 0
  %142 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %143 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %140)
  %144 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %141()
  %145 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %142)
  %146 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %144, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %147 = xor i1 %146, true
  br i1 %147, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %148 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 116 }, ptr %148, align 8
  %149 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %148, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %149)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound"() {
_llgo_0:
  %0 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %12 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %9)
  %13 = call i64 %10(ptr %9)
  %14 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %11)
  ret i64 %13
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound"() {
_llgo_0:
  %0 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %12 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %9)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %10(ptr %9)
  %14 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %11)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %13
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
