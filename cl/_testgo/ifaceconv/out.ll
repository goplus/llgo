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
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

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
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [2 x i8] c"C1", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"f", align 1
@11 = private unnamed_addr constant [17 x i8] c"C1 i1.(I0) failed", align 1
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
  br i1 false, label %_llgo_23, label %_llgo_24

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
  %6 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  br i1 false, label %_llgo_26, label %_llgo_27

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
  %12 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  br i1 false, label %_llgo_29, label %_llgo_30

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
  %24 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %24, ptr %23)
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %26, ptr null, 1
  %28 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %29, align 1
  %30 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %30, ptr %28)
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %31, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %32, ptr %29, 1
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %33)
  %35 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 8
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
  %42 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 1
  br i1 true, label %_llgo_35, label %_llgo_36

_llgo_9:                                          ; preds = %_llgo_37
  %44 = load ptr, ptr @_llgo_string, align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 17 }, ptr %45, align 8
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %44, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %45, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  unreachable

_llgo_10:                                         ; preds = %_llgo_37
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %33)
  %49 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  %50 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %49, ptr %48)
  br i1 %50, label %_llgo_38, label %_llgo_39

_llgo_11:                                         ; preds = %_llgo_40
  %51 = load ptr, ptr @_llgo_string, align 8
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 20 }, ptr %52, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %51, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, ptr %52, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %54)
  unreachable

_llgo_12:                                         ; preds = %_llgo_40
  %55 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2" zeroinitializer, ptr %56, align 1
  %57 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %57, ptr %55)
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %58, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %59, ptr %56, 1
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %60)
  %62 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 8
  %63 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %62, ptr %61)
  br i1 %63, label %_llgo_41, label %_llgo_42

_llgo_13:                                         ; preds = %_llgo_43
  %64 = load ptr, ptr @_llgo_string, align 8
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 17 }, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %64, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %66, ptr %65, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %67)
  unreachable

_llgo_14:                                         ; preds = %_llgo_43
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %60)
  %69 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  %70 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %60, 1
  br i1 true, label %_llgo_44, label %_llgo_45

_llgo_15:                                         ; preds = %_llgo_46
  %71 = load ptr, ptr @_llgo_string, align 8
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 17 }, ptr %72, align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %71, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %73, ptr %72, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %74)
  unreachable

_llgo_16:                                         ; preds = %_llgo_46
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %60)
  %76 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  %77 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %76, ptr %75)
  br i1 %77, label %_llgo_47, label %_llgo_48

_llgo_17:                                         ; preds = %_llgo_49
  %78 = load ptr, ptr @_llgo_string, align 8
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 17 }, ptr %79, align 8
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %78, 0
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %80, ptr %79, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %81)
  unreachable

_llgo_18:                                         ; preds = %_llgo_49
  %82 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 8
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1" zeroinitializer, ptr %83, align 1
  %84 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %84, ptr %82)
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %85, 0
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %86, ptr %83, 1
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %87)
  %89 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %87, 1
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %88, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %90, ptr %89, 1
  %92 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %91, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  br i1 %92, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %93 = load ptr, ptr @_llgo_string, align 8
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 17 }, ptr %94, align 8
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %93, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, ptr %94, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %96)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %87)
  %98 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %87, 1
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %97, 0
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %99, ptr %98, 1
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %101, 0
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %102, ptr null, 1
  %104 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %100, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %103)
  br i1 %104, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %105 = load ptr, ptr @_llgo_string, align 8
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 17 }, ptr %106, align 8
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %105, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %107, ptr %106, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %108)
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
  %109 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, i1 true }, %_llgo_23 ], [ zeroinitializer, %_llgo_24 ]
  %110 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %109, 0
  %111 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %109, 1
  br i1 %111, label %_llgo_1, label %_llgo_2

_llgo_26:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %112 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_26 ], [ zeroinitializer, %_llgo_27 ]
  %113 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %112, 0
  %114 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %112, 1
  br i1 %114, label %_llgo_3, label %_llgo_4

