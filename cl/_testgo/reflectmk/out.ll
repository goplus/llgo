; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflectmk'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflectmk"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/cl/_testgo/reflectmk.Point" = type { i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%reflect.StructField = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1 }
%reflect.Method = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.iface", %reflect.Value, i64 }
%reflect.Value = type { ptr, ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/reflectmk.init$guard" = global i1 false, align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr @"*_llgo_int" }, align 8
@0 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@1 = private unnamed_addr constant [7 x i8] c"(%v,%v)", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 945670493, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 10 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 3 }, ptr @"_llgo_func$1H6zMZ_cfMoleeOtJ_eCCBwy0eczea5_BZyjKcZr1wQ", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).Set", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).Set" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).String", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).String" }] }, align 8
@2 = private unnamed_addr constant [10 x i8] c"main.Point", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1133814495, i8 13, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 10 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/reflectmk.struct$0tuJ6xZuR-AC1wllPwRckyWv72rpKBksbx5z7eh2qaI$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 43 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).String", ptr @"github.com/goplus/llgo/cl/_testgo/reflectmk.Point.String" }] }, align 8
@3 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/reflectmk", align 1
@4 = private unnamed_addr constant [1 x i8] c"x", align 1
@5 = private unnamed_addr constant [1 x i8] c"y", align 1
@"github.com/goplus/llgo/cl/_testgo/reflectmk.struct$0tuJ6xZuR-AC1wllPwRckyWv72rpKBksbx5z7eh2qaI$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 1 }, ptr @_llgo_int, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@6 = private unnamed_addr constant [6 x i8] c"String", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@7 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr @"*_llgo_string" }, align 8
@8 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@9 = private unnamed_addr constant [3 x i8] c"Set", align 1
@"_llgo_func$1H6zMZ_cfMoleeOtJ_eCCBwy0eczea5_BZyjKcZr1wQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -2021994584, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr @"*_llgo_func$1H6zMZ_cfMoleeOtJ_eCCBwy0eczea5_BZyjKcZr1wQ" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$1H6zMZ_cfMoleeOtJ_eCCBwy0eczea5_BZyjKcZr1wQ$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer }, align 8
@10 = private unnamed_addr constant [14 x i8] c"func(int, int)", align 1
@"*_llgo_func$1H6zMZ_cfMoleeOtJ_eCCBwy0eczea5_BZyjKcZr1wQ" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 699874857, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 14 }, ptr null }, ptr @"_llgo_func$1H6zMZ_cfMoleeOtJ_eCCBwy0eczea5_BZyjKcZr1wQ" }, align 8
@"_llgo_func$1H6zMZ_cfMoleeOtJ_eCCBwy0eczea5_BZyjKcZr1wQ$in" = weak_odr constant [2 x ptr] [ptr @_llgo_int, ptr @_llgo_int], align 8
@11 = private unnamed_addr constant [13 x i8] c"arrayOf error", align 1
@12 = private unnamed_addr constant [12 x i8] c"chanOf error", align 1
@13 = private unnamed_addr constant [12 x i8] c"funcOf error", align 1
@14 = private unnamed_addr constant [11 x i8] c"mapOf error", align 1
@15 = private unnamed_addr constant [15 x i8] c"pointerTo error", align 1
@16 = private unnamed_addr constant [13 x i8] c"sliceOf error", align 1
@17 = private unnamed_addr constant [1 x i8] c"T", align 1
@18 = private unnamed_addr constant [14 x i8] c"structOf error", align 1
@19 = private unnamed_addr constant [12 x i8] c"method error", align 1
@20 = private unnamed_addr constant [18 x i8] c"methodByName error", align 1
@21 = private unnamed_addr constant [5 x i8] c"(1,2)", align 1
@22 = private unnamed_addr constant [18 x i8] c"value.Method error", align 1
@23 = private unnamed_addr constant [24 x i8] c"value.MethodByName error", align 1

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/reflectmk.Point.String"(%"github.com/goplus/llgo/cl/_testgo/reflectmk.Point" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point" %0, ptr %1, align 4
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %1, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %6, i64 0
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 %3, ptr %8, align 4
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %8, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %7, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %6, i64 1
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 %5, ptr %11, align 4
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %11, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %10, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 2, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 2, 2
  %16 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @fmt.Sprintf(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %16
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).Set"(ptr %0, i64 %1, i64 %2) {
_llgo_0:
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %0, i32 0, i32 0
  store i64 %1, ptr %3, align 4
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %0, i32 0, i32 1
  store i64 %2, ptr %4, align 4
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).String"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %0, align 4
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/reflectmk.Point.String"(%"github.com/goplus/llgo/cl/_testgo/reflectmk.Point" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmk.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmk.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmk.init$guard", align 1
  call void @fmt.init()
  call void @reflect.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmk.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr null })
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 11
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  %9 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8(ptr %7)
  %10 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.ArrayOf(i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %10)
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, 0
  %13 = getelementptr ptr, ptr %12, i64 11
  %14 = load ptr, ptr %13, align 8
  %15 = insertvalue { ptr, ptr } undef, ptr %14, 0
  %16 = insertvalue { ptr, ptr } %15, ptr %11, 1
  %17 = extractvalue { ptr, ptr } %16, 1
  %18 = extractvalue { ptr, ptr } %16, 0
  %19 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %18(ptr %17)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %19)
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %21, 1
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %24, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %25, 1
  %28 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  %29 = xor i1 %28, true
  br i1 %29, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 13 }, ptr %30, align 8
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %30, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %32 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.ChanOf(i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %32)
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, 0
  %35 = getelementptr ptr, ptr %34, i64 11
  %36 = load ptr, ptr %35, align 8
  %37 = insertvalue { ptr, ptr } undef, ptr %36, 0
  %38 = insertvalue { ptr, ptr } %37, ptr %33, 1
  %39 = extractvalue { ptr, ptr } %38, 1
  %40 = extractvalue { ptr, ptr } %38, 0
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40(ptr %39)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %41)
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %43, 1
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %46, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %47, 1
  %50 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49)
  %51 = xor i1 %50, true
  br i1 %51, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 12 }, ptr %52, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %52, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %55 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %54, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %55, align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %54, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 1, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 1, 2
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %60 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %59, i64 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %59, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 1, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 1, 2
  %64 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i1 false)
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %64)
  %66 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, 0
  %67 = getelementptr ptr, ptr %66, i64 18
  %68 = load ptr, ptr %67, align 8
  %69 = insertvalue { ptr, ptr } undef, ptr %68, 0
  %70 = insertvalue { ptr, ptr } %69, ptr %65, 1
  %71 = extractvalue { ptr, ptr } %70, 1
  %72 = extractvalue { ptr, ptr } %70, 0
  %73 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %72(ptr %71, i64 0)
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %73)
  %75 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, 1
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %74, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %75, 1
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %78, 0
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %80, ptr %79, 1
  %82 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %77, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %81)
  %83 = xor i1 %82, true
  br i1 %83, label %_llgo_5, label %_llgo_7

