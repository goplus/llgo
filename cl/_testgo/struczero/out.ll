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
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 853873445, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb" }] }, align 8
@0 = private unnamed_addr constant [7 x i8] c"foo.Foo", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.PtrType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [1 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 672750764, i8 11, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, i16 1, i16 1, i32 24 }, [1 x %"github.com/goplus/llgo/runtime/abi.Method"] [%"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb" }] }, align 8
@1 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testdata/foo", align 1
@2 = private unnamed_addr constant [2 x i8] c"Pb", align 1
@"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -92154667, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 13 }, ptr @"*_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY$out", i64 1, i64 1 } }, align 8
@3 = private unnamed_addr constant [13 x i8] c"func() *uint8", align 1
@"*_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 828247448, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 13 }, ptr null }, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY" }, align 8
@"*_llgo_uint8" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1277858201, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr null }, ptr @_llgo_uint8 }, align 8
@4 = private unnamed_addr constant [5 x i8] c"uint8", align 1
@_llgo_uint8 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 1, i64 0, i32 269156761, i8 12, i8 1, i8 1, i8 8, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr @"*_llgo_uint8" }, align 8
@"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY$out" = weak_odr constant [1 x ptr] [ptr @"*_llgo_uint8"], align 8
@5 = private unnamed_addr constant [2 x i8] c"pb", align 1
@6 = private unnamed_addr constant [1 x i8] c"F", align 1
@_llgo_float32 = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 4, i64 0, i32 62173712, i8 4, i8 4, i8 4, i8 13, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr @"*_llgo_float32" }, align 8
@7 = private unnamed_addr constant [7 x i8] c"float32", align 1
@"*_llgo_float32" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1426958587, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr null }, ptr @_llgo_float32 }, align 8
@"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr @"*_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr @_llgo_float32, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" = weak_odr constant { %"github.com/goplus/llgo/runtime/abi.StructType", %"github.com/goplus/llgo/runtime/abi.UncommonType", [0 x %"github.com/goplus/llgo/runtime/abi.Method"] } { %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 0, i32 807702745, i8 5, i8 8, i8 8, i8 25, { ptr, ptr } { ptr @"github.com/goplus/llgo/runtime/internal/runtime.structequal", ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 8 }, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko$fields", i64 2, i64 2 } }, %"github.com/goplus/llgo/runtime/abi.UncommonType" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 43 }, i16 0, i16 0, i32 24 }, [0 x %"github.com/goplus/llgo/runtime/abi.Method"] zeroinitializer }, align 8
@8 = private unnamed_addr constant [8 x i8] c"main.bar", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -107793665, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 8 }, ptr null }, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" }, align 8
@9 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/struczero", align 1
@10 = private unnamed_addr constant [1 x i8] c"f", align 1
@"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr @"*_llgo_uint8", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr @_llgo_float32, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@11 = private unnamed_addr constant [6 x i8] c"notOk:", align 1

define { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Bar"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = alloca { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 }, align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %4 = icmp eq ptr %3, @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo"
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %6 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %5, align 8
  %7 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } undef, %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %6, 0
  %8 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %7, i1 true, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } [ %8, %_llgo_1 ], [ zeroinitializer, %_llgo_2 ]
  store { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %9, ptr %1, align 8
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 }, ptr %1, align 8
  %12 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %11, 0
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %12, ptr %2, align 8
  %13 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %2, align 8
  %15 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 }, ptr %1, align 8
  %17 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %16, 1
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 24)
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %18 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } undef, %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %14, 0
  %19 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %18, i1 %17, 1
  ret { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %19
}

define { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Foo"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = alloca { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 }, align 8
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %4 = icmp eq ptr %3, @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar"
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %6 = load %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %5, align 8
  %7 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %6, 0
  %8 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %7, i1 true, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %9 = phi { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } [ %8, %_llgo_1 ], [ zeroinitializer, %_llgo_2 ]
  store { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %9, ptr %1, align 8
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 }, ptr %1, align 8
  %12 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %11, 0
  store %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %12, ptr %2, align 8
  %13 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = load %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %2, align 8
  %15 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = load { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 }, ptr %1, align 8
  %17 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %16, 1
  store %"github.com/goplus/llgo/cl/_testgo/struczero.bar" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  store { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 24)
  store %"github.com/goplus/llgo/cl/_testgo/struczero.bar" zeroinitializer, ptr %2, align 8
  call void @runtime.TouchConservativeSlot(ptr %2, i64 16)
  call void @runtime.ClobberPointerRegs()
  %18 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %14, 0
  %19 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %18, i1 %17, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %19
}

