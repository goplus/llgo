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
@5 = private unnamed_addr constant [21 x i8] c"nil i1.(I1) succeeded", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [2 x i8] c"I2", align 1
@7 = private unnamed_addr constant [54 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.g", align 1
@8 = private unnamed_addr constant [21 x i8] c"nil i2.(I2) succeeded", align 1
@"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [2 x i8] c"C1", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"f", align 1
@11 = private unnamed_addr constant [17 x i8] c"C1 i1.(I0) failed", align 1
@"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" = linkonce global ptr null, align 8
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
  br i1 true, label %_llgo_23, label %_llgo_24

_llgo_1:                                          ; preds = %_llgo_25
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 21 }, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %1, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %2, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  unreachable

_llgo_2:                                          ; preds = %_llgo_25
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %6 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I1", align 8
  br i1 true, label %_llgo_26, label %_llgo_27

_llgo_3:                                          ; preds = %_llgo_28
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 21 }, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %8, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  unreachable

_llgo_4:                                          ; preds = %_llgo_28
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %12 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  br i1 true, label %_llgo_29, label %_llgo_30

_llgo_5:                                          ; preds = %_llgo_31
  %13 = load ptr, ptr @_llgo_string, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 21 }, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %13, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %14, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %16)
  unreachable

_llgo_6:                                          ; preds = %_llgo_31
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr null, 1
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr null, 1
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %24 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %24, ptr %23)
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, ptr null, 1
  %28 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1", align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %29, align 1
  %30 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %30, ptr %28)
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %31, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %29, 1
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %33)
  %35 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I0", align 8
  %36 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %35, ptr %34)
  br i1 %36, label %_llgo_32, label %_llgo_33

_llgo_7:                                          ; preds = %_llgo_34
  %37 = load ptr, ptr @_llgo_string, align 8
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 17 }, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %37, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, ptr %38, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %40)
  unreachable

_llgo_8:                                          ; preds = %_llgo_34
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %33)
  %42 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I1", align 8
  br i1 true, label %_llgo_35, label %_llgo_36

_llgo_9:                                          ; preds = %_llgo_37
  %43 = load ptr, ptr @_llgo_string, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 17 }, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %43, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %44, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %46)
  unreachable

_llgo_10:                                         ; preds = %_llgo_37
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %33)
  %48 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  %49 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %48, ptr %47)
  br i1 %49, label %_llgo_38, label %_llgo_39

_llgo_11:                                         ; preds = %_llgo_40
  %50 = load ptr, ptr @_llgo_string, align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 20 }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %51, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  unreachable

_llgo_12:                                         ; preds = %_llgo_40
  %54 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2", align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C2" zeroinitializer, ptr %55, align 1
  %56 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %56, ptr %54)
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %58, ptr %55, 1
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %59)
  %61 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I0", align 8
  %62 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %61, ptr %60)
  br i1 %62, label %_llgo_41, label %_llgo_42

_llgo_13:                                         ; preds = %_llgo_43
  %63 = load ptr, ptr @_llgo_string, align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 17 }, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, ptr %64, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %66)
  unreachable

_llgo_14:                                         ; preds = %_llgo_43
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %59)
  %68 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I1", align 8
  br i1 true, label %_llgo_44, label %_llgo_45

_llgo_15:                                         ; preds = %_llgo_46
  %69 = load ptr, ptr @_llgo_string, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 17 }, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %71, ptr %70, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
  unreachable

_llgo_16:                                         ; preds = %_llgo_46
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %59)
  %74 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  %75 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %74, ptr %73)
  br i1 %75, label %_llgo_47, label %_llgo_48

_llgo_17:                                         ; preds = %_llgo_49
  %76 = load ptr, ptr @_llgo_string, align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 17 }, ptr %77, align 8
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %76, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %78, ptr %77, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %79)
  unreachable

_llgo_18:                                         ; preds = %_llgo_49
  %80 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1", align 8
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %81, align 1
  %82 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %82, ptr %80)
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %83, 0
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %84, ptr %81, 1
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %85)
  %87 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %85, 1
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %86, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %88, ptr %87, 1
  %90 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  br i1 %90, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %91 = load ptr, ptr @_llgo_string, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 17 }, ptr %92, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %91, 0
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %93, ptr %92, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %94)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %85)
  %96 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %85, 1
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %95, 0
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %97, ptr %96, 1
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %99, 0
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %100, ptr null, 1
  %102 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %98, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %101)
  br i1 %102, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %103 = load ptr, ptr @_llgo_string, align 8
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 17 }, ptr %104, align 8
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %103, 0
  %106 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %105, ptr %104, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %106)
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
  %107 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, i1 true }, %_llgo_23 ], [ zeroinitializer, %_llgo_24 ]
  %108 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %107, 0
  %109 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %107, 1
  br i1 %109, label %_llgo_1, label %_llgo_2