_llgo_5:                                          ; preds = %_llgo_7, %_llgo_4
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 12 }, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %84, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %85)
  unreachable

_llgo_6:                                          ; preds = %_llgo_7
  %86 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.MapOf(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %86)
  %88 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %86, 0
  %89 = getelementptr ptr, ptr %88, i64 20
  %90 = load ptr, ptr %89, align 8
  %91 = insertvalue { ptr, ptr } undef, ptr %90, 0
  %92 = insertvalue { ptr, ptr } %91, ptr %87, 1
  %93 = extractvalue { ptr, ptr } %92, 1
  %94 = extractvalue { ptr, ptr } %92, 0
  %95 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %94(ptr %93)
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %95)
  %97 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %96, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %98, ptr %97, 1
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %101 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %100, 0
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %102, ptr %101, 1
  %104 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %99, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %103)
  %105 = xor i1 %104, true
  br i1 %105, label %_llgo_8, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_4
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %64)
  %107 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, 0
  %108 = getelementptr ptr, ptr %107, i64 30
  %109 = load ptr, ptr %108, align 8
  %110 = insertvalue { ptr, ptr } undef, ptr %109, 0
  %111 = insertvalue { ptr, ptr } %110, ptr %106, 1
  %112 = extractvalue { ptr, ptr } %111, 1
  %113 = extractvalue { ptr, ptr } %111, 0
  %114 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %113(ptr %112, i64 0)
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %114)
  %116 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %114, 1
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %115, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %117, ptr %116, 1
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %120 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %119, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %121, ptr %120, 1
  %123 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %118, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %122)
  %124 = xor i1 %123, true
  br i1 %124, label %_llgo_5, label %_llgo_6

