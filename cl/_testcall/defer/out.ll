; ModuleID = 'github.com/goplus/llgo/cl/_testcall/defer'
source_filename = "github.com/goplus/llgo/cl/_testcall/defer"

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
%"github.com/goplus/llgo/cl/_testcall/defer.S" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testcall/defer.init$guard" = global i1 false, align 1
@"*_llgo_github.com/goplus/llgo/cl/_testcall/defer.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1205312584, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testcall/defer.S" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 41 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add", ptr @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Inc" }] }, align 8
@0 = private unnamed_addr constant [6 x i8] c"main.S", align 1
@"_llgo_github.com/goplus/llgo/cl/_testcall/defer.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -892629179, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.structequal$ctx", ptr @"_llgo_github.com/goplus/llgo/cl/_testcall/defer.S" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testcall/defer.S" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testcall/defer.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 41 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testcall/defer.S.Inc" }] }, align 8
@1 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testcall/defer", align 1
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testcall/defer.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [3 x i8] c"Inc", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@6 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1704177746, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr @"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods", i64 1, i64 1 } }, align 8
@7 = private unnamed_addr constant [26 x i8] c"interface { Add(int) int }", align 1
@"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -721103048, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr null }, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }], align 8
@8 = private unnamed_addr constant [5 x i8] c"hello", align 1
@9 = private unnamed_addr constant [72 x i8] c"type assertion interface{Add(int) int} -> interface{Add(int) int} failed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*_llgo_string" }, align 8
@10 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testcall/defer.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/defer.S" %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testcall/defer.S", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testcall/defer.S" %0, ptr %2, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/defer.S", ptr %2, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  ret i64 %5
}