define void @"github.com/goplus/llgo/cl/_testgo/struczero.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
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
  %0 = alloca { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 }, align 8
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr null, ptr %3, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr null, ptr %5, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr null, ptr %7, align 8
  %8 = alloca { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 }, align 8
  %9 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  %10 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr null, ptr %12, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  store ptr null, ptr %14, align 8
  %15 = alloca %"github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  call void @llvm.memset(ptr %15, i8 0, i64 16, i1 false)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %17 = call { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Foo"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %16)
  store { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %17, ptr %0, align 8
  %18 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = load { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 }, ptr %0, align 8
  %20 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %19, 0
  store %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %20, ptr %1, align 8
  %21 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %21)
  %22 = load %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %1, align 8
  store %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %22, ptr %15, align 8
  store %"github.com/goplus/llgo/cl/_testgo/struczero.bar" zeroinitializer, ptr %1, align 8
  call void @runtime.TouchConservativeSlot(ptr %1, i64 16)
  call void @runtime.ClobberPointerRegs()
  %23 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %23)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %15, i32 0, i32 0
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 72057594037927935
  %27 = xor i64 %26, 25399393228665167
  %28 = shl i64 %27, 17
  %29 = select i1 false, i64 0, i64 %28
  %30 = lshr i64 %27, 39
  %31 = select i1 false, i64 0, i64 %30
  %32 = or i64 %29, %31
  %33 = and i64 %32, 72057594037927935
  %34 = or i64 %33, -6557241057451442176
  store i64 %34, ptr %2, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %3, i64 %34)
  call void @runtime.ClobberPointerRegs()
  %35 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %35)
  %36 = load i64, ptr %2, align 4
  %37 = call i64 @runtime.LoadHiddenPointerKey(i64 %36)
  store i64 %37, ptr %4, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %5, i64 %37)
  store i64 0, ptr %2, align 4
  call void @runtime.TouchConservativeSlot(ptr %2, i64 8)
  store ptr null, ptr %3, align 8
  call void @runtime.TouchConservativeSlot(ptr %3, i64 8)
  call void @runtime.ClobberPointerRegs()
  %38 = icmp eq ptr %15, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %38)
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %15, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i64
  %41 = and i64 %40, 72057594037927935
  %42 = xor i64 %41, 25399393228665167
  %43 = shl i64 %42, 17
  %44 = select i1 false, i64 0, i64 %43
  %45 = lshr i64 %42, 39
  %46 = select i1 false, i64 0, i64 %45
  %47 = or i64 %44, %46
  %48 = and i64 %47, 72057594037927935
  %49 = or i64 %48, -6557241057451442176
  store i64 %49, ptr %6, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %7, i64 %49)
  call void @runtime.ClobberPointerRegs()
  %50 = icmp eq ptr %6, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %50)
  %51 = load i64, ptr %6, align 4
  %52 = alloca float, align 4
  call void @runtime.LoadHiddenPointee(ptr %52, i64 %51, i64 4)
  %53 = icmp eq ptr %52, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %53)
  %54 = load float, ptr %52, align 4
  store float 0.000000e+00, ptr %52, align 4
  store %"github.com/goplus/llgo/cl/_testgo/struczero.bar" zeroinitializer, ptr %15, align 8
  call void @runtime.TouchConservativeSlot(ptr %15, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %6, align 4
  call void @runtime.TouchConservativeSlot(ptr %6, i64 8)
  store ptr null, ptr %7, align 8
  call void @runtime.TouchConservativeSlot(ptr %7, i64 8)
  call void @runtime.ClobberPointerRegs()
  %55 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %55)
  %56 = load { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 }, ptr %0, align 8
  %57 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %56, 1
  %58 = xor i1 %57, true
  store { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } zeroinitializer, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 24)
  call void @runtime.ClobberPointerRegs()
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %60 = icmp eq ptr %4, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %60)
  %61 = load i64, ptr %4, align 4
  %62 = and i64 %61, 72057594037927935
  %63 = lshr i64 %62, 17
  %64 = select i1 false, i64 0, i64 %63
  %65 = shl i64 %62, 39
  %66 = select i1 false, i64 0, i64 %65
  %67 = or i64 %64, %66
  %68 = and i64 %67, 72057594037927935
  %69 = xor i64 %68, 25399393228665167
  %70 = inttoptr i64 %69 to ptr
  store i64 0, ptr %4, align 4
  call void @runtime.TouchConservativeSlot(ptr %4, i64 8)
  store ptr null, ptr %5, align 8
  call void @runtime.TouchConservativeSlot(ptr %5, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %71 = fpext float %54 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %59)
  %72 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  call void @llvm.memset(ptr %72, i8 0, i64 16, i1 false)
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" zeroinitializer, ptr %73, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr undef }, ptr %73, 1
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %76 = call { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Bar"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %74)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %75)
  store { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %76, ptr %8, align 8
  %77 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %77)
  %78 = load { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 }, ptr %8, align 8
  %79 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %78, 0
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %79, ptr %9, align 8
  %80 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %80)
  %81 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %9, align 8
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %81, ptr %72, align 8
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" zeroinitializer, ptr %9, align 8
  call void @runtime.TouchConservativeSlot(ptr %9, i64 16)
  call void @runtime.ClobberPointerRegs()
  %82 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %72, align 8
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %83, ptr %10, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %85 = icmp eq ptr %10, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %85)
  %86 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %10, align 8
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" zeroinitializer, ptr %10, align 8
  call void @runtime.TouchConservativeSlot(ptr %10, i64 16)
  call void @runtime.ClobberPointerRegs()
  %87 = call ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/_testdata/foo.Foo" %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %84)
  %88 = ptrtoint ptr %87 to i64
  %89 = and i64 %88, 72057594037927935
  %90 = xor i64 %89, 25399393228665167
  %91 = shl i64 %90, 17
  %92 = select i1 false, i64 0, i64 %91
  %93 = lshr i64 %90, 39
  %94 = select i1 false, i64 0, i64 %93
  %95 = or i64 %92, %94
  %96 = and i64 %95, 72057594037927935
  %97 = or i64 %96, -6557241057451442176
  store i64 %97, ptr %11, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %12, i64 %97)
  call void @runtime.ClobberPointerRegs()
  %98 = icmp eq ptr %72, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %72, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i64
  %101 = and i64 %100, 72057594037927935
  %102 = xor i64 %101, 25399393228665167
  %103 = shl i64 %102, 17
  %104 = select i1 false, i64 0, i64 %103
  %105 = lshr i64 %102, 39
  %106 = select i1 false, i64 0, i64 %105
  %107 = or i64 %104, %106
  %108 = and i64 %107, 72057594037927935
  %109 = or i64 %108, -6557241057451442176
  store i64 %109, ptr %13, align 4
  call void @runtime.StoreHiddenPointerRoot(ptr %14, i64 %109)
  call void @runtime.ClobberPointerRegs()
  %110 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = load i64, ptr %13, align 4
  %112 = alloca float, align 4
  call void @runtime.LoadHiddenPointee(ptr %112, i64 %111, i64 4)
  %113 = icmp eq ptr %112, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load float, ptr %112, align 4
  store float 0.000000e+00, ptr %112, align 4
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" zeroinitializer, ptr %72, align 8
  call void @runtime.TouchConservativeSlot(ptr %72, i64 16)
  call void @runtime.ClobberPointerRegs()
  store i64 0, ptr %13, align 4
  call void @runtime.TouchConservativeSlot(ptr %13, i64 8)
  store ptr null, ptr %14, align 8
  call void @runtime.TouchConservativeSlot(ptr %14, i64 8)
  call void @runtime.ClobberPointerRegs()
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %116 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load i64, ptr %11, align 4
  %118 = and i64 %117, 72057594037927935
  %119 = lshr i64 %118, 17
  %120 = select i1 false, i64 0, i64 %119
  %121 = shl i64 %118, 39
  %122 = select i1 false, i64 0, i64 %121
  %123 = or i64 %120, %122
  %124 = and i64 %123, 72057594037927935
  %125 = xor i64 %124, 25399393228665167
  %126 = inttoptr i64 %125 to ptr
  %127 = icmp eq ptr %8, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %127)
  %128 = load { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 }, ptr %8, align 8
  %129 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %128, 1
  store { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } zeroinitializer, ptr %8, align 8
  call void @runtime.TouchConservativeSlot(ptr %8, i64 24)
  store i64 0, ptr %11, align 4
  call void @runtime.TouchConservativeSlot(ptr %11, i64 8)
  store ptr null, ptr %12, align 8
  call void @runtime.TouchConservativeSlot(ptr %12, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %126)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %130 = fpext float %114 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %130)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %129)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %115)
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.structequal"(ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.memequal8")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal8"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ForwardRecoverToken"(ptr @"github.com/goplus/llgo/runtime/internal/runtime.f32equal")
  %4 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.f32equal"(ptr %1, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %3)
  ret i1 %4
}

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/_testdata/foo.Foo")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @runtime.StoreHiddenPointerRoot(ptr, i64)

declare i64 @runtime.LoadHiddenPointerKey(i64)

declare void @runtime.LoadHiddenPointee(ptr, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