_llgo_8:                                          ; preds = %_llgo_10, %_llgo_6
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 11 }, ptr %125, align 8
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %125, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %126)
  unreachable

_llgo_9:                                          ; preds = %_llgo_10
  %127 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.PointerTo(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %127)
  %129 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %127, 0
  %130 = getelementptr ptr, ptr %129, i64 11
  %131 = load ptr, ptr %130, align 8
  %132 = insertvalue { ptr, ptr } undef, ptr %131, 0
  %133 = insertvalue { ptr, ptr } %132, ptr %128, 1
  %134 = extractvalue { ptr, ptr } %133, 1
  %135 = extractvalue { ptr, ptr } %133, 0
  %136 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %135(ptr %134)
  %137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %136)
  %138 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %136, 1
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %137, 0
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %139, ptr %138, 1
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %142 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %141, 0
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %143, ptr %142, 1
  %145 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %140, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %144)
  %146 = xor i1 %145, true
  br i1 %146, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_6
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %86)
  %148 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %86, 0
  %149 = getelementptr ptr, ptr %148, i64 11
  %150 = load ptr, ptr %149, align 8
  %151 = insertvalue { ptr, ptr } undef, ptr %150, 0
  %152 = insertvalue { ptr, ptr } %151, ptr %147, 1
  %153 = extractvalue { ptr, ptr } %152, 1
  %154 = extractvalue { ptr, ptr } %152, 0
  %155 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %154(ptr %153)
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %155)
  %157 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %155, 1
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %156, 0
  %159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %158, ptr %157, 1
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %161 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %162 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %160, 0
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %162, ptr %161, 1
  %164 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %159, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %163)
  %165 = xor i1 %164, true
  br i1 %165, label %_llgo_8, label %_llgo_9

_llgo_11:                                         ; preds = %_llgo_9
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 15 }, ptr %166, align 8
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %166, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %167)
  unreachable

_llgo_12:                                         ; preds = %_llgo_9
  %168 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.SliceOf(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %169 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %168)
  %170 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %168, 0
  %171 = getelementptr ptr, ptr %170, i64 11
  %172 = load ptr, ptr %171, align 8
  %173 = insertvalue { ptr, ptr } undef, ptr %172, 0
  %174 = insertvalue { ptr, ptr } %173, ptr %169, 1
  %175 = extractvalue { ptr, ptr } %174, 1
  %176 = extractvalue { ptr, ptr } %174, 0
  %177 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" %176(ptr %175)
  %178 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %177)
  %179 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %177, 1
  %180 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %178, 0
  %181 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %180, ptr %179, 1
  %182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %183 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %182, 0
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %184, ptr %183, 1
  %186 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %181, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %185)
  %187 = xor i1 %186, true
  br i1 %187, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 13 }, ptr %188, align 8
  %189 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %188, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %189)
  unreachable

