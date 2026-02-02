; ModuleID = 'github.com/goplus/llgo/cl/_testrt/funcpc'
source_filename = "github.com/goplus/llgo/cl/_testrt/funcpc"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/funcpc.S" = type { i64 }

@"github.com/goplus/llgo/cl/_testrt/funcpc.init$guard" = global i1 false, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/funcpc.globalFunc" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testrt/funcpc.globalFunc", i64 0 }
@"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1158142966, i8 32, i8 8, i8 8, i8 57, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 36 }, ptr @"*_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY$fields", i64 2, i64 2 } }, align 8
@0 = private unnamed_addr constant [36 x i8] c"struct { $f func() int; $h uintptr }", align 1
@"*_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1345305177, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 36 }, ptr null }, ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr", i64 0 }
@1 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2131144854, i8 0, i8 8, i8 8, i8 51, ptr null, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 10 }, ptr @"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out", i64 1, i64 1 } }, align 8
@2 = private unnamed_addr constant [10 x i8] c"func() int", align 1
@"*_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1805835775, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 10 }, ptr null }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal64", i64 0 }
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@4 = private unnamed_addr constant [2 x i8] c"$h", align 1
@_llgo_uintptr = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 1268343028, i8 12, i8 8, i8 8, i8 44, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, ptr @"*_llgo_uintptr" }, align 8
@5 = private unnamed_addr constant [7 x i8] c"uintptr", align 1
@"*_llgo_uintptr" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1684891952, i8 10, i8 8, i8 8, i8 54, ptr @"__llgo_closure_const$github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, ptr null }, ptr @_llgo_uintptr }, align 8
@"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr @_llgo_uintptr, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8

define i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.FuncPCABI0"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, ptr %1, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 1
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %3, align 4
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.FuncPCABIInternal"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, ptr %1, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 1
  %3 = load ptr, ptr %2, align 8
  %4 = load i64, ptr %3, align 4
  ret i64 %4
}

define i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.(*S).Method"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/funcpc.S", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.globalFunc"() {
_llgo_0:
  ret i64 42
}

define void @"github.com/goplus/llgo/cl/_testrt/funcpc.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/funcpc.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/funcpc.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/funcpc.main"() {
_llgo_0:
  %0 = call i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.FuncPCABI0"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY", ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/funcpc.globalFunc" })
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/funcpc.S", ptr %1, i32 0, i32 0
  store i64 100, ptr %2, align 4
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %4 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/funcpc.(*S).Method$bound", ptr %4, align 8
  %5 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 1
  store i64 1, ptr %5, align 4
  %6 = getelementptr inbounds { ptr, i64, ptr }, ptr %3, i32 0, i32 2
  store ptr %1, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY", ptr undef }, ptr %3, 1
  %8 = call i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.FuncPCABI0"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 10, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %11 = getelementptr inbounds { ptr, i64, ptr }, ptr %10, i32 0, i32 0
  store ptr @"github.com/goplus/llgo/cl/_testrt/funcpc.main$1", ptr %11, align 8
  %12 = getelementptr inbounds { ptr, i64, ptr }, ptr %10, i32 0, i32 1
  store i64 1, ptr %12, align 4
  %13 = getelementptr inbounds { ptr, i64, ptr }, ptr %10, i32 0, i32 2
  store ptr %9, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY", ptr undef }, ptr %10, 1
  %15 = call i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.FuncPCABI0"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  %16 = call i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.FuncPCABIInternal"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$9Xnzh6tTLee8-T1hkjbEMbbXK5IX2MYsUOq3E1fXCtY", ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testrt/funcpc.globalFunc" })
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.main$1"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = load i64, ptr %2, align 4
  ret i64 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.(*S).Method$bound"() {
_llgo_0:
  %0 = call ptr asm sideeffect "mov $0, x26", "=r"()
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = call i64 @"github.com/goplus/llgo/cl/_testrt/funcpc.(*S).Method"(ptr %2)
  ret i64 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)
