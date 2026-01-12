; ModuleID = 'github.com/goplus/llgo/cl/_testrt/closureiface'
source_filename = "github.com/goplus/llgo/cl/_testrt/closureiface"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr, i1 }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/closureiface.init$guard" = global i1 false, align 1
@"_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 24, i64 8, i32 194152018, i8 32, i8 8, i8 8, i8 25, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 63 }, ptr @"*_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A$fields", i64 3, i64 3 } }, align 8
@0 = private unnamed_addr constant [63 x i8] c"struct { $f func(int) int; $data unsafe.Pointer; $isCoro bool }", align 1
@"*_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1030493250, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 63 }, ptr null }, ptr @"_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A" }, align 8
@1 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134531106, i8 0, i8 8, i8 8, i8 51, { ptr, ptr, i1 } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 13 }, ptr @"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in", i64 1, i64 1 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out", i64 1, i64 1 } }, align 8
@2 = private unnamed_addr constant [13 x i8] c"func(int) int", align 1
@"*_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1763581361, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 13 }, ptr null }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU" }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr @"*_llgo_int" }, align 8
@3 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$in" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU$out" = weak_odr constant [1 x ptr] [ptr @_llgo_int], align 8
@4 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@5 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@6 = private unnamed_addr constant [7 x i8] c"$isCoro", align 1
@_llgo_bool = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 554183389, i8 12, i8 1, i8 1, i8 33, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"*_llgo_bool" }, align 8
@7 = private unnamed_addr constant [4 x i8] c"bool", align 1
@"*_llgo_bool" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1896950390, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr null }, ptr @_llgo_bool }, align 8
@"_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A$fields" = weak_odr constant [3 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr @"_llgo_func$ekGNsrYBSzltfAjxbl6T8H6Yq8j16wzqS3nDj2xxGMU", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 7 }, ptr @_llgo_bool, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@8 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr @"*_llgo_string" }, align 8
@9 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr, i1 } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null, i1 false }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 }, ptr null }, ptr @_llgo_string }, align 8

define void @"github.com/goplus/llgo/cl/_testrt/closureiface.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/closureiface.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 200, ptr %0, align 4
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %2 = getelementptr inbounds { ptr }, ptr %1, i32 0, i32 0
  store ptr %0, ptr %2, align 8
  %3 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.main$1", ptr undef, i1 undef }, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i1 } %3, i1 false, 2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { ptr, ptr, i1 } %4, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A", ptr undef }, ptr %5, 1
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 0
  %8 = icmp eq ptr %7, @"_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A"
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %9, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %11 = extractvalue { ptr, ptr, i1 } %19, 0
  %12 = extractvalue { ptr, ptr, i1 } %19, 1
  %13 = extractvalue { ptr, ptr, i1 } %19, 2
  br i1 %13, label %_llgo_7, label %_llgo_6

