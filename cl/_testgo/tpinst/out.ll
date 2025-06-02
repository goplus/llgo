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
@"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [10 x i8] c"M[float64]", align 1
@_llgo_float64 = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU" = linkonce global ptr null, align 8
@"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]" = linkonce global ptr null, align 8
@"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [95 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/tpinst.I[int] -> interface{value() int} failed", align 1

define void @"github.com/goplus/llgo/cl/_testgo/tpinst.demo"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", ptr %0, i32 0, i32 0
  store i64 100, ptr %1, align 4
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  %3 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  %4 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %5 = load ptr, ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8", align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %5, ptr %3)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %0, 1
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %9, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %9)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 0
  %12 = getelementptr ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = insertvalue { ptr, ptr } undef, ptr %13, 0
  %15 = insertvalue { ptr, ptr } %14, ptr %10, 1
  %16 = extractvalue { ptr, ptr } %15, 1
  %17 = extractvalue { ptr, ptr } %15, 0
  %18 = call i64 %17(ptr %16)
  %19 = icmp ne i64 %18, 100
  br i1 %19, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %20 = load ptr, ptr @_llgo_string, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %21, 1
  %24 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr %24, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %24)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", ptr %25, i32 0, i32 0
  store double 1.001000e+02, ptr %26, align 8
  %27 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  %28 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  %29 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %30 = load ptr, ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk", align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %30, ptr %28)
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %31, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %25, 1
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, ptr %34, align 8
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %34)
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 0
  %37 = getelementptr ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  %39 = insertvalue { ptr, ptr } undef, ptr %38, 0
  %40 = insertvalue { ptr, ptr } %39, ptr %35, 1
  %41 = extractvalue { ptr, ptr } %40, 1
  %42 = extractvalue { ptr, ptr } %40, 0
  %43 = call double %42(ptr %41)
  %44 = fcmp une double %43, 1.001000e+02
  br i1 %44, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %45 = load ptr, ptr @_llgo_string, align 8
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %46, align 8
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %45, 0
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %47, ptr %46, 1
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %49, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %49)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %50 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %50, align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %50)
  %52 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %53 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", align 8
  %54 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %53, ptr %51)
  br i1 %54, label %_llgo_7, label %_llgo_8

_llgo_5:                                          ; preds = %_llgo_7
  %55 = load ptr, ptr @_llgo_string, align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %56, align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %55, 0
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, ptr %56, 1
  %59 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %59, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %59)
  unreachable

_llgo_6:                                          ; preds = %_llgo_7
  ret void

_llgo_7:                                          ; preds = %_llgo_4
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 1
  %61 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", align 8
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %61, ptr %51)
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %62, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, ptr %60, 1
  %65 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, ptr %65, align 8
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %65)
  %67 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, 0
  %68 = getelementptr ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  %70 = insertvalue { ptr, ptr } undef, ptr %69, 0
  %71 = insertvalue { ptr, ptr } %70, ptr %66, 1
  %72 = extractvalue { ptr, ptr } %71, 1
  %73 = extractvalue { ptr, ptr } %71, 0
  %74 = call i64 %73(ptr %72)
  %75 = icmp ne i64 %74, 100
  br i1 %75, label %_llgo_5, label %_llgo_6

_llgo_8:                                          ; preds = %_llgo_4
  %76 = load ptr, ptr @_llgo_string, align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 95 }, ptr %77, align 8
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %76, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %78, ptr %77, 1
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %79, ptr %80, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %80)
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
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 25, i64 8, i64 0, i64 2)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %7, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %10 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %11, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %12, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %10, ptr %11, ptr %9, i64 0, ptr %12, i1 false)
  %13 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %10, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %14, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 1, 2
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %19, align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, ptr %20, align 8
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %19, i64 8, ptr %20)
  store ptr %21, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %22 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  br i1 %4, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_7, label %_llgo_8

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_4
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %26, align 8
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, ptr %27, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %26, ptr %27, i64 25, i64 8, i64 0, i64 2)
  %29 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %_llgo_9, label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_5
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %31, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 0, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 0, 2
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %36 = getelementptr ptr, ptr %35, i64 0
  store ptr %23, ptr %36, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %35, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 1, 1
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 1, 2
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, ptr %40, align 8
  %41 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, ptr %41, align 8
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %40, ptr %41, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %42)
  store ptr %42, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_5
  %43 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %43, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %44, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value", 2
  %46 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %45, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).Value", 3
  %47 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr undef, ptr undef, ptr undef }, ptr %47, 1
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %48, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value", 2
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %49, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[int]).value", 3
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %52 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %51, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %46, ptr %52, align 8
  %53 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %51, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %50, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %51, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 2, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 2, 2
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %57, align 8
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, ptr %58, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %22, ptr %57, ptr %58)
  br label %_llgo_6

