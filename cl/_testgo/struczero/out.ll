; ModuleID = 'github.com/goplus/llgo/cl/_testgo/struczero'
source_filename = "github.com/goplus/llgo/cl/_testgo/struczero"

%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/cl/_testdata/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/struczero.bar" = type { ptr, float }

@"github.com/goplus/llgo/cl/_testgo/struczero.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1004880, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_closure$n79WRpuYj71Y-vfDN9vPo-EVgXDd2KS90BtUjHvkJfM", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb" }] }, align 8
@0 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2018827, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_closure$n79WRpuYj71Y-vfDN9vPo-EVgXDd2KS90BtUjHvkJfM", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb" }] }, align 8
@1 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testdata/foo", align 1
@2 = private unnamed_addr constant [2 x i8] c"Pb", align 1
@"_llgo_closure$n79WRpuYj71Y-vfDN9vPo-EVgXDd2KS90BtUjHvkJfM" = weak_odr global %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 1677427249, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 47 }, ptr @"*_llgo_closure$n79WRpuYj71Y-vfDN9vPo-EVgXDd2KS90BtUjHvkJfM" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$n79WRpuYj71Y-vfDN9vPo-EVgXDd2KS90BtUjHvkJfM$fields", i64 2, i64 2 } }, align 8
@3 = private unnamed_addr constant [47 x i8] c"struct { $f func() byte; $data unsafe.Pointer }", align 1
@"*_llgo_closure$n79WRpuYj71Y-vfDN9vPo-EVgXDd2KS90BtUjHvkJfM" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -940103731, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 47 }, ptr null }, ptr @"_llgo_closure$n79WRpuYj71Y-vfDN9vPo-EVgXDd2KS90BtUjHvkJfM" }, align 8
@4 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/struczero", align 1
@5 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY" = weak_odr global %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 218442, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 11 }, ptr @"*_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY$in", i64 0, i64 0 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY$out", i64 1, i64 1 } }, align 8
@6 = private unnamed_addr constant [11 x i8] c"func() byte", align 1
@"*_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 445951, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 11 }, ptr null }, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY" }, align 8
@"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY$in" = weak_odr global [0 x ptr] zeroinitializer, align 8
@"*_llgo_uint8" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 9083, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr null }, ptr @_llgo_uint8 }, align 8
@7 = private unnamed_addr constant [4 x i8] c"byte", align 1
@_llgo_uint8 = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 8, i8 8, i8 1, i8 1, i8 40, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr @"*_llgo_uint8" }, align 8
@"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY$out" = weak_odr global [1 x ptr] [ptr @"*_llgo_uint8"], align 8
@8 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 18, i8 8, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@9 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 9103, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$n79WRpuYj71Y-vfDN9vPo-EVgXDd2KS90BtUjHvkJfM$fields" = weak_odr global [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@10 = private unnamed_addr constant [2 x i8] c"pb", align 1
@11 = private unnamed_addr constant [1 x i8] c"F", align 1
@_llgo_float32 = weak_odr global %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 13, i8 0, i8 4, i8 4, i8 45, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr @"*_llgo_float32" }, align 8
@12 = private unnamed_addr constant [7 x i8] c"float32", align 1
@"*_llgo_float32" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 9093, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 7 }, ptr null }, ptr @_llgo_float32 }, align 8
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo$fields" = weak_odr global [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr @"*_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 1 }, ptr @_llgo_float32, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" = weak_odr global { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 1006592, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 47 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@13 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/struczero.bar", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" = weak_odr global %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 2022251, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 47 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" }, align 8
@14 = private unnamed_addr constant [1 x i8] c"f", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar$fields" = weak_odr global [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr @"*_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 1 }, ptr @_llgo_float32, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@15 = private unnamed_addr constant [6 x i8] c"notOk:", align 1

define { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Bar"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %2 = icmp eq ptr %1, @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo"
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %4 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %3, align 8
  %5 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } undef, %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %4, 0
  %6 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %5, i1 true, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %7 = phi { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } [ %6, %_llgo_1 ], [ zeroinitializer, %_llgo_2 ]
  %8 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %7, 0
  %9 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %7, 1
  %10 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } undef, %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %8, 0
  %11 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %10, i1 %9, 1
  ret { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %11
}

define { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Foo"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %2 = icmp eq ptr %1, @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar"
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %4 = load %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %3, align 8
  %5 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %4, 0
  %6 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %5, i1 true, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %7 = phi { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } [ %6, %_llgo_1 ], [ zeroinitializer, %_llgo_2 ]
  %8 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %7, 0
  %9 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %7, 1
  %10 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %8, 0
  %11 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %10, i1 %9, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %11
}

define void @"github.com/goplus/llgo/cl/_testgo/struczero.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/foo.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/struczero.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = call { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Foo"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  %2 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %1, 0
  store %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %2, ptr %0, align 8
  %3 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %1, 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %0, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %0, i32 0, i32 1
  %7 = load float, ptr %6, align 4
  %8 = xor i1 %3, true
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %9 = fpext float %7 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  call void @llvm.memset(ptr %10, i8 0, i64 16, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" zeroinitializer, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr undef }, ptr %11, 1
  %13 = call { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Bar"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  %14 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %13, 0
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %14, ptr %10, align 8
  %15 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %13, 1
  %16 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %10, align 8
  %17 = call ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/_testdata/foo.Foo" %16)
  %18 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %10, i32 0, i32 1
  %19 = load float, ptr %18, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %20 = fpext float %19 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/_testdata/foo.Foo")

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
