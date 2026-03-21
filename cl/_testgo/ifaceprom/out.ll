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
@1 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", align 1
@2 = private unnamed_addr constant [3 x i8] c"one", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 0, i64 0, i32 -288235710, i8 13, i8 1, i8 1, i8 25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 47 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two" }] }, align 8
@3 = private unnamed_addr constant [9 x i8] c"main.impl", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -606537795, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 9 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, i16 2, i16 0, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 47 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two" }] }, align 8
@4 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom", align 1
@5 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.one", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@6 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr @"*_llgo_int" }, align 8
@7 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@8 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.two", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@9 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*_llgo_string" }, align 8
@10 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1944276081, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, ptr @"*github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods", i64 2, i64 2 } }, align 8
@11 = private unnamed_addr constant [47 x i8] c"interface { main.one() int; main.two() string }", align 1
@"*github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1980688929, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 47 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" }, align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 47 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1602411912, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA$imethods", i64 2, i64 2 } }, align 8
@12 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 486411694, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" }, align 8
@13 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 1
@14 = private unnamed_addr constant [4 x i8] c"pass", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %4, align 8
  call void @runtime.ClobberPointerRegs()
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %4, i32 0, i32 0
  %7 = ptrtoint ptr %6 to i64
  %8 = and i64 %7, 72057594037927935
  %9 = xor i64 %8, 25399393228665167
  %10 = shl i64 %9, 17
  %11 = select i1 false, i64 0, i64 %10
  %12 = lshr i64 %9, 39
  %13 = select i1 false, i64 0, i64 %12
  %14 = or i64 %11, %13
  %15 = and i64 %14, 72057594037927935
  %16 = or i64 %15, -6557241057451442176
  store i64 %16, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %16)
  call void @runtime.ClobberPointerRegs()
  %17 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = load i64, ptr %1, align 4
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %19, i64 %18, i64 16)
  %20 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %19, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %19, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %3, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %23)
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, 0
  %26 = getelementptr ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = insertvalue { ptr, ptr } undef, ptr %27, 0
  %29 = insertvalue { ptr, ptr } %28, ptr %24, 1
  %30 = extractvalue { ptr, ptr } %29, 0
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr %30)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %32 = extractvalue { ptr, ptr } %29, 1
  %33 = extractvalue { ptr, ptr } %29, 0
  %34 = call i64 %33(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %31)
  ret i64 %34
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %6, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %6, i32 0, i32 0
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %1, align 4
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %21, i64 %20, i64 16)
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %21, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %21, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %3, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %25)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, 0
  %28 = getelementptr ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  %30 = insertvalue { ptr, ptr } undef, ptr %29, 0
  %31 = insertvalue { ptr, ptr } %30, ptr %26, 1
  %32 = extractvalue { ptr, ptr } %31, 0
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr %32)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %34 = extractvalue { ptr, ptr } %31, 1
  %35 = extractvalue { ptr, ptr } %31, 0
  %36 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %35(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %33)
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %36, ptr %37, align 8
  %38 = icmp eq ptr %37, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %37, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %39, ptr %5, align 8
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %39, 0
  %41 = ptrtoint ptr %40 to i64
  %42 = and i64 %41, 72057594037927935
  %43 = xor i64 %42, 25399393228665167
  %44 = shl i64 %43, 17
  %45 = select i1 false, i64 0, i64 %44
  %46 = lshr i64 %43, 39
  %47 = select i1 false, i64 0, i64 %46
  %48 = or i64 %45, %47
  %49 = and i64 %48, 72057594037927935
  %50 = or i64 %49, -6557241057451442176
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %39, 1
  %52 = insertvalue { i64, i64 } undef, i64 %50, 0
  %53 = insertvalue { i64, i64 } %52, i64 %51, 1
  store { i64, i64 } %53, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %37, align 8
  call void @runtime.TouchConservativeSlot(ptr %37, i64 16)
  call void @runtime.ClobberPointerRegs()
  %54 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %55
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).one"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @runtime.ClobberPointerRegs()
  %5 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %6, i32 0, i32 0
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 72057594037927935
  %11 = xor i64 %10, 25399393228665167
  %12 = shl i64 %11, 17
  %13 = select i1 false, i64 0, i64 %12
  %14 = lshr i64 %11, 39
  %15 = select i1 false, i64 0, i64 %14
  %16 = or i64 %13, %15
  %17 = and i64 %16, 72057594037927935
  %18 = or i64 %17, -6557241057451442176
  store i64 %18, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %18)
  call void @runtime.ClobberPointerRegs()
  %19 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = load i64, ptr %1, align 4
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %21, i64 %20, i64 16)
  %22 = icmp eq ptr %21, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %21, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %21, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %3, align 8
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %25)
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, 0
  %28 = getelementptr ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = insertvalue { ptr, ptr } undef, ptr %29, 0
  %31 = insertvalue { ptr, ptr } %30, ptr %26, 1
  %32 = extractvalue { ptr, ptr } %31, 0
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr %32)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %34 = extractvalue { ptr, ptr } %31, 1
  %35 = extractvalue { ptr, ptr } %31, 0
  %36 = call i64 %35(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %33)
  ret i64 %36
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).two"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca { i64, i64 }, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %8, i32 0, i32 0
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 72057594037927935
  %13 = xor i64 %12, 25399393228665167
  %14 = shl i64 %13, 17
  %15 = select i1 false, i64 0, i64 %14
  %16 = lshr i64 %13, 39
  %17 = select i1 false, i64 0, i64 %16
  %18 = or i64 %15, %17
  %19 = and i64 %18, 72057594037927935
  %20 = or i64 %19, -6557241057451442176
  store i64 %20, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %20)
  call void @runtime.ClobberPointerRegs()
  %21 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %1, align 4
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %23, i64 %22, i64 16)
  %24 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, ptr %3, align 8
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %27)
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, 0
  %30 = getelementptr ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  %32 = insertvalue { ptr, ptr } undef, ptr %31, 0
  %33 = insertvalue { ptr, ptr } %32, ptr %28, 1
  %34 = extractvalue { ptr, ptr } %33, 0
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr %34)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  call void @runtime.ClobberPointerRegs()
  %36 = extractvalue { ptr, ptr } %33, 1
  %37 = extractvalue { ptr, ptr } %33, 0
  %38 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %37(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %35)
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %38, ptr %39, align 8
  %40 = icmp eq ptr %39, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %40)
  %41 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %39, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %41, ptr %5, align 8
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %41, 0
  %43 = ptrtoint ptr %42 to i64
  %44 = and i64 %43, 72057594037927935
  %45 = xor i64 %44, 25399393228665167
  %46 = shl i64 %45, 17
  %47 = select i1 false, i64 0, i64 %46
  %48 = lshr i64 %45, 39
  %49 = select i1 false, i64 0, i64 %48
  %50 = or i64 %47, %49
  %51 = and i64 %50, 72057594037927935
  %52 = or i64 %51, -6557241057451442176
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %41, 1
  %54 = insertvalue { i64, i64 } undef, i64 %52, 0
  %55 = insertvalue { i64, i64 } %54, i64 %53, 1
  store { i64, i64 } %55, ptr %4, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %39, align 8
  call void @runtime.TouchConservativeSlot(ptr %39, i64 16)
  call void @runtime.ClobberPointerRegs()
  %56 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %56)
  %57 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %5, align 8
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store { i64, i64 } zeroinitializer, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %57
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
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @runtime.ClobberPointerRegs()
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %8 = ptrtoint ptr %5 to i64
  %9 = and i64 %8, 72057594037927935
  %10 = xor i64 %9, 25399393228665167
  %11 = shl i64 %10, 17
  %12 = select i1 false, i64 0, i64 %11
  %13 = lshr i64 %10, 39
  %14 = select i1 false, i64 0, i64 %13
  %15 = or i64 %12, %14
  %16 = and i64 %15, 72057594037927935
  %17 = or i64 %16, -6557241057451442176
  store i64 %17, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %17)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %18 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load i64, ptr %1, align 4
  %20 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", align 8
  call void @runtime.LoadHiddenPointee(ptr %20, i64 %19, i64 0)
  %21 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %20, align 1
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" zeroinitializer, ptr %20, align 1
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one")
  %24 = call i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  ret i64 %24

