; ModuleID = 'github.com/goplus/llgo/cl/_testgo/embedunexport-1598'
source_filename = "github.com/goplus/llgo/cl/_testgo/embedunexport-1598"

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
%"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"test", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2141240098, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 12 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 52 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.(*Wrapped).Name", ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.(*Wrapped).Name" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 57 }, ptr @"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA", ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.(*Wrapped).setName", ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.(*Wrapped).setName" }] }, align 8
@1 = private unnamed_addr constant [12 x i8] c"main.Wrapped", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -405296353, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 12 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_struct$b2smqLeQUt3N00Tuej_qGW8RWj617tsQ4_QXqpM_-4c$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 52 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.(*Wrapped).Name", ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped.Name" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 57 }, ptr @"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA", ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.(*Wrapped).setName", ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped.setName" }] }, align 8
@2 = private unnamed_addr constant [4 x i8] c"Base", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/embedunexport.Base" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1243007653, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 18 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/embedunexport.Base" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 49 }, i16 2, i16 1, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).Name", ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).Name" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 57 }, ptr @"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA", ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).setName", ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).setName" }] }, align 8
@3 = private unnamed_addr constant [18 x i8] c"embedunexport.Base", align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/embedunexport.Base" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 159878037, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/embedunexport.Base" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 18 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/embedunexport.Base" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 49 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.struct$9Lrk1PmOX8nhNTkUnXhJ9SmPekQ9DVC-LUY2ssenyVA$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 49 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@4 = private unnamed_addr constant [49 x i8] c"github.com/goplus/llgo/cl/_testdata/embedunexport", align 1
@5 = private unnamed_addr constant [4 x i8] c"name", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr @"*_llgo_string" }, align 8
@6 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.struct$9Lrk1PmOX8nhNTkUnXhJ9SmPekQ9DVC-LUY2ssenyVA$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, ptr @_llgo_string, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@7 = private unnamed_addr constant [4 x i8] c"Name", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@8 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@9 = private unnamed_addr constant [7 x i8] c"setName", align 1
@10 = private unnamed_addr constant [57 x i8] c"github.com/goplus/llgo/cl/_testdata/embedunexport.setName", align 1
@"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1321670770, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr @"*_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@11 = private unnamed_addr constant [12 x i8] c"func(string)", align 1
@"*_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -881764398, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 12 }, ptr null }, ptr @"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA" }, align 8
@"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA$in" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_struct$b2smqLeQUt3N00Tuej_qGW8RWj617tsQ4_QXqpM_-4c$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/embedunexport.Base", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true }], align 8
@12 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/cl/_testgo/embedunexport-1598", align 1
@"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.iface$gGW7PSocDeRlTvk5kuSew8C-TZ8OXQrGkMlj2EUlZ9E" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1891450587, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 58 }, ptr @"*github.com/goplus/llgo/cl/_testgo/embedunexport-1598.iface$gGW7PSocDeRlTvk5kuSew8C-TZ8OXQrGkMlj2EUlZ9E" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.iface$gGW7PSocDeRlTvk5kuSew8C-TZ8OXQrGkMlj2EUlZ9E$imethods", i64 2, i64 2 } }, align 8
@13 = private unnamed_addr constant [58 x i8] c"interface { Name() string; embedunexport.setName(string) }", align 1
@"*github.com/goplus/llgo/cl/_testgo/embedunexport-1598.iface$gGW7PSocDeRlTvk5kuSew8C-TZ8OXQrGkMlj2EUlZ9E" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -927256307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 58 }, ptr null }, ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.iface$gGW7PSocDeRlTvk5kuSew8C-TZ8OXQrGkMlj2EUlZ9E" }, align 8
@"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.iface$gGW7PSocDeRlTvk5kuSew8C-TZ8OXQrGkMlj2EUlZ9E$imethods" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 57 }, ptr @"_llgo_func$dlTgtqQDYoqfVBQYEBE1Fa3ytcia1pdKaKVOnw8ZjkA" }], align 8

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped.Name"(%"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped", align 8
  call void @llvm.memset(ptr %7, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped", ptr %7, i32 0, i32 0
  %10 = ptrtoint ptr %9 to i64
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
  %20 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %1, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %22)
  store %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).Name")
  %24 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %3, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %35 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).Name"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %35, ptr %36, align 8
  %37 = icmp eq ptr %36, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %36, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %38, ptr %6, align 8
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %38, 0
  %40 = ptrtoint ptr %39 to i64
  %41 = and i64 %40, 72057594037927935
  %42 = xor i64 %41, 25399393228665167
  %43 = shl i64 %42, 17
  %44 = select i1 false, i64 0, i64 %43
  %45 = lshr i64 %42, 39
  %46 = select i1 false, i64 0, i64 %45
  %47 = or i64 %44, %46
  %48 = and i64 %47, 72057594037927935
  %49 = or i64 %48, -6557241057451442176
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %38, 1
  %51 = insertvalue { i64, i64 } undef, i64 %49, 0
  %52 = insertvalue { i64, i64 } %51, i64 %50, 1
  store { i64, i64 } %52, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %36, align 8
  call void @runtime.TouchConservativeSlot(ptr %36, i64 16)
  call void @runtime.ClobberPointerRegs()
  %53 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %54
}