define i64 @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/defer.S", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Inc"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testcall/defer.S", ptr %0, align 4
  %3 = call i64 @"github.com/goplus/llgo/cl/_testcall/defer.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/defer.S" %2, i64 %1)
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testcall/defer.globalAdd"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testcall/defer.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/defer.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/defer.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/defer.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/defer.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = alloca %"github.com/goplus/llgo/cl/_testcall/defer.S", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/defer.S", ptr %2, i32 0, i32 0
  store i64 7, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 10, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_github.com/goplus/llgo/cl/_testcall/defer.S")
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %0, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr inbounds { ptr }, ptr %8, i32 0, i32 0
  store ptr %4, ptr %9, align 8
  %10 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/defer.main$1", ptr undef }, ptr %8, 1
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %12 = alloca i8, i64 196, align 1
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 1
  store i64 0, ptr %15, align 4
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 2
  store ptr %11, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_2), ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %13)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 1
  %19 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 3
  %20 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 4
  %21 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, i32 0, i32 5
  store ptr null, ptr %21, align 8
  %22 = call i32 @sigsetjmp(ptr %12, i32 0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_6
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_19), ptr %19, align 8
  %24 = load i64, ptr %18, align 4
  %25 = load ptr, ptr %21, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %_llgo_20, label %_llgo_21

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_41
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %11)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %27 = load ptr, ptr %21, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %29 = getelementptr inbounds { ptr, { ptr, ptr } }, ptr %28, i32 0, i32 0
  store ptr %27, ptr %29, align 8
  %30 = getelementptr inbounds { ptr, { ptr, ptr } }, ptr %28, i32 0, i32 1
  store { ptr, ptr } %10, ptr %30, align 8
  store ptr %28, ptr %21, align 8
  %31 = load ptr, ptr %21, align 8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %33 = getelementptr inbounds { ptr, i64, i64 }, ptr %32, i32 0, i32 0
  store ptr %31, ptr %33, align 8
  %34 = getelementptr inbounds { ptr, i64, i64 }, ptr %32, i32 0, i32 1
  store i64 1, ptr %34, align 4
  %35 = getelementptr inbounds { ptr, i64, i64 }, ptr %32, i32 0, i32 2
  store i64 2, ptr %35, align 4
  store ptr %32, ptr %21, align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %37 = getelementptr inbounds { ptr }, ptr %36, i32 0, i32 0
  store ptr %0, ptr %37, align 8
  %38 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add$bound", ptr undef }, ptr %36, 1
  %39 = load ptr, ptr %21, align 8
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %41 = getelementptr inbounds { ptr, { ptr, ptr }, i64 }, ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = getelementptr inbounds { ptr, { ptr, ptr }, i64 }, ptr %40, i32 0, i32 1
  store { ptr, ptr } %38, ptr %42, align 8
  %43 = getelementptr inbounds { ptr, { ptr, ptr }, i64 }, ptr %40, i32 0, i32 2
  store i64 3, ptr %43, align 4
  store ptr %40, ptr %21, align 8
  %44 = load %"github.com/goplus/llgo/cl/_testcall/defer.S", ptr %2, align 4
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %46 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testcall/defer.S" }, ptr %45, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testcall/defer.S" %44, ptr %46, align 4
  %47 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/defer.S.Inc$bound", ptr undef }, ptr %45, 1
  %48 = load ptr, ptr %21, align 8
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %50 = getelementptr inbounds { ptr, { ptr, ptr }, i64 }, ptr %49, i32 0, i32 0
  store ptr %48, ptr %50, align 8
  %51 = getelementptr inbounds { ptr, { ptr, ptr }, i64 }, ptr %49, i32 0, i32 1
  store { ptr, ptr } %47, ptr %51, align 8
  %52 = getelementptr inbounds { ptr, { ptr, ptr }, i64 }, ptr %49, i32 0, i32 2
  store i64 4, ptr %52, align 4
  store ptr %49, ptr %21, align 8
  %53 = load ptr, ptr %21, align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %55 = getelementptr inbounds { ptr, ptr, i64 }, ptr %54, i32 0, i32 0
  store ptr %53, ptr %55, align 8
  %56 = getelementptr inbounds { ptr, ptr, i64 }, ptr %54, i32 0, i32 1
  store ptr %0, ptr %56, align 8
  %57 = getelementptr inbounds { ptr, ptr, i64 }, ptr %54, i32 0, i32 2
  store i64 5, ptr %57, align 4
  store ptr %54, ptr %21, align 8
  %58 = load ptr, ptr %21, align 8
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %60 = getelementptr inbounds { ptr, i32 }, ptr %59, i32 0, i32 0
  store ptr %58, ptr %60, align 8
  %61 = getelementptr inbounds { ptr, i32 }, ptr %59, i32 0, i32 1
  store i32 -6, ptr %61, align 4
  store ptr %59, ptr %21, align 8
  %62 = load ptr, ptr %21, align 8
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %64 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %63, i32 0, i32 0
  store ptr %62, ptr %64, align 8
  %65 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %63, i32 0, i32 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %65, align 8
  store ptr %63, ptr %21, align 8
  %66 = load ptr, ptr %21, align 8
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %68 = getelementptr inbounds { ptr, ptr, i64 }, ptr %67, i32 0, i32 0
  store ptr %66, ptr %68, align 8
  %69 = getelementptr inbounds { ptr, ptr, i64 }, ptr %67, i32 0, i32 1
  store ptr %0, ptr %69, align 8
  %70 = getelementptr inbounds { ptr, ptr, i64 }, ptr %67, i32 0, i32 2
  store i64 7, ptr %70, align 4
  store ptr %67, ptr %21, align 8
  %71 = load %"github.com/goplus/llgo/cl/_testcall/defer.S", ptr %2, align 4
  %72 = load ptr, ptr %21, align 8
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %74 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testcall/defer.S", i64 }, ptr %73, i32 0, i32 0
  store ptr %72, ptr %74, align 8
  %75 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testcall/defer.S", i64 }, ptr %73, i32 0, i32 1
  store %"github.com/goplus/llgo/cl/_testcall/defer.S" %71, ptr %75, align 4
  %76 = getelementptr inbounds { ptr, %"github.com/goplus/llgo/cl/_testcall/defer.S", i64 }, ptr %73, i32 0, i32 2
  store i64 8, ptr %76, align 4
  store ptr %73, ptr %21, align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 0
  %79 = getelementptr ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  %81 = insertvalue { ptr, ptr } undef, ptr %80, 0
  %82 = insertvalue { ptr, ptr } %81, ptr %77, 1
  %83 = load ptr, ptr %21, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %85 = getelementptr inbounds { ptr, i64 }, ptr %84, i32 0, i32 0
  store ptr %83, ptr %85, align 8
  %86 = getelementptr inbounds { ptr, i64 }, ptr %84, i32 0, i32 1
  store i64 9, ptr %86, align 4
  store ptr %84, ptr %21, align 8
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %88 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  br i1 true, label %_llgo_6, label %_llgo_7

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_3), ptr %20, align 8
  %89 = load ptr, ptr %19, align 8
  indirectbr ptr %89, [label %_llgo_3, label %_llgo_9, label %_llgo_10, label %_llgo_11, label %_llgo_12, label %_llgo_13, label %_llgo_14, label %_llgo_15, label %_llgo_16, label %_llgo_17, label %_llgo_18, label %_llgo_19, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_4
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %91 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %90, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %91, align 8
  %92 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/defer.interface{Add(int) int}.Add$bound", ptr undef }, ptr %90, 1
  %93 = load ptr, ptr %21, align 8
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %95 = getelementptr inbounds { ptr, { ptr, ptr }, i64 }, ptr %94, i32 0, i32 0
  store ptr %93, ptr %95, align 8
  %96 = getelementptr inbounds { ptr, { ptr, ptr }, i64 }, ptr %94, i32 0, i32 1
  store { ptr, ptr } %92, ptr %96, align 8
  %97 = getelementptr inbounds { ptr, { ptr, ptr }, i64 }, ptr %94, i32 0, i32 2
  store i64 10, ptr %97, align 4
  store ptr %94, ptr %21, align 8
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_8), ptr %20, align 8
  br label %_llgo_2