_llgo_3:                                          ; No predecessors!
  unreachable
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca { i64, i64 }, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @runtime.ClobberPointerRegs()
  %6 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %10 = ptrtoint ptr %7 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %19)
  call void @runtime.ClobberPointerRegs()
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", align 8
  call void @runtime.LoadHiddenPointee(ptr %22, i64 %21, i64 0)
  %23 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %22, align 1
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" zeroinitializer, ptr %22, align 1
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two")
  %26 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %26, ptr %27, align 8
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %27, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %29, ptr %4, align 8
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %29, 0
  %31 = ptrtoint ptr %30 to i64
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = shl i64 %33, 17
  %35 = select i1 false, i64 0, i64 %34
  %36 = lshr i64 %33, 39
  %37 = select i1 false, i64 0, i64 %36
  %38 = or i64 %35, %37
  %39 = and i64 %38, 72057594037927935
  %40 = or i64 %39, -6557241057451442176
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %29, 1
  %42 = insertvalue { i64, i64 } undef, i64 %40, 0
  %43 = insertvalue { i64, i64 } %42, i64 %41, 1
  store { i64, i64 } %43, ptr %3, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %27, align 8
  call void @runtime.TouchConservativeSlot(ptr %27, i64 16)
  call void @runtime.ClobberPointerRegs()
  %44 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  store { i64, i64 } zeroinitializer, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %45