_llgo_3:                                          ; preds = %_llgo_0
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 1
  %15 = load { ptr, ptr, i1 }, ptr %14, align 8
  %16 = insertvalue { { ptr, ptr, i1 }, i1 } undef, { ptr, ptr, i1 } %15, 0
  %17 = insertvalue { { ptr, ptr, i1 }, i1 } %16, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %18 = phi { { ptr, ptr, i1 }, i1 } [ %17, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %19 = extractvalue { { ptr, ptr, i1 }, i1 } %18, 0
  %20 = extractvalue { { ptr, ptr, i1 }, i1 } %18, 1
  br i1 %20, label %_llgo_2, label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_2
  %21 = call i64 %11(ptr %12, i64 100)
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_2
  %22 = call ptr %11(ptr %12, i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr %22)
  %23 = call ptr @llvm.coro.promise(ptr %22, i32 8, i1 false)
  %24 = getelementptr inbounds { ptr, i64 }, ptr %23, i32 0, i32 1
  %25 = load i64, ptr %24, align 4
  call void @llvm.coro.destroy(ptr %22)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %26 = phi i64 [ %21, %_llgo_6 ], [ %25, %_llgo_7 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.main$coro"() #0 {
_llgo_0:
  %0 = alloca { ptr }, align 8
  %1 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr null, ptr %1, align 8
  %2 = call token @llvm.coro.id(i32 0, ptr %0, ptr null, ptr null)
  %3 = call i1 @llvm.coro.alloc(token %2)
  br i1 %3, label %_llgo_4, label %_llgo_5

_llgo_1:                                          ; preds = %_llgo_5
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 200, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %6 = getelementptr inbounds { ptr }, ptr %5, i32 0, i32 0
  store ptr %4, ptr %6, align 8
  %7 = insertvalue { ptr, ptr, i1 } { ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.main$1", ptr undef, i1 undef }, ptr %5, 1
  %8 = insertvalue { ptr, ptr, i1 } %7, i1 false, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { ptr, ptr, i1 } %8, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A", ptr undef }, ptr %9, 1
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, 0
  %12 = icmp eq ptr %11, @"_llgo_closure$WdnIaoLN2oU4Bg-xQMerZtnTIUwh6cZ_-qIWxyDC67A"
  br i1 %12, label %_llgo_9, label %_llgo_10

_llgo_2:                                          ; preds = %_llgo_11
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %13, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  br label %_llgo_7

_llgo_3:                                          ; preds = %_llgo_11
  %15 = extractvalue { ptr, ptr, i1 } %31, 0
  %16 = extractvalue { ptr, ptr, i1 } %31, 1
  %17 = extractvalue { ptr, ptr, i1 } %31, 2
  br i1 %17, label %_llgo_13, label %_llgo_12

_llgo_4:                                          ; preds = %_llgo_0
  %18 = call i64 @llvm.coro.size.i64()
  %19 = call ptr @malloc(i64 %18)
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_0
  %20 = phi ptr [ null, %_llgo_0 ], [ %19, %_llgo_4 ]
  %21 = call ptr @llvm.coro.begin(token %2, ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_7, %_llgo_19, %_llgo_18
  %22 = call i1 @llvm.coro.end(ptr %21, i1 false, token none)
  ret ptr %21

_llgo_7:                                          ; preds = %_llgo_2, %_llgo_14, %_llgo_22, %_llgo_19, %_llgo_18
  %23 = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %23)
  %24 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %24, label %_llgo_6 [
    i8 0, label %_llgo_24
    i8 1, label %_llgo_8
  ]

_llgo_8:                                          ; preds = %_llgo_24, %_llgo_7
  %25 = call ptr @llvm.coro.free(token %2, ptr %21)
  call void @free(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_1
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, 1
  %27 = load { ptr, ptr, i1 }, ptr %26, align 8
  %28 = insertvalue { { ptr, ptr, i1 }, i1 } undef, { ptr, ptr, i1 } %27, 0
  %29 = insertvalue { { ptr, ptr, i1 }, i1 } %28, i1 true, 1
  br label %_llgo_11

_llgo_10:                                         ; preds = %_llgo_1
  br label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_10, %_llgo_9
  %30 = phi { { ptr, ptr, i1 }, i1 } [ %29, %_llgo_9 ], [ zeroinitializer, %_llgo_10 ]
  %31 = extractvalue { { ptr, ptr, i1 }, i1 } %30, 0
  %32 = extractvalue { { ptr, ptr, i1 }, i1 } %30, 1
  br i1 %32, label %_llgo_3, label %_llgo_2

_llgo_12:                                         ; preds = %_llgo_3
  %33 = call i64 %15(ptr %16, i64 100)
  br label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_3
  %34 = call ptr %15(ptr %16, i64 100)
  br label %_llgo_16

_llgo_14:                                         ; preds = %_llgo_23, %_llgo_12
  %35 = phi i64 [ %33, %_llgo_12 ], [ %48, %_llgo_23 ]
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %35)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_7

_llgo_15:                                         ; preds = %_llgo_16
  %36 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr %34)
  br i1 %36, label %_llgo_22, label %_llgo_23

_llgo_16:                                         ; preds = %_llgo_21, %_llgo_20, %_llgo_13
  %37 = phi i1 [ true, %_llgo_13 ], [ false, %_llgo_18 ], [ false, %_llgo_19 ]
  %38 = call i1 @llvm.coro.done(ptr %34)
  br i1 %38, label %_llgo_15, label %_llgo_17

_llgo_17:                                         ; preds = %_llgo_16
  br i1 %37, label %_llgo_18, label %_llgo_19

_llgo_18:                                         ; preds = %_llgo_17
  %39 = call ptr @llvm.coro.promise(ptr %34, i32 8, i1 false)
  %40 = getelementptr inbounds { ptr, i64 }, ptr %39, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %40, ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr %34)
  %41 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %41, label %_llgo_6 [
    i8 0, label %_llgo_20
    i8 1, label %_llgo_7
  ]

_llgo_19:                                         ; preds = %_llgo_17
  %42 = call ptr @llvm.coro.promise(ptr %34, i32 8, i1 false)
  %43 = getelementptr inbounds { ptr, i64 }, ptr %42, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr %43, ptr %21)
  %44 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %44, label %_llgo_6 [
    i8 0, label %_llgo_21
    i8 1, label %_llgo_7
  ]

