; ModuleID = 'main'
source_filename = "main"

%main.C1 = type {}
%main.C2 = type {}
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.I0 = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [7 x i8] c"main.I0", align 1
@2 = private unnamed_addr constant [21 x i8] c"nil i0.(I0) succeeded", align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_main.I1 = linkonce global ptr null, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [6 x i8] c"main.f", align 1
@4 = private unnamed_addr constant [7 x i8] c"main.I1", align 1
@"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [21 x i8] c"nil i1.(I1) succeeded", align 1
@_llgo_main.I2 = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [6 x i8] c"main.g", align 1
@7 = private unnamed_addr constant [7 x i8] c"main.I2", align 1
@"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [21 x i8] c"nil i2.(I2) succeeded", align 1
@_llgo_main.C1 = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [7 x i8] c"main.C1", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"f", align 1
@11 = private unnamed_addr constant [2 x i8] c"C1", align 1
@12 = private unnamed_addr constant [17 x i8] c"C1 i1.(I0) failed", align 1
@13 = private unnamed_addr constant [17 x i8] c"C1 i1.(I1) failed", align 1
@14 = private unnamed_addr constant [20 x i8] c"C1 i1.(I2) succeeded", align 1
@_llgo_main.C2 = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [7 x i8] c"main.C2", align 1
@16 = private unnamed_addr constant [1 x i8] c"g", align 1
@17 = private unnamed_addr constant [2 x i8] c"C2", align 1
@18 = private unnamed_addr constant [17 x i8] c"C2 i1.(I0) failed", align 1
@19 = private unnamed_addr constant [17 x i8] c"C2 i1.(I1) failed", align 1
@20 = private unnamed_addr constant [17 x i8] c"C2 i1.(I2) failed", align 1
@21 = private unnamed_addr constant [17 x i8] c"C1 I0(i1) was nil", align 1
@22 = private unnamed_addr constant [17 x i8] c"C1 I1(i1) was nil", align 1
@23 = private unnamed_addr constant [4 x i8] c"pass", align 1

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
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = load ptr, ptr @_llgo_main.I0, align 8
  %3 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %2, ptr null)
  br i1 %3, label %_llgo_23, label %_llgo_24

_llgo_1:                                          ; preds = %_llgo_25
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @2, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 21, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = load ptr, ptr @_llgo_string, align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 0
  store ptr %8, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %10, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %13)
  unreachable

_llgo_2:                                          ; preds = %_llgo_25
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %15 = load ptr, ptr @_llgo_main.I1, align 8
  %16 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %15, ptr %14)
  br i1 %16, label %_llgo_26, label %_llgo_27

_llgo_3:                                          ; preds = %_llgo_28
  %17 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 0
  store ptr @5, ptr %18, align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %17, i32 0, i32 1
  store i64 21, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %17, align 8
  %21 = load ptr, ptr @_llgo_string, align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %20, ptr %22, align 8
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, i32 0, i32 0
  store ptr %21, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, i32 0, i32 1
  store ptr %22, ptr %25, align 8
  %26 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %26)
  unreachable

_llgo_4:                                          ; preds = %_llgo_28
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %28 = load ptr, ptr @_llgo_main.I2, align 8
  %29 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %28, ptr %27)
  br i1 %29, label %_llgo_29, label %_llgo_30

_llgo_5:                                          ; preds = %_llgo_31
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @8, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 21, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = load ptr, ptr @_llgo_string, align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %33, ptr %35, align 8
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %36, i32 0, i32 0
  store ptr %34, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %36, i32 0, i32 1
  store ptr %35, ptr %38, align 8
  %39 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %36, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %39)
  unreachable

_llgo_6:                                          ; preds = %_llgo_31
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %41, i32 0, i32 0
  store ptr %40, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %41, i32 0, i32 1
  store ptr null, ptr %43, align 8
  %44 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %41, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %46, i32 0, i32 0
  store ptr %45, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %46, i32 0, i32 1
  store ptr null, ptr %48, align 8
  %49 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %46, align 8
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %51 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %52 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %52, ptr %50)
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %54, i32 0, i32 0
  store ptr %53, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %54, i32 0, i32 1
  store ptr null, ptr %56, align 8
  %57 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %54, align 8
  %58 = load ptr, ptr @_llgo_main.C1, align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.C1 zeroinitializer, ptr %59, align 1
  %60 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %61 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %61, ptr %58)
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %63, i32 0, i32 0
  store ptr %62, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %63, i32 0, i32 1
  store ptr %59, ptr %65, align 8
  %66 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %63, align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %66)
  %68 = load ptr, ptr @_llgo_main.I0, align 8
  %69 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %68, ptr %67)
  br i1 %69, label %_llgo_32, label %_llgo_33

