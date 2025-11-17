; ModuleID = 'github.com/goplus/llgo/cl/_testgo/interface1370'
source_filename = "github.com/goplus/llgo/cl/_testgo/interface1370"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testgo/interface1370.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testdata/geometry1370", align 1
@1 = private unnamed_addr constant [9 x i8] c"Rectangle", align 1
@_llgo_float64 = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [5 x i8] c"Width", align 1
@3 = private unnamed_addr constant [6 x i8] c"Height", align 1
@4 = private unnamed_addr constant [2 x i8] c"id", align 1
@5 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/interface1370", align 1
@6 = private unnamed_addr constant [4 x i8] c"Area", align 1
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [5 x i8] c"GetID", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [5 x i8] c"setID", align 1
@9 = private unnamed_addr constant [54 x i8] c"github.com/goplus/llgo/cl/_testdata/geometry1370.setID", align 1
@"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [8 x i8] c"validate", align 1
@11 = private unnamed_addr constant [57 x i8] c"github.com/goplus/llgo/cl/_testdata/geometry1370.validate", align 1
@_llgo_bool = linkonce global ptr null, align 8
@"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [3 x i8] c"ID:", align 1

define void @"github.com/goplus/llgo/cl/_testgo/interface1370.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/geometry1370.init"()
  call void @"github.com/goplus/llgo/cl/_testgo/interface1370.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/interface1370.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.NewRectangle"(double 5.000000e+00, double 3.000000e+00)
  %1 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle"()
  %2 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle"()
  %3 = call ptr @"__llgo_load__llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8"()
  %4 = call ptr @"__llgo_load__llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA"()
  %5 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %6 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o"()
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %6, ptr %2)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %0, 1
  call void @"github.com/goplus/llgo/cl/_testdata/geometry1370.RegisterShape"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, i64 42)
  %10 = call i64 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 3 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/cl/_testdata/geometry1370.init"()

declare ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.NewRectangle"(double, double)

declare void @"github.com/goplus/llgo/cl/_testdata/geometry1370.RegisterShape"(%"github.com/goplus/llgo/runtime/internal/runtime.iface", i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 9 }, i64 25, i64 24, i64 0, i64 4)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  %3 = call ptr @__llgo_load__llgo_float64()
  %4 = call ptr @__llgo_load__llgo_int()
  %5 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ"()
  %6 = call ptr @"__llgo_load__llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8"()
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area", 2
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area", 3
  %10 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %10, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID", 2
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID", 3
  %14 = call ptr @"__llgo_load__llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA"()
  %15 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %14, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %15, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID", 2
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID", 3
  %18 = call ptr @__llgo_load__llgo_bool()
  %19 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %20 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 57 }, ptr undef, ptr undef, ptr undef }, ptr %19, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %20, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate", 2
  %22 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %21, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate", 3
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 160)
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %23, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr %24, align 8
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %23, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr %25, align 8
  %26 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %23, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr %26, align 8
  %27 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %23, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %22, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 4, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 4, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %5, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %31 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  ret ptr %31
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @__llgo_load__llgo_float64() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float64, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %2, ptr @_llgo_float64, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_float64, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define void @"github.com/goplus/llgo/cl/_testgo/interface1370.init$after"() {
_llgo_0:
  %0 = call ptr @__llgo_load__llgo_float64()
  %1 = call ptr @__llgo_load__llgo_int()
  %2 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ"()
  %3 = call ptr @"__llgo_load__llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8"()
  %4 = call ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"()
  %5 = call ptr @"__llgo_load__llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA"()
  %6 = call ptr @__llgo_load__llgo_bool()
  %7 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %8 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle"()
  %9 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle"()
  %10 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o"()
  ret void
}

define linkonce ptr @__llgo_load__llgo_int() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %5 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr %4, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr %6, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %9, align 8
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %5, ptr %10, align 8
  %11 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 3, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 3, 2
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  store ptr %15, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %16 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ", align 8
  ret ptr %16
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load__llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  ret ptr %13
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare double @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area"(ptr)

define linkonce ptr @"__llgo_load__llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  ret ptr %13
}

declare i64 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID"(ptr)

define linkonce ptr @"__llgo_load__llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr ptr, ptr %3, i64 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 1, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 0, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", align 8
  ret ptr %13
}

declare void @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID"(ptr, i64)

define linkonce ptr @__llgo_load__llgo_bool() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_bool, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  store ptr %2, ptr @_llgo_bool, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_bool, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  ret ptr %13
}

declare i1 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate"(ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 9 }, i64 25, i64 24, i64 0, i64 4)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8"()
  %3 = call ptr @"__llgo_load__llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA"()
  %4 = call ptr @"__llgo_load__llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr undef }, ptr %2, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 54 }, ptr undef }, ptr %3, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 57 }, ptr undef }, ptr %4, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 72)
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %5, ptr %9, align 8
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %8, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %6, ptr %10, align 8
  %11 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %8, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %7, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 3, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 3, 2
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  store ptr %15, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %16 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o", align 8
  ret ptr %16
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
