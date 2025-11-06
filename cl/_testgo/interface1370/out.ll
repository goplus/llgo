; ModuleID = 'github.com/goplus/llgo/cl/_testgo/interface1370'
source_filename = "github.com/goplus/llgo/cl/_testgo/interface1370"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
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
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  %2 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  %3 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %4 = load ptr, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", align 8
  %5 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %6 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o", align 8
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

define void @"github.com/goplus/llgo/cl/_testgo/interface1370.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 9 }, i64 25, i64 24, i64 0, i64 4)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_float64, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %5, ptr @_llgo_float64, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_float64, align 8
  %7 = load ptr, ptr @_llgo_int, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %9, ptr @_llgo_int, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %10 = load ptr, ptr @_llgo_int, align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %11, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr %13, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %16 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 2 }, ptr %15, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %17, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %18, align 8
  %19 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %17, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %14, ptr %19, align 8
  %20 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %17, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %16, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %17, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 3, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 3, 2
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23)
  store ptr %24, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ", align 8
  %25 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.struct$EuRbjzGGO7GwkW6RxZGl-8lEjTdEMzAFD8LnY_SpVoQ", align 8
  br i1 %2, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %26 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_18, %_llgo_6
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 9 }, i64 25, i64 24, i64 0, i64 4)
  %29 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %_llgo_19, label %_llgo_20

_llgo_9:                                          ; preds = %_llgo_7
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %31, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 0, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 0, 2
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %37 = getelementptr ptr, ptr %36, i64 0
  store ptr %35, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %36, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 1, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 1, 2
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %41)
  store ptr %41, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %42 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %42, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %43, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area", 2
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area", 3
  %46 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 0, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 0, 2
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %54 = getelementptr ptr, ptr %53, i64 0
  store ptr %52, ptr %54, align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %53, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 1, 1
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 1, 2
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %58)
  store ptr %58, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %59 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %59, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID", 2
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID", 3
  %63 = load ptr, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %67 = getelementptr ptr, ptr %66, i64 0
  store ptr %65, ptr %67, align 8
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %66, 0
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 1, 1
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, i64 1, 2
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %71, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 0, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 0, 2
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %75)
  store ptr %75, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %76 = load ptr, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %76, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID", 2
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID", 3
  %80 = load ptr, ptr @_llgo_bool, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  store ptr %82, ptr @_llgo_bool, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %83 = load ptr, ptr @_llgo_bool, align 8
  %84 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %86, 0
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, i64 0, 1
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, i64 0, 2
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %92 = getelementptr ptr, ptr %91, i64 0
  store ptr %90, ptr %92, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %91, 0
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 1, 1
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, i64 1, 2
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %96)
  store ptr %96, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %97 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 57 }, ptr undef, ptr undef, ptr undef }, ptr %97, 1
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %98, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate", 2
  %100 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %99, ptr @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate", 3
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 160)
  %102 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %101, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %45, ptr %102, align 8
  %103 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %101, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr %103, align 8
  %104 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %101, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Method" %79, ptr %104, align 8
  %105 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %101, i64 3
  store %"github.com/goplus/llgo/runtime/abi.Method" %100, ptr %105, align 8
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %101, 0
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, i64 4, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 4, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %25, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108)
  br label %_llgo_8

_llgo_19:                                         ; preds = %_llgo_8
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %109)
  store ptr %109, ptr @"*_llgo_github.com/goplus/llgo/cl/_testdata/geometry1370.Rectangle", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_8
  %110 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %111 = load ptr, ptr @"_llgo_func$VZ-8VPNF1RaLICwxc1Ghn7BbgyFX3v762OCdx127EkA", align 8
  %112 = load ptr, ptr @"_llgo_func$YHeRw3AOvQtzv982-ZO3Yn8vh3Fx89RM3VvI8E4iKVk", align 8
  %113 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 4 }, ptr undef }, ptr %110, 1
  %114 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 54 }, ptr undef }, ptr %111, 1
  %115 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 57 }, ptr undef }, ptr %112, 1
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 72)
  %117 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %116, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %113, ptr %117, align 8
  %118 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %116, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %114, ptr %118, align 8
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %116, i64 2
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %115, ptr %119, align 8
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %116, 0
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, i64 3, 1
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 3, 2
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122)
  store ptr %123, ptr @"github.com/goplus/llgo/cl/_testgo/interface1370.iface$OopIVfjRcxQr1gmJyGi5G7hHt__vH05AREEM7PthH9o", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare double @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).Area"(ptr)

declare i64 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).GetID"(ptr)

declare void @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).setID"(ptr, i64)

declare i1 @"github.com/goplus/llgo/cl/_testdata/geometry1370.(*Rectangle).validate"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)