_llgo_7:                                          ; preds = %_llgo_34
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 0
  store ptr @12, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 1
  store i64 17, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %70, align 8
  %74 = load ptr, ptr @_llgo_string, align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %73, ptr %75, align 8
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %76, i32 0, i32 0
  store ptr %74, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %76, i32 0, i32 1
  store ptr %75, ptr %78, align 8
  %79 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %76, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %79)
  unreachable

_llgo_8:                                          ; preds = %_llgo_34
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %66)
  %81 = load ptr, ptr @_llgo_main.I1, align 8
  %82 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %81, ptr %80)
  br i1 %82, label %_llgo_35, label %_llgo_36

_llgo_9:                                          ; preds = %_llgo_37
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr @13, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 17, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = load ptr, ptr @_llgo_string, align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %86, ptr %88, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 0
  store ptr %87, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, i32 0, i32 1
  store ptr %88, ptr %91, align 8
  %92 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %89, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %92)
  unreachable

_llgo_10:                                         ; preds = %_llgo_37
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %66)
  %94 = load ptr, ptr @_llgo_main.I2, align 8
  %95 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %94, ptr %93)
  br i1 %95, label %_llgo_38, label %_llgo_39

_llgo_11:                                         ; preds = %_llgo_40
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 0
  store ptr @14, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 1
  store i64 20, ptr %98, align 4
  %99 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %96, align 8
  %100 = load ptr, ptr @_llgo_string, align 8
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %99, ptr %101, align 8
  %102 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %102, i32 0, i32 0
  store ptr %100, ptr %103, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %102, i32 0, i32 1
  store ptr %101, ptr %104, align 8
  %105 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %102, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %105)
  unreachable

_llgo_12:                                         ; preds = %_llgo_40
  %106 = load ptr, ptr @_llgo_main.C2, align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.C2 zeroinitializer, ptr %107, align 1
  %108 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %109 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %109, ptr %106)
  %111 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %111, i32 0, i32 0
  store ptr %110, ptr %112, align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %111, i32 0, i32 1
  store ptr %107, ptr %113, align 8
  %114 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %111, align 8
  %115 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %114)
  %116 = load ptr, ptr @_llgo_main.I0, align 8
  %117 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %116, ptr %115)
  br i1 %117, label %_llgo_41, label %_llgo_42

_llgo_13:                                         ; preds = %_llgo_43
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @18, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 17, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  %122 = load ptr, ptr @_llgo_string, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %121, ptr %123, align 8
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, i32 0, i32 0
  store ptr %122, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, i32 0, i32 1
  store ptr %123, ptr %126, align 8
  %127 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %127)
  unreachable

_llgo_14:                                         ; preds = %_llgo_43
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %114)
  %129 = load ptr, ptr @_llgo_main.I1, align 8
  %130 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %129, ptr %128)
  br i1 %130, label %_llgo_44, label %_llgo_45

_llgo_15:                                         ; preds = %_llgo_46
  %131 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 0
  store ptr @19, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 1
  store i64 17, ptr %133, align 4
  %134 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %131, align 8
  %135 = load ptr, ptr @_llgo_string, align 8
  %136 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %134, ptr %136, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %137, i32 0, i32 0
  store ptr %135, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %137, i32 0, i32 1
  store ptr %136, ptr %139, align 8
  %140 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %137, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %140)
  unreachable

_llgo_16:                                         ; preds = %_llgo_46
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %114)
  %142 = load ptr, ptr @_llgo_main.I2, align 8
  %143 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %142, ptr %141)
  br i1 %143, label %_llgo_47, label %_llgo_48

_llgo_17:                                         ; preds = %_llgo_49
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @20, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 17, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = load ptr, ptr @_llgo_string, align 8
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %147, ptr %149, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %150, i32 0, i32 0
  store ptr %148, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %150, i32 0, i32 1
  store ptr %149, ptr %152, align 8
  %153 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %150, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %153)
  unreachable

