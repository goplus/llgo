; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifaceconv'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifaceconv"

%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = type {}
%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv", align 1
@1 = private unnamed_addr constant [2 x i8] c"I0", align 1
@2 = private unnamed_addr constant [21 x i8] c"nil i0.(I0) succeeded", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [2 x i8] c"I1", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.f", align 1
@5 = private unnamed_addr constant [21 x i8] c"nil i1.(I1) succeeded", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [2 x i8] c"I2", align 1
@7 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceconv.g", align 1
@8 = private unnamed_addr constant [21 x i8] c"nil i2.(I2) succeeded", align 1
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [2 x i8] c"C1", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"f", align 1
@11 = private unnamed_addr constant [17 x i8] c"C1 i1.(I0) failed", align 1
@"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [17 x i8] c"C1 i1.(I1) failed", align 1
@13 = private unnamed_addr constant [20 x i8] c"C1 i1.(I2) succeeded", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [2 x i8] c"C2", align 1
@15 = private unnamed_addr constant [1 x i8] c"g", align 1
@16 = private unnamed_addr constant [17 x i8] c"C2 i1.(I0) failed", align 1
@17 = private unnamed_addr constant [17 x i8] c"C2 i1.(I1) failed", align 1
@18 = private unnamed_addr constant [17 x i8] c"C2 i1.(I2) failed", align 1
@19 = private unnamed_addr constant [17 x i8] c"C1 I0(i1) was nil", align 1
@20 = private unnamed_addr constant [17 x i8] c"C1 I1(i1) was nil", align 1
@21 = private unnamed_addr constant [4 x i8] c"pass", align 1

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", ptr %0, align 1
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", ptr %0, align 1
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", ptr %0, align 1
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g"(%"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" %1)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.main"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 8
  br i1 true, label %_llgo_23, label %_llgo_24

_llgo_1:                                          ; preds = %_llgo_25
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 21 }, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %1, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %2, 1
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_25
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %6)
  %8 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  br i1 true, label %_llgo_26, label %_llgo_27

_llgo_3:                                          ; preds = %_llgo_28
  %9 = load ptr, ptr @_llgo_string, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 21 }, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %10, 1
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %13, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %13)
  unreachable

_llgo_4:                                          ; preds = %_llgo_28
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %14, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %14)
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  br i1 true, label %_llgo_29, label %_llgo_30

_llgo_5:                                          ; preds = %_llgo_31
  %17 = load ptr, ptr @_llgo_string, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 21 }, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %17, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr %18, 1
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %21, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %21)
  unreachable

_llgo_6:                                          ; preds = %_llgo_31
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %22, align 8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %22)
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr null, 1
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %26, align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %26)
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr null, 1
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %30, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %30)
  %32 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %32, ptr %31)
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %34, ptr null, 1
  %36 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %37, align 1
  %38 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %38, ptr %36)
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %39, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, ptr %37, 1
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %42, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %42)
  %44 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 8
  %45 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %44, ptr %43)
  br i1 %45, label %_llgo_32, label %_llgo_33

_llgo_7:                                          ; preds = %_llgo_34
  %46 = load ptr, ptr @_llgo_string, align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 17 }, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %46, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %47, 1
  %50 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr %50, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %50)
  unreachable

_llgo_8:                                          ; preds = %_llgo_34
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %51, align 8
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %51)
  %53 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  br i1 true, label %_llgo_35, label %_llgo_36

_llgo_9:                                          ; preds = %_llgo_37
  %54 = load ptr, ptr @_llgo_string, align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 17 }, ptr %55, align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %54, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %55, 1
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, ptr %58, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %58)
  unreachable

_llgo_10:                                         ; preds = %_llgo_37
  %59 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, ptr %59, align 8
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %59)
  %61 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  %62 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %61, ptr %60)
  br i1 %62, label %_llgo_38, label %_llgo_39

_llgo_11:                                         ; preds = %_llgo_40
  %63 = load ptr, ptr @_llgo_string, align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 20 }, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, ptr %64, 1
  %67 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %66, ptr %67, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %67)
  unreachable

_llgo_12:                                         ; preds = %_llgo_40
  %68 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 8
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" zeroinitializer, ptr %69, align 1
  %70 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %70, ptr %68)
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %71, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %72, ptr %69, 1
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, ptr %74, align 8
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %74)
  %76 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 8
  %77 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %76, ptr %75)
  br i1 %77, label %_llgo_41, label %_llgo_42