_llgo_3:                                          ; No predecessors!
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr null, ptr %1, align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %5 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr null, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %10 = alloca { ptr, ptr }, align 8
  %11 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %13 = alloca { ptr, ptr }, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr null, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %17 = alloca { i64, i64 }, align 8
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %18, align 8
  %19 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %21 = alloca { i64, i64 }, align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  store ptr null, ptr %24, align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %26 = alloca { ptr, ptr }, align 8
  %27 = alloca { i64, i64 }, align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %28, align 8
  %29 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %31 = alloca { ptr, ptr }, align 8
  %32 = alloca { i64, i64 }, align 8
  %33 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %33, align 8
  %34 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %34, i8 0, i64 16, i1 false)
  %35 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %34, i32 0, i32 0
  %37 = ptrtoint ptr %36 to i64
  %38 = and i64 %37, 72057594037927935
  %39 = xor i64 %38, 25399393228665167
  %40 = shl i64 %39, 17
  %41 = select i1 false, i64 0, i64 %40
  %42 = lshr i64 %39, 39
  %43 = select i1 false, i64 0, i64 %42
  %44 = or i64 %41, %43
  %45 = and i64 %44, 72057594037927935
  %46 = or i64 %45, -6557241057451442176
  store i64 %46, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %46)
  call void @runtime.ClobberPointerRegs()
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" zeroinitializer, ptr %47, align 1
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl")
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %49, ptr %47, 1
  %51 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %51)
  %52 = load i64, ptr %0, align 4
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %50, ptr %53, align 8
  call void @runtime.StoreHiddenPointee(i64 %52, ptr %53, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %53, align 8
  call void @runtime.TouchConservativeSlot(ptr %53, i64 16)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  call void @runtime.ClobberPointerRegs()
  %54 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %54)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %34, i32 0, i32 0
  %56 = ptrtoint ptr %55 to i64
  %57 = and i64 %56, 72057594037927935
  %58 = xor i64 %57, 25399393228665167
  %59 = shl i64 %58, 17
  %60 = select i1 false, i64 0, i64 %59
  %61 = lshr i64 %58, 39
  %62 = select i1 false, i64 0, i64 %61
  %63 = or i64 %60, %62
  %64 = and i64 %63, 72057594037927935
  %65 = or i64 %64, -6557241057451442176
  store i64 %65, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %65)
  call void @runtime.ClobberPointerRegs()
  %66 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %66)
  %67 = load i64, ptr %2, align 4
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %68, i64 %67, i64 16)
  %69 = icmp eq ptr %68, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %69)
  %70 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %68, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %68, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %70, ptr %4, align 8
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %71 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %71)
  %72 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %72)
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %72, 0
  %75 = getelementptr ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  %77 = insertvalue { ptr, ptr } undef, ptr %76, 0
  %78 = insertvalue { ptr, ptr } %77, ptr %73, 1
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 16)
  call void @runtime.ClobberPointerRegs()
  %80 = extractvalue { ptr, ptr } %78, 1
  %81 = extractvalue { ptr, ptr } %78, 0
  %82 = call i64 %81(ptr %80)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %79)
  %83 = icmp ne i64 %82, 1
  br i1 %83, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" zeroinitializer, ptr %34, align 8
  call void @runtime.TouchConservativeSlot(ptr %34, i64 16)
  call void @runtime.ClobberPointerRegs()
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 %82, ptr %84, align 4
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %84, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %85)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %86 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %34, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %87, ptr %5, align 8
  %88 = icmp eq ptr %5, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %5, align 8
  %90 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %89, 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, ptr %6, align 8
  %91 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %91)
  %92 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %6, align 8
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %92)
  %94 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %92, 0
  %95 = getelementptr ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  %97 = insertvalue { ptr, ptr } undef, ptr %96, 0
  %98 = insertvalue { ptr, ptr } %97, ptr %93, 1
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" zeroinitializer, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  %100 = extractvalue { ptr, ptr } %98, 1
  %101 = extractvalue { ptr, ptr } %98, 0
  %102 = call i64 %101(ptr %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %99)
  %103 = icmp ne i64 %102, 1
  br i1 %103, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 %102, ptr %104, align 4
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %104, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %105)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %106 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %34, i32 0, i32 0
  %108 = ptrtoint ptr %107 to i64
  %109 = and i64 %108, 72057594037927935
  %110 = xor i64 %109, 25399393228665167
  %111 = shl i64 %110, 17
  %112 = select i1 false, i64 0, i64 %111
  %113 = lshr i64 %110, 39
  %114 = select i1 false, i64 0, i64 %113
  %115 = or i64 %112, %114
  %116 = and i64 %115, 72057594037927935
  %117 = or i64 %116, -6557241057451442176
  store i64 %117, ptr %7, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %8, i64 %117)
  call void @runtime.ClobberPointerRegs()
  %118 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = load i64, ptr %7, align 4
  %120 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %120, i64 %119, i64 16)
  %121 = icmp eq ptr %120, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %121)
  %122 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %120, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %120, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %122, ptr %9, align 8
  store i64 0, ptr %7, align 4
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  store ptr null, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 8)
  call void @runtime.ClobberPointerRegs()
  %123 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %123)
  %124 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %124)
  %126 = icmp ne ptr %125, null
  br i1 %126, label %_llgo_19, label %_llgo_20

