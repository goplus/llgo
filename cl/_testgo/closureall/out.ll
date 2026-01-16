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
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/closureall.Fn" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/closureall.init$guard" = global i1 false, align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [2 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -744503389, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 44 }, i16 2, i16 2, i32 24 }, [2 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add" }, %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc" }] }, align 8
@0 = private unnamed_addr constant [6 x i8] c"main.S", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 147929472, i8 13, i8 8, i8 8, i8 57, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.structequal$ctx", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields", i64 1, i64 1 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 44 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc", ptr @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc" }] }, align 8
@1 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testgo/closureall", align 1
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"github.com/goplus/llgo/cl/_testgo/closureall.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88$fields" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr @_llgo_int, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@4 = private unnamed_addr constant [3 x i8] c"Inc", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@5 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@6 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1704177746, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr @"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods", i64 1, i64 1 } }, align 8
@7 = private unnamed_addr constant [26 x i8] c"interface { Add(int) int }", align 1
@"*_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -721103048, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 26 }, ptr null }, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" }, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }], align 8
@8 = private unnamed_addr constant [72 x i8] c"type assertion interface{Add(int) int} -> interface{Add(int) int} failed", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_string" }, align 8
@9 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

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
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testNoFreeClosure"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testWithFreeClosure"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testGlobalFuncAsClosure"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testPtrMethodValue"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testMethodExpr"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testValueMethodValue"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testIfaceMethodValue"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testDirectMethodCall"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testIfaceMethodCall"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testGoLinknameAsClosure"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testLlgoLinkAsClosure"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testCCallback"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testIIFE"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testDeferClosure"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testGoClosure"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testClosureAsParam"()
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.testNestedClosure"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testCCallback"() {
_llgo_0:
  %0 = call i32 @"github.com/goplus/llgo/cl/_testgo/closureall.testCCallback$1"(ptr @"github.com/goplus/llgo/cl/_testgo/closureall.testCCallback$2", i32 7)
  ret void
}

define i32 @"github.com/goplus/llgo/cl/_testgo/closureall.testCCallback$1"(ptr %0, i32 %1) {
_llgo_0:
  %2 = call i32 %0(i32 %1)
  ret i32 %2
}

define i32 @"github.com/goplus/llgo/cl/_testgo/closureall.testCCallback$2"(i32 %0) {
_llgo_0:
  %1 = add i32 %0, 1
  ret i32 %1
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testClosureAsParam"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 3, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %2 = getelementptr inbounds i64, ptr %1, i64 0
  store i64 1, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %1, i64 1
  store i64 2, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %1, i64 2
  store i64 3, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 3, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 3, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr inbounds { ptr }, ptr %8, i32 0, i32 0
  store ptr %0, ptr %9, align 8
  %10 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.testClosureAsParam$2", ptr undef }, ptr %8, 1
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/closureall.testClosureAsParam$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, { ptr, ptr } %10)
  ret void
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/closureall.testClosureAsParam$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %3 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 %2, i64 %2, i64 8)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %5 = phi i64 [ -1, %_llgo_0 ], [ %6, %_llgo_2 ]
  %6 = add i64 %5, 1
  %7 = icmp slt i64 %6, %4
  br i1 %7, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %10 = icmp slt i64 %6, 0
  %11 = icmp sge i64 %6, %9
  %12 = or i1 %11, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %8, i64 %6
  %14 = load i64, ptr %13, align 4
  %15 = extractvalue { ptr, ptr } %1, 1
  %16 = extractvalue { ptr, ptr } %1, 0
  %17 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %15)
  %18 = call i64 %16(i64 %14)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %17)
  %19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 0
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, 1
  %21 = icmp slt i64 %6, 0
  %22 = icmp sge i64 %6, %20
  %23 = or i1 %22, %21
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %23)
  %24 = getelementptr inbounds i64, ptr %19, i64 %6
  store i64 %18, ptr %24, align 4
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.testClosureAsParam$2"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = mul i64 %0, %4
  ret i64 %5
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testDeferClosure"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.testDeferClosure$1", ptr undef }, ptr %1, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %5 = alloca i8, i64 196, align 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 1
  store i64 0, ptr %8, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 2
  store ptr %4, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/closureall.testDeferClosure", %_llgo_2), ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %6)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 3
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 4
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, i32 0, i32 5
  store ptr null, ptr %14, align 8
  %15 = call i32 @sigsetjmp(ptr %5, i32 0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_3
  ret void

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/closureall.testDeferClosure", %_llgo_3), ptr %12, align 8
  %17 = load i64, ptr %11, align 4
  %18 = load ptr, ptr %14, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %4)
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_0
  %20 = load ptr, ptr %14, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %22 = getelementptr inbounds { ptr, { ptr, ptr } }, ptr %21, i32 0, i32 0
  store ptr %20, ptr %22, align 8
  %23 = getelementptr inbounds { ptr, { ptr, ptr } }, ptr %21, i32 0, i32 1
  store { ptr, ptr } %3, ptr %23, align 8
  store ptr %21, ptr %14, align 8
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/closureall.testDeferClosure", %_llgo_6), ptr %13, align 8
  br label %_llgo_2

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/closureall.testDeferClosure", %_llgo_3), ptr %13, align 8
  %24 = load ptr, ptr %12, align 8
  indirectbr ptr %24, [label %_llgo_3, label %_llgo_2]