_llgo_20:                                         ; preds = %_llgo_18
  br label %_llgo_16

_llgo_21:                                         ; preds = %_llgo_19
  br label %_llgo_16

_llgo_22:                                         ; preds = %_llgo_15
  %45 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr %34)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  br label %_llgo_7

_llgo_23:                                         ; preds = %_llgo_15
  %46 = call ptr @llvm.coro.promise(ptr %34, i32 8, i1 false)
  %47 = getelementptr inbounds { ptr, i64 }, ptr %46, i32 0, i32 1
  %48 = load i64, ptr %47, align 4
  call void @llvm.coro.destroy(ptr %34)
  br label %_llgo_14

_llgo_24:                                         ; preds = %_llgo_7
  br label %_llgo_8
}

define i64 @"github.com/goplus/llgo/cl/_testrt/closureiface.main$1"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = load i64, ptr %3, align 4
  %5 = add i64 %4, %1
  ret i64 %5
}

; Function Attrs: presplitcoroutine
define ptr @"github.com/goplus/llgo/cl/_testrt/closureiface.main$1$coro"(ptr %0, i64 %1) #0 {
_llgo_0:
  %2 = load { ptr }, ptr %0, align 8
  %3 = alloca { ptr, i64 }, align 8
  %4 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = call token @llvm.coro.id(i32 0, ptr %3, ptr null, ptr null)
  %6 = call i1 @llvm.coro.alloc(token %5)
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %7 = extractvalue { ptr } %2, 0
  %8 = load i64, ptr %7, align 4
  %9 = add i64 %8, %1
  %10 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 1
  store i64 %9, ptr %10, align 4
  br label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_0
  %11 = call i64 @llvm.coro.size.i64()
  %12 = call ptr @malloc(i64 %11)
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = phi ptr [ null, %_llgo_0 ], [ %12, %_llgo_2 ]
  %14 = call ptr @llvm.coro.begin(token %5, ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()
  br label %_llgo_1

_llgo_4:                                          ; preds = %_llgo_6, %_llgo_5
  %15 = call i1 @llvm.coro.end(ptr %14, i1 false, token none)
  ret ptr %14

_llgo_5:                                          ; preds = %_llgo_1
  %16 = getelementptr inbounds { ptr, i64 }, ptr %3, i32 0, i32 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr %16)
  %17 = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %17, label %_llgo_4 [
    i8 0, label %_llgo_7
    i8 1, label %_llgo_6
  ]

_llgo_6:                                          ; preds = %_llgo_7, %_llgo_5
  %18 = call ptr @llvm.coro.free(token %5, ptr %14)
  call void @free(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()
  br label %_llgo_4

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_6
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroReschedule"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroScheduleUntil"(ptr)

; Function Attrs: nounwind memory(none)
declare ptr @llvm.coro.promise(ptr nocapture, i32, i1) #1

declare void @llvm.coro.destroy(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare token @llvm.coro.id(i32, ptr readnone, ptr nocapture readonly, ptr) #2

; Function Attrs: nounwind
declare i1 @llvm.coro.alloc(token) #3

; Function Attrs: nounwind memory(none)
declare i64 @llvm.coro.size.i64() #1

declare ptr @malloc(i64)

; Function Attrs: nounwind
declare ptr @llvm.coro.begin(token, ptr writeonly) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroEnter"()

; Function Attrs: nounwind memory(argmem: readwrite)
declare i1 @llvm.coro.done(ptr nocapture readonly) #4

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroAddWaiter"(ptr, ptr)

; Function Attrs: nounwind
declare i8 @llvm.coro.suspend(token, i1) #3

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.CoroIsPanicByHandle"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @"github.com/goplus/llgo/runtime/internal/runtime.CoroGetPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroClearPanicByHandle"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroSetPanic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

; Function Attrs: nounwind
declare i1 @llvm.coro.end(ptr, i1, token) #3

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroWakeWaiters"(ptr)

; Function Attrs: nounwind memory(argmem: read)
declare ptr @llvm.coro.free(token, ptr nocapture readonly) #5

declare void @free(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.CoroExit"()

attributes #0 = { presplitcoroutine }
attributes #1 = { nounwind memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nounwind }
attributes #4 = { nounwind memory(argmem: readwrite) }
attributes #5 = { nounwind memory(argmem: read) }