_llgo_18:                                         ; preds = %_llgo_49
  %154 = load ptr, ptr @_llgo_main.C1, align 8
  %155 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.C1 zeroinitializer, ptr %155, align 1
  %156 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %157 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %157, ptr %154)
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %159, i32 0, i32 0
  store ptr %158, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %159, i32 0, i32 1
  store ptr %155, ptr %161, align 8
  %162 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %159, align 8
  %163 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %162)
  %164 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %162, 1
  %165 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %165, i32 0, i32 0
  store ptr %163, ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %165, i32 0, i32 1
  store ptr %164, ptr %167, align 8
  %168 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %165, align 8
  %169 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %168, %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer)
  br i1 %169, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %170 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 0
  store ptr @21, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 1
  store i64 17, ptr %172, align 4
  %173 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %170, align 8
  %174 = load ptr, ptr @_llgo_string, align 8
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %173, ptr %175, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %176, i32 0, i32 0
  store ptr %174, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %176, i32 0, i32 1
  store ptr %175, ptr %178, align 8
  %179 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %176, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %179)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %162)
  %181 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %162, 1
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %182, i32 0, i32 0
  store ptr %180, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %182, i32 0, i32 1
  store ptr %181, ptr %184, align 8
  %185 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %182, align 8
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %187, i32 0, i32 0
  store ptr %186, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %187, i32 0, i32 1
  store ptr null, ptr %189, align 8
  %190 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %187, align 8
  %191 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %185, %"github.com/goplus/llgo/internal/runtime.eface" %190)
  br i1 %191, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 0
  store ptr @22, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 1
  store i64 17, ptr %194, align 4
  %195 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %192, align 8
  %196 = load ptr, ptr @_llgo_string, align 8
  %197 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %195, ptr %197, align 8
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %198, i32 0, i32 0
  store ptr %196, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %198, i32 0, i32 1
  store ptr %197, ptr %200, align 8
  %201 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %198, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %201)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 0
  store ptr @23, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 1
  store i64 4, ptr %204, align 4
  %205 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %202, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %205)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_23:                                         ; preds = %_llgo_0
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %206, i32 0, i32 0
  store ptr null, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %206, i32 0, i32 1
  store ptr null, ptr %208, align 8
  %209 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %206, align 8
  %210 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %211 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %210, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %209, ptr %211, align 8
  %212 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %210, i32 0, i32 1
  store i1 true, ptr %212, align 1
  %213 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %210, align 8
  br label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_0
  %214 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %215 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %214, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %215, align 8
  %216 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %214, i32 0, i32 1
  store i1 false, ptr %216, align 1
  %217 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %214, align 8
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_23
  %218 = phi { %"github.com/goplus/llgo/internal/runtime.eface", i1 } [ %213, %_llgo_23 ], [ %217, %_llgo_24 ]
  %219 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %218, 0
  %220 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %218, 1
  br i1 %220, label %_llgo_1, label %_llgo_2

_llgo_26:                                         ; preds = %_llgo_2
  %221 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %222 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %223 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %222, ptr %14)
  %224 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %224, i32 0, i32 0
  store ptr %223, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %224, i32 0, i32 1
  store ptr null, ptr %226, align 8
  %227 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %224, align 8
  %228 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %229 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %228, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %227, ptr %229, align 8
  %230 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %228, i32 0, i32 1
  store i1 true, ptr %230, align 1
  %231 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %228, align 8
  br label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_2
  %232 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %233 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %232, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %233, align 8
  %234 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %232, i32 0, i32 1
  store i1 false, ptr %234, align 1
  %235 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %232, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %236 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %231, %_llgo_26 ], [ %235, %_llgo_27 ]
  %237 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %236, 0
  %238 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %236, 1
  br i1 %238, label %_llgo_3, label %_llgo_4