_llgo_6:                                          ; preds = %_llgo_8
  ret void

_llgo_7:                                          ; preds = %_llgo_2
  %25 = load ptr, ptr %14, align 8
  %26 = load { ptr, { ptr, ptr } }, ptr %25, align 8
  %27 = extractvalue { ptr, { ptr, ptr } } %26, 0
  store ptr %27, ptr %14, align 8
  %28 = extractvalue { ptr, { ptr, ptr } } %26, 1
  %29 = extractvalue { ptr, ptr } %28, 1
  %30 = extractvalue { ptr, ptr } %28, 0
  %31 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %29)
  call void %30()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %25)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_2
  %32 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %6, align 8
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %32, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %33)
  %34 = load ptr, ptr %13, align 8
  indirectbr ptr %34, [label %_llgo_3, label %_llgo_6]
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testDeferClosure$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  %4 = add i64 %3, 1
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testDirectMethodCall"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %0, i64 10)
  %3 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  call void @llvm.memset(ptr %3, i8 0, i64 8, i1 false)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %3, i32 0, i32 0
  store i64 7, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %3, align 4
  %6 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc"(%"github.com/goplus/llgo/cl/_testgo/closureall.S" %5, i64 3)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testGlobalFuncAsClosure"() {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.globalAdd"(i64 1, i64 2)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testGoClosure"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 42, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.testGoClosure$1", ptr undef }, ptr %1, 1
  %4 = call ptr @malloc(i64 16)
  %5 = getelementptr inbounds { { ptr, ptr } }, ptr %4, i32 0, i32 0
  store { ptr, ptr } %3, ptr %5, align 8
  %6 = alloca i8, i64 8, align 1
  %7 = call i32 @"github.com/goplus/llgo/runtime/internal/runtime.CreateThread"(ptr %6, ptr null, ptr @"github.com/goplus/llgo/cl/_testgo/closureall._llgo_routine$1", ptr %4)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testGoClosure$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  %4 = mul i64 %3, 2
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testGoLinknameAsClosure"() {
_llgo_0:
  %0 = call double @sqrt(double 4.000000e+00)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testIIFE"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 10, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.testIIFE$1", ptr undef }, ptr %1, 1
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  %6 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %4)
  %7 = call i64 %5(i64 5)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.testIIFE$1"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %0
  ret i64 %5
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testIfaceMethodCall"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %11)
  %14 = call i64 %12(ptr %11, i64 11)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %13)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testIfaceMethodValue"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S")
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %0, 1
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 1
  br i1 true, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %8 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %7, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %8, align 8
  %9 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.interface{Add(int) int}.Add$bound", ptr undef }, ptr %7, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %10)
  %13 = call i64 %11(i64 9)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %12)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 72 }, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %14, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %15)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testLlgoLinkAsClosure"() {
_llgo_0:
  %0 = call i32 @abs(i32 -3)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testMethodExpr"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$thunk"(ptr %0, i64 8)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testNestedClosure"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 1, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.testNestedClosure$1", ptr undef }, ptr %1, 1
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  %6 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %4)
  %7 = call { ptr, ptr } %5()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  %8 = extractvalue { ptr, ptr } %7, 1
  %9 = extractvalue { ptr, ptr } %7, 0
  %10 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %8)
  %11 = call i64 %9()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %10)
  ret void
}

