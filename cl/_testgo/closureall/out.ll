; ModuleID = 'github.com/goplus/llgo/cl/_testgo/closureall'
source_filename = "github.com/goplus/llgo/cl/_testgo/closureall"

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
%"github.com/goplus/llgo/cl/_testgo/closureall.S" = type { i64 }
%"github.com/goplus/llgo/cl/_testgo/closureall.Fn" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/closureall.init$guard" = global i1 false, align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -744503389, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc" }] }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 147929472, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc" }] }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr @"*_llgo_int" }, align 8
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@0 = private unnamed_addr constant [3 x i8] c"int", align 1
@1 = private unnamed_addr constant [6 x i8] c"main.S", align 1
@2 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testgo/closureall", align 1
@3 = private unnamed_addr constant [1 x i8] c"v", align 1
@"github.com/goplus/llgo/cl/_testgo/closureall.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [3 x i8] c"Inc", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@5 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@6 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1704177746, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr @"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods", i64 1, i64 1 } }, align 8
@"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -721103048, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr null }, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, align 8
@7 = private unnamed_addr constant [26 x i8] c"interface { Add(int) int }", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }], align 8
@8 = private unnamed_addr constant [72 x i8] c"type assertion interface{Add(int) int} -> interface{Add(int) int} failed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_string" }, align 8
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@9 = private unnamed_addr constant [6 x i8] c"string", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc"(%"github.com/goplus/llgo/cl/_testgo/closureall.S" %0, i64 %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/closureall.S" %0, ptr %2, align 4
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %2, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  ret i64 %5
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %0, i64 %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %0, i32 0, i32 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, %1
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %0, align 4
  %3 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc"(%"github.com/goplus/llgo/cl/_testgo/closureall.S" %2, i64 %1)
  ret i64 %3
}

define i32 @"github.com/goplus/llgo/cl/_testgo/closureall.callCallback"(ptr %0, i32 %1) {
_llgo_0:
  %2 = call i32 %0(i32 %1)
  ret i32 %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.globalAdd"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree"()
  %1 = call %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.makeWithFree"(i64 3)
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %0, 1
  %3 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %0, 0
  %4 = call i64 %3(ptr %2, i64 1)
  %5 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %1, 1
  %6 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %1, 0
  %7 = call i64 %6(ptr %5, i64 2)
  %8 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.globalAdd"(i64 1, i64 2)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %9, i32 0, i32 0
  store i64 5, ptr %10, align 4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr inbounds { ptr }, ptr %11, i32 0, i32 0
  store ptr %9, ptr %12, align 8
  %13 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$bound", ptr undef }, ptr %11, 1
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  %16 = call i64 %15(ptr %14, i64 7)
  %17 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$thunk"(ptr %9, i64 8)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S")
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %19, ptr %9, 1
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %20)
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, 1
  br i1 true, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %24 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %23, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %20, ptr %24, align 8
  %25 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.interface{Add(int) int}.Add$bound", ptr undef }, ptr %23, 1
  %26 = extractvalue { ptr, ptr } %25, 1
  %27 = extractvalue { ptr, ptr } %25, 0
  %28 = call i64 %27(ptr %26, i64 9)
  %29 = call double @sqrt(double 4.000000e+00)
  %30 = call i32 @abs(i32 -3)
  %31 = call i32 @"github.com/goplus/llgo/cl/_testgo/closureall.callCallback"(ptr @"github.com/goplus/llgo/cl/_testgo/closureall.main$1", i32 7)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 72 }, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  unreachable
}

define i32 @"github.com/goplus/llgo/cl/_testgo/closureall.main$1"(i32 %0) {
_llgo_0:
  %1 = add i32 %0, 1
  ret i32 %1
}

define %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree$1", ptr null }
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree$1"(i64 %0) {
_llgo_0:
  %1 = add i64 %0, 1
  ret i64 %1
}

define %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.makeWithFree"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.makeWithFree$1", ptr undef }, ptr %2, 1
  %5 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", align 8
  store { ptr, ptr } %4, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", ptr %5, align 8
  ret %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %6
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.makeWithFree$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %1, %4
  ret i64 %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$bound"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %3, i64 %1)
  ret i64 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$thunk"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %0, i64 %1)
  ret i64 %2
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.interface{Add(int) int}.Add$bound"(ptr %0, i64 %1) {
_llgo_0:
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
  %12 = call i64 %11(ptr %10, i64 %1)
  ret i64 %12
}

declare double @sqrt(double)

declare i32 @abs(i32)

define linkonce i64 @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = tail call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.makeNoFree$1"(i64 %1)
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