_llgo_5:                                          ; preds = %_llgo_19
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 %285, ptr %127, align 4
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %127, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %128)
  unreachable

_llgo_6:                                          ; preds = %_llgo_19
  %129 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %129)
  %130 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %34, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %130, ptr %11, align 8
  %131 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %131)
  %132 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %11, align 8
  %133 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %132, 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %133, ptr %12, align 8
  %134 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %12, align 8
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %135)
  %137 = icmp ne ptr %136, null
  br i1 %137, label %_llgo_23, label %_llgo_24

_llgo_7:                                          ; preds = %_llgo_23
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 %298, ptr %138, align 4
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %138, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %139)
  unreachable

_llgo_8:                                          ; preds = %_llgo_23
  %140 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %34, i32 0, i32 0
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
  store i64 %151, ptr %14, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %15, i64 %151)
  call void @runtime.ClobberPointerRegs()
  %152 = icmp eq ptr %14, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %152)
  %153 = load i64, ptr %14, align 4
  %154 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %154, i64 %153, i64 16)
  %155 = icmp eq ptr %154, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %154, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %154, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %156, ptr %16, align 8
  store i64 0, ptr %14, align 4
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  store ptr null, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 8)
  call void @runtime.ClobberPointerRegs()
  %157 = icmp eq ptr %16, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %157)
  %158 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %16, align 8
  %159 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %158)
  %160 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %158, 0
  %161 = getelementptr ptr, ptr %160, i64 4
  %162 = load ptr, ptr %161, align 8
  %163 = insertvalue { ptr, ptr } undef, ptr %162, 0
  %164 = insertvalue { ptr, ptr } %163, ptr %159, 1
  %165 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %16, align 8
  call void @runtime.TouchConservativeSlot(ptr %16, i64 16)
  call void @runtime.ClobberPointerRegs()
  %166 = extractvalue { ptr, ptr } %164, 1
  %167 = extractvalue { ptr, ptr } %164, 0
  %168 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %167(ptr %166)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %165)
  %169 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %168, ptr %169, align 8
  %170 = icmp eq ptr %169, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %170)
  %171 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %169, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %171, ptr %18, align 8
  %172 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %171, 0
  %173 = ptrtoint ptr %172 to i64
  %174 = and i64 %173, 72057594037927935
  %175 = xor i64 %174, 25399393228665167
  %176 = shl i64 %175, 17
  %177 = select i1 false, i64 0, i64 %176
  %178 = lshr i64 %175, 39
  %179 = select i1 false, i64 0, i64 %178
  %180 = or i64 %177, %179
  %181 = and i64 %180, 72057594037927935
  %182 = or i64 %181, -6557241057451442176
  %183 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %171, 1
  %184 = insertvalue { i64, i64 } undef, i64 %182, 0
  %185 = insertvalue { i64, i64 } %184, i64 %183, 1
  store { i64, i64 } %185, ptr %17, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %169, align 8
  call void @runtime.TouchConservativeSlot(ptr %169, i64 16)
  call void @runtime.ClobberPointerRegs()
  %186 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %186)
  %187 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %18, align 8
  %188 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %187, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %189 = xor i1 %188, true
  br i1 %189, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %190 = icmp eq ptr %18, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %190)
  %191 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %18, align 8
  %192 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %191, ptr %192, align 8
  %193 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %192, 1
  store { i64, i64 } zeroinitializer, ptr %17, align 4
  call void @runtime.TouchConservativeSlot(ptr %17, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %18, align 8
  call void @runtime.TouchConservativeSlot(ptr %18, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %193)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %194 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %194)
  %195 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %34, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %195, ptr %19, align 8
  %196 = icmp eq ptr %19, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %196)
  %197 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %19, align 8
  %198 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %197, 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %198, ptr %20, align 8
  %199 = icmp eq ptr %20, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %199)
  %200 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %20, align 8
  %201 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %200)
  %202 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %200, 0
  %203 = getelementptr ptr, ptr %202, i64 4
  %204 = load ptr, ptr %203, align 8
  %205 = insertvalue { ptr, ptr } undef, ptr %204, 0
  %206 = insertvalue { ptr, ptr } %205, ptr %201, 1
  %207 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" zeroinitializer, ptr %19, align 8
  call void @runtime.TouchConservativeSlot(ptr %19, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %20, align 8
  call void @runtime.TouchConservativeSlot(ptr %20, i64 16)
  call void @runtime.ClobberPointerRegs()
  %208 = extractvalue { ptr, ptr } %206, 1
  %209 = extractvalue { ptr, ptr } %206, 0
  %210 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %209(ptr %208)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %207)
  %211 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %210, ptr %211, align 8
  %212 = icmp eq ptr %211, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %212)
  %213 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %211, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %213, ptr %22, align 8
  %214 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %213, 0
  %215 = ptrtoint ptr %214 to i64
  %216 = and i64 %215, 72057594037927935
  %217 = xor i64 %216, 25399393228665167
  %218 = shl i64 %217, 17
  %219 = select i1 false, i64 0, i64 %218
  %220 = lshr i64 %217, 39
  %221 = select i1 false, i64 0, i64 %220
  %222 = or i64 %219, %221
  %223 = and i64 %222, 72057594037927935
  %224 = or i64 %223, -6557241057451442176
  %225 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %213, 1
  %226 = insertvalue { i64, i64 } undef, i64 %224, 0
  %227 = insertvalue { i64, i64 } %226, i64 %225, 1
  store { i64, i64 } %227, ptr %21, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %211, align 8
  call void @runtime.TouchConservativeSlot(ptr %211, i64 16)
  call void @runtime.ClobberPointerRegs()
  %228 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %228)
  %229 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %22, align 8
  %230 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %229, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %231 = xor i1 %230, true
  br i1 %231, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %232 = icmp eq ptr %22, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %232)
  %233 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %22, align 8
  %234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %233, ptr %234, align 8
  %235 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %234, 1
  store { i64, i64 } zeroinitializer, ptr %21, align 4
  call void @runtime.TouchConservativeSlot(ptr %21, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  call void @runtime.TouchConservativeSlot(ptr %22, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %235)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %236 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %236)
  %237 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %34, i32 0, i32 0
  %238 = ptrtoint ptr %237 to i64
  %239 = and i64 %238, 72057594037927935
  %240 = xor i64 %239, 25399393228665167
  %241 = shl i64 %240, 17
  %242 = select i1 false, i64 0, i64 %241
  %243 = lshr i64 %240, 39
  %244 = select i1 false, i64 0, i64 %243
  %245 = or i64 %242, %244
  %246 = and i64 %245, 72057594037927935
  %247 = or i64 %246, -6557241057451442176
  store i64 %247, ptr %23, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %24, i64 %247)
  call void @runtime.ClobberPointerRegs()
  %248 = icmp eq ptr %23, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %248)
  %249 = load i64, ptr %23, align 4
  %250 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  call void @runtime.LoadHiddenPointee(ptr %250, i64 %249, i64 16)
  %251 = icmp eq ptr %250, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %251)
  %252 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %250, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %250, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %252, ptr %25, align 8
  store i64 0, ptr %23, align 4
  call void @runtime.TouchConservativeSlot(ptr %23, i64 8)
  store ptr null, ptr %24, align 8
  call void @runtime.TouchConservativeSlot(ptr %24, i64 8)
  call void @runtime.ClobberPointerRegs()
  %253 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %253)
  %254 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %25, align 8
  %255 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %254)
  %256 = icmp ne ptr %255, null
  br i1 %256, label %_llgo_29, label %_llgo_30

