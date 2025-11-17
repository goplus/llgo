; ModuleID = 'github.com/goplus/llgo/cl/_testgo/struczero'
source_filename = "github.com/goplus/llgo/cl/_testgo/struczero"

%"github.com/goplus/llgo/cl/_testdata/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/struczero.bar" = type { ptr, float }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testgo/struczero.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testdata/foo", align 1
@1 = private unnamed_addr constant [3 x i8] c"Foo", align 1
@_llgo_uint8 = linkonce global ptr null, align 8
@"*_llgo_uint8" = linkonce global ptr null, align 8
@_llgo_float32 = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [2 x i8] c"pb", align 1
@3 = private unnamed_addr constant [1 x i8] c"F", align 1
@4 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/struczero", align 1
@5 = private unnamed_addr constant [2 x i8] c"Pb", align 1
@"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [3 x i8] c"bar", align 1
@"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [1 x i8] c"f", align 1
@8 = private unnamed_addr constant [6 x i8] c"notOk:", align 1

define { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Bar"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %2 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo"()
  %3 = icmp eq ptr %1, %2
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %5 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %4, align 8
  %6 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } undef, %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %5, 0
  %7 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %6, i1 true, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %8 = phi { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } [ %7, %_llgo_1 ], [ zeroinitializer, %_llgo_2 ]
  %9 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %8, 0
  %10 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %8, 1
  %11 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } undef, %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %9, 0
  %12 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %11, i1 %10, 1
  ret { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %12
}

define { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Foo"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %2 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar"()
  %3 = icmp eq ptr %1, %2
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 1
  %5 = load %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %4, align 8
  %6 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %5, 0
  %7 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %6, i1 true, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %8 = phi { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } [ %7, %_llgo_1 ], [ zeroinitializer, %_llgo_2 ]
  %9 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %8, 0
  %10 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %8, 1
  %11 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %9, 0
  %12 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %11, i1 %10, 1
  ret { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %12
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  call void @llvm.memset(ptr %10, i8 0, i64 16, i1 false)
  %11 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo"()
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" zeroinitializer, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr %12, 1
  %15 = call { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Bar"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  %16 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %15, 0
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %16, ptr %10, align 8
  %17 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %15, 1
  %18 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %10, align 8
  %19 = call ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/_testdata/foo.Foo" %18)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %10, i32 0, i32 1
  %21 = load float, ptr %20, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %22 = fpext float %21 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, i64 25, i64 16, i64 1, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  %3 = call ptr @__llgo_load__llgo_uint8()
  %4 = call ptr @"__llgo_load_*_llgo_uint8"()
  %5 = call ptr @__llgo_load__llgo_float32()
  %6 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4"()
  %7 = call ptr @"__llgo_load_*_llgo_uint8"()
  %8 = call ptr @"__llgo_load__llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY"()
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr undef, ptr undef, ptr undef }, ptr %8, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", 2
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", 3
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr undef, ptr undef, ptr undef }, ptr %8, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", 2
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb", 3
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %15, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 1, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 1, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %21 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %20, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 1, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %25 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  ret ptr %25
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @__llgo_load__llgo_uint8() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint8, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %2, ptr @_llgo_uint8, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint8, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define linkonce ptr @"__llgo_load_*_llgo_uint8"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_uint8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_uint8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_uint8", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define linkonce ptr @__llgo_load__llgo_float32() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  store ptr %2, ptr @_llgo_float32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_float32, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %4 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %3, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr %5, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %8 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %7, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %4, ptr %8, align 8
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %7, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 2, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 2, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  store ptr %13, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load__llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %6)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb"(ptr)

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/_testdata/foo.Foo")

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, i64 25, i64 16, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  %3 = call ptr @"__llgo_load_*_llgo_uint8"()
  %4 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  ret ptr %5
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %4 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %3, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr %5, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %8 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %7, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %4, ptr %8, align 8
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %7, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 2, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 2, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  store ptr %13, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko", align 8
  ret ptr %14
}

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