_llgo_7:                                          ; preds = %_llgo_4
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 72 }, ptr %98, align 8
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %98, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %99)
  unreachable

_llgo_8:                                          ; preds = %_llgo_41
  ret void

_llgo_9:                                          ; preds = %_llgo_5, %_llgo_10
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_3), ptr %19, align 8
  %100 = load i64, ptr %18, align 4
  %101 = load ptr, ptr %21, align 8
  %102 = icmp ne ptr %101, null
  br i1 %102, label %_llgo_40, label %_llgo_41

_llgo_10:                                         ; preds = %_llgo_5, %_llgo_39
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_9), ptr %19, align 8
  %103 = load i64, ptr %18, align 4
  call void @"github.com/goplus/llgo/cl/_testcall/defer.main$2"()
  br label %_llgo_9

_llgo_11:                                         ; preds = %_llgo_5, %_llgo_37
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_10), ptr %19, align 8
  %104 = load i64, ptr %18, align 4
  %105 = load ptr, ptr %21, align 8
  %106 = icmp ne ptr %105, null
  br i1 %106, label %_llgo_38, label %_llgo_39

_llgo_12:                                         ; preds = %_llgo_5, %_llgo_35
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_11), ptr %19, align 8
  %107 = load i64, ptr %18, align 4
  %108 = load ptr, ptr %21, align 8
  %109 = icmp ne ptr %108, null
  br i1 %109, label %_llgo_36, label %_llgo_37

_llgo_13:                                         ; preds = %_llgo_5, %_llgo_33
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_12), ptr %19, align 8
  %110 = load i64, ptr %18, align 4
  %111 = load ptr, ptr %21, align 8
  %112 = icmp ne ptr %111, null
  br i1 %112, label %_llgo_34, label %_llgo_35

_llgo_14:                                         ; preds = %_llgo_5, %_llgo_31
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_13), ptr %19, align 8
  %113 = load i64, ptr %18, align 4
  %114 = load ptr, ptr %21, align 8
  %115 = icmp ne ptr %114, null
  br i1 %115, label %_llgo_32, label %_llgo_33

_llgo_15:                                         ; preds = %_llgo_5, %_llgo_29
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_14), ptr %19, align 8
  %116 = load i64, ptr %18, align 4
  %117 = load ptr, ptr %21, align 8
  %118 = icmp ne ptr %117, null
  br i1 %118, label %_llgo_30, label %_llgo_31

_llgo_16:                                         ; preds = %_llgo_5, %_llgo_27
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_15), ptr %19, align 8
  %119 = load i64, ptr %18, align 4
  %120 = load ptr, ptr %21, align 8
  %121 = icmp ne ptr %120, null
  br i1 %121, label %_llgo_28, label %_llgo_29

_llgo_17:                                         ; preds = %_llgo_5, %_llgo_25
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_16), ptr %19, align 8
  %122 = load i64, ptr %18, align 4
  %123 = load ptr, ptr %21, align 8
  %124 = icmp ne ptr %123, null
  br i1 %124, label %_llgo_26, label %_llgo_27

_llgo_18:                                         ; preds = %_llgo_5, %_llgo_23
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_17), ptr %19, align 8
  %125 = load i64, ptr %18, align 4
  %126 = load ptr, ptr %21, align 8
  %127 = icmp ne ptr %126, null
  br i1 %127, label %_llgo_24, label %_llgo_25

_llgo_19:                                         ; preds = %_llgo_5, %_llgo_21
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testcall/defer.main", %_llgo_18), ptr %19, align 8
  %128 = load i64, ptr %18, align 4
  %129 = load ptr, ptr %21, align 8
  %130 = icmp ne ptr %129, null
  br i1 %130, label %_llgo_22, label %_llgo_23