define { ptr, ptr } @"github.com/goplus/llgo/cl/_testgo/closureall.testNestedClosure$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 2, ptr %2, align 4
  %3 = extractvalue { ptr } %1, 0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %5 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, ptr }, ptr %4, i32 0, i32 1
  store ptr %2, ptr %6, align 8
  %7 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.testNestedClosure$1$1", ptr undef }, ptr %4, 1
  ret { ptr, ptr } %7
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.testNestedClosure$1$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %1 = load { ptr, ptr }, ptr %0, align 8
  %2 = extractvalue { ptr, ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  %4 = extractvalue { ptr, ptr } %1, 1
  %5 = load i64, ptr %4, align 4
  %6 = add i64 %3, %5
  ret i64 %6
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testNoFreeClosure"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.testNoFreeClosure$1"()
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %0, 1
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %0, 0
  %3 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %1)
  %4 = call i64 %2(i64 1)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %3)
  ret void
}

define %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.testNoFreeClosure$1"() {
_llgo_0:
  ret %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.testNoFreeClosure$1$1", ptr null }
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.testNoFreeClosure$1$1"(i64 %0) {
_llgo_0:
  %1 = add i64 %0, 1
  ret i64 %1
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testPtrMethodValue"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %0, i32 0, i32 0
  store i64 5, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %0, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$bound", ptr undef }, ptr %2, 1
  %5 = extractvalue { ptr, ptr } %4, 1
  %6 = extractvalue { ptr, ptr } %4, 0
  %7 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %5)
  %8 = call i64 %6(i64 7)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %7)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testValueMethodValue"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %0, i32 0, i32 0
  store i64 10, ptr %1, align 4
  %2 = load %"github.com/goplus/llgo/cl/_testgo/closureall.S", ptr %0, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr inbounds { %"github.com/goplus/llgo/cl/_testgo/closureall.S" }, ptr %3, i32 0, i32 0
  store %"github.com/goplus/llgo/cl/_testgo/closureall.S" %2, ptr %4, align 4
  %5 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc$bound", ptr undef }, ptr %3, 1
  %6 = extractvalue { ptr, ptr } %5, 1
  %7 = extractvalue { ptr, ptr } %5, 0
  %8 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %6)
  %9 = call i64 %7(i64 3)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %8)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.testWithFreeClosure"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.testWithFreeClosure$1"(i64 3)
  %1 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %0, 1
  %2 = extractvalue %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %0, 0
  %3 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %1)
  %4 = call i64 %2(i64 2)
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %3)
  ret void
}

define %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" @"github.com/goplus/llgo/cl/_testgo/closureall.testWithFreeClosure$1"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %3 = getelementptr inbounds { ptr }, ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.testWithFreeClosure$1$1", ptr undef }, ptr %2, 1
  %5 = alloca %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", align 8
  store { ptr, ptr } %4, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/cl/_testgo/closureall.Fn", ptr %5, align 8
  ret %"github.com/goplus/llgo/cl/_testgo/closureall.Fn" %6
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.testWithFreeClosure$1$1"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %0, %4
  ret i64 %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #1

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr)

declare ptr @malloc(i64)

define ptr @"github.com/goplus/llgo/cl/_testgo/closureall._llgo_routine$1"(ptr %0) {
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

declare double @sqrt(double)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.structequal$ctx"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr %2, ptr %0, ptr %1)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.interface{Add(int) int}.Add$bound"(i64 %0) {
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

declare i32 @abs(i32)

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$thunk"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %0, i64 %1)
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { ptr }, ptr %1, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %3, i64 %0)
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc$bound"(i64 %0) {
_llgo_0:
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
  %2 = load { %"github.com/goplus/llgo/cl/_testgo/closureall.S" }, ptr %1, align 4
  %3 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/closureall.S" } %2, 0
  %4 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc"(%"github.com/goplus/llgo/cl/_testgo/closureall.S" %3, i64 %0)
  ret i64 %4
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { returns_twice }
