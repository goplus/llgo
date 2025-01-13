; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv"

%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1" = type {}
%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I0" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv", align 1
@1 = private unnamed_addr constant [2 x i8] c"I0", align 1
@2 = private unnamed_addr constant [21 x i8] c"nil i0.(I0) succeeded", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I1" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [2 x i8] c"I1", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [54 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.f", align 1
@"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [21 x i8] c"nil i1.(I1) succeeded", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [2 x i8] c"I2", align 1
@7 = private unnamed_addr constant [54 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.g", align 1
@"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [21 x i8] c"nil i2.(I2) succeeded", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [2 x i8] c"C1", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"f", align 1
@11 = private unnamed_addr constant [17 x i8] c"C1 i1.(I0) failed", align 1
@12 = private unnamed_addr constant [17 x i8] c"C1 i1.(I1) failed", align 1
@13 = private unnamed_addr constant [20 x i8] c"C1 i1.(I2) succeeded", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [2 x i8] c"C2", align 1
@15 = private unnamed_addr constant [1 x i8] c"g", align 1
@16 = private unnamed_addr constant [17 x i8] c"C2 i1.(I0) failed", align 1
@17 = private unnamed_addr constant [17 x i8] c"C2 i1.(I1) failed", align 1
@18 = private unnamed_addr constant [17 x i8] c"C2 i1.(I2) failed", align 1
@19 = private unnamed_addr constant [17 x i8] c"C1 I0(i1) was nil", align 1
@20 = private unnamed_addr constant [17 x i8] c"C1 I1(i1) was nil", align 1
@21 = private unnamed_addr constant [4 x i8] c"pass", align 1

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1.f"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C1).f"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1", ptr %0, align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1.f"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1" %1)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2.f"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2.g"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2" %0) {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C2).f"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2", ptr %0, align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2.f"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2" %1)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C2).g"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2", ptr %0, align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2.g"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2" %1)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.main"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I0", align 8
  %1 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %0, ptr null)
  br i1 %1, label %_llgo_23, label %_llgo_24

_llgo_1:                                          ; preds = %_llgo_25
  %2 = load ptr, ptr @_llgo_string, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 21 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %3, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  unreachable

_llgo_2:                                          ; preds = %_llgo_25
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %7 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I1", align 8
  %8 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %7, ptr %6)
  br i1 %8, label %_llgo_26, label %_llgo_27

_llgo_3:                                          ; preds = %_llgo_28
  %9 = load ptr, ptr @_llgo_string, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 21 }, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr %10, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %12)
  unreachable

_llgo_4:                                          ; preds = %_llgo_28
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  %15 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %14, ptr %13)
  br i1 %15, label %_llgo_29, label %_llgo_30

_llgo_5:                                          ; preds = %_llgo_31
  %16 = load ptr, ptr @_llgo_string, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 21 }, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %17, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  unreachable

_llgo_6:                                          ; preds = %_llgo_31
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr null, 1
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr null, 1
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %27 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %27, ptr %26)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, ptr null, 1
  %31 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1", align 8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %32, align 1
  %33 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %33, ptr %31)
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %34, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %35, ptr %32, 1
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %36)
  %38 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I0", align 8
  %39 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %38, ptr %37)
  br i1 %39, label %_llgo_32, label %_llgo_33

_llgo_7:                                          ; preds = %_llgo_34
  %40 = load ptr, ptr @_llgo_string, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 17 }, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %41, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43)
  unreachable

_llgo_8:                                          ; preds = %_llgo_34
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %36)
  %45 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I1", align 8
  %46 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %45, ptr %44)
  br i1 %46, label %_llgo_35, label %_llgo_36

_llgo_9:                                          ; preds = %_llgo_37
  %47 = load ptr, ptr @_llgo_string, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 17 }, ptr %48, align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %47, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr %48, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %50)
  unreachable

_llgo_10:                                         ; preds = %_llgo_37
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %36)
  %52 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  %53 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %52, ptr %51)
  br i1 %53, label %_llgo_38, label %_llgo_39

_llgo_11:                                         ; preds = %_llgo_40
  %54 = load ptr, ptr @_llgo_string, align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 20 }, ptr %55, align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %54, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, ptr %55, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %57)
  unreachable