_llgo_29:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30, %_llgo_29
  %115 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, i1 true }, %_llgo_29 ], [ zeroinitializer, %_llgo_30 ]
  %116 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %115, 0
  %117 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %115, 1
  br i1 %117, label %_llgo_5, label %_llgo_6

_llgo_32:                                         ; preds = %_llgo_6
  %118 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 1
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %119, ptr %118, 1
  %121 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %120, 0
  %122 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %121, i1 true, 1
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_6
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %123 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %122, %_llgo_32 ], [ zeroinitializer, %_llgo_33 ]
  %124 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %123, 0
  %125 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %123, 1
  br i1 %125, label %_llgo_8, label %_llgo_7

_llgo_35:                                         ; preds = %_llgo_8
  %126 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 0
  %127 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %126, i1 true, 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_8
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %128 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %127, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
  %129 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %128, 0
  %130 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %128, 1
  br i1 %130, label %_llgo_10, label %_llgo_9

_llgo_38:                                         ; preds = %_llgo_10
  %131 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %33, 1
  %132 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %132, ptr %48)
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %133, 0
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %134, ptr %131, 1
  %136 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %135, 0
  %137 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %136, i1 true, 1
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_10
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %138 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %137, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
  %139 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %138, 0
  %140 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %138, 1
  br i1 %140, label %_llgo_11, label %_llgo_12

_llgo_41:                                         ; preds = %_llgo_12
  %141 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %60, 1
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %61, 0
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %142, ptr %141, 1
  %144 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %143, 0
  %145 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %144, i1 true, 1
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_12
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %146 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %145, %_llgo_41 ], [ zeroinitializer, %_llgo_42 ]
  %147 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %146, 0
  %148 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %146, 1
  br i1 %148, label %_llgo_14, label %_llgo_13

_llgo_44:                                         ; preds = %_llgo_14
  %149 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %60, 0
  %150 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %149, i1 true, 1
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_14
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %151 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %150, %_llgo_44 ], [ zeroinitializer, %_llgo_45 ]
  %152 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %151, 0
  %153 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %151, 1
  br i1 %153, label %_llgo_16, label %_llgo_15

_llgo_47:                                         ; preds = %_llgo_16
  %154 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %60, 1
  %155 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %155, ptr %75)
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %156, 0
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %157, ptr %154, 1
  %159 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %158, 0
  %160 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %159, i1 true, 1
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_16
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %161 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %160, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
  %162 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %161, 0
  %163 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %161, 1
  br i1 %163, label %_llgo_18, label %_llgo_17
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceconv.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 })
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I0", align 8
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
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 })
  %11 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %10, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I1", align 8
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
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef }, ptr %24, 1
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %27 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %26, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %25, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %10, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 })
  %32 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  store ptr %31, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.I2", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %34 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %35 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %33, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %36 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef }, ptr %34, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 45 }, ptr undef }, ptr %35, 1
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
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, i64 25, i64 0, i64 1, i64 1)
  %45 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %44, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C1", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %47, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i64 0, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 0, 2
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50)
  store ptr %51, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %52 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %46, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %53 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %53, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", 2
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %55, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", 3
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %53, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C1).f", 2
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C1.f", 3
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %61 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %60, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr %61, align 8
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %60, 0
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 1, 1
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 1, 2
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %66 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %65, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr %66, align 8
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %65, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 1, 1
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %44, ptr %52, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, i64 25, i64 0, i64 2, i64 2)
  %71 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %70, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceconv.C2", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %73 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %72, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %74 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %74, 1
  %76 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %75, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", 2
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %76, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", 3
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %74, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).f", 2
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %79, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.f", 3
  %81 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %81, 1
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", 2
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %83, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", 3
  %85 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 45 }, ptr undef, ptr undef, ptr undef }, ptr %81, 1
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %85, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.(*C2).g", 2
  %87 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %86, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceconv.C2.g", 3
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %89 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %88, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr %89, align 8
  %90 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %88, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %87, ptr %90, align 8
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %88, 0
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 2, 1
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i64 2, 2
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %95 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %94, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr %95, align 8
  %96 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %94, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %84, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %94, 0
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, i64 2, 1
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %70, ptr %73, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99)
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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)