_llgo_14:                                         ; preds = %_llgo_12
  %190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 104)
  %191 = getelementptr inbounds %reflect.StructField, ptr %190, i64 0
  %192 = getelementptr inbounds %reflect.StructField, ptr %191, i32 0, i32 0
  %193 = getelementptr inbounds %reflect.StructField, ptr %191, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 1 }, ptr %192, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %193, align 8
  %194 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %190, 0
  %195 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %194, i64 1, 1
  %196 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %195, i64 1, 2
  %197 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.StructOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196)
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %197)
  %199 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %197, 0
  %200 = getelementptr ptr, ptr %199, i64 12
  %201 = load ptr, ptr %200, align 8
  %202 = insertvalue { ptr, ptr } undef, ptr %201, 0
  %203 = insertvalue { ptr, ptr } %202, ptr %198, 1
  %204 = extractvalue { ptr, ptr } %203, 1
  %205 = extractvalue { ptr, ptr } %203, 0
  %206 = call %reflect.StructField %205(ptr %204, i64 0)
  %207 = extractvalue %reflect.StructField %206, 2
  %208 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %207)
  %209 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %207, 1
  %210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %208, 0
  %211 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %210, ptr %209, 1
  %212 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %213 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 1
  %214 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %212, 0
  %215 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %214, ptr %213, 1
  %216 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %211, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %215)
  %217 = xor i1 %216, true
  br i1 %217, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 14 }, ptr %218, align 8
  %219 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %218, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %219)
  unreachable

_llgo_16:                                         ; preds = %_llgo_14
  %220 = alloca %reflect.Method, align 8
  call void @llvm.memset(ptr %220, i8 0, i64 80, i1 false)
  %221 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %222 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %223 = getelementptr ptr, ptr %222, i64 23
  %224 = load ptr, ptr %223, align 8
  %225 = insertvalue { ptr, ptr } undef, ptr %224, 0
  %226 = insertvalue { ptr, ptr } %225, ptr %221, 1
  %227 = extractvalue { ptr, ptr } %226, 1
  %228 = extractvalue { ptr, ptr } %226, 0
  %229 = call %reflect.Method %228(ptr %227, i64 0)
  store %reflect.Method %229, ptr %220, align 8
  %230 = getelementptr inbounds %reflect.Method, ptr %220, i32 0, i32 0
  %231 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %230, align 8
  %232 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %231, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 })
  %233 = xor i1 %232, true
  br i1 %233, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 12 }, ptr %234, align 8
  %235 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %234, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %235)
  unreachable

_llgo_18:                                         ; preds = %_llgo_16
  %236 = alloca %reflect.Method, align 8
  call void @llvm.memset(ptr %236, i8 0, i64 80, i1 false)
  %237 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9)
  %238 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0
  %239 = getelementptr ptr, ptr %238, i64 24
  %240 = load ptr, ptr %239, align 8
  %241 = insertvalue { ptr, ptr } undef, ptr %240, 0
  %242 = insertvalue { ptr, ptr } %241, ptr %237, 1
  %243 = extractvalue { ptr, ptr } %242, 1
  %244 = extractvalue { ptr, ptr } %242, 0
  %245 = call { %reflect.Method, i1 } %244(ptr %243, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 })
  %246 = extractvalue { %reflect.Method, i1 } %245, 0
  store %reflect.Method %246, ptr %236, align 8
  %247 = extractvalue { %reflect.Method, i1 } %245, 1
  br i1 %247, label %_llgo_21, label %_llgo_19

_llgo_19:                                         ; preds = %_llgo_21, %_llgo_18
  %248 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 18 }, ptr %248, align 8
  %249 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %248, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %249)
  unreachable

_llgo_20:                                         ; preds = %_llgo_21
  %250 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %251 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %250, i32 0, i32 0
  %252 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %250, i32 0, i32 1
  store i64 1, ptr %251, align 4
  store i64 2, ptr %252, align 4
  %253 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr undef }, ptr %250, 1
  %254 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %253)
  %255 = call %reflect.Value @reflect.Value.Method(%reflect.Value %254, i64 1)
  %256 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %255, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer)
  %257 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %256, 0
  %258 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %256, 1
  %259 = icmp uge i64 0, %258
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %259)
  %260 = getelementptr inbounds %reflect.Value, ptr %257, i64 0
  %261 = load %reflect.Value, ptr %260, align 8
  %262 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %261)
  %263 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %262, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 })
  %264 = xor i1 %263, true
  br i1 %264, label %_llgo_22, label %_llgo_23

