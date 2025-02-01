; ModuleID = 'main'
source_filename = "main"

%"main.M[int]" = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"main.M[float64]" = type { double }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"main.init$guard" = global i1 false, align 1
@"_llgo_main.M[int]" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [6 x i8] c"M[int]", align 1
@_llgo_int = linkonce global ptr null, align 8
@"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [1 x i8] c"v", align 1
@3 = private unnamed_addr constant [5 x i8] c"Value", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"value", align 1
@5 = private unnamed_addr constant [10 x i8] c"main.value", align 1
@"*_llgo_main.M[int]" = linkonce global ptr null, align 8
@"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_main.M[float64]" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [10 x i8] c"M[float64]", align 1
@_llgo_float64 = linkonce global ptr null, align 8
@"main.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU" = linkonce global ptr null, align 8
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = linkonce global ptr null, align 8
@"*_llgo_main.M[float64]" = linkonce global ptr null, align 8
@"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" = linkonce global ptr null, align 8
@"main.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

define void @main.demo() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"main.M[int]", ptr %0, i32 0, i32 0
  store i64 100, ptr %1, align 4
  %2 = load ptr, ptr @"_llgo_main.M[int]", align 8
  %3 = load ptr, ptr @"*_llgo_main.M[int]", align 8
  %4 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %5 = load ptr, ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8", align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %5, ptr %3)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %0, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 0
  %11 = getelementptr ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = call i64 %16(ptr %15)
  %18 = icmp ne i64 %17, 100
  br i1 %18, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %19 = load ptr, ptr @_llgo_string, align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %19, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr %20, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %24 = getelementptr inbounds %"main.M[float64]", ptr %23, i32 0, i32 0
  store double 1.001000e+02, ptr %24, align 8
  %25 = load ptr, ptr @"_llgo_main.M[float64]", align 8
  %26 = load ptr, ptr @"*_llgo_main.M[float64]", align 8
  %27 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %28 = load ptr, ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk", align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %28, ptr %26)
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %30, ptr %23, 1
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %31)
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, 0
  %34 = getelementptr ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  %36 = insertvalue { ptr, ptr } undef, ptr %35, 0
  %37 = insertvalue { ptr, ptr } %36, ptr %32, 1
  %38 = extractvalue { ptr, ptr } %37, 1
  %39 = extractvalue { ptr, ptr } %37, 0
  %40 = call double %39(ptr %38)
  %41 = fcmp une double %40, 1.001000e+02
  br i1 %41, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %42 = load ptr, ptr @_llgo_string, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %43, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %47 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %48 = load ptr, ptr @"main.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", align 8
  %49 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %48, ptr %46)
  br i1 %49, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_7
  %50 = load ptr, ptr @_llgo_string, align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %51, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable

_llgo_6:                                          ; preds = %_llgo_7
  ret void

_llgo_7:                                          ; preds = %_llgo_4
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 1
  %55 = load ptr, ptr @"main.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %55, ptr %46)
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %56, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %57, ptr %54, 1
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %58)
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, 0
  %61 = getelementptr ptr, ptr %60, i64 3
  %62 = load ptr, ptr %61, align 8
  %63 = insertvalue { ptr, ptr } undef, ptr %62, 0
  %64 = insertvalue { ptr, ptr } %63, ptr %59, 1
  %65 = extractvalue { ptr, ptr } %64, 1
  %66 = extractvalue { ptr, ptr } %64, 0
  %67 = call i64 %66(ptr %65)
  %68 = icmp ne i64 %67, 100
  br i1 %68, label %_llgo_5, label %_llgo_6

_llgo_8:                                          ; preds = %_llgo_4
  %69 = load ptr, ptr @_llgo_string, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 21 }, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %71, ptr %70, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
  unreachable
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  call void @main.demo()
  ret i32 0
}

define linkonce double @"main.(*M[float64]).Value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"main.M[float64]", ptr %0, i32 0, i32 0
  %2 = load double, ptr %1, align 8
  ret double %2
}

