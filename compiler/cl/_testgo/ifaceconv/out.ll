; ModuleID = 'main'
source_filename = "main"

%main.C1 = type {}
%main.C2 = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.I0 = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [2 x i8] c"I0", align 1
@2 = private unnamed_addr constant [21 x i8] c"nil i0.(I0) succeeded", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_main.I1 = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [2 x i8] c"I1", align 1
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [6 x i8] c"main.f", align 1
@"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [21 x i8] c"nil i1.(I1) succeeded", align 1
@_llgo_main.I2 = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [2 x i8] c"I2", align 1
@7 = private unnamed_addr constant [6 x i8] c"main.g", align 1
@"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [21 x i8] c"nil i2.(I2) succeeded", align 1
@_llgo_main.C1 = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [2 x i8] c"C1", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"f", align 1
@11 = private unnamed_addr constant [17 x i8] c"C1 i1.(I0) failed", align 1
@12 = private unnamed_addr constant [17 x i8] c"C1 i1.(I1) failed", align 1
@13 = private unnamed_addr constant [20 x i8] c"C1 i1.(I2) succeeded", align 1
@_llgo_main.C2 = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [2 x i8] c"C2", align 1
@15 = private unnamed_addr constant [1 x i8] c"g", align 1
@16 = private unnamed_addr constant [17 x i8] c"C2 i1.(I0) failed", align 1
@17 = private unnamed_addr constant [17 x i8] c"C2 i1.(I1) failed", align 1
@18 = private unnamed_addr constant [17 x i8] c"C2 i1.(I2) failed", align 1
@19 = private unnamed_addr constant [17 x i8] c"C1 I0(i1) was nil", align 1
@20 = private unnamed_addr constant [17 x i8] c"C1 I1(i1) was nil", align 1
@21 = private unnamed_addr constant [4 x i8] c"pass", align 1

define void @main.C1.f(%main.C1 %0) {
_llgo_0:
  ret void
}

define void @"main.(*C1).f"(ptr %0) {
_llgo_0:
  %1 = load %main.C1, ptr %0, align 1
  call void @main.C1.f(%main.C1 %1)
  ret void
}

define void @main.C2.f(%main.C2 %0) {
_llgo_0:
  ret void
}

define void @main.C2.g(%main.C2 %0) {
_llgo_0:
  ret void
}

define void @"main.(*C2).f"(ptr %0) {
_llgo_0:
  %1 = load %main.C2, ptr %0, align 1
  call void @main.C2.f(%main.C2 %1)
  ret void
}

define void @"main.(*C2).g"(ptr %0) {
_llgo_0:
  %1 = load %main.C2, ptr %0, align 1
  call void @main.C2.g(%main.C2 %1)
  ret void
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
  %2 = load ptr, ptr @_llgo_main.I0, align 8
  %3 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %2, ptr null)
  br i1 %3, label %_llgo_23, label %_llgo_24

_llgo_1:                                          ; preds = %_llgo_25
  %4 = load ptr, ptr @_llgo_string, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 21 }, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %5, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  unreachable

_llgo_2:                                          ; preds = %_llgo_25
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %9 = load ptr, ptr @_llgo_main.I1, align 8
  %10 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %9, ptr %8)
  br i1 %10, label %_llgo_26, label %_llgo_27

_llgo_3:                                          ; preds = %_llgo_28
  %11 = load ptr, ptr @_llgo_string, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 21 }, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr %12, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  unreachable

_llgo_4:                                          ; preds = %_llgo_28
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %16 = load ptr, ptr @_llgo_main.I2, align 8
  %17 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %16, ptr %15)
  br i1 %17, label %_llgo_29, label %_llgo_30

_llgo_5:                                          ; preds = %_llgo_31
  %18 = load ptr, ptr @_llgo_string, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 21 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable

_llgo_6:                                          ; preds = %_llgo_31
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %22, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %23, ptr null, 1
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %25, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr null, 1
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %29 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %29, ptr %28)
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %31, ptr null, 1
  %33 = load ptr, ptr @_llgo_main.C1, align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %main.C1 zeroinitializer, ptr %34, align 1
  %35 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %35, ptr %33)
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %37, ptr %34, 1
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %38)
  %40 = load ptr, ptr @_llgo_main.I0, align 8
  %41 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %40, ptr %39)
  br i1 %41, label %_llgo_32, label %_llgo_33

_llgo_7:                                          ; preds = %_llgo_34
  %42 = load ptr, ptr @_llgo_string, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 17 }, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %43, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  unreachable

_llgo_8:                                          ; preds = %_llgo_34
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %38)
  %47 = load ptr, ptr @_llgo_main.I1, align 8
  %48 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %47, ptr %46)
  br i1 %48, label %_llgo_35, label %_llgo_36

