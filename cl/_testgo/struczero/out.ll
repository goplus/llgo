; ModuleID = 'github.com/goplus/llgo/cl/_testgo/struczero'
source_filename = "github.com/goplus/llgo/cl/_testgo/struczero"

%"github.com/goplus/llgo/cl/_testdata/foo.Foo" = type { ptr, float }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
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

define { %"github.com/goplus/llgo/cl/_testdata/foo.Foo", i1 } @"github.com/goplus/llgo/cl/_testgo/struczero.Bar"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, 0
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
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
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
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
  call void @"github.com/goplus/llgo/cl/_testgo/struczero.init$after"()
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
  %11 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
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

define void @"github.com/goplus/llgo/cl/_testgo/struczero.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, i64 25, i64 16, i64 1, i64 1)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/foo.Foo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint8, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %5, ptr @_llgo_uint8, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_uint8, align 8
  %7 = load ptr, ptr @"*_llgo_uint8", align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %10)
  store ptr %10, ptr @"*_llgo_uint8", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %11 = load ptr, ptr @"*_llgo_uint8", align 8
  %12 = load ptr, ptr @_llgo_float32, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  store ptr %14, ptr @_llgo_float32, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %15 = load ptr, ptr @_llgo_float32, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %16)
  %18 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %17, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  %20 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 1 }, ptr %19, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %18, ptr %22, align 8
  %23 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %20, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 2, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 2, 2
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26)
  store ptr %27, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4", align 8
  %28 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$gB-6lDCpZ0V7ma2GTPMARivfSutm75zh84uE5OqxsI4", align 8
  br i1 %2, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %29 = load ptr, ptr @"*_llgo_uint8", align 8
  %30 = load ptr, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, i64 25, i64 16, i64 0, i64 0)
  store ptr %32, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/struczero.bar", align 8
  %33 = load ptr, ptr @"*_llgo_uint8", align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %34)
  %36 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %35, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  %38 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr %37, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %40 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %39, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %36, ptr %40, align 8
  %41 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %39, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %38, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %39, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 2, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 2, 2
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 43 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44)
  store ptr %45, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko", align 8
  %46 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/struczero.struct$2215Oa2lkpk-YZ2pdVVs2mMqzhx1jppOCrAxbrX70ko", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %32, ptr %46, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  ret void

_llgo_11:                                         ; preds = %_llgo_9
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 0, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 0, 2
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %51)
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %54 = getelementptr ptr, ptr %53, i64 0
  store ptr %52, ptr %54, align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %53, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 1, 1
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 1, 2
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %58)
  store ptr %58, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_9
  %59 = load ptr, ptr @"_llgo_func$bbS9EKnYgxbrRntc_6WJN6WLF9IKQADblvN_cLtKCqY", align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr undef, ptr undef, ptr undef }, ptr %59, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", 2
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", 3
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 2 }, ptr undef, ptr undef, ptr undef }, ptr %59, 1
  %64 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %63, ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb", 2
  %65 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %64, ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb", 3
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %67 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %66, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %65, ptr %67, align 8
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %66, 0
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 1, 1
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, i64 1, 2
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %72 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %71, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr %72, align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %71, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 1, 1
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %28, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75)
  br label %_llgo_10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.(*Foo).Pb"(ptr)

declare ptr @"github.com/goplus/llgo/cl/_testdata/foo.Foo.Pb"(%"github.com/goplus/llgo/cl/_testdata/foo.Foo")

declare void @"github.com/goplus/llgo/cl/_testdata/foo.init"()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