define linkonce double @"main.(*M[float64]).value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"main.M[float64]", ptr %0, i32 0, i32 0
  %2 = load double, ptr %1, align 8
  ret double %2
}

define linkonce i64 @"main.(*M[int]).Value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"main.M[int]", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

define linkonce i64 @"main.(*M[int]).value"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"main.M[int]", ptr %0, i32 0, i32 0
  %2 = load i64, ptr %1, align 4
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, i64 25, i64 8, i64 0, i64 2)
  %1 = load ptr, ptr @"_llgo_main.M[int]", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_main.M[int]", align 8
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
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13)
  store ptr %14, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %15 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  br i1 %2, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %16 = load ptr, ptr @_llgo_int, align 8
  %17 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_4
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, i64 25, i64 8, i64 0, i64 2)
  %20 = load ptr, ptr @"*_llgo_main.M[int]", align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_9, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_5
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 0, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 0, 2
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %27 = getelementptr ptr, ptr %26, i64 0
  store ptr %16, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %31)
  store ptr %31, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %32 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %32, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr @"main.(*M[int]).Value", 2
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr @"main.(*M[int]).Value", 3
  %36 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %36, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr @"main.(*M[int]).value", 2
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr @"main.(*M[int]).value", 3
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
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %46)
  store ptr %46, ptr @"*_llgo_main.M[int]", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_6
  %47 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %48 = load ptr, ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8", align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %47, 1
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %52 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %51, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %50, ptr %52, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %51, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 1, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 1, 2
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55)
  store ptr %56, ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %57 = load ptr, ptr @_llgo_string, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %59, ptr @_llgo_string, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, i64 25, i64 8, i64 0, i64 2)
  %61 = load ptr, ptr @"_llgo_main.M[float64]", align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  store ptr %60, ptr @"_llgo_main.M[float64]", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %63 = load ptr, ptr @_llgo_float64, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %65, ptr @_llgo_float64, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %66 = load ptr, ptr @_llgo_float64, align 8
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %68 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %67, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %69, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %68, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 1, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 1, 2
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73)
  store ptr %74, ptr @"main.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU", align 8
  %75 = load ptr, ptr @"main.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU", align 8
  br i1 %62, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %76 = load ptr, ptr @_llgo_float64, align 8
  %77 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %_llgo_21, label %_llgo_22

_llgo_20:                                         ; preds = %_llgo_22, %_llgo_18
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, i64 25, i64 8, i64 0, i64 2)
  %80 = load ptr, ptr @"*_llgo_main.M[float64]", align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_23, label %_llgo_24

_llgo_21:                                         ; preds = %_llgo_19
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %82, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, i64 0, 1
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84, i64 0, 2
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %87 = getelementptr ptr, ptr %86, i64 0
  store ptr %76, ptr %87, align 8
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %86, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, i64 1, 1
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, i64 1, 2
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %91)
  store ptr %91, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_19
  %92 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %92, 1
  %94 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %93, ptr @"main.(*M[float64]).Value", 2
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %94, ptr @"main.(*M[float64]).Value", 3
  %96 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr undef, ptr undef, ptr undef }, ptr %96, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %97, ptr @"main.(*M[float64]).value", 2
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %98, ptr @"main.(*M[float64]).value", 3
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %101 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr %101, align 8
  %102 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %100, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %99, ptr %102, align 8
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %100, 0
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, i64 2, 1
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %60, ptr %75, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105)
  br label %_llgo_20

_llgo_23:                                         ; preds = %_llgo_20
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %79)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %106)
  store ptr %106, ptr @"*_llgo_main.M[float64]", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_20
  %107 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %108 = load ptr, ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk", align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %110 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %107, 1
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %112 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %111, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %110, ptr %112, align 8
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %111, 0
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, i64 1, 1
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, i64 1, 2
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %115)
  store ptr %116, ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %117 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 10 }, ptr undef }, ptr %117, 1
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %119, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %118, ptr %120, align 8
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %119, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 1, 1
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 1, 2
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123)
  store ptr %124, ptr @"main.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", align 8
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