_llgo_9:                                          ; preds = %_llgo_6
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %28)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %59)
  store ptr %59, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[int]", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_6
  %60 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %61 = load ptr, ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8", align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %60, 1
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %65 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %64, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %63, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %64, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 1, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 1, 2
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %69, align 8
  %70 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, ptr %70, align 8
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %69, ptr %70)
  store ptr %71, ptr @"_llgo_iface$Jvxc0PCI_drlfK7S5npMGdZkQLeRkQ_x2e2CifPE6w8", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %72 = load ptr, ptr @_llgo_string, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %74, ptr @_llgo_string, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %75, align 8
  %76 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr %76, align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %75, ptr %76, i64 25, i64 8, i64 0, i64 2)
  %78 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  store ptr %77, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %80 = load ptr, ptr @_llgo_float64, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %82, ptr @_llgo_float64, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %83 = load ptr, ptr @_llgo_float64, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  %85 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %86 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %86, align 8
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %87, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %85, ptr %86, ptr %84, i64 0, ptr %87, i1 false)
  %88 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %85, align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %90 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %89, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %88, ptr %90, align 8
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %89, 0
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 1, 1
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i64 1, 2
  %94 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %94, align 8
  %95 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, ptr %95, align 8
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %94, i64 8, ptr %95)
  store ptr %96, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU", align 8
  %97 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.struct$7SZ-TjG6e68olyGxlMRRIOYuZz2LaKIpOrZH-w4GiTU", align 8
  br i1 %79, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %98 = load ptr, ptr @_llgo_float64, align 8
  %99 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %_llgo_21, label %_llgo_22

_llgo_20:                                         ; preds = %_llgo_22, %_llgo_18
  %101 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %101, align 8
  %102 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 10 }, ptr %102, align 8
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %101, ptr %102, i64 25, i64 8, i64 0, i64 2)
  %104 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %_llgo_23, label %_llgo_24

_llgo_21:                                         ; preds = %_llgo_19
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %106, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 0, 1
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108, i64 0, 2
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %111 = getelementptr ptr, ptr %110, i64 0
  store ptr %98, ptr %111, align 8
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %110, 0
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, i64 1, 1
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, i64 1, 2
  %115 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, ptr %115, align 8
  %116 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, ptr %116, align 8
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %115, ptr %116, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %117)
  store ptr %117, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_19
  %118 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %119 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef, ptr undef, ptr undef }, ptr %118, 1
  %120 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %119, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value", 2
  %121 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %120, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).Value", 3
  %122 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %123 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr undef, ptr undef, ptr undef }, ptr %122, 1
  %124 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %123, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value", 2
  %125 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %124, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.(*M[float64]).value", 3
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %127 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %126, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %121, ptr %127, align 8
  %128 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %126, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %125, ptr %128, align 8
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %126, 0
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %129, i64 2, 1
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130, i64 2, 2
  %132 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %132, align 8
  %133 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, ptr %133, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %77, ptr %97, ptr %132, ptr %133)
  br label %_llgo_20

_llgo_23:                                         ; preds = %_llgo_20
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %103)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %134)
  store ptr %134, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/tpinst.M[float64]", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_20
  %135 = load ptr, ptr @"_llgo_func$UYiLlmcWxoOKZPPzvR4LByitNeKoVGoTrB_5ubdOWW8", align 8
  %136 = load ptr, ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk", align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %138 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %135, 1
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %140 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %139, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %138, ptr %140, align 8
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %139, 0
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141, i64 1, 1
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %142, i64 1, 2
  %144 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %144, align 8
  %145 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %143, ptr %145, align 8
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %144, ptr %145)
  store ptr %146, ptr @"_llgo_iface$2dxw6yZ6V86Spb7J0dTDIoWqg7ba7UDXlAlpJv3-HLk", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %147 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %148 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 46 }, ptr undef }, ptr %147, 1
  %149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %150 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %149, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %148, ptr %150, align 8
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %149, 0
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, i64 1, 1
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152, i64 1, 2
  %154 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 40 }, ptr %154, align 8
  %155 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, ptr %155, align 8
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %154, ptr %155)
  store ptr %156, ptr @"github.com/goplus/llgo/cl/_testgo/tpinst.iface$2sV9fFeqOv1SzesvwIdhTqCFzDT8ZX5buKUSAoHNSww", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)