_llgo_13:                                         ; preds = %_llgo_29
  %257 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %257)
  %258 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %28, align 8
  %259 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %258, ptr %259, align 8
  %260 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %259, 1
  store { i64, i64 } zeroinitializer, ptr %27, align 4
  call void @runtime.TouchConservativeSlot(ptr %27, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %28, align 8
  call void @runtime.TouchConservativeSlot(ptr %28, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %260)
  unreachable

_llgo_14:                                         ; preds = %_llgo_29
  %261 = icmp eq ptr %34, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %261)
  %262 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %34, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %262, ptr %29, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" zeroinitializer, ptr %34, align 8
  call void @runtime.TouchConservativeSlot(ptr %34, i64 16)
  call void @runtime.ClobberPointerRegs()
  %263 = icmp eq ptr %29, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %263)
  %264 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %29, align 8
  %265 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %264, 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %265, ptr %30, align 8
  %266 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %266)
  %267 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %30, align 8
  %268 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %267)
  %269 = icmp ne ptr %268, null
  br i1 %269, label %_llgo_33, label %_llgo_34

_llgo_15:                                         ; preds = %_llgo_33
  %270 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %270)
  %271 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %33, align 8
  %272 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %271, ptr %272, align 8
  %273 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %272, 1
  store { i64, i64 } zeroinitializer, ptr %32, align 4
  call void @runtime.TouchConservativeSlot(ptr %32, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %33, align 8
  call void @runtime.TouchConservativeSlot(ptr %33, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %273)
  unreachable

_llgo_16:                                         ; preds = %_llgo_33
  %274 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %274)
  ret void