_llgo_13:                                         ; preds = %_llgo_43
  %78 = load ptr, ptr @_llgo_string, align 8
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 17 }, ptr %79, align 8
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %78, 0
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %80, ptr %79, 1
  %82 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %81, ptr %82, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %82)
  unreachable

_llgo_14:                                         ; preds = %_llgo_43
  %83 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, ptr %83, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %83)
  %85 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  br i1 true, label %_llgo_44, label %_llgo_45

_llgo_15:                                         ; preds = %_llgo_46
  %86 = load ptr, ptr @_llgo_string, align 8
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 17 }, ptr %87, align 8
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %86, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %88, ptr %87, 1
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr %90, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %90)
  unreachable

_llgo_16:                                         ; preds = %_llgo_46
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, ptr %91, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %91)
  %93 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  %94 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %93, ptr %92)
  br i1 %94, label %_llgo_47, label %_llgo_48

_llgo_17:                                         ; preds = %_llgo_49
  %95 = load ptr, ptr @_llgo_string, align 8
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 17 }, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %95, 0
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %97, ptr %96, 1
  %99 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %98, ptr %99, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %99)
  unreachable

_llgo_18:                                         ; preds = %_llgo_49
  %100 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 8
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %101, align 1
  %102 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %102, ptr %100)
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %103, 0
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %104, ptr %101, 1
  %106 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %105, ptr %106, align 8
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %106)
  %108 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %105, 1
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %107, 0
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %109, ptr %108, 1
  %111 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %110, ptr %111, align 8
  %112 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, ptr %112, align 8
  %113 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %111, ptr %112)
  br i1 %113, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %114 = load ptr, ptr @_llgo_string, align 8
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 17 }, ptr %115, align 8
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %114, 0
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %116, ptr %115, 1
  %118 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %117, ptr %118, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %118)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %119 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %105, ptr %119, align 8
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %119)
  %121 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %105, 1
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %120, 0
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %122, ptr %121, 1
  %124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %124, align 8
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %124)
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %125, 0
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %126, ptr null, 1
  %128 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %123, ptr %128, align 8
  %129 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %127, ptr %129, align 8
  %130 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %128, ptr %129)
  br i1 %130, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %131 = load ptr, ptr @_llgo_string, align 8
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 17 }, ptr %132, align 8
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %131, 0
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %133, ptr %132, 1
  %135 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %134, ptr %135, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %135)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  %136 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr %136, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %136)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_23:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_23
  %137 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, i1 true }, %_llgo_23 ], [ zeroinitializer, %_llgo_24 ]
  %138 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %137, 0
  %139 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %137, 1
  br i1 %139, label %_llgo_1, label %_llgo_2

_llgo_26:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %140 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_26 ], [ zeroinitializer, %_llgo_27 ]
  %141 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %140, 0
  %142 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %140, 1
  br i1 %142, label %_llgo_3, label %_llgo_4

_llgo_29:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30, %_llgo_29
  %143 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_29 ], [ zeroinitializer, %_llgo_30 ]
  %144 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %143, 0
  %145 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %143, 1
  br i1 %145, label %_llgo_5, label %_llgo_6

_llgo_32:                                         ; preds = %_llgo_6
  %146 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 1
  %147 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %43, 0
  %148 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %147, ptr %146, 1
  %149 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %148, 0
  %150 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %149, i1 true, 1
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_6
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %151 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %150, %_llgo_32 ], [ zeroinitializer, %_llgo_33 ]
  %152 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %151, 0
  %153 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %151, 1
  br i1 %153, label %_llgo_8, label %_llgo_7

_llgo_35:                                         ; preds = %_llgo_8
  %154 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 0
  %155 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %154, i1 true, 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_8
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %156 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %155, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
  %157 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %156, 0
  %158 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %156, 1
  br i1 %158, label %_llgo_10, label %_llgo_9

_llgo_38:                                         ; preds = %_llgo_10
  %159 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %41, 1
  %160 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %160, ptr %60)
  %162 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %161, 0
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %162, ptr %159, 1
  %164 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %163, 0
  %165 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %164, i1 true, 1
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_10
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %166 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %165, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
  %167 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %166, 0
  %168 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %166, 1
  br i1 %168, label %_llgo_11, label %_llgo_12

