; ModuleID = 'github.com/goplus/llgo/cl/_testgo/closureall'
source_filename = "github.com/goplus/llgo/cl/_testgo/closureall"

%"github.com/goplus/llgo/cl/_testgo/closureall.S" = type { i64 }
%"github.com/goplus/llgo/cl/_testgo/closureall.Fn" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testgo/closureall.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [44 x i8] c"github.com/goplus/llgo/cl/_testgo/closureall", align 1
@1 = private unnamed_addr constant [1 x i8] c"S", align 1
@_llgo_int = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/closureall.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@3 = private unnamed_addr constant [3 x i8] c"Add", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [3 x i8] c"Inc", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S" = linkonce global ptr null, align 8
@"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [72 x i8] c"type assertion interface{Add(int) int} -> interface{Add(int) int} failed", align 1
@_llgo_string = linkonce global ptr null, align 8

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
  call void @"github.com/goplus/llgo/cl/_testgo/closureall.init$after"()
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
  %17 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.Add$thunk"(ptr %9, i64 8)
  %18 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  %19 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  %20 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %21 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %21, ptr %19)
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %23, ptr %9, 1
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %24)
  %26 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, 1
  br i1 true, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %29 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %28, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %24, ptr %29, align 8
  %30 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/closureall.interface{Add(int) int}.Add$bound", ptr undef }, ptr %28, 1
  %31 = extractvalue { ptr, ptr } %30, 1
  %32 = extractvalue { ptr, ptr } %30, 0
  %33 = call i64 %32(ptr %31, i64 9)
  %34 = call double @sqrt(double 4.000000e+00)
  %35 = call i32 @abs(i32 -3)
  %36 = call i32 @"github.com/goplus/llgo/cl/_testgo/closureall.callCallback"(ptr @"github.com/goplus/llgo/cl/_testgo/closureall.main$1", i32 7)
  ret void

_llgo_2:                                          ; preds = %_llgo_0
  %37 = load ptr, ptr @_llgo_string, align 8
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 72 }, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %37, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, ptr %38, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %40)
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

define i64 @"github.com/goplus/llgo/cl/_testgo/closureall.Add$thunk"(ptr %0, i64 %1) {
_llgo_0:
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add"(ptr %0, i64 %1)
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/closureall.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 8, i64 1, i64 2)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %5, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_int, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %8 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %7, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %9, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %8, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 1, 2
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13)
  store ptr %14, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %15 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  br i1 %2, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %16 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_4
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 1 }, i64 25, i64 8, i64 1, i64 2)
  %19 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %_llgo_9, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_5
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %23 = getelementptr ptr, ptr %22, i64 0
  store ptr %21, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 2
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %29 = getelementptr ptr, ptr %28, i64 0
  store ptr %27, ptr %29, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 1, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i64 1, 2
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %33)
  store ptr %33, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %34 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %34, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %35, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add", 2
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %36, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Add", 3
  %38 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %38, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc", 2
  %41 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %40, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc", 3
  %42 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %38, 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %42, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.(*S).Inc", 2
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %43, ptr @"github.com/goplus/llgo/cl/_testgo/closureall.S.Inc", 3
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %46 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %45, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr %46, align 8
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %45, 0
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, i64 1, 1
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 1, 2
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %51 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %50, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr %51, align 8
  %52 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %50, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %41, ptr %52, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %50, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 2, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %15, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55)
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_6
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %56)
  store ptr %56, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_6
  %57 = load ptr, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", align 8
  %58 = load ptr, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr undef }, ptr %57, 1
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %62 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %61, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %60, ptr %62, align 8
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %61, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 1, 1
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, i64 1, 2
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 44 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65)
  store ptr %66, ptr @"_llgo_iface$VdBKYV8-gcMjZtZfcf-u2oKoj9Lu3VXwuG8TGCW2S4A", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %67 = load ptr, ptr @_llgo_string, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %69, ptr @_llgo_string, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

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