_llgo_20:                                         ; preds = %_llgo_2
  %131 = load ptr, ptr %21, align 8
  %132 = load { ptr, { ptr, ptr }, i64 }, ptr %131, align 8
  %133 = extractvalue { ptr, { ptr, ptr }, i64 } %132, 0
  store ptr %133, ptr %21, align 8
  %134 = extractvalue { ptr, { ptr, ptr }, i64 } %132, 1
  %135 = extractvalue { ptr, { ptr, ptr }, i64 } %132, 2
  %136 = extractvalue { ptr, ptr } %134, 1
  %137 = extractvalue { ptr, ptr } %134, 0
  %138 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %139 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %136)
  %140 = call i64 %137(i64 %135)
  %141 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %138)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %131)
  br label %_llgo_21

_llgo_21:                                         ; preds = %_llgo_20, %_llgo_2
  br label %_llgo_19

_llgo_22:                                         ; preds = %_llgo_19
  %142 = load ptr, ptr %21, align 8
  %143 = load { ptr, i64 }, ptr %142, align 8
  %144 = extractvalue { ptr, i64 } %143, 0
  store ptr %144, ptr %21, align 8
  %145 = extractvalue { ptr, i64 } %143, 1
  %146 = extractvalue { ptr, ptr } %82, 1
  %147 = extractvalue { ptr, ptr } %82, 0
  %148 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %149 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %146)
  %150 = call i64 %147(ptr %146, i64 %145)
  %151 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %148)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %142)
  br label %_llgo_23

_llgo_23:                                         ; preds = %_llgo_22, %_llgo_19
  br label %_llgo_18

_llgo_24:                                         ; preds = %_llgo_18
  %152 = load ptr, ptr %21, align 8
  %153 = load { ptr, %"github.com/goplus/llgo/cl/_testcall/defer.S", i64 }, ptr %152, align 8
  %154 = extractvalue { ptr, %"github.com/goplus/llgo/cl/_testcall/defer.S", i64 } %153, 0
  store ptr %154, ptr %21, align 8
  %155 = extractvalue { ptr, %"github.com/goplus/llgo/cl/_testcall/defer.S", i64 } %153, 1
  %156 = extractvalue { ptr, %"github.com/goplus/llgo/cl/_testcall/defer.S", i64 } %153, 2
  %157 = call i64 @"github.com/goplus/llgo/cl/_testcall/defer.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/defer.S" %155, i64 %156)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %152)
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_18
  br label %_llgo_17

_llgo_26:                                         ; preds = %_llgo_17
  %158 = load ptr, ptr %21, align 8
  %159 = load { ptr, ptr, i64 }, ptr %158, align 8
  %160 = extractvalue { ptr, ptr, i64 } %159, 0
  store ptr %160, ptr %21, align 8
  %161 = extractvalue { ptr, ptr, i64 } %159, 1
  %162 = extractvalue { ptr, ptr, i64 } %159, 2
  %163 = call i64 @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add"(ptr %161, i64 %162)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %158)
  br label %_llgo_27

_llgo_27:                                         ; preds = %_llgo_26, %_llgo_17
  br label %_llgo_16

_llgo_28:                                         ; preds = %_llgo_16
  %164 = load ptr, ptr %21, align 8
  %165 = load { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %164, align 8
  %166 = extractvalue { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %165, 0
  store ptr %166, ptr %21, align 8
  %167 = extractvalue { ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %165, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %167)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %164)
  br label %_llgo_29

_llgo_29:                                         ; preds = %_llgo_28, %_llgo_16
  br label %_llgo_15

_llgo_30:                                         ; preds = %_llgo_15
  %168 = load ptr, ptr %21, align 8
  %169 = load { ptr, i32 }, ptr %168, align 8
  %170 = extractvalue { ptr, i32 } %169, 0
  store ptr %170, ptr %21, align 8
  %171 = extractvalue { ptr, i32 } %169, 1
  %172 = call i32 @abs(i32 %171)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %168)
  br label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30, %_llgo_15
  br label %_llgo_14

_llgo_32:                                         ; preds = %_llgo_14
  %173 = load ptr, ptr %21, align 8
  %174 = load { ptr, ptr, i64 }, ptr %173, align 8
  %175 = extractvalue { ptr, ptr, i64 } %174, 0
  store ptr %175, ptr %21, align 8
  %176 = extractvalue { ptr, ptr, i64 } %174, 1
  %177 = extractvalue { ptr, ptr, i64 } %174, 2
  %178 = call i64 @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add$thunk"(ptr %176, i64 %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %173)
  br label %_llgo_33

