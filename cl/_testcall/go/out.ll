; ModuleID = 'github.com/goplus/llgo/cl/_testcall/go'
source_filename = "github.com/goplus/llgo/cl/_testcall/go"

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
%"github.com/goplus/llgo/cl/_testcall/go.S" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testcall/go.init$guard" = global i1 false, align 1
@"*_llgo_github.com/goplus/llgo/cl/_testcall/go.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 64351168, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testcall/go.S" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 38 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Inc" }] }, align 8
@0 = private unnamed_addr constant [6 x i8] c"main.S", align 1
@"_llgo_github.com/goplus/llgo/cl/_testcall/go.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -4575070, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testcall/go.S" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testcall/go.S" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 38 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testcall/go.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 38 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testcall/go.S.Inc" }] }, align 8
@1 = private unnamed_addr constant [38 x i8] c"github.com/goplus/llgo/cl/_testcall/go", align 1
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testcall/go.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [3 x i8] c"Inc", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@6 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1704177746, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr @"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 38 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods", i64 1, i64 1 } }, align 8
@7 = private unnamed_addr constant [26 x i8] c"interface { Add(int) int }", align 1
@"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -721103048, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr null }, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }], align 8
@8 = private unnamed_addr constant [5 x i8] c"hello", align 1
@9 = private unnamed_addr constant [72 x i8] c"type assertion interface{Add(int) int} -> interface{Add(int) int} failed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*_llgo_string" }, align 8
@10 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define i64 @"github.com/goplus/llgo/cl/_testcall/go.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/go.S" %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testcall/go.S", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testcall/go.S" %0, ptr %2, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/go.S", ptr %2, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  ret i64 %5
}

define i64 @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/go.S", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testcall/go.(*S).Inc"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testcall/go.S", ptr %0, align 4
  %3 = call i64 @"github.com/goplus/llgo/cl/_testcall/go.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/go.S" %2, i64 %1)
  ret i64 %3
}