_llgo_17:                                         ; No predecessors!
  unreachable

_llgo_18:                                         ; No predecessors!
  unreachable

_llgo_19:                                         ; preds = %_llgo_4
  %275 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %275)
  %276 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %9, align 8
  %277 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %278 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %277, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %276, ptr %278, align 8
  %279 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %277, 1
  store { ptr, ptr } %279, ptr %10, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %280 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %280)
  %281 = load { ptr, ptr }, ptr %10, align 8
  %282 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  %283 = extractvalue { ptr, ptr } %281, 1
  %284 = extractvalue { ptr, ptr } %281, 0
  %285 = call i64 %284(ptr %283)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %282)
  %286 = icmp ne i64 %285, 1
  br i1 %286, label %_llgo_5, label %_llgo_6

_llgo_20:                                         ; preds = %_llgo_4
  %287 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr %125, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %287)
  unreachable

_llgo_21:                                         ; No predecessors!
  unreachable

_llgo_22:                                         ; No predecessors!
  unreachable

_llgo_23:                                         ; preds = %_llgo_6
  %288 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %288)
  %289 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %12, align 8
  %290 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %291 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %290, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %289, ptr %291, align 8
  %292 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %290, 1
  store { ptr, ptr } %292, ptr %13, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" zeroinitializer, ptr %11, align 8
  call void @runtime.TouchConservativeSlot(ptr %11, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 16)
  call void @runtime.ClobberPointerRegs()
  %293 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %293)
  %294 = load { ptr, ptr }, ptr %13, align 8
  %295 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %13, align 8
  call void @runtime.TouchConservativeSlot(ptr %13, i64 16)
  call void @runtime.ClobberPointerRegs()
  %296 = extractvalue { ptr, ptr } %294, 1
  %297 = extractvalue { ptr, ptr } %294, 0
  %298 = call i64 %297(ptr %296)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %295)
  %299 = icmp ne i64 %298, 1
  br i1 %299, label %_llgo_7, label %_llgo_8