_llgo_26:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %110 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_26 ], [ zeroinitializer, %_llgo_27 ]
  %111 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %110, 0
  %112 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %110, 1
  br i1 %112, label %_llgo_3, label %_llgo_4

_llgo_29:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30, %_llgo_29
  %113 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_29 ], [ zeroinitializer, %_llgo_30 ]
  %114 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %113, 0
  %115 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %113, 1
  br i1 %115, label %_llgo_5, label %_llgo_6

_llgo_32:                                         ; preds = %_llgo_6
  %116 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 1
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %117, ptr %116, 1
  %119 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %118, 0
  %120 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %119, i1 true, 1
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_6
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %121 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %120, %_llgo_32 ], [ zeroinitializer, %_llgo_33 ]
  %122 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %121, 0
  %123 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %121, 1
  br i1 %123, label %_llgo_8, label %_llgo_7

_llgo_35:                                         ; preds = %_llgo_8
  %124 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 0
  %125 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %124, i1 true, 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_8
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %126 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %125, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
  %127 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %126, 0
  %128 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %126, 1
  br i1 %128, label %_llgo_10, label %_llgo_9

_llgo_38:                                         ; preds = %_llgo_10
  %129 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 1
  %130 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %130, ptr %47)
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %131, 0
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %132, ptr %129, 1
  %134 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %133, 0
  %135 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %134, i1 true, 1
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_10
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %136 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %135, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
  %137 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %136, 0
  %138 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %136, 1
  br i1 %138, label %_llgo_11, label %_llgo_12

_llgo_41:                                         ; preds = %_llgo_12
  %139 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, 1
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %60, 0
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %140, ptr %139, 1
  %142 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %141, 0
  %143 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %142, i1 true, 1
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_12
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %144 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %143, %_llgo_41 ], [ zeroinitializer, %_llgo_42 ]
  %145 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %144, 0
  %146 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %144, 1
  br i1 %146, label %_llgo_14, label %_llgo_13

_llgo_44:                                         ; preds = %_llgo_14
  %147 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, 0
  %148 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %147, i1 true, 1
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_14
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %149 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %148, %_llgo_44 ], [ zeroinitializer, %_llgo_45 ]
  %150 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %149, 0
  %151 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %149, 1
  br i1 %151, label %_llgo_16, label %_llgo_15

_llgo_47:                                         ; preds = %_llgo_16
  %152 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, 1
  %153 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %153, ptr %73)
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %154, 0
  %156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %155, ptr %152, 1
  %157 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %156, 0
  %158 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %157, i1 true, 1
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_16
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %159 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %158, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
  %160 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %159, 0
  %161 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %159, 1
  br i1 %161, label %_llgo_18, label %_llgo_17
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
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 })
  %32 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  store ptr %31, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.I2", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %34 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %35 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %33, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %36 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef }, ptr %34, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 54 }, ptr undef }, ptr %35, 1
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %39 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %38, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %36, ptr %39, align 8
  %40 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %38, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %37, ptr %40, align 8
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %38, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 2, 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %31, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %44 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef }, ptr %44, 1
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %47 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %46, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %45, ptr %47, align 8
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %46, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 1, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 1, 2
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50)
  store ptr %51, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, i64 25, i64 0, i64 1, i64 1)
  %53 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1", align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %52, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %55, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 0, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 0, 2
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58)
  store ptr %59, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %60 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %54, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %61 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %61, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C1).f", 2
  %64 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %63, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C1).f", 3
  %65 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef, ptr undef, ptr undef }, ptr %61, 1
  %66 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %65, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.(*C1).f", 2
  %67 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %66, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.C1.f", 3
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %69 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %68, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %67, ptr %69, align 8
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %68, 0
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, i64 1, 1
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 1, 2
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %74 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %73, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %64, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %73, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 1, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %52, ptr %60, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %78 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %79 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 54 }, ptr undef }, ptr %78, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 54 }, ptr undef }, ptr %79, 1
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %83 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %82, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %80, ptr %83, align 8
  %84 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %82, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %81, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %82, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 2, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 2, 2
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87)
  store ptr %88, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceconv.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
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

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