_llgo_41:                                         ; preds = %_llgo_12
  %169 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, 1
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %75, 0
  %171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %170, ptr %169, 1
  %172 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %171, 0
  %173 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %172, i1 true, 1
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_12
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %174 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %173, %_llgo_41 ], [ zeroinitializer, %_llgo_42 ]
  %175 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %174, 0
  %176 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %174, 1
  br i1 %176, label %_llgo_14, label %_llgo_13

_llgo_44:                                         ; preds = %_llgo_14
  %177 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, 0
  %178 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %177, i1 true, 1
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_14
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %179 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %178, %_llgo_44 ], [ zeroinitializer, %_llgo_45 ]
  %180 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %179, 0
  %181 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %179, 1
  br i1 %181, label %_llgo_16, label %_llgo_15

_llgo_47:                                         ; preds = %_llgo_16
  %182 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %73, 1
  %183 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %183, ptr %92)
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %184, 0
  %186 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %185, ptr %182, 1
  %187 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %186, 0
  %188 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %187, i1 true, 1
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_16
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %189 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %188, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
  %190 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %189, 0
  %191 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %189, 1
  br i1 %191, label %_llgo_18, label %_llgo_17
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %0, ptr %1)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 0, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 0, 2
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, ptr %9)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %10 = load ptr, ptr @_llgo_string, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %12, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %14, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %13, ptr %14)
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %15, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %18 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 0, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 0, 2
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %24, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 0, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 0, 2
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, ptr %28, align 8
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, ptr %29, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %28, ptr %29, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %30)
  store ptr %30, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %31 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %17, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef }, ptr %31, 1
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %34 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %33, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %32, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 1, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 1, 2
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, ptr %38, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %15, ptr %38)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %39, align 8
  %40 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr %40, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %39, ptr %40)
  %42 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  store ptr %41, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %44 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %45 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %43, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %46 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef }, ptr %44, 1
  %47 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 45 }, ptr undef }, ptr %45, 1
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %49 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %48, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %46, ptr %49, align 8
  %50 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %48, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %47, ptr %50, align 8
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %48, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 2, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i64 2, 2
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, ptr %54, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %41, ptr %54)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %55 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef }, ptr %55, 1
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %58 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %57, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %56, ptr %58, align 8
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 1, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 1, 2
  %62 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %62, align 8
  %63 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, ptr %63, align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %62, ptr %63)
  store ptr %64, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %65 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %65, align 8
  %66 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr %66, align 8
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %65, ptr %66, i64 25, i64 0, i64 1, i64 1)
  %68 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %67, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %70, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 0, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 0, 2
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %74, align 8
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, ptr %75, align 8
  %76 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %74, i64 0, ptr %75)
  store ptr %76, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %77 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %69, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %78 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %78, 1
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %79, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", 2
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", 3
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %78, 1
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", 2
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %83, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f", 3
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %86 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %85, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %84, ptr %86, align 8
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %85, 0
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, i64 1, 1
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, i64 1, 2
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %91 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %90, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %81, ptr %91, align 8
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %90, 0
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i64 1, 1
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 1, 2
  %95 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, ptr %96, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %67, ptr %77, ptr %95, ptr %96)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %97 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %98 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef }, ptr %97, 1
  %100 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 45 }, ptr undef }, ptr %98, 1
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %102 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %101, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %99, ptr %102, align 8
  %103 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %101, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %100, ptr %103, align 8
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %101, 0
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, i64 2, 1
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, i64 2, 2
  %107 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %107, align 8
  %108 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, ptr %108, align 8
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %107, ptr %108)
  store ptr %109, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %110 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, ptr %110, align 8
  %111 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, ptr %111, align 8
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %110, ptr %111, i64 25, i64 0, i64 2, i64 2)
  %113 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %112, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %115 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %114, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %116 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %117 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %116, 1
  %118 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %117, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", 2
  %119 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %118, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", 3
  %120 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %116, 1
  %121 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %120, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", 2
  %122 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %121, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f", 3
  %123 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %124 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %123, 1
  %125 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %124, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", 2
  %126 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %125, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", 3
  %127 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %123, 1
  %128 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %127, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", 2
  %129 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %128, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g", 3
  %130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %131 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %130, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %122, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %130, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %129, ptr %132, align 8
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %130, 0
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %133, i64 2, 1
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, i64 2, 2
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %137 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %136, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %119, ptr %137, align 8
  %138 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %136, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %126, ptr %138, align 8
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %136, 0
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, i64 2, 1
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, i64 2, 2
  %142 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135, ptr %142, align 8
  %143 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141, ptr %143, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %112, ptr %115, ptr %142, ptr %143)
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