_llgo_24:                                         ; preds = %_llgo_6
  %300 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr %136, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %300)
  unreachable

_llgo_25:                                         ; No predecessors!
  unreachable

_llgo_26:                                         ; No predecessors!
  unreachable

_llgo_27:                                         ; No predecessors!
  unreachable

_llgo_28:                                         ; No predecessors!
  unreachable

_llgo_29:                                         ; preds = %_llgo_12
  %301 = icmp eq ptr %25, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %301)
  %302 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %25, align 8
  %303 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %304 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %303, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %302, ptr %304, align 8
  %305 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %303, 1
  store { ptr, ptr } %305, ptr %26, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %25, align 8
  call void @runtime.TouchConservativeSlot(ptr %25, i64 16)
  call void @runtime.ClobberPointerRegs()
  %306 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %306)
  %307 = load { ptr, ptr }, ptr %26, align 8
  %308 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %26, align 8
  call void @runtime.TouchConservativeSlot(ptr %26, i64 16)
  call void @runtime.ClobberPointerRegs()
  %309 = extractvalue { ptr, ptr } %307, 1
  %310 = extractvalue { ptr, ptr } %307, 0
  %311 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %310(ptr %309)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %308)
  %312 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %311, ptr %312, align 8
  %313 = icmp eq ptr %312, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %313)
  %314 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %312, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %314, ptr %28, align 8
  %315 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %314, 0
  %316 = ptrtoint ptr %315 to i64
  %317 = and i64 %316, 72057594037927935
  %318 = xor i64 %317, 25399393228665167
  %319 = shl i64 %318, 17
  %320 = select i1 false, i64 0, i64 %319
  %321 = lshr i64 %318, 39
  %322 = select i1 false, i64 0, i64 %321
  %323 = or i64 %320, %322
  %324 = and i64 %323, 72057594037927935
  %325 = or i64 %324, -6557241057451442176
  %326 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %314, 1
  %327 = insertvalue { i64, i64 } undef, i64 %325, 0
  %328 = insertvalue { i64, i64 } %327, i64 %326, 1
  store { i64, i64 } %328, ptr %27, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %312, align 8
  call void @runtime.TouchConservativeSlot(ptr %312, i64 16)
  call void @runtime.ClobberPointerRegs()
  %329 = icmp eq ptr %28, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %329)
  %330 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %28, align 8
  %331 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %330, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %332 = xor i1 %331, true
  br i1 %332, label %_llgo_13, label %_llgo_14

_llgo_30:                                         ; preds = %_llgo_12
  %333 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr %255, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %333)
  unreachable

_llgo_31:                                         ; No predecessors!
  unreachable