_llgo_29:                                         ; preds = %_llgo_4
  %239 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %240 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %241 = load ptr, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %242 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %241, ptr %27)
  %243 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %243, i32 0, i32 0
  store ptr %242, ptr %244, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %243, i32 0, i32 1
  store ptr null, ptr %245, align 8
  %246 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %243, align 8
  %247 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %248 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %247, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %246, ptr %248, align 8
  %249 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %247, i32 0, i32 1
  store i1 true, ptr %249, align 1
  %250 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %247, align 8
  br label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_4
  %251 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %252 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %251, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %252, align 8
  %253 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %251, i32 0, i32 1
  store i1 false, ptr %253, align 1
  %254 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %251, align 8
  br label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30, %_llgo_29
  %255 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %250, %_llgo_29 ], [ %254, %_llgo_30 ]
  %256 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %255, 0
  %257 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %255, 1
  br i1 %257, label %_llgo_5, label %_llgo_6

_llgo_32:                                         ; preds = %_llgo_6
  %258 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %66, 1
  %259 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %259, i32 0, i32 0
  store ptr %67, ptr %260, align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %259, i32 0, i32 1
  store ptr %258, ptr %261, align 8
  %262 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %259, align 8
  %263 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %264 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %263, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %262, ptr %264, align 8
  %265 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %263, i32 0, i32 1
  store i1 true, ptr %265, align 1
  %266 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %263, align 8
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_6
  %267 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %268 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %267, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %268, align 8
  %269 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %267, i32 0, i32 1
  store i1 false, ptr %269, align 1
  %270 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %267, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %271 = phi { %"github.com/goplus/llgo/internal/runtime.eface", i1 } [ %266, %_llgo_32 ], [ %270, %_llgo_33 ]
  %272 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %271, 0
  %273 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %271, 1
  br i1 %273, label %_llgo_8, label %_llgo_7

_llgo_35:                                         ; preds = %_llgo_8
  %274 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %66, 1
  %275 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %276 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %277 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %276, ptr %80)
  %278 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %278, i32 0, i32 0
  store ptr %277, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %278, i32 0, i32 1
  store ptr %274, ptr %280, align 8
  %281 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %278, align 8
  %282 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %283 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %282, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %281, ptr %283, align 8
  %284 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %282, i32 0, i32 1
  store i1 true, ptr %284, align 1
  %285 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %282, align 8
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_8
  %286 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %287 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %286, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %287, align 8
  %288 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %286, i32 0, i32 1
  store i1 false, ptr %288, align 1
  %289 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %286, align 8
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %290 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %285, %_llgo_35 ], [ %289, %_llgo_36 ]
  %291 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %290, 0
  %292 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %290, 1
  br i1 %292, label %_llgo_10, label %_llgo_9

_llgo_38:                                         ; preds = %_llgo_10
  %293 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %66, 1
  %294 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %295 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %296 = load ptr, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %297 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %296, ptr %93)
  %298 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %298, i32 0, i32 0
  store ptr %297, ptr %299, align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %298, i32 0, i32 1
  store ptr %293, ptr %300, align 8
  %301 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %298, align 8
  %302 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %303 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %302, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %301, ptr %303, align 8
  %304 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %302, i32 0, i32 1
  store i1 true, ptr %304, align 1
  %305 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %302, align 8
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_10
  %306 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %307 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %306, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %307, align 8
  %308 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %306, i32 0, i32 1
  store i1 false, ptr %308, align 1
  %309 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %306, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %310 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %305, %_llgo_38 ], [ %309, %_llgo_39 ]
  %311 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %310, 0
  %312 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %310, 1
  br i1 %312, label %_llgo_11, label %_llgo_12

_llgo_41:                                         ; preds = %_llgo_12
  %313 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %114, 1
  %314 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %314, i32 0, i32 0
  store ptr %115, ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %314, i32 0, i32 1
  store ptr %313, ptr %316, align 8
  %317 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %314, align 8
  %318 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %319 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %318, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %317, ptr %319, align 8
  %320 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %318, i32 0, i32 1
  store i1 true, ptr %320, align 1
  %321 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %318, align 8
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_12
  %322 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %323 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %322, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %323, align 8
  %324 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %322, i32 0, i32 1
  store i1 false, ptr %324, align 1
  %325 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %322, align 8
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %326 = phi { %"github.com/goplus/llgo/internal/runtime.eface", i1 } [ %321, %_llgo_41 ], [ %325, %_llgo_42 ]
  %327 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %326, 0
  %328 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %326, 1
  br i1 %328, label %_llgo_14, label %_llgo_13

