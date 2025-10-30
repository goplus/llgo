; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tpinst'
source_filename = "github.com/goplus/llgo/cl/_testgo/tpinst"

%"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = type { double }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testgo/tpinst.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [40 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst", align 1
@1 = private unnamed_addr constant [6 x i8] c"M[int]", align 1
@_llgo_int = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@3 = private unnamed_addr constant [5 x i8] c"Value", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"value", align 1
@5 = private unnamed_addr constant [46 x i8] c"github.com/goplus/llgo/cl/_testgo/tpinst.value", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.I[int]" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"I", align 1
@7 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [10 x i8] c"M[float64]", align 1
@_llgo_float64 = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU" = linkonce global ptr null, align 8
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.I[float64]" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [95 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/tpinst.I[int] -> interface{value() int} failed", align 1

define void @"github.com/goplus/llgo/cl/_testgo/tpinst.demo"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  store i64 100, ptr %1, align 4
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  %3 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.I[int]", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %4, ptr %3)
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %0, 1
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 0
  %10 = getelementptr ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = insertvalue { ptr, ptr } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %8, 1
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  %16 = call i64 %15(ptr %14)
  %17 = icmp ne i64 %16, 100
  br i1 %17, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %18 = load ptr, ptr @_llgo_string, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %22, i32 0, i32 0
  store double 1.001000e+02, ptr %23, align 8
  %24 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  %25 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  %26 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.I[float64]", align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %26, ptr %25)
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %28, ptr %22, 1
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %29)
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, 0
  %32 = getelementptr ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = insertvalue { ptr, ptr } undef, ptr %33, 0
  %35 = insertvalue { ptr, ptr } %34, ptr %30, 1
  %36 = extractvalue { ptr, ptr } %35, 1
  %37 = extractvalue { ptr, ptr } %35, 0
  %38 = call double %37(ptr %36)
  %39 = fcmp une double %38, 1.001000e+02
  br i1 %39, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %40 = load ptr, ptr @_llgo_string, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %41, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %7)
  %45 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %46 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", align 8
  %47 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %46, ptr %44)
  br i1 %47, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_7
  %48 = load ptr, ptr @_llgo_string, align 8
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 5 }, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %48, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr %49, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %51)
  unreachable

_llgo_6:                                          ; preds = %_llgo_7
  ret void

_llgo_7:                                          ; preds = %_llgo_4
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, 1
  %53 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %53, ptr %44)
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %54, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %55, ptr %52, 1
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %56)
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %56, 0
  %59 = getelementptr ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  %61 = insertvalue { ptr, ptr } undef, ptr %60, 0
  %62 = insertvalue { ptr, ptr } %61, ptr %57, 1
  %63 = extractvalue { ptr, ptr } %62, 1
  %64 = extractvalue { ptr, ptr } %62, 0
  %65 = call i64 %64(ptr %63)
  %66 = icmp ne i64 %65, 100
  br i1 %66, label %_llgo_5, label %_llgo_6

_llgo_8:                                          ; preds = %_llgo_4
  %67 = load ptr, ptr @_llgo_string, align 8
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 95 }, ptr %68, align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %67, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr %68, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %70)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testgo/tpinst.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/tpinst.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tpinst.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/tpinst.demo"()
  ret void
}

define linkonce double @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %0, i32 0, i32 0
  %2 = load double, ptr %1, align 8
  ret double %2
}

define linkonce double @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %0, i32 0, i32 0
  %2 = load double, ptr %1, align 8
  ret double %2
}

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/cl/_testgo/tpinst.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, i64 25, i64 8, i64 0, i64 2)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
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
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13)
  store ptr %14, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %15 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  br i1 %2, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %16 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_4
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, i64 25, i64 8, i64 0, i64 2)
  %19 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %_llgo_9, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_5
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 0, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 0, 2
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %27 = getelementptr ptr, ptr %26, i64 0
  store ptr %25, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %31)
  store ptr %31, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %32 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %32, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value", 2
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value", 3
  %36 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr undef, ptr undef, ptr undef }, ptr %36, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value", 2
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value", 3
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %41 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %40, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %35, ptr %41, align 8
  %42 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %40, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %40, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 2, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %15, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45)
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_6
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %46)
  store ptr %46, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_6
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 })
  %48 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.I[int]", align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %47, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.I[int]", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %50 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br i1 %49, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %51 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %50, 1
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %53 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %52, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %51, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %52, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 1, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %47, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %57 = load ptr, ptr @_llgo_string, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %59, ptr @_llgo_string, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 10 }, i64 25, i64 8, i64 0, i64 2)
  %61 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %60, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %63 = load ptr, ptr @_llgo_float64, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %65, ptr @_llgo_float64, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %66 = load ptr, ptr @_llgo_float64, align 8
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %68 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %67, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %69, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %68, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 1, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 1, 2
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73)
  store ptr %74, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU", align 8
  %75 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU", align 8
  br i1 %62, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %76 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %_llgo_23, label %_llgo_24

_llgo_22:                                         ; preds = %_llgo_24, %_llgo_20
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 10 }, i64 25, i64 8, i64 0, i64 2)
  %79 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %_llgo_25, label %_llgo_26

_llgo_23:                                         ; preds = %_llgo_21
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %81, 0
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, i64 0, 1
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, i64 0, 2
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %87 = getelementptr ptr, ptr %86, i64 0
  store ptr %85, ptr %87, align 8
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %86, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, i64 1, 1
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, i64 1, 2
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %91)
  store ptr %91, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_21
  %92 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %92, 1
  %94 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %93, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value", 2
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %94, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value", 3
  %96 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr undef, ptr undef, ptr undef }, ptr %96, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %97, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value", 2
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %98, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value", 3
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %101 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr %101, align 8
  %102 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %99, ptr %102, align 8
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %100, 0
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, i64 2, 1
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %60, ptr %75, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105)
  br label %_llgo_22

_llgo_25:                                         ; preds = %_llgo_22
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %106)
  store ptr %106, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_22
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 })
  %108 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.I[float64]", align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  store ptr %107, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.I[float64]", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %110 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  br i1 %109, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %111 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %110, 1
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %113 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %112, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %111, ptr %113, align 8
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %112, 0
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, i64 1, 1
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %115, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %107, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %117 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr undef }, ptr %117, 1
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %119, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %118, ptr %120, align 8
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %119, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 1, 1
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 1, 2
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123)
  store ptr %124, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", align 8
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)