_llgo_32:                                         ; No predecessors!
  unreachable

_llgo_33:                                         ; preds = %_llgo_14
  %334 = icmp eq ptr %30, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %334)
  %335 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %30, align 8
  %336 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %337 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %336, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %335, ptr %337, align 8
  %338 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %336, 1
  store { ptr, ptr } %338, ptr %31, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" zeroinitializer, ptr %29, align 8
  call void @runtime.TouchConservativeSlot(ptr %29, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %30, align 8
  call void @runtime.TouchConservativeSlot(ptr %30, i64 16)
  call void @runtime.ClobberPointerRegs()
  %339 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %339)
  %340 = load { ptr, ptr }, ptr %31, align 8
  %341 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store { ptr, ptr } zeroinitializer, ptr %31, align 8
  call void @runtime.TouchConservativeSlot(ptr %31, i64 16)
  call void @runtime.ClobberPointerRegs()
  %342 = extractvalue { ptr, ptr } %340, 1
  %343 = extractvalue { ptr, ptr } %340, 0
  %344 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %343(ptr %342)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %341)
  %345 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %344, ptr %345, align 8
  %346 = icmp eq ptr %345, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %346)
  %347 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %345, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %347, ptr %33, align 8
  %348 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %347, 0
  %349 = ptrtoint ptr %348 to i64
  %350 = and i64 %349, 72057594037927935
  %351 = xor i64 %350, 25399393228665167
  %352 = shl i64 %351, 17
  %353 = select i1 false, i64 0, i64 %352
  %354 = lshr i64 %351, 39
  %355 = select i1 false, i64 0, i64 %354
  %356 = or i64 %353, %355
  %357 = and i64 %356, 72057594037927935
  %358 = or i64 %357, -6557241057451442176
  %359 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %347, 1
  %360 = insertvalue { i64, i64 } undef, i64 %358, 0
  %361 = insertvalue { i64, i64 } %360, i64 %359, 1
  store { i64, i64 } %361, ptr %32, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %345, align 8
  call void @runtime.TouchConservativeSlot(ptr %345, i64 16)
  call void @runtime.ClobberPointerRegs()
  %362 = icmp eq ptr %33, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %362)
  %363 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %33, align 8
  %364 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %363, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %365 = xor i1 %364, true
  br i1 %365, label %_llgo_15, label %_llgo_16

_llgo_34:                                         ; preds = %_llgo_14
  %366 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, ptr %268, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 45 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %366)
  unreachable

_llgo_35:                                         ; No predecessors!
  unreachable

_llgo_36:                                         ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakePanicWrapError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal0")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal0"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.MakeTypeAssertionError"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %3 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %2, 0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call i64 %11(ptr %10)
  ret i64 %12
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound"(ptr %0) {
_llgo_0:
  %1 = alloca { i64, i64 }, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %5 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %4, 0
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %5)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, 0
  %8 = getelementptr ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = insertvalue { ptr, ptr } undef, ptr %9, 0
  %11 = insertvalue { ptr, ptr } %10, ptr %6, 1
  %12 = extractvalue { ptr, ptr } %11, 1
  %13 = extractvalue { ptr, ptr } %11, 0
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %13(ptr %12)
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, ptr %15, align 8
  %16 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %17, ptr %2, align 8
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %17, 0
  %19 = ptrtoint ptr %18 to i64
  %20 = and i64 %19, 72057594037927935
  %21 = xor i64 %20, 25399393228665167
  %22 = shl i64 %21, 17
  %23 = select i1 false, i64 0, i64 %22
  %24 = lshr i64 %21, 39
  %25 = select i1 false, i64 0, i64 %24
  %26 = or i64 %23, %25
  %27 = and i64 %26, 72057594037927935
  %28 = or i64 %27, -6557241057451442176
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %17, 1
  %30 = insertvalue { i64, i64 } undef, i64 %28, 0
  %31 = insertvalue { i64, i64 } %30, i64 %29, 1
  store { i64, i64 } %31, ptr %1, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 16)
  call void @runtime.ClobberPointerRegs()
  %32 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  store { i64, i64 } zeroinitializer, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store { i64, i64 } zeroinitializer, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %33
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