define i64 @"github.com/goplus/llgo/cl/_testcall/go.globalAdd"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testcall/go.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testcall/go.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testcall/go.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/go.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/go.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = alloca %"github.com/goplus/llgo/cl/_testcall/go.S", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testcall/go.S", ptr %2, i32 0, i32 0
  store i64 7, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 10, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_github.com/goplus/llgo/cl/_testcall/go.S")
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %0, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr inbounds { ptr }, ptr %8, i32 0, i32 0
  store ptr %4, ptr %9, align 8
  %10 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/go.main$1", ptr undef }, ptr %8, 1
  %11 = call ptr @malloc(i64 16)
  %12 = getelementptr inbounds { { ptr, ptr } }, ptr %11, i32 0, i32 0
  store { ptr, ptr } %10, ptr %12, align 8
  %13 = alloca i8, i64 8, align 1
  %14 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %13, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$1", ptr %11)
  %15 = call ptr @malloc(i64 8)
  %16 = getelementptr inbounds { ptr }, ptr %15, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.main$2", ptr %16, align 8
  %17 = alloca i8, i64 8, align 1
  %18 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %17, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$2", ptr %15)
  %19 = call ptr @malloc(i64 24)
  %20 = getelementptr inbounds { ptr, i64, i64 }, ptr %19, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.globalAdd", ptr %20, align 8
  %21 = getelementptr inbounds { ptr, i64, i64 }, ptr %19, i32 0, i32 1
  store i64 1, ptr %21, align 4
  %22 = getelementptr inbounds { ptr, i64, i64 }, ptr %19, i32 0, i32 2
  store i64 2, ptr %22, align 4
  %23 = alloca i8, i64 8, align 1
  %24 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %23, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$3", ptr %19)
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %26 = getelementptr inbounds { ptr }, ptr %25, i32 0, i32 0
  store ptr %0, ptr %26, align 8
  %27 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add$bound", ptr undef }, ptr %25, 1
  %28 = call ptr @malloc(i64 24)
  %29 = getelementptr inbounds { { ptr, ptr }, i64 }, ptr %28, i32 0, i32 0
  store { ptr, ptr } %27, ptr %29, align 8
  %30 = getelementptr inbounds { { ptr, ptr }, i64 }, ptr %28, i32 0, i32 1
  store i64 3, ptr %30, align 4
  %31 = alloca i8, i64 8, align 1
  %32 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %31, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$4", ptr %28)
  %33 = load %"github.com/goplus/llgo/cl/_testcall/go.S", ptr %2, align 4
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %35 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testcall/go.S" }, ptr %34, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testcall/go.S" %33, ptr %35, align 4
  %36 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/go.S.Inc$bound", ptr undef }, ptr %34, 1
  %37 = call ptr @malloc(i64 24)
  %38 = getelementptr inbounds { { ptr, ptr }, i64 }, ptr %37, i32 0, i32 0
  store { ptr, ptr } %36, ptr %38, align 8
  %39 = getelementptr inbounds { { ptr, ptr }, i64 }, ptr %37, i32 0, i32 1
  store i64 4, ptr %39, align 4
  %40 = alloca i8, i64 8, align 1
  %41 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %40, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$5", ptr %37)
  %42 = call ptr @malloc(i64 24)
  %43 = getelementptr inbounds { ptr, ptr, i64 }, ptr %42, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add$thunk", ptr %43, align 8
  %44 = getelementptr inbounds { ptr, ptr, i64 }, ptr %42, i32 0, i32 1
  store ptr %0, ptr %44, align 8
  %45 = getelementptr inbounds { ptr, ptr, i64 }, ptr %42, i32 0, i32 2
  store i64 5, ptr %45, align 4
  %46 = alloca i8, i64 8, align 1
  %47 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %46, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$6", ptr %42)
  %48 = call ptr @malloc(i64 16)
  %49 = getelementptr inbounds { ptr, i32 }, ptr %48, i32 0, i32 0
  store ptr @abs, ptr %49, align 8
  %50 = getelementptr inbounds { ptr, i32 }, ptr %48, i32 0, i32 1
  store i32 -6, ptr %50, align 4
  %51 = alloca i8, i64 8, align 1
  %52 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %51, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$7", ptr %48)
  %53 = call ptr @malloc(i64 16)
  %54 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %53, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %54, align 8
  %55 = alloca i8, i64 8, align 1
  %56 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %55, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$8", ptr %53)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 0
  %59 = getelementptr ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  %61 = insertvalue { ptr, ptr } undef, ptr %60, 0
  %62 = insertvalue { ptr, ptr } %61, ptr %57, 1
  %63 = call ptr @malloc(i64 24)
  %64 = getelementptr inbounds { { ptr, ptr }, i64 }, ptr %63, i32 0, i32 0
  store { ptr, ptr } %62, ptr %64, align 8
  %65 = getelementptr inbounds { { ptr, ptr }, i64 }, ptr %63, i32 0, i32 1
  store i64 7, ptr %65, align 4
  %66 = alloca i8, i64 8, align 1
  %67 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %66, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$9", ptr %63)
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  br i1 true, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %71 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %70, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %71, align 8
  %72 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testcall/go.interface{Add(int) int}.Add$bound", ptr undef }, ptr %70, 1
  %73 = call ptr @malloc(i64 24)
  %74 = getelementptr inbounds { { ptr, ptr }, i64 }, ptr %73, i32 0, i32 0
  store { ptr, ptr } %72, ptr %74, align 8
  %75 = getelementptr inbounds { { ptr, ptr }, i64 }, ptr %73, i32 0, i32 1
  store i64 8, ptr %75, align 4
  %76 = alloca i8, i64 8, align 1
  %77 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %76, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$10", ptr %73)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 72 }, ptr %78, align 8
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %78, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %79)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testcall/go.main$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  %4 = mul i64 %3, 2
  ret void
}