_llgo_12:                                         ; preds = %_llgo_40
  %58 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2", align 8
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2" zeroinitializer, ptr %59, align 1
  %60 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %60, ptr %58)
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %61, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %62, ptr %59, 1
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %63)
  %65 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I0", align 8
  %66 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %65, ptr %64)
  br i1 %66, label %_llgo_41, label %_llgo_42

_llgo_13:                                         ; preds = %_llgo_43
  %67 = load ptr, ptr @_llgo_string, align 8
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 17 }, ptr %68, align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %67, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr %68, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %70)
  unreachable

_llgo_14:                                         ; preds = %_llgo_43
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %63)
  %72 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I1", align 8
  %73 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %72, ptr %71)
  br i1 %73, label %_llgo_44, label %_llgo_45

_llgo_15:                                         ; preds = %_llgo_46
  %74 = load ptr, ptr @_llgo_string, align 8
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 17 }, ptr %75, align 8
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %74, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %75, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %77)
  unreachable

_llgo_16:                                         ; preds = %_llgo_46
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %63)
  %79 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  %80 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %79, ptr %78)
  br i1 %80, label %_llgo_47, label %_llgo_48

_llgo_17:                                         ; preds = %_llgo_49
  %81 = load ptr, ptr @_llgo_string, align 8
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 17 }, ptr %82, align 8
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %81, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %83, ptr %82, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %84)
  unreachable

_llgo_18:                                         ; preds = %_llgo_49
  %85 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1", align 8
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %86, align 1
  %87 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %87, ptr %85)
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %88, 0
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %89, ptr %86, 1
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %90)
  %92 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, 1
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %91, 0
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %93, ptr %92, 1
  %95 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %94, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  br i1 %95, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %96 = load ptr, ptr @_llgo_string, align 8
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 17 }, ptr %97, align 8
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %96, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %98, ptr %97, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %99)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %90)
  %101 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %90, 1
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %100, 0
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %102, ptr %101, 1
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %104, 0
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %105, ptr null, 1
  %107 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %103, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %106)
  br i1 %107, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %108 = load ptr, ptr @_llgo_string, align 8
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 17 }, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %108, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %110, ptr %109, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %111)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_23:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_23
  %112 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, i1 true }, %_llgo_23 ], [ zeroinitializer, %_llgo_24 ]
  %113 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %112, 0
  %114 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %112, 1
  br i1 %114, label %_llgo_1, label %_llgo_2

_llgo_26:                                         ; preds = %_llgo_2
  %115 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %115, ptr %6)
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %116, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %117, ptr null, 1
  %119 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %118, 0
  %120 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %119, i1 true, 1
  br label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %121 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %120, %_llgo_26 ], [ zeroinitializer, %_llgo_27 ]
  %122 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %121, 0
  %123 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %121, 1
  br i1 %123, label %_llgo_3, label %_llgo_4

_llgo_29:                                         ; preds = %_llgo_4
  %124 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %124, ptr %13)
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %125, 0
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %126, ptr null, 1
  %128 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %127, 0
  %129 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %128, i1 true, 1
  br label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30, %_llgo_29
  %130 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %129, %_llgo_29 ], [ zeroinitializer, %_llgo_30 ]
  %131 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %130, 0
  %132 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %130, 1
  br i1 %132, label %_llgo_5, label %_llgo_6

_llgo_32:                                         ; preds = %_llgo_6
  %133 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, 1
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %37, 0
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %134, ptr %133, 1
  %136 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %135, 0
  %137 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %136, i1 true, 1
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_6
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %138 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %137, %_llgo_32 ], [ zeroinitializer, %_llgo_33 ]
  %139 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %138, 0
  %140 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %138, 1
  br i1 %140, label %_llgo_8, label %_llgo_7

_llgo_35:                                         ; preds = %_llgo_8
  %141 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, 1
  %142 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %142, ptr %44)
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %143, 0
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %144, ptr %141, 1
  %146 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %145, 0
  %147 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %146, i1 true, 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_8
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %148 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %147, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
  %149 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %148, 0
  %150 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %148, 1
  br i1 %150, label %_llgo_10, label %_llgo_9