_llgo_33:                                         ; preds = %_llgo_32, %_llgo_14
  br label %_llgo_13

_llgo_34:                                         ; preds = %_llgo_13
  %179 = load ptr, ptr %21, align 8
  %180 = load { ptr, { ptr, ptr }, i64 }, ptr %179, align 8
  %181 = extractvalue { ptr, { ptr, ptr }, i64 } %180, 0
  store ptr %181, ptr %21, align 8
  %182 = extractvalue { ptr, { ptr, ptr }, i64 } %180, 1
  %183 = extractvalue { ptr, { ptr, ptr }, i64 } %180, 2
  %184 = extractvalue { ptr, ptr } %182, 1
  %185 = extractvalue { ptr, ptr } %182, 0
  %186 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %187 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %184)
  %188 = call i64 %185(i64 %183)
  %189 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %186)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %179)
  br label %_llgo_35

_llgo_35:                                         ; preds = %_llgo_34, %_llgo_13
  br label %_llgo_12

_llgo_36:                                         ; preds = %_llgo_12
  %190 = load ptr, ptr %21, align 8
  %191 = load { ptr, { ptr, ptr }, i64 }, ptr %190, align 8
  %192 = extractvalue { ptr, { ptr, ptr }, i64 } %191, 0
  store ptr %192, ptr %21, align 8
  %193 = extractvalue { ptr, { ptr, ptr }, i64 } %191, 1
  %194 = extractvalue { ptr, { ptr, ptr }, i64 } %191, 2
  %195 = extractvalue { ptr, ptr } %193, 1
  %196 = extractvalue { ptr, ptr } %193, 0
  %197 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %198 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %195)
  %199 = call i64 %196(i64 %194)
  %200 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %197)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %190)
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_12
  br label %_llgo_11

_llgo_38:                                         ; preds = %_llgo_11
  %201 = load ptr, ptr %21, align 8
  %202 = load { ptr, i64, i64 }, ptr %201, align 8
  %203 = extractvalue { ptr, i64, i64 } %202, 0
  store ptr %203, ptr %21, align 8
  %204 = extractvalue { ptr, i64, i64 } %202, 1
  %205 = extractvalue { ptr, i64, i64 } %202, 2
  %206 = call i64 @"github.com/goplus/llgo/cl/_testcall/defer.globalAdd"(i64 %204, i64 %205)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %201)
  br label %_llgo_39

_llgo_39:                                         ; preds = %_llgo_38, %_llgo_11
  br label %_llgo_10

_llgo_40:                                         ; preds = %_llgo_9
  %207 = load ptr, ptr %21, align 8
  %208 = load { ptr, { ptr, ptr } }, ptr %207, align 8
  %209 = extractvalue { ptr, { ptr, ptr } } %208, 0
  store ptr %209, ptr %21, align 8
  %210 = extractvalue { ptr, { ptr, ptr } } %208, 1
  %211 = extractvalue { ptr, ptr } %210, 1
  %212 = extractvalue { ptr, ptr } %210, 0
  %213 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %214 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %211)
  call void %212()
  %215 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %213)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %207)
  br label %_llgo_41

_llgo_41:                                         ; preds = %_llgo_40, %_llgo_9
  %216 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %13, align 8
  %217 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %216, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %217)
  %218 = load ptr, ptr %20, align 8
  indirectbr ptr %218, [label %_llgo_3, label %_llgo_8]
}

define void @"github.com/goplus/llgo/cl/_testcall/defer.main$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  %4 = mul i64 %3, 2
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/defer.main$2"() {
_llgo_0:
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.structequal$ctx"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr %2, ptr %0, ptr %1)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #1

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

define i64 @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add"(ptr %3, i64 %0)
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testcall/defer.S.Inc$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %2 = load { %"github.com/goplus/llgo/cl/_testcall/defer.S" }, ptr %1, align 4
  %3 = extractvalue { %"github.com/goplus/llgo/cl/_testcall/defer.S" } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testcall/defer.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/defer.S" %3, i64 %0)
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add$thunk"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call i64 @"github.com/goplus/llgo/cl/_testcall/defer.(*S).Add"(ptr %0, i64 %1)
  ret i64 %2
}

declare i32 @abs(i32)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define i64 @"github.com/goplus/llgo/cl/_testcall/defer.interface{Add(int) int}.Add$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "", "={x26},~{memory}"()
  %2 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %1, align 8
  %3 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %2, 0
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
  %14 = call i64 %11(ptr %10, i64 %0)
  %15 = call ptr asm sideeffect "", "={x26},0,~{memory}"(ptr %12)
  ret i64 %14
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { returns_twice }