_llgo_9:                                          ; preds = %_llgo_37
  %49 = load ptr, ptr @_llgo_string, align 8
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 17 }, ptr %50, align 8
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %49, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %51, ptr %50, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %52)
  unreachable

_llgo_10:                                         ; preds = %_llgo_37
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %38)
  %54 = load ptr, ptr @_llgo_main.I2, align 8
  %55 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %54, ptr %53)
  br i1 %55, label %_llgo_38, label %_llgo_39

_llgo_11:                                         ; preds = %_llgo_40
  %56 = load ptr, ptr @_llgo_string, align 8
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 20 }, ptr %57, align 8
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %56, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %57, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  unreachable

_llgo_12:                                         ; preds = %_llgo_40
  %60 = load ptr, ptr @_llgo_main.C2, align 8
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %main.C2 zeroinitializer, ptr %61, align 1
  %62 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %62, ptr %60)
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %63, 0
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %64, ptr %61, 1
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %65)
  %67 = load ptr, ptr @_llgo_main.I0, align 8
  %68 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %67, ptr %66)
  br i1 %68, label %_llgo_41, label %_llgo_42

_llgo_13:                                         ; preds = %_llgo_43
  %69 = load ptr, ptr @_llgo_string, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 17 }, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %71, ptr %70, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
  unreachable

_llgo_14:                                         ; preds = %_llgo_43
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %65)
  %74 = load ptr, ptr @_llgo_main.I1, align 8
  %75 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %74, ptr %73)
  br i1 %75, label %_llgo_44, label %_llgo_45

_llgo_15:                                         ; preds = %_llgo_46
  %76 = load ptr, ptr @_llgo_string, align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 17 }, ptr %77, align 8
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %76, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %78, ptr %77, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %79)
  unreachable

_llgo_16:                                         ; preds = %_llgo_46
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %65)
  %81 = load ptr, ptr @_llgo_main.I2, align 8
  %82 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %81, ptr %80)
  br i1 %82, label %_llgo_47, label %_llgo_48

_llgo_17:                                         ; preds = %_llgo_49
  %83 = load ptr, ptr @_llgo_string, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 17 }, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %83, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %85, ptr %84, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %86)
  unreachable

_llgo_18:                                         ; preds = %_llgo_49
  %87 = load ptr, ptr @_llgo_main.C1, align 8
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %main.C1 zeroinitializer, ptr %88, align 1
  %89 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %89, ptr %87)
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %90, 0
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %91, ptr %88, 1
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %92)
  %94 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %92, 1
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %93, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %95, ptr %94, 1
  %97 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %96, %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer)
  br i1 %97, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %98 = load ptr, ptr @_llgo_string, align 8
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 17 }, ptr %99, align 8
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %98, 0
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %100, ptr %99, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %101)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %92)
  %103 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %92, 1
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %102, 0
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %104, ptr %103, 1
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %106, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %107, ptr null, 1
  %109 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %105, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %108)
  br i1 %109, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %110 = load ptr, ptr @_llgo_string, align 8
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 17 }, ptr %111, align 8
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %110, 0
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %112, ptr %111, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %113)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_23:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_0
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_23
  %114 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ { %"github.com/goplus/llgo/runtime/internal/runtime.eface" zeroinitializer, i1 true }, %_llgo_23 ], [ zeroinitializer, %_llgo_24 ]
  %115 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %114, 0
  %116 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %114, 1
  br i1 %116, label %_llgo_1, label %_llgo_2

_llgo_26:                                         ; preds = %_llgo_2
  %117 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %118 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %117, ptr %8)
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %118, 0
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %119, ptr null, 1
  %121 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %120, 0
  %122 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %121, i1 true, 1
  br label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_2
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %123 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %122, %_llgo_26 ], [ zeroinitializer, %_llgo_27 ]
  %124 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %123, 0
  %125 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %123, 1
  br i1 %125, label %_llgo_3, label %_llgo_4

_llgo_29:                                         ; preds = %_llgo_4
  %126 = load ptr, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %126, ptr %15)
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %127, 0
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %128, ptr null, 1
  %130 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %129, 0
  %131 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %130, i1 true, 1
  br label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_4
  br label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30, %_llgo_29
  %132 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %131, %_llgo_29 ], [ zeroinitializer, %_llgo_30 ]
  %133 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %132, 0
  %134 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %132, 1
  br i1 %134, label %_llgo_5, label %_llgo_6

_llgo_32:                                         ; preds = %_llgo_6
  %135 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, 1
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %39, 0
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %136, ptr %135, 1
  %138 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %137, 0
  %139 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %138, i1 true, 1
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_6
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %140 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %139, %_llgo_32 ], [ zeroinitializer, %_llgo_33 ]
  %141 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %140, 0
  %142 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %140, 1
  br i1 %142, label %_llgo_8, label %_llgo_7