_llgo_44:                                         ; preds = %_llgo_14
  %329 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %114, 1
  %330 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %331 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %332 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %331, ptr %128)
  %333 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %333, i32 0, i32 0
  store ptr %332, ptr %334, align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %333, i32 0, i32 1
  store ptr %329, ptr %335, align 8
  %336 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %333, align 8
  %337 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %338 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %337, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %336, ptr %338, align 8
  %339 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %337, i32 0, i32 1
  store i1 true, ptr %339, align 1
  %340 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %337, align 8
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_14
  %341 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %342 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %341, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %342, align 8
  %343 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %341, i32 0, i32 1
  store i1 false, ptr %343, align 1
  %344 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %341, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %345 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %340, %_llgo_44 ], [ %344, %_llgo_45 ]
  %346 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %345, 0
  %347 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %345, 1
  br i1 %347, label %_llgo_16, label %_llgo_15

_llgo_47:                                         ; preds = %_llgo_16
  %348 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %114, 1
  %349 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %350 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %351 = load ptr, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %352 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %351, ptr %141)
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %353, i32 0, i32 0
  store ptr %352, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %353, i32 0, i32 1
  store ptr %348, ptr %355, align 8
  %356 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %353, align 8
  %357 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %358 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %357, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %356, ptr %358, align 8
  %359 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %357, i32 0, i32 1
  store i1 true, ptr %359, align 1
  %360 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %357, align 8
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_16
  %361 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %362 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %361, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %362, align 8
  %363 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %361, i32 0, i32 1
  store i1 false, ptr %363, align 1
  %364 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %361, align 8
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %365 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %360, %_llgo_47 ], [ %364, %_llgo_48 ]
  %366 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %365, 0
  %367 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %365, 1
  br i1 %367, label %_llgo_18, label %_llgo_17
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_main.I0, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, i32 0, i32 1
  store i64 0, ptr %5, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, i32 0, i32 2
  store i64 0, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %3, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr @0, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 4, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 0
  store ptr @1, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %12, i32 0, i32 1
  store i64 7, ptr %14, align 4
  %15 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %12, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %11, %"github.com/goplus/llgo/internal/runtime.String" %15, %"github.com/goplus/llgo/internal/runtime.Slice" %7)
  store ptr %16, ptr @_llgo_main.I0, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = load ptr, ptr @_llgo_string, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %19, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %20 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 1
  store i64 0, ptr %25, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 2
  store i64 0, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %29 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 0
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 1
  store i64 0, ptr %31, align 4
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, i32 0, i32 2
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %29, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %27, %"github.com/goplus/llgo/internal/runtime.Slice" %33, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %34)
  store ptr %34, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %35 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %36 = load ptr, ptr @_llgo_main.I1, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr @3, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 6, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %42, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %41, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %42, i32 0, i32 1
  store ptr %35, ptr %44, align 8
  %45 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %42, align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %47 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %46, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %45, ptr %47, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 0
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 1
  store i64 1, ptr %50, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 2
  store i64 1, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 0
  store ptr @0, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 1
  store i64 4, ptr %55, align 4
  %56 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %53, align 8
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 0
  store ptr @4, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 1
  store i64 7, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %57, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %56, %"github.com/goplus/llgo/internal/runtime.String" %60, %"github.com/goplus/llgo/internal/runtime.Slice" %52)
  store ptr %61, ptr @_llgo_main.I1, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %62 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 0
  store ptr @3, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 1
  store i64 6, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %63, align 8
  %67 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %67, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %66, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %67, i32 0, i32 1
  store ptr %62, ptr %69, align 8
  %70 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %67, align 8
  %71 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %72 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %71, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %70, ptr %72, align 8
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 0
  store ptr %71, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 1
  store i64 1, ptr %75, align 4
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, i32 0, i32 2
  store i64 1, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %73, align 8
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 0
  store ptr @0, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 1
  store i64 4, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %78, align 8
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr null, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 0, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %81, %"github.com/goplus/llgo/internal/runtime.String" %85, %"github.com/goplus/llgo/internal/runtime.Slice" %77)
  store ptr %86, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %87 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %88 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %89 = load ptr, ptr @_llgo_main.I2, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %91, i32 0, i32 0
  store ptr @3, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %91, i32 0, i32 1
  store i64 6, ptr %93, align 4
  %94 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %91, align 8
  %95 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %95, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %94, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %95, i32 0, i32 1
  store ptr %87, ptr %97, align 8
  %98 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %95, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 0
  store ptr @6, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 1
  store i64 6, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %99, align 8
  %103 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %103, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %102, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %103, i32 0, i32 1
  store ptr %88, ptr %105, align 8
  %106 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %103, align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %108 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %107, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %98, ptr %108, align 8
  %109 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %107, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %106, ptr %109, align 8
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %110, i32 0, i32 0
  store ptr %107, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %110, i32 0, i32 1
  store i64 2, ptr %112, align 4
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %110, i32 0, i32 2
  store i64 2, ptr %113, align 4
  %114 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %110, align 8
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 0
  store ptr @0, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 1
  store i64 4, ptr %117, align 4
  %118 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %115, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 0
  store ptr @7, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 1
  store i64 7, ptr %121, align 4
  %122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %119, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %118, %"github.com/goplus/llgo/internal/runtime.String" %122, %"github.com/goplus/llgo/internal/runtime.Slice" %114)
  store ptr %123, ptr @_llgo_main.I2, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %124 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %125 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr @3, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 6, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %129, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, i32 0, i32 1
  store ptr %124, ptr %132, align 8
  %133 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %130, align 8
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 0
  store ptr @6, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 1
  store i64 6, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %134, align 8
  %138 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %138, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %137, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %138, i32 0, i32 1
  store ptr %125, ptr %140, align 8
  %141 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %138, align 8
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %143 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %142, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %133, ptr %143, align 8
  %144 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %142, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %141, ptr %144, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, i32 0, i32 0
  store ptr %142, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, i32 0, i32 1
  store i64 2, ptr %147, align 4
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, i32 0, i32 2
  store i64 2, ptr %148, align 4
  %149 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %145, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 0
  store ptr @0, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 1
  store i64 4, ptr %152, align 4
  %153 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %150, align 8
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 0
  store ptr null, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 1
  store i64 0, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %154, align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %153, %"github.com/goplus/llgo/internal/runtime.String" %157, %"github.com/goplus/llgo/internal/runtime.Slice" %149)
  store ptr %158, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 0
  store ptr @9, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 1
  store i64 7, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %159, align 8
  %163 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %162, i64 25, i64 0, i64 1, i64 1)
  %164 = load ptr, ptr @_llgo_main.C1, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %163, ptr @_llgo_main.C1, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %166 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 0
  store ptr @0, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 1
  store i64 4, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %168, align 8
  %172 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %173 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %173, i32 0, i32 0
  store ptr %172, ptr %174, align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %173, i32 0, i32 1
  store i64 0, ptr %175, align 4
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %173, i32 0, i32 2
  store i64 0, ptr %176, align 4
  %177 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %173, align 8
  %178 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %171, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %177)
  store ptr %178, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %179 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %165, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 0
  store ptr @10, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 1
  store i64 1, ptr %182, align 4
  %183 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %180, align 8
  %184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 0
  store ptr @3, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 1
  store i64 6, ptr %186, align 4
  %187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %184, align 8
  %188 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %189 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %189, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %187, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %189, i32 0, i32 1
  store ptr %188, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %189, i32 0, i32 2
  store ptr @"main.(*C1).f", ptr %192, align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %189, i32 0, i32 3
  store ptr @"main.(*C1).f", ptr %193, align 8
  %194 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %189, align 8
  %195 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %195, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %187, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %195, i32 0, i32 1
  store ptr %188, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %195, i32 0, i32 2
  store ptr @"main.(*C1).f", ptr %198, align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %195, i32 0, i32 3
  store ptr @main.C1.f, ptr %199, align 8
  %200 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %195, align 8
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %202 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %201, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %200, ptr %202, align 8
  %203 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %203, i32 0, i32 0
  store ptr %201, ptr %204, align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %203, i32 0, i32 1
  store i64 1, ptr %205, align 4
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %203, i32 0, i32 2
  store i64 1, ptr %206, align 4
  %207 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %203, align 8
  %208 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %209 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %208, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %194, ptr %209, align 8
  %210 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %210, i32 0, i32 0
  store ptr %208, ptr %211, align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %210, i32 0, i32 1
  store i64 1, ptr %212, align 4
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %210, i32 0, i32 2
  store i64 1, ptr %213, align 4
  %214 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %210, align 8
  %215 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %215, i32 0, i32 0
  store ptr @0, ptr %216, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %215, i32 0, i32 1
  store i64 4, ptr %217, align 4
  %218 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %215, align 8
  %219 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %219, i32 0, i32 0
  store ptr @11, ptr %220, align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %219, i32 0, i32 1
  store i64 2, ptr %221, align 4
  %222 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %219, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %163, %"github.com/goplus/llgo/internal/runtime.String" %218, %"github.com/goplus/llgo/internal/runtime.String" %222, ptr %179, %"github.com/goplus/llgo/internal/runtime.Slice" %207, %"github.com/goplus/llgo/internal/runtime.Slice" %214)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 0
  store ptr @15, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 1
  store i64 7, ptr %225, align 4
  %226 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %223, align 8
  %227 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %226, i64 25, i64 0, i64 2, i64 2)
  %228 = load ptr, ptr @_llgo_main.C2, align 8
  %229 = icmp eq ptr %228, null
  br i1 %229, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %227, ptr @_llgo_main.C2, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %230 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %229, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %231 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 0
  store ptr @10, ptr %232, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 1
  store i64 1, ptr %233, align 4
  %234 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %231, align 8
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 0
  store ptr @3, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 1
  store i64 6, ptr %237, align 4
  %238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %235, align 8
  %239 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %240 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %240, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %238, ptr %241, align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %240, i32 0, i32 1
  store ptr %239, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %240, i32 0, i32 2
  store ptr @"main.(*C2).f", ptr %243, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %240, i32 0, i32 3
  store ptr @"main.(*C2).f", ptr %244, align 8
  %245 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %240, align 8
  %246 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %246, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %238, ptr %247, align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %246, i32 0, i32 1
  store ptr %239, ptr %248, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %246, i32 0, i32 2
  store ptr @"main.(*C2).f", ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %246, i32 0, i32 3
  store ptr @main.C2.f, ptr %250, align 8
  %251 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %246, align 8
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 0
  store ptr @16, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 1
  store i64 1, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %252, align 8
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 0
  store ptr @6, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 1
  store i64 6, ptr %258, align 4
  %259 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %256, align 8
  %260 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %261 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %261, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %259, ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %261, i32 0, i32 1
  store ptr %260, ptr %263, align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %261, i32 0, i32 2
  store ptr @"main.(*C2).g", ptr %264, align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %261, i32 0, i32 3
  store ptr @"main.(*C2).g", ptr %265, align 8
  %266 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %261, align 8
  %267 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %259, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 1
  store ptr %260, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 2
  store ptr @"main.(*C2).g", ptr %270, align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %267, i32 0, i32 3
  store ptr @main.C2.g, ptr %271, align 8
  %272 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %267, align 8
  %273 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %274 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %251, ptr %274, align 8
  %275 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %272, ptr %275, align 8
  %276 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %276, i32 0, i32 0
  store ptr %273, ptr %277, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %276, i32 0, i32 1
  store i64 2, ptr %278, align 4
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %276, i32 0, i32 2
  store i64 2, ptr %279, align 4
  %280 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %276, align 8
  %281 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %282 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %281, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %245, ptr %282, align 8
  %283 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %281, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %266, ptr %283, align 8
  %284 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %284, i32 0, i32 0
  store ptr %281, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %284, i32 0, i32 1
  store i64 2, ptr %286, align 4
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %284, i32 0, i32 2
  store i64 2, ptr %287, align 4
  %288 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %284, align 8
  %289 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %289, i32 0, i32 0
  store ptr @0, ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %289, i32 0, i32 1
  store i64 4, ptr %291, align 4
  %292 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %289, align 8
  %293 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %293, i32 0, i32 0
  store ptr @17, ptr %294, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %293, i32 0, i32 1
  store i64 2, ptr %295, align 4
  %296 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %293, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %227, %"github.com/goplus/llgo/internal/runtime.String" %292, %"github.com/goplus/llgo/internal/runtime.String" %296, ptr %230, %"github.com/goplus/llgo/internal/runtime.Slice" %280, %"github.com/goplus/llgo/internal/runtime.Slice" %288)
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)