define void @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped.setName"(%"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %6, align 8
  call void @runtime.ClobberPointerRegs()
  %7 = alloca %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped", align 8
  call void @llvm.memset(ptr %7, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" %0, ptr %7, align 8
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped", ptr %7, i32 0, i32 0
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = load i64, ptr %2, align 4
  %22 = call i64 @runtime.LoadHiddenPointerKey(i64 %21)
  store i64 %22, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %22)
  store %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).setName")
  %24 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %24)
  %25 = load i64, ptr %4, align 4
  %26 = and i64 %25, 72057594037927935
  %27 = lshr i64 %26, 17
  %28 = select i1 false, i64 0, i64 %27
  %29 = shl i64 %26, 39
  %30 = select i1 false, i64 0, i64 %29
  %31 = or i64 %28, %30
  %32 = and i64 %31, 72057594037927935
  %33 = xor i64 %32, 25399393228665167
  %34 = inttoptr i64 %33 to ptr
  %35 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).setName"(ptr %34, %"github.com/goplus/llgo/runtime/internal/runtime.String" %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %23)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.(*Wrapped).Name"(ptr %0) {
_llgo_0:
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %2, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr null, ptr %4, align 8
  %5 = alloca { i64, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped", ptr %9, i32 0, i32 0
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %1, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %2, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %1, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %3, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %4, i64 %24)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %1, align 4
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store ptr null, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).Name")
  %26 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %3, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  store i64 0, ptr %3, align 4
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  store ptr null, ptr %4, align 8
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  call void @runtime.ClobberPointerRegs()
  %37 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).Name"(ptr %36)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %37, ptr %38, align 8
  %39 = icmp eq ptr %38, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %38, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %40, ptr %6, align 8
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %40, 0
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 72057594037927935
  %44 = xor i64 %43, 25399393228665167
  %45 = shl i64 %44, 17
  %46 = select i1 false, i64 0, i64 %45
  %47 = lshr i64 %44, 39
  %48 = select i1 false, i64 0, i64 %47
  %49 = or i64 %46, %48
  %50 = and i64 %49, 72057594037927935
  %51 = or i64 %50, -6557241057451442176
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %40, 1
  %53 = insertvalue { i64, i64 } undef, i64 %51, 0
  %54 = insertvalue { i64, i64 } %53, i64 %52, 1
  store { i64, i64 } %54, ptr %5, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %38, align 8
  call void @runtime.TouchConservativeSlot(ptr %38, i64 16)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %6, align 8
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store { i64, i64 } zeroinitializer, ptr %5, align 4
  call void @runtime.TouchConservativeSlot(ptr %5, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %56
}