_llgo_35:                                         ; preds = %_llgo_8
  %143 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, 1
  %144 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %145 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %144, ptr %46)
  %146 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %145, 0
  %147 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %146, ptr %143, 1
  %148 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %147, 0
  %149 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %148, i1 true, 1
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_8
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %150 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %149, %_llgo_35 ], [ zeroinitializer, %_llgo_36 ]
  %151 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %150, 0
  %152 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %150, 1
  br i1 %152, label %_llgo_10, label %_llgo_9

_llgo_38:                                         ; preds = %_llgo_10
  %153 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %38, 1
  %154 = load ptr, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %155 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %154, ptr %53)
  %156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %155, 0
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %156, ptr %153, 1
  %158 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %157, 0
  %159 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %158, i1 true, 1
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_10
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %160 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %159, %_llgo_38 ], [ zeroinitializer, %_llgo_39 ]
  %161 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %160, 0
  %162 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %160, 1
  br i1 %162, label %_llgo_11, label %_llgo_12

_llgo_41:                                         ; preds = %_llgo_12
  %163 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, 1
  %164 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %66, 0
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %164, ptr %163, 1
  %166 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %165, 0
  %167 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %166, i1 true, 1
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_12
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %168 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } [ %167, %_llgo_41 ], [ zeroinitializer, %_llgo_42 ]
  %169 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %168, 0
  %170 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.eface", i1 } %168, 1
  br i1 %170, label %_llgo_14, label %_llgo_13

_llgo_44:                                         ; preds = %_llgo_14
  %171 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, 1
  %172 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %172, ptr %73)
  %174 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %173, 0
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %174, ptr %171, 1
  %176 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %175, 0
  %177 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %176, i1 true, 1
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_14
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %178 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %177, %_llgo_44 ], [ zeroinitializer, %_llgo_45 ]
  %179 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %178, 0
  %180 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %178, 1
  br i1 %180, label %_llgo_16, label %_llgo_15

_llgo_47:                                         ; preds = %_llgo_16
  %181 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %65, 1
  %182 = load ptr, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %183 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %182, ptr %80)
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %183, 0
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %184, ptr %181, 1
  %186 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %185, 0
  %187 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %186, i1 true, 1
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_16
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %188 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %187, %_llgo_47 ], [ zeroinitializer, %_llgo_48 ]
  %189 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %188, 0
  %190 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %188, 1
  br i1 %190, label %_llgo_18, label %_llgo_17
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 2 })
  %1 = load ptr, ptr @_llgo_main.I0, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @_llgo_main.I0, align 8
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
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 })
  %11 = load ptr, ptr @_llgo_main.I1, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %10, ptr @_llgo_main.I1, align 8
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
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr undef }, ptr %24, 1
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
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr undef }, ptr %31, 1
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %34 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %33, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %32, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 1, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 1, 2
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37)
  store ptr %38, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 })
  %40 = load ptr, ptr @_llgo_main.I2, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  store ptr %39, ptr @_llgo_main.I2, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %42 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %43 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br i1 %41, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %44 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr undef }, ptr %42, 1
  %45 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef }, ptr %43, 1
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
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr undef }, ptr %52, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef }, ptr %53, 1
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %57 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %56, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %54, ptr %57, align 8
  %58 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %56, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %55, ptr %58, align 8
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %56, 0
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 2, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 2, 2
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61)
  store ptr %62, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, i64 25, i64 0, i64 1, i64 1)
  %64 = load ptr, ptr @_llgo_main.C1, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %63, ptr @_llgo_main.C1, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %66, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 0, 1
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 0, 2
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69)
  store ptr %70, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %71 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %65, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %72 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %72, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %73, ptr @"main.(*C1).f", 2
  %75 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %74, ptr @"main.(*C1).f", 3
  %76 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %72, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %76, ptr @"main.(*C1).f", 2
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr @main.C1.f, 3
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
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 2 }, i64 25, i64 0, i64 2, i64 2)
  %90 = load ptr, ptr @_llgo_main.C2, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %89, ptr @_llgo_main.C2, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %92 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %91, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %93 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %94 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %93, 1
  %95 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %94, ptr @"main.(*C2).f", 2
  %96 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %95, ptr @"main.(*C2).f", 3
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %93, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %97, ptr @"main.(*C2).f", 2
  %99 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %98, ptr @main.C2.f, 3
  %100 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %101 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %100, 1
  %102 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %101, ptr @"main.(*C2).g", 2
  %103 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %102, ptr @"main.(*C2).g", 3
  %104 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %100, 1
  %105 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %104, ptr @"main.(*C2).g", 2
  %106 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %105, ptr @main.C2.g, 3
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