_llgo_38:                                         ; preds = %_llgo_10
  %151 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %36, 1
  %152 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %152, ptr %51)
  %154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %153, 0
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %154, ptr %151, 1
  %156 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %155, 0
  %157 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %156, i1 true, 1
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_10
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %158 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %157, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
  %159 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %158, 0
  %160 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %158, 1
  br i1 %160, label %_llgo_11, label %_llgo_12

_llgo_41:                                         ; preds = %_llgo_12
  %161 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, 1
  %162 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %64, 0
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %162, ptr %161, 1
  %164 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %163, 0
  %165 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %164, i1 true, 1
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_12
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %166 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %165, %_llgo_41 ], [ zeroinitializer, %_llgo_42 ]
  %167 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %166, 0
  %168 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %166, 1
  br i1 %168, label %_llgo_14, label %_llgo_13

_llgo_44:                                         ; preds = %_llgo_14
  %169 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, 1
  %170 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %170, ptr %71)
  %172 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %171, 0
  %173 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %172, ptr %169, 1
  %174 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %173, 0
  %175 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %174, i1 true, 1
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_14
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %176 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %175, %_llgo_44 ], [ zeroinitializer, %_llgo_45 ]
  %177 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %176, 0
  %178 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %176, 1
  br i1 %178, label %_llgo_16, label %_llgo_15

_llgo_47:                                         ; preds = %_llgo_16
  %179 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, 1
  %180 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %181 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %180, ptr %78)
  %182 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %181, 0
  %183 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %182, ptr %179, 1
  %184 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %183, 0
  %185 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %184, i1 true, 1
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_16
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %186 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %185, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
  %187 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %186, 0
  %188 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %186, 1
  br i1 %188, label %_llgo_18, label %_llgo_17
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 })
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I0", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I0", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  br i1 %2, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %9, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 })
  %11 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I1", align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %10, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I1", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %13 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 0, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 0, 2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %19, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 0, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 0, 2
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %23)
  store ptr %23, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %24 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %12, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef }, ptr %24, 1
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %27 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %26, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %25, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %31 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef }, ptr %31, 1
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %34 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %33, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %32, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 1, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 1, 2
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37)
  store ptr %38, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 })
  %40 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  store ptr %39, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %42 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %43 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %41, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef }, ptr %42, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 54 }, ptr undef }, ptr %43, 1
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %47 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %46, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %44, ptr %47, align 8
  %48 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %46, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %45, ptr %48, align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %46, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 2, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %39, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %52 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %53 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef }, ptr %52, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 54 }, ptr undef }, ptr %53, 1
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %57 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %56, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %54, ptr %57, align 8
  %58 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %56, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %55, ptr %58, align 8
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %56, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 2, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 2, 2
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61)
  store ptr %62, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, i64 25, i64 0, i64 1, i64 1)
  %64 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1", align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %63, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %66, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 0, 1
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 0, 2
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69)
  store ptr %70, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %71 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %65, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %72 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %72, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %73, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C1).f", 2
  %75 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %74, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C1).f", 3
  %76 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %72, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %76, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C1).f", 2
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1.f", 3
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %80 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %79, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr %80, align 8
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %79, 0
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, i64 1, 1
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, i64 1, 2
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %85 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %84, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %75, ptr %85, align 8
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %84, 0
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 1, 1
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %63, ptr %71, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, i64 25, i64 0, i64 2, i64 2)
  %90 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2", align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %89, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %92 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %91, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %93 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %94 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %93, 1
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %94, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C2).f", 2
  %96 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C2).f", 3
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %93, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %97, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C2).f", 2
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %98, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2.f", 3
  %100 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %101 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %100, 1
  %102 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %101, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C2).g", 2
  %103 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %102, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C2).g", 3
  %104 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %100, 1
  %105 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %104, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C2).g", 2
  %106 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %105, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2.g", 3
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %108 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %107, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %99, ptr %108, align 8
  %109 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %107, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %106, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %107, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 2, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 2, 2
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %114 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %113, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %96, ptr %114, align 8
  %115 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %113, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %103, ptr %115, align 8
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %113, 0
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, i64 2, 1
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %89, ptr %92, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118)
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
