; ModuleID = 'github.com/goplus/llgo/cl/_testgo/struczero'
source_filename = "github.com/goplus/llgo/cl/_testgo/struczero"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testdata/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/cl/_testgo/struczero.bar" = type { ptr, float }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

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

define void @"github.com/goplus/llgo/cl/_testgo/struczero.Bar"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, 0
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, 1
  %7 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %6, align 8
  %8 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } undef, %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %7, 0
  %9 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %8, i1 true, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %10 = phi { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } [ %9, %_llgo_1 ], [ zeroinitializer, %_llgo_2 ]
  %11 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %10, 0
  %12 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %10, 1
  %13 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } undef, %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %11, 0
  %14 = insertvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %13, i1 %12, 1
  store { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %14, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/struczero.Foo"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, 0
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, 1
  %7 = load %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %6, align 8
  %8 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %7, 0
  %9 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %8, i1 true, 1
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_0
  br label %_llgo_3

_llgo_3:                                          ; preds = %_llgo_2, %_llgo_1
  %10 = phi { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } [ %9, %_llgo_1 ], [ zeroinitializer, %_llgo_2 ]
  %11 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %10, 0
  %12 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %10, 1
  %13 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } undef, %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %11, 0
  %14 = insertvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %13, i1 %12, 1
  store { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %14, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/struczero.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/foo.init"()
  call void @"github.com/goplus/llgo/cl/_testgo/struczero.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/struczero.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = alloca { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 }, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/struczero.Foo"(ptr %1, ptr %2)
  %3 = load { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 }, ptr %1, align 8
  %4 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %3, 0
  store %"github.com/goplus/llgo/cl/_testgo/struczero.bar" %4, ptr %0, align 8
  %5 = extractvalue { %"github.com/goplus/llgo/cl/_testgo/struczero.bar", i1 } %3, 1
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %0, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/struczero.bar", ptr %0, i32 0, i32 1
  %9 = load float, ptr %8, align 4
  %10 = xor i1 %5, true
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %11 = fpext float %9 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 6 }, ptr %12, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %13 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  call void @llvm.memset(ptr %13, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" zeroinitializer, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  %18 = alloca { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 }, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %19, align 8
  call void @"github.com/goplus/llgo/cl/_testgo/struczero.Bar"(ptr %18, ptr %19)
  %20 = load { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 }, ptr %18, align 8
  %21 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %20, 0
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %21, ptr %13, align 8
  %22 = extractvalue { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } %20, 1
  %23 = load %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %13, align 8
  %24 = alloca %"github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  store %"github.com/goplus/llgo/cl/_testdata/foo.Foo" %23, ptr %24, align 8
  %25 = call ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(ptr %24)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testdata/foo.Foo", ptr %13, i32 0, i32 1
  %27 = load float, ptr %26, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %28 = fpext float %27 to double
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/struczero.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 25, i64 16, i64 1, i64 1)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @_llgo_uint8, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %7, ptr @_llgo_uint8, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @_llgo_uint8, align 8
  %9 = load ptr, ptr @"*_llgo_uint8", align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"*_llgo_uint8", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %13 = load ptr, ptr @"*_llgo_uint8", align 8
  %14 = load ptr, ptr @_llgo_float32, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  store ptr %16, ptr @_llgo_float32, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %17 = load ptr, ptr @_llgo_float32, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %18)
  %20 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %21, align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %22, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %20, ptr %21, ptr %19, i64 0, ptr %22, i1 false)
  %23 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %20, align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  %25 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %27, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %25, ptr %26, ptr %24, i64 8, ptr %27, i1 false)
  %28 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %25, align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %30 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %29, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %23, ptr %30, align 8
  %31 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %29, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %28, ptr %31, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %29, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 2, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 2, 2
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, ptr %35, align 8
  %36 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, ptr %36, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %35, i64 16, ptr %36)
  store ptr %37, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4", align 8
  %38 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4", align 8
  br i1 %4, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %39 = load ptr, ptr @"*_llgo_uint8", align 8
  %40 = load ptr, ptr @"*_llgo_uint8", align 8
  %41 = load ptr, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_8
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, ptr %43, align 8
  %44 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, ptr %44, align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %43, ptr %44, i64 25, i64 16, i64 0, i64 0)
  store ptr %45, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  %46 = load ptr, ptr @"*_llgo_uint8", align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %47)
  %49 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %50 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %50, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %51, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %49, ptr %50, ptr %48, i64 0, ptr %51, i1 false)
  %52 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %49, align 8
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  %54 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr %55, align 8
  %56 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %56, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %54, ptr %55, ptr %53, i64 8, ptr %56, i1 false)
  %57 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %54, align 8
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %59 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %58, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %52, ptr %59, align 8
  %60 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %58, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %57, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %58, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 2, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 2, 2
  %64 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, ptr %64, align 8
  %65 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, ptr %65, align 8
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %64, i64 16, ptr %65)
  store ptr %66, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko", align 8
  %67 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko", align 8
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %68, align 8
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %69, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %45, ptr %67, ptr %68, ptr %69)
  ret void

_llgo_11:                                         ; preds = %_llgo_9
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %70, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 0, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 0, 2
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %75 = getelementptr ptr, ptr %74, i64 0
  store ptr %40, ptr %75, align 8
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %74, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 1, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 1, 2
  %79 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, ptr %79, align 8
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, ptr %80, align 8
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %79, ptr %80, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %81)
  store ptr %81, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_9
  %82 = load ptr, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", align 8
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr undef, ptr undef, ptr undef }, ptr %82, 1
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %83, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", 2
  %85 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %84, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", 3
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr undef, ptr undef, ptr undef }, ptr %82, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", 2
  %88 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %87, ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb", 3
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %90 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %89, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %88, ptr %90, align 8
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %89, 0
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 1, 1
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i64 1, 2
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %95 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %94, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %85, ptr %95, align 8
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %94, 0
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 1, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, i64 1, 2
  %99 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, ptr %99, align 8
  %100 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, ptr %100, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %38, ptr %99, ptr %100)
  br label %_llgo_10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb"(ptr)

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