define void @"github.com/goplus/llgo/cl/_testcall/go.main$2"() {
_llgo_0:
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @malloc(i64)

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$1"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr } }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr } } %1, 0
  %3 = extractvalue { ptr, ptr } %2, 1
  %4 = extractvalue { ptr, ptr } %2, 0
  %5 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %3)
  call void %4()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %5)
  call void @free(ptr %0)
  ret ptr null
}

declare void @free(ptr)

declare i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr, ptr, ptr, ptr)

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$2"(ptr %0) {
_llgo_0:
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  call void %2()
  call void @free(ptr %0)
  ret ptr null
}

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$3"(ptr %0) {
_llgo_0:
  %1 = load { ptr, i64, i64 }, ptr %0, align 8
  %2 = extractvalue { ptr, i64, i64 } %1, 0
  %3 = extractvalue { ptr, i64, i64 } %1, 1
  %4 = extractvalue { ptr, i64, i64 } %1, 2
  %5 = call i64 %2(i64 %3, i64 %4)
  call void @free(ptr %0)
  ret ptr null
}

define i64 @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add"(ptr %3, i64 %0)
  ret i64 %4
}

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$4"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr }, i64 }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr }, i64 } %1, 0
  %3 = extractvalue { { ptr, ptr }, i64 } %1, 1
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = extractvalue { ptr, ptr } %2, 0
  %6 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %4)
  %7 = call i64 %5(i64 %3)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  call void @free(ptr %0)
  ret ptr null
}

define i64 @"github.com/goplus/llgo/cl/_testcall/go.S.Inc$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { %"github.com/goplus/llgo/cl/_testcall/go.S" }, ptr %1, align 4
  %3 = extractvalue { %"github.com/goplus/llgo/cl/_testcall/go.S" } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testcall/go.S.Inc"(%"github.com/goplus/llgo/cl/_testcall/go.S" %3, i64 %0)
  ret i64 %4
}

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$5"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr }, i64 }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr }, i64 } %1, 0
  %3 = extractvalue { { ptr, ptr }, i64 } %1, 1
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = extractvalue { ptr, ptr } %2, 0
  %6 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %4)
  %7 = call i64 %5(i64 %3)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  call void @free(ptr %0)
  ret ptr null
}

define i64 @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add$thunk"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call i64 @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add"(ptr %0, i64 %1)
  ret i64 %2
}

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$6"(ptr %0) {
_llgo_0:
  %1 = load { ptr, ptr, i64 }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr, i64 } %1, 0
  %3 = extractvalue { ptr, ptr, i64 } %1, 1
  %4 = extractvalue { ptr, ptr, i64 } %1, 2
  %5 = call i64 %2(ptr %3, i64 %4)
  call void @free(ptr %0)
  ret ptr null
}

declare i32 @abs(i32)

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$7"(ptr %0) {
_llgo_0:
  %1 = load { ptr, i32 }, ptr %0, align 8
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  %4 = call i32 %2(i32 %3)
  call void @free(ptr %0)
  ret ptr null
}

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$8"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String" } %1, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @free(ptr %0)
  ret ptr null
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$9"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr }, i64 }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr }, i64 } %1, 0
  %3 = extractvalue { { ptr, ptr }, i64 } %1, 1
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = extractvalue { ptr, ptr } %2, 0
  %6 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %4)
  %7 = call i64 %5(i64 %3)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  call void @free(ptr %0)
  ret ptr null
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define i64 @"github.com/goplus/llgo/cl/_testcall/go.interface{Add(int) int}.Add$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
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
  %12 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %10)
  %13 = call i64 %11(ptr %10, i64 %0)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %12)
  ret i64 %13
}

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$10"(ptr %0) {
_llgo_0:
  %1 = load { { ptr, ptr }, i64 }, ptr %0, align 8
  %2 = extractvalue { { ptr, ptr }, i64 } %1, 0
  %3 = extractvalue { { ptr, ptr }, i64 } %1, 1
  %4 = extractvalue { ptr, ptr } %2, 1
  %5 = extractvalue { ptr, ptr } %2, 0
  %6 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %4)
  %7 = call i64 %5(i64 %3)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  call void @free(ptr %0)
  ret ptr null
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
