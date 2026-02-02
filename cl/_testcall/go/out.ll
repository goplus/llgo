; ModuleID = 'github.com/goplus/llgo/cl/_testcall/go'
source_filename = "github.com/goplus/llgo/cl/_testcall/go"

%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
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
@"*_llgo_github.com/goplus/llgo/cl/_testcall/go.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 64351168, i8 11, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testcall/go.S" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 38 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Inc" }] }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }
@0 = private unnamed_addr constant [6 x i8] c"main.S", align 1
@"_llgo_github.com/goplus/llgo/cl/_testcall/go.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -4575070, i8 13, i8 8, i8 8, i8 57, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.1", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testcall/go.S" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 38 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testcall/go.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 38 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testcall/go.S.Inc" }] }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.structequal.1" = private constant { ptr, i64, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", i64 1, ptr @"_llgo_github.com/goplus/llgo/cl/_testcall/go.S" }
@1 = private unnamed_addr constant [38 x i8] c"github.com/goplus/llgo/cl/_testcall/go", align 1
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", i64 0 }
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testcall/go.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [3 x i8] c"Inc", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@6 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1704177746, i8 0, i8 8, i8 8, i8 20, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr @"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 38 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods", i64 1, i64 1 } }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.interequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", i64 0 }
@7 = private unnamed_addr constant [26 x i8] c"interface { Add(int) int }", align 1
@"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -721103048, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr null }, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }], align 8
@8 = private unnamed_addr constant [5 x i8] c"hello", align 1
@9 = private unnamed_addr constant [72 x i8] c"type assertion interface{Add(int) int} -> interface{Add(int) int} failed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr @"*_llgo_string" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.strequal" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", i64 0 }
@10 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

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
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %9 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.main$1", ptr %9, align 8
  %10 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 1
  store i64 1, ptr %10, align 4
  %11 = getelementptr inbounds { ptr, i64, ptr }, ptr %8, i32 0, i32 2
  store ptr %4, ptr %11, align 8
  %12 = call ptr @malloc(i64 8)
  %13 = getelementptr inbounds { ptr }, ptr %12, i32 0, i32 0
  store ptr %8, ptr %13, align 8
  %14 = alloca i8, i64 8, align 1
  %15 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %14, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$1", ptr %12)
  %16 = call ptr @malloc(i64 8)
  %17 = getelementptr inbounds { ptr }, ptr %16, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.main$2", ptr %17, align 8
  %18 = alloca i8, i64 8, align 1
  %19 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %18, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$2", ptr %16)
  %20 = call ptr @malloc(i64 24)
  %21 = getelementptr inbounds { ptr, i64, i64 }, ptr %20, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.globalAdd", ptr %21, align 8
  %22 = getelementptr inbounds { ptr, i64, i64 }, ptr %20, i32 0, i32 1
  store i64 1, ptr %22, align 4
  %23 = getelementptr inbounds { ptr, i64, i64 }, ptr %20, i32 0, i32 2
  store i64 2, ptr %23, align 4
  %24 = alloca i8, i64 8, align 1
  %25 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %24, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$3", ptr %20)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %27 = getelementptr inbounds { ptr, i64, ptr }, ptr %26, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add$bound", ptr %27, align 8
  %28 = getelementptr inbounds { ptr, i64, ptr }, ptr %26, i32 0, i32 1
  store i64 1, ptr %28, align 4
  %29 = getelementptr inbounds { ptr, i64, ptr }, ptr %26, i32 0, i32 2
  store ptr %0, ptr %29, align 8
  %30 = call ptr @malloc(i64 16)
  %31 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 0
  store ptr %26, ptr %31, align 8
  %32 = getelementptr inbounds { ptr, i64 }, ptr %30, i32 0, i32 1
  store i64 3, ptr %32, align 4
  %33 = alloca i8, i64 8, align 1
  %34 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %33, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$4", ptr %30)
  %35 = load %"github.com/goplus/llgo/cl/_testcall/go.S", ptr %2, align 4
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %37 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testcall/go.S" }, ptr %36, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.S.Inc$bound", ptr %37, align 8
  %38 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testcall/go.S" }, ptr %36, i32 0, i32 1
  store i64 1, ptr %38, align 4
  %39 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/cl/_testcall/go.S" }, ptr %36, i32 0, i32 2
  store %"github.com/goplus/llgo/cl/_testcall/go.S" %35, ptr %39, align 4
  %40 = call ptr @malloc(i64 16)
  %41 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 0
  store ptr %36, ptr %41, align 8
  %42 = getelementptr inbounds { ptr, i64 }, ptr %40, i32 0, i32 1
  store i64 4, ptr %42, align 4
  %43 = alloca i8, i64 8, align 1
  %44 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %43, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$5", ptr %40)
  %45 = call ptr @malloc(i64 24)
  %46 = getelementptr inbounds { ptr, ptr, i64 }, ptr %45, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.(*S).Add$thunk", ptr %46, align 8
  %47 = getelementptr inbounds { ptr, ptr, i64 }, ptr %45, i32 0, i32 1
  store ptr %0, ptr %47, align 8
  %48 = getelementptr inbounds { ptr, ptr, i64 }, ptr %45, i32 0, i32 2
  store i64 5, ptr %48, align 4
  %49 = alloca i8, i64 8, align 1
  %50 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %49, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$6", ptr %45)
  %51 = call ptr @malloc(i64 16)
  %52 = getelementptr inbounds { ptr, i32 }, ptr %51, i32 0, i32 0
  store ptr @abs, ptr %52, align 8
  %53 = getelementptr inbounds { ptr, i32 }, ptr %51, i32 0, i32 1
  store i32 -6, ptr %53, align 4
  %54 = alloca i8, i64 8, align 1
  %55 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %54, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$7", ptr %51)
  %56 = call ptr @malloc(i64 16)
  %57 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.String" }, ptr %56, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %57, align 8
  %58 = alloca i8, i64 8, align 1
  %59 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %58, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$8", ptr %56)
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 0
  %62 = getelementptr ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %65 = getelementptr inbounds { ptr, i64, ptr }, ptr %64, i32 0, i32 0
  store ptr %63, ptr %65, align 8
  %66 = getelementptr inbounds { ptr, i64, ptr }, ptr %64, i32 0, i32 1
  store i64 1, ptr %66, align 4
  %67 = getelementptr inbounds { ptr, i64, ptr }, ptr %64, i32 0, i32 2
  store ptr %60, ptr %67, align 8
  %68 = call ptr @malloc(i64 16)
  %69 = getelementptr inbounds { ptr, i64 }, ptr %68, i32 0, i32 0
  store ptr %64, ptr %69, align 8
  %70 = getelementptr inbounds { ptr, i64 }, ptr %68, i32 0, i32 1
  store i64 7, ptr %70, align 4
  %71 = alloca i8, i64 8, align 1
  %72 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %71, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$9", ptr %68)
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  br i1 true, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 32)
  %76 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %75, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testcall/go.interface{Add(int) int}.Add$bound", ptr %76, align 8
  %77 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %75, i32 0, i32 1
  store i64 1, ptr %77, align 4
  %78 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %75, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %78, align 8
  %79 = call ptr @malloc(i64 16)
  %80 = getelementptr inbounds { ptr, i64 }, ptr %79, i32 0, i32 0
  store ptr %75, ptr %80, align 8
  %81 = getelementptr inbounds { ptr, i64 }, ptr %79, i32 0, i32 1
  store i64 8, ptr %81, align 4
  %82 = alloca i8, i64 8, align 1
  %83 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %82, ptr null, ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$10", ptr %79)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 72 }, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %84, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %85)
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
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %2, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %4)
  call void %3()
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
  %1 = load { ptr, i64 }, ptr %0, align 8
  %2 = extractvalue { ptr, i64 } %1, 0
  %3 = extractvalue { ptr, i64 } %1, 1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr i8, ptr %2, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %5)
  %6 = call i64 %4(i64 %3)
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
  %1 = load { ptr, i64 }, ptr %0, align 8
  %2 = extractvalue { ptr, i64 } %1, 0
  %3 = extractvalue { ptr, i64 } %1, 1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr i8, ptr %2, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %5)
  %6 = call i64 %4(i64 %3)
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
  %1 = load { ptr, i64 }, ptr %0, align 8
  %2 = extractvalue { ptr, i64 } %1, 0
  %3 = extractvalue { ptr, i64 } %1, 1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr i8, ptr %2, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %5)
  %6 = call i64 %4(i64 %3)
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
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %15)
  %16 = call i64 %12(ptr %14, i64 %0)
  ret i64 %16
}

define ptr @"github.com/goplus/llgo/cl/_testcall/go._llgo_routine$10"(ptr %0) {
_llgo_0:
  %1 = load { ptr, i64 }, ptr %0, align 8
  %2 = extractvalue { ptr, i64 } %1, 0
  %3 = extractvalue { ptr, i64 } %1, 1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr i8, ptr %2, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %5)
  %6 = call i64 %4(i64 %3)
  call void @free(ptr %0)
  ret ptr null
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