_llgo_21:                                         ; preds = %_llgo_18
  %265 = getelementptr inbounds %reflect.Method, ptr %236, i32 0, i32 0
  %266 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %265, align 8
  %267 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %266, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 })
  %268 = xor i1 %267, true
  br i1 %268, label %_llgo_19, label %_llgo_20

_llgo_22:                                         ; preds = %_llgo_20
  %269 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 18 }, ptr %269, align 8
  %270 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %269, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %270)
  unreachable

_llgo_23:                                         ; preds = %_llgo_20
  %271 = call %reflect.Value @reflect.Value.MethodByName(%reflect.Value %254, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 })
  %272 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %271, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer)
  %273 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %272, 0
  %274 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %272, 1
  %275 = icmp uge i64 0, %274
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %275)
  %276 = getelementptr inbounds %reflect.Value, ptr %273, i64 0
  %277 = load %reflect.Value, ptr %276, align 8
  %278 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %277)
  %279 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %278, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 })
  %280 = xor i1 %279, true
  br i1 %280, label %_llgo_24, label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_23
  %281 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 24 }, ptr %281, align 8
  %282 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %281, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %282)
  unreachable

_llgo_25:                                         ; preds = %_llgo_23
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmk.method"(i64 1)
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmk.methodByName"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 6 })
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmk.method"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %1, i32 0, i32 1
  store i64 1, ptr %2, align 4
  store i64 2, ptr %3, align 4
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr undef }, ptr %1, 1
  %5 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  %6 = call %reflect.Value @reflect.Value.Method(%reflect.Value %5, i64 %0)
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %10 = icmp uge i64 0, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds %reflect.Value, ptr %8, i64 0
  %12 = load %reflect.Value, ptr %11, align 8
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %12)
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 })
  %15 = xor i1 %14, true
  br i1 %15, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 18 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmk.methodByName"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr %1, i32 0, i32 1
  store i64 1, ptr %2, align 4
  store i64 2, ptr %3, align 4
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point", ptr undef }, ptr %1, 1
  %5 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  %6 = call %reflect.Value @reflect.Value.MethodByName(%reflect.Value %5, %"github.com/goplus/llgo/runtime/internal/runtime.String" %0)
  %7 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %10 = icmp uge i64 0, %9
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds %reflect.Value, ptr %8, i64 0
  %12 = load %reflect.Value, ptr %11, align 8
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %12)
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %13, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 5 })
  %15 = xor i1 %14, true
  br i1 %15, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @23, i64 24 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @fmt.Sprintf(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @fmt.init()

declare void @reflect.init()

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.ArrayOf(i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.ChanOf(i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.MapOf(%"github.com/goplus/llgo/runtime/internal/runtime.iface", %"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.PointerTo(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.SliceOf(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.StructOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare %reflect.Value @reflect.Value.Method(%reflect.Value, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @reflect.Value.Call(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value)

declare %reflect.Value @reflect.Value.MethodByName(%reflect.Value, %"github.com/goplus/llgo/runtime/internal/runtime.String")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llgo.useiface = !{!0, !1, !2, !3, !4, !5, !6}
!llgo.methodinfo = !{!7, !8, !9}
!llgo.useifacemethod = !{!10, !11, !12, !13, !14, !15, !16}
!llgo.interfaceinfo = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!llgo.reflectmethod = !{!56, !57, !58}
!llgo.usenamedmethod = !{!59}

!0 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.Point.String", !"_llgo_int"}
!1 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point"}
!2 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"_llgo_string"}
!3 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.method", !"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point"}
!4 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.method", !"_llgo_string"}
!5 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.methodByName", !"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point"}
!6 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.methodByName", !"_llgo_string"}
!7 = !{!"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point", i32 0, !"String", !"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", !"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).String", !"github.com/goplus/llgo/cl/_testgo/reflectmk.Point.String"}
!8 = !{!"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point", i32 0, !"Set", !"_llgo_func$1H6zMZ_cfMoleeOtJ_eCCBwy0eczea5_BZyjKcZr1wQ", !"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).Set", !"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).Set"}
!9 = !{!"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmk.Point", i32 1, !"String", !"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", !"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).String", !"github.com/goplus/llgo/cl/_testgo/reflectmk.(*Point).String"}
!10 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"_llgo_reflect.Type", !"Elem", !"_llgo_func$b6KOG2Oj7wt8ogb9H8QPbhEfXhxMMjdxRZgPLK_UOwI"}
!11 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"_llgo_reflect.Type", !"In", !"_llgo_func$dPYu3A0LoGTV2Hd8PW4KPw2ITiUSo9q-4Bg9ZrPITnY"}
!12 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"_llgo_reflect.Type", !"Out", !"_llgo_func$dPYu3A0LoGTV2Hd8PW4KPw2ITiUSo9q-4Bg9ZrPITnY"}
!13 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"_llgo_reflect.Type", !"Key", !"_llgo_func$b6KOG2Oj7wt8ogb9H8QPbhEfXhxMMjdxRZgPLK_UOwI"}
!14 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"_llgo_reflect.Type", !"Field", !"_llgo_func$Q3NYrysaKgu1MtMuLQwb-k5QcKGHihnt-tV_NlNJQFA"}
!15 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"_llgo_reflect.Type", !"Method", !"_llgo_func$FmJJGomlX5kINJGxQdQDCAkD89ySoMslAYFrziWInVc"}
!16 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"_llgo_reflect.Type", !"MethodByName", !"_llgo_func$aM2cVUtLQbPq1YHtnabQiM7XJ5Cg5RyV6BIDWrqey7E"}
!17 = !{!"_llgo_reflect.Type", !"Align", !"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"}
!18 = !{!"_llgo_reflect.Type", !"AssignableTo", !"_llgo_func$Kxk9fspGkjXcoNWf2ucHG1vOQ5VHxVtYionfm-DnvWE"}
!19 = !{!"_llgo_reflect.Type", !"Bits", !"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"}
!20 = !{!"_llgo_reflect.Type", !"CanSeq", !"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"}
!21 = !{!"_llgo_reflect.Type", !"CanSeq2", !"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"}
!22 = !{!"_llgo_reflect.Type", !"ChanDir", !"_llgo_func$JO3khPIbANSMBmoN6P7ybYAeUBd3Gv6toVUqNeE7qbE"}
!23 = !{!"_llgo_reflect.Type", !"Comparable", !"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"}
!24 = !{!"_llgo_reflect.Type", !"ConvertibleTo", !"_llgo_func$Kxk9fspGkjXcoNWf2ucHG1vOQ5VHxVtYionfm-DnvWE"}
!25 = !{!"_llgo_reflect.Type", !"Elem", !"_llgo_func$b6KOG2Oj7wt8ogb9H8QPbhEfXhxMMjdxRZgPLK_UOwI"}
!26 = !{!"_llgo_reflect.Type", !"Field", !"_llgo_func$Q3NYrysaKgu1MtMuLQwb-k5QcKGHihnt-tV_NlNJQFA"}
!27 = !{!"_llgo_reflect.Type", !"FieldAlign", !"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"}
!28 = !{!"_llgo_reflect.Type", !"FieldByIndex", !"_llgo_func$LPPtiM49dEPl48CC3WRhXm3YPnfUJEZE_k8Tx3rMuSk"}
!29 = !{!"_llgo_reflect.Type", !"FieldByName", !"_llgo_func$dEvABJ5r0MMUlf4smWpIDG5dO8AuGklGdNJ1xneL3UM"}
!30 = !{!"_llgo_reflect.Type", !"FieldByNameFunc", !"_llgo_func$EGeBNdD7KOy92HWVCj7jpfMdAvbvJV3DKYuCcibxHEA"}
!31 = !{!"_llgo_reflect.Type", !"Implements", !"_llgo_func$Kxk9fspGkjXcoNWf2ucHG1vOQ5VHxVtYionfm-DnvWE"}
!32 = !{!"_llgo_reflect.Type", !"In", !"_llgo_func$dPYu3A0LoGTV2Hd8PW4KPw2ITiUSo9q-4Bg9ZrPITnY"}
!33 = !{!"_llgo_reflect.Type", !"IsVariadic", !"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"}
!34 = !{!"_llgo_reflect.Type", !"Key", !"_llgo_func$b6KOG2Oj7wt8ogb9H8QPbhEfXhxMMjdxRZgPLK_UOwI"}
!35 = !{!"_llgo_reflect.Type", !"Kind", !"_llgo_func$w8Mj2LK8G5p7MIiGWR6MYjyXy3L8SVVzYlT1bb6KNXk"}
!36 = !{!"_llgo_reflect.Type", !"Len", !"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"}
!37 = !{!"_llgo_reflect.Type", !"Method", !"_llgo_func$FmJJGomlX5kINJGxQdQDCAkD89ySoMslAYFrziWInVc"}
!38 = !{!"_llgo_reflect.Type", !"MethodByName", !"_llgo_func$aM2cVUtLQbPq1YHtnabQiM7XJ5Cg5RyV6BIDWrqey7E"}
!39 = !{!"_llgo_reflect.Type", !"Name", !"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"}
!40 = !{!"_llgo_reflect.Type", !"NumField", !"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"}
!41 = !{!"_llgo_reflect.Type", !"NumIn", !"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"}
!42 = !{!"_llgo_reflect.Type", !"NumMethod", !"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"}
!43 = !{!"_llgo_reflect.Type", !"NumOut", !"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"}
!44 = !{!"_llgo_reflect.Type", !"Out", !"_llgo_func$dPYu3A0LoGTV2Hd8PW4KPw2ITiUSo9q-4Bg9ZrPITnY"}
!45 = !{!"_llgo_reflect.Type", !"OverflowComplex", !"_llgo_func$cGkbH-2LQOLoq64Rqj3WeO56U8al7FfVkf5K1FFbPpE"}
!46 = !{!"_llgo_reflect.Type", !"OverflowFloat", !"_llgo_func$uk7PgUVap9GZdvS8R_mZCDbAbqnAbcNryqybtDogUNI"}
!47 = !{!"_llgo_reflect.Type", !"OverflowInt", !"_llgo_func$odFOIClZoEVGbTP_BEfZxVM5ex3r8Fj1afUEeP_awp8"}
!48 = !{!"_llgo_reflect.Type", !"OverflowUint", !"_llgo_func$7I97sofX8UqJA96mVIy89KPUfSM_efkrR-mJQ9qaHfk"}
!49 = !{!"_llgo_reflect.Type", !"PkgPath", !"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"}
!50 = !{!"_llgo_reflect.Type", !"Size", !"_llgo_func$1kITCsyu7hFLMxHLR7kDlvu4SOra_HtrtdFUQH9P13s"}
!51 = !{!"_llgo_reflect.Type", !"String", !"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"}
!52 = !{!"_llgo_reflect.Type", !"reflect.common", !"_llgo_func$w6XuV-1SmW103DbauPseXBpW50HpxXAEsUsGFibl0Uw"}
!53 = !{!"_llgo_reflect.Type", !"reflect.uncommon", !"_llgo_func$iG49bujiXjI2lVflYdE0hPXlCAABL-XKRANSNJEKOio"}
!54 = !{!"_llgo_reflect.Type", !"reflect.common", !"_llgo_func$2KmEA53bmSMqFwMk5-SjB6NXQl3r5QsUDpTpNUxyMWQ"}
!55 = !{!"_llgo_reflect.Type", !"reflect.uncommon", !"_llgo_func$2nkaPgxW0n5-10R0l6Q3Zwwfc1t9nffTbhlVOLQm-mQ"}
!56 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main"}
!57 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.method"}
!58 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.methodByName"}
!59 = !{!"github.com/goplus/llgo/cl/_testgo/reflectmk.main", !"String"}