define void @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.(*Wrapped).setName"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %1, ptr %7, align 8
  call void @runtime.ClobberPointerRegs()
  %8 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %6, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped", ptr %9, i32 0, i32 0
  %12 = ptrtoint ptr %11 to i64
  %13 = and i64 %12, 72057594037927935
  %14 = xor i64 %13, 25399393228665167
  %15 = shl i64 %14, 17
  %16 = select i1 false, i64 0, i64 %15
  %17 = lshr i64 %14, 39
  %18 = select i1 false, i64 0, i64 %17
  %19 = or i64 %16, %18
  %20 = and i64 %19, 72057594037927935
  %21 = or i64 %20, -6557241057451442176
  store i64 %21, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %21)
  call void @runtime.ClobberPointerRegs()
  %22 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %22)
  %23 = load i64, ptr %2, align 4
  %24 = call i64 @runtime.LoadHiddenPointerKey(i64 %23)
  store i64 %24, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %24)
  store ptr null, ptr %6, align 8
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).setName")
  %26 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %26)
  %27 = load i64, ptr %4, align 4
  %28 = and i64 %27, 72057594037927935
  %29 = lshr i64 %28, 17
  %30 = select i1 false, i64 0, i64 %29
  %31 = shl i64 %28, 39
  %32 = select i1 false, i64 0, i64 %31
  %33 = or i64 %30, %32
  %34 = and i64 %33, 72057594037927935
  %35 = xor i64 %34, 25399393228665167
  %36 = inttoptr i64 %35 to ptr
  %37 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %37)
  %38 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).setName"(ptr %36, %"github.com/goplus/llgo/runtime/internal/runtime.String" %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %25)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/embedunexport.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.main"() {
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
  %6 = alloca { i64, i64 }, align 8
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %9 = call ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.NewBase"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %8)
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 72057594037927935
  %12 = xor i64 %11, 25399393228665167
  %13 = shl i64 %12, 17
  %14 = select i1 false, i64 0, i64 %13
  %15 = lshr i64 %12, 39
  %16 = select i1 false, i64 0, i64 %15
  %17 = or i64 %14, %16
  %18 = and i64 %17, 72057594037927935
  %19 = or i64 %18, -6557241057451442176
  store i64 %19, ptr %0, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %1, i64 %19)
  call void @runtime.ClobberPointerRegs()
  %20 = call i64 @runtime.AllocZHidden(i64 8)
  store i64 %20, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %20)
  %21 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load i64, ptr %2, align 4
  %23 = and i64 %22, 72057594037927935
  %24 = lshr i64 %23, 17
  %25 = select i1 false, i64 0, i64 %24
  %26 = shl i64 %23, 39
  %27 = select i1 false, i64 0, i64 %26
  %28 = or i64 %25, %27
  %29 = and i64 %28, 72057594037927935
  %30 = xor i64 %29, 25399393228665167
  %31 = inttoptr i64 %30 to ptr
  %32 = icmp eq ptr %31, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped", ptr %31, i32 0, i32 0
  %34 = ptrtoint ptr %33 to i64
  %35 = and i64 %34, 72057594037927935
  %36 = xor i64 %35, 25399393228665167
  %37 = shl i64 %36, 17
  %38 = select i1 false, i64 0, i64 %37
  %39 = lshr i64 %36, 39
  %40 = select i1 false, i64 0, i64 %39
  %41 = or i64 %38, %40
  %42 = and i64 %41, 72057594037927935
  %43 = or i64 %42, -6557241057451442176
  store i64 %43, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %43)
  call void @runtime.ClobberPointerRegs()
  %44 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %44)
  %45 = load i64, ptr %4, align 4
  %46 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %46)
  %47 = load i64, ptr %0, align 4
  %48 = and i64 %47, 72057594037927935
  %49 = lshr i64 %48, 17
  %50 = select i1 false, i64 0, i64 %49
  %51 = shl i64 %48, 39
  %52 = select i1 false, i64 0, i64 %51
  %53 = or i64 %50, %52
  %54 = and i64 %53, 72057594037927935
  %55 = xor i64 %54, 25399393228665167
  %56 = inttoptr i64 %55 to ptr
  %57 = alloca ptr, align 8
  store ptr %56, ptr %57, align 8
  call void @runtime.StoreHiddenPointee(i64 %45, ptr %57, i64 8)
  store ptr null, ptr %57, align 8
  call void @runtime.TouchConservativeSlot(ptr %57, i64 8)
  store i64 0, ptr %0, align 4
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  store ptr null, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 8)
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  %58 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %58)
  %59 = load i64, ptr %2, align 4
  %60 = and i64 %59, 72057594037927935
  %61 = lshr i64 %60, 17
  %62 = select i1 false, i64 0, i64 %61
  %63 = shl i64 %60, 39
  %64 = select i1 false, i64 0, i64 %63
  %65 = or i64 %62, %64
  %66 = and i64 %65, 72057594037927935
  %67 = xor i64 %66, 25399393228665167
  %68 = inttoptr i64 %67 to ptr
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"github.com/goplus/llgo/cl/_testgo/embedunexport-1598.iface$gGW7PSocDeRlTvk5kuSew8C-TZ8OXQrGkMlj2EUlZ9E", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/embedunexport-1598.Wrapped")
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %69, 0
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %70, ptr %68, 1
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  call void @"github.com/goplus/llgo/cl/_testdata/embedunexport.Use"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %72)
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %71)
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %71, 0
  %75 = getelementptr ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  %77 = insertvalue { ptr, ptr } undef, ptr %76, 0
  %78 = insertvalue { ptr, ptr } %77, ptr %73, 1
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %80 = extractvalue { ptr, ptr } %78, 1
  %81 = extractvalue { ptr, ptr } %78, 0
  %82 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %81(ptr %80)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %79)
  %83 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %82, ptr %83, align 8
  %84 = icmp eq ptr %83, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %83, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %85, ptr %7, align 8
  %86 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %85, 0
  %87 = ptrtoint ptr %86 to i64
  %88 = and i64 %87, 72057594037927935
  %89 = xor i64 %88, 25399393228665167
  %90 = shl i64 %89, 17
  %91 = select i1 false, i64 0, i64 %90
  %92 = lshr i64 %89, 39
  %93 = select i1 false, i64 0, i64 %92
  %94 = or i64 %91, %93
  %95 = and i64 %94, 72057594037927935
  %96 = or i64 %95, -6557241057451442176
  %97 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %85, 1
  %98 = insertvalue { i64, i64 } undef, i64 %96, 0
  %99 = insertvalue { i64, i64 } %98, i64 %97, 1
  store { i64, i64 } %99, ptr %6, align 4
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %83, align 8
  call void @runtime.TouchConservativeSlot(ptr %83, i64 16)
  call void @runtime.ClobberPointerRegs()
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %101 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  store { i64, i64 } zeroinitializer, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 16)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %102)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %100)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare i64 @runtime.LoadHiddenPointerKey(i64)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).Name"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/embedunexport.(*Base).setName"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/cl/_testdata/embedunexport.init"()

declare ptr @"github.com/goplus/llgo/cl/_testdata/embedunexport.NewBase"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare i64 @runtime.AllocZHidden(i64)

declare void @runtime.StoreHiddenPointee(i64, ptr, i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/embedunexport.Use"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
