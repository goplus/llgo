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
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"f", align 1
@10 = private unnamed_addr constant [2 x i8] c"C1", align 1
@11 = private unnamed_addr constant [17 x i8] c"C1 i1.(I0) failed", align 1
@12 = private unnamed_addr constant [17 x i8] c"C1 i1.(I1) failed", align 1
@13 = private unnamed_addr constant [20 x i8] c"C1 i1.(I2) succeeded", align 1
@_llgo_main.C2 = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [1 x i8] c"g", align 1
@15 = private unnamed_addr constant [2 x i8] c"C2", align 1
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
  %51 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %51, ptr %50)
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %53, i32 0, i32 0
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %53, i32 0, i32 1
  store ptr null, ptr %55, align 8
  %56 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %53, align 8
  %57 = load ptr, ptr @_llgo_main.C1, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.C1 zeroinitializer, ptr %58, align 1
  %59 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %59, ptr %57)
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %61, i32 0, i32 0
  store ptr %60, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %61, i32 0, i32 1
  store ptr %58, ptr %63, align 8
  %64 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %61, align 8
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %64)
  %66 = load ptr, ptr @_llgo_main.I0, align 8
  %67 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %66, ptr %65)
  br i1 %67, label %_llgo_32, label %_llgo_33

_llgo_7:                                          ; preds = %_llgo_34
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 0
  store ptr @11, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 1
  store i64 17, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %68, align 8
  %72 = load ptr, ptr @_llgo_string, align 8
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %71, ptr %73, align 8
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 0
  store ptr %72, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 1
  store ptr %73, ptr %76, align 8
  %77 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %77)
  unreachable

_llgo_8:                                          ; preds = %_llgo_34
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %64)
  %79 = load ptr, ptr @_llgo_main.I1, align 8
  %80 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %79, ptr %78)
  br i1 %80, label %_llgo_35, label %_llgo_36

_llgo_9:                                          ; preds = %_llgo_37
  %81 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %81, i32 0, i32 0
  store ptr @12, ptr %82, align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %81, i32 0, i32 1
  store i64 17, ptr %83, align 4
  %84 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %81, align 8
  %85 = load ptr, ptr @_llgo_string, align 8
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %84, ptr %86, align 8
  %87 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %87, i32 0, i32 0
  store ptr %85, ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %87, i32 0, i32 1
  store ptr %86, ptr %89, align 8
  %90 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %87, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %90)
  unreachable

_llgo_10:                                         ; preds = %_llgo_37
  %91 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %64)
  %92 = load ptr, ptr @_llgo_main.I2, align 8
  %93 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %92, ptr %91)
  br i1 %93, label %_llgo_38, label %_llgo_39

_llgo_11:                                         ; preds = %_llgo_40
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr @13, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 20, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = load ptr, ptr @_llgo_string, align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %97, ptr %99, align 8
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %100, i32 0, i32 0
  store ptr %98, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %100, i32 0, i32 1
  store ptr %99, ptr %102, align 8
  %103 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %100, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %103)
  unreachable

_llgo_12:                                         ; preds = %_llgo_40
  %104 = load ptr, ptr @_llgo_main.C2, align 8
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.C2 zeroinitializer, ptr %105, align 1
  %106 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %106, ptr %104)
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %108, i32 0, i32 0
  store ptr %107, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %108, i32 0, i32 1
  store ptr %105, ptr %110, align 8
  %111 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %108, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %111)
  %113 = load ptr, ptr @_llgo_main.I0, align 8
  %114 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %113, ptr %112)
  br i1 %114, label %_llgo_41, label %_llgo_42

_llgo_13:                                         ; preds = %_llgo_43
  %115 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 0
  store ptr @16, ptr %116, align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %115, i32 0, i32 1
  store i64 17, ptr %117, align 4
  %118 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %115, align 8
  %119 = load ptr, ptr @_llgo_string, align 8
  %120 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %118, ptr %120, align 8
  %121 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %121, i32 0, i32 0
  store ptr %119, ptr %122, align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %121, i32 0, i32 1
  store ptr %120, ptr %123, align 8
  %124 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %121, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %124)
  unreachable

_llgo_14:                                         ; preds = %_llgo_43
  %125 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %111)
  %126 = load ptr, ptr @_llgo_main.I1, align 8
  %127 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %126, ptr %125)
  br i1 %127, label %_llgo_44, label %_llgo_45

_llgo_15:                                         ; preds = %_llgo_46
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 0
  store ptr @17, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 1
  store i64 17, ptr %130, align 4
  %131 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %128, align 8
  %132 = load ptr, ptr @_llgo_string, align 8
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %131, ptr %133, align 8
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %134, i32 0, i32 0
  store ptr %132, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %134, i32 0, i32 1
  store ptr %133, ptr %136, align 8
  %137 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %134, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %137)
  unreachable

_llgo_16:                                         ; preds = %_llgo_46
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %111)
  %139 = load ptr, ptr @_llgo_main.I2, align 8
  %140 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %139, ptr %138)
  br i1 %140, label %_llgo_47, label %_llgo_48

_llgo_17:                                         ; preds = %_llgo_49
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 0
  store ptr @18, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 1
  store i64 17, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  %145 = load ptr, ptr @_llgo_string, align 8
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %144, ptr %146, align 8
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %147, i32 0, i32 0
  store ptr %145, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %147, i32 0, i32 1
  store ptr %146, ptr %149, align 8
  %150 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %147, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %150)
  unreachable

_llgo_18:                                         ; preds = %_llgo_49
  %151 = load ptr, ptr @_llgo_main.C1, align 8
  %152 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.C1 zeroinitializer, ptr %152, align 1
  %153 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %154 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %153, ptr %151)
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %155, i32 0, i32 0
  store ptr %154, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %155, i32 0, i32 1
  store ptr %152, ptr %157, align 8
  %158 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %155, align 8
  %159 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %158)
  %160 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %158, 1
  %161 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %161, i32 0, i32 0
  store ptr %159, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %161, i32 0, i32 1
  store ptr %160, ptr %163, align 8
  %164 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %161, align 8
  %165 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %164, %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer)
  br i1 %165, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 0
  store ptr @19, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 1
  store i64 17, ptr %168, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %166, align 8
  %170 = load ptr, ptr @_llgo_string, align 8
  %171 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %169, ptr %171, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %172, i32 0, i32 0
  store ptr %170, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %172, i32 0, i32 1
  store ptr %171, ptr %174, align 8
  %175 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %172, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %175)
  unreachable

_llgo_20:                                         ; preds = %_llgo_18
  %176 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %158)
  %177 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %158, 1
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %178, i32 0, i32 0
  store ptr %176, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %178, i32 0, i32 1
  store ptr %177, ptr %180, align 8
  %181 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %178, align 8
  %182 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer)
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %183, i32 0, i32 0
  store ptr %182, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %183, i32 0, i32 1
  store ptr null, ptr %185, align 8
  %186 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %183, align 8
  %187 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %181, %"github.com/goplus/llgo/internal/runtime.eface" %186)
  br i1 %187, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %188 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 0
  store ptr @20, ptr %189, align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 1
  store i64 17, ptr %190, align 4
  %191 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %188, align 8
  %192 = load ptr, ptr @_llgo_string, align 8
  %193 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %191, ptr %193, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %194, i32 0, i32 0
  store ptr %192, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %194, i32 0, i32 1
  store ptr %193, ptr %196, align 8
  %197 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %194, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %197)
  unreachable

_llgo_22:                                         ; preds = %_llgo_20
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 0
  store ptr @21, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 1
  store i64 4, ptr %200, align 4
  %201 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %198, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %201)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_23:                                         ; preds = %_llgo_0
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %202, i32 0, i32 0
  store ptr null, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %202, i32 0, i32 1
  store ptr null, ptr %204, align 8
  %205 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %202, align 8
  %206 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %207 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %206, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %205, ptr %207, align 8
  %208 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %206, i32 0, i32 1
  store i1 true, ptr %208, align 1
  %209 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %206, align 8
  br label %_llgo_25

_llgo_24:                                         ; preds = %_llgo_0
  %210 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %211 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %210, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %211, align 8
  %212 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %210, i32 0, i32 1
  store i1 false, ptr %212, align 1
  %213 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %210, align 8
  br label %_llgo_25

_llgo_25:                                         ; preds = %_llgo_24, %_llgo_23
  %214 = phi { %"github.com/goplus/llgo/internal/runtime.eface", i1 } [ %209, %_llgo_23 ], [ %213, %_llgo_24 ]
  %215 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %214, 0
  %216 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %214, 1
  br i1 %216, label %_llgo_1, label %_llgo_2

_llgo_26:                                         ; preds = %_llgo_2
  %217 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %218 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %217, ptr %14)
  %219 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %219, i32 0, i32 0
  store ptr %218, ptr %220, align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %219, i32 0, i32 1
  store ptr null, ptr %221, align 8
  %222 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %219, align 8
  %223 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %224 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %223, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %222, ptr %224, align 8
  %225 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %223, i32 0, i32 1
  store i1 true, ptr %225, align 1
  %226 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %223, align 8
  br label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_2
  %227 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %228 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %227, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %228, align 8
  %229 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %227, i32 0, i32 1
  store i1 false, ptr %229, align 1
  %230 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %227, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %231 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %226, %_llgo_26 ], [ %230, %_llgo_27 ]
  %232 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %231, 0
  %233 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %231, 1
  br i1 %233, label %_llgo_3, label %_llgo_4

_llgo_29:                                         ; preds = %_llgo_4
  %234 = load ptr, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %235 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %234, ptr %27)
  %236 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %236, i32 0, i32 0
  store ptr %235, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %236, i32 0, i32 1
  store ptr null, ptr %238, align 8
  %239 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %236, align 8
  %240 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %241 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %240, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %239, ptr %241, align 8
  %242 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %240, i32 0, i32 1
  store i1 true, ptr %242, align 1
  %243 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %240, align 8
  br label %_llgo_31

_llgo_30:                                         ; preds = %_llgo_4
  %244 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %245 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %244, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %245, align 8
  %246 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %244, i32 0, i32 1
  store i1 false, ptr %246, align 1
  %247 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %244, align 8
  br label %_llgo_31

_llgo_31:                                         ; preds = %_llgo_30, %_llgo_29
  %248 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %243, %_llgo_29 ], [ %247, %_llgo_30 ]
  %249 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %248, 0
  %250 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %248, 1
  br i1 %250, label %_llgo_5, label %_llgo_6

_llgo_32:                                         ; preds = %_llgo_6
  %251 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %64, 1
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %252, i32 0, i32 0
  store ptr %65, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %252, i32 0, i32 1
  store ptr %251, ptr %254, align 8
  %255 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %252, align 8
  %256 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %257 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %256, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %255, ptr %257, align 8
  %258 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %256, i32 0, i32 1
  store i1 true, ptr %258, align 1
  %259 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %256, align 8
  br label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_6
  %260 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %261 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %260, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %261, align 8
  %262 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %260, i32 0, i32 1
  store i1 false, ptr %262, align 1
  %263 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %260, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %264 = phi { %"github.com/goplus/llgo/internal/runtime.eface", i1 } [ %259, %_llgo_32 ], [ %263, %_llgo_33 ]
  %265 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %264, 0
  %266 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %264, 1
  br i1 %266, label %_llgo_8, label %_llgo_7

_llgo_35:                                         ; preds = %_llgo_8
  %267 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %64, 1
  %268 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %269 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %268, ptr %78)
  %270 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %270, i32 0, i32 0
  store ptr %269, ptr %271, align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %270, i32 0, i32 1
  store ptr %267, ptr %272, align 8
  %273 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %270, align 8
  %274 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %275 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %274, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %273, ptr %275, align 8
  %276 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %274, i32 0, i32 1
  store i1 true, ptr %276, align 1
  %277 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %274, align 8
  br label %_llgo_37

_llgo_36:                                         ; preds = %_llgo_8
  %278 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %279 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %278, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %279, align 8
  %280 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %278, i32 0, i32 1
  store i1 false, ptr %280, align 1
  %281 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %278, align 8
  br label %_llgo_37

_llgo_37:                                         ; preds = %_llgo_36, %_llgo_35
  %282 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %277, %_llgo_35 ], [ %281, %_llgo_36 ]
  %283 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %282, 0
  %284 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %282, 1
  br i1 %284, label %_llgo_10, label %_llgo_9

_llgo_38:                                         ; preds = %_llgo_10
  %285 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %64, 1
  %286 = load ptr, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %287 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %286, ptr %91)
  %288 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %288, i32 0, i32 0
  store ptr %287, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %288, i32 0, i32 1
  store ptr %285, ptr %290, align 8
  %291 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %288, align 8
  %292 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %293 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %292, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %291, ptr %293, align 8
  %294 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %292, i32 0, i32 1
  store i1 true, ptr %294, align 1
  %295 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %292, align 8
  br label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_10
  %296 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %297 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %296, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %297, align 8
  %298 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %296, i32 0, i32 1
  store i1 false, ptr %298, align 1
  %299 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %296, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %300 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %295, %_llgo_38 ], [ %299, %_llgo_39 ]
  %301 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %300, 0
  %302 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %300, 1
  br i1 %302, label %_llgo_11, label %_llgo_12

_llgo_41:                                         ; preds = %_llgo_12
  %303 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %111, 1
  %304 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %304, i32 0, i32 0
  store ptr %112, ptr %305, align 8
  %306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %304, i32 0, i32 1
  store ptr %303, ptr %306, align 8
  %307 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %304, align 8
  %308 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %309 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %308, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.eface" %307, ptr %309, align 8
  %310 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %308, i32 0, i32 1
  store i1 true, ptr %310, align 1
  %311 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %308, align 8
  br label %_llgo_43

_llgo_42:                                         ; preds = %_llgo_12
  %312 = alloca { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, align 8
  %313 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %312, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %313, align 8
  %314 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %312, i32 0, i32 1
  store i1 false, ptr %314, align 1
  %315 = load { %"github.com/goplus/llgo/internal/runtime.eface", i1 }, ptr %312, align 8
  br label %_llgo_43

_llgo_43:                                         ; preds = %_llgo_42, %_llgo_41
  %316 = phi { %"github.com/goplus/llgo/internal/runtime.eface", i1 } [ %311, %_llgo_41 ], [ %315, %_llgo_42 ]
  %317 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %316, 0
  %318 = extractvalue { %"github.com/goplus/llgo/internal/runtime.eface", i1 } %316, 1
  br i1 %318, label %_llgo_14, label %_llgo_13

_llgo_44:                                         ; preds = %_llgo_14
  %319 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %111, 1
  %320 = load ptr, ptr @"main.iface$brpgdLtIeRlPi8QUoTgPCXzlehUkncg7v9aITo-GsF4", align 8
  %321 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %320, ptr %125)
  %322 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %322, i32 0, i32 0
  store ptr %321, ptr %323, align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %322, i32 0, i32 1
  store ptr %319, ptr %324, align 8
  %325 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %322, align 8
  %326 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %327 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %326, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %325, ptr %327, align 8
  %328 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %326, i32 0, i32 1
  store i1 true, ptr %328, align 1
  %329 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %326, align 8
  br label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_14
  %330 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %331 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %330, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %331, align 8
  %332 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %330, i32 0, i32 1
  store i1 false, ptr %332, align 1
  %333 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %330, align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %334 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %329, %_llgo_44 ], [ %333, %_llgo_45 ]
  %335 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %334, 0
  %336 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %334, 1
  br i1 %336, label %_llgo_16, label %_llgo_15

_llgo_47:                                         ; preds = %_llgo_16
  %337 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %111, 1
  %338 = load ptr, ptr @"main.iface$gZBF8fFlqIMZ9M6lT2VWPyc3eu5Co6j0WoKGIEgDPAw", align 8
  %339 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %338, ptr %138)
  %340 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %340, i32 0, i32 0
  store ptr %339, ptr %341, align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %340, i32 0, i32 1
  store ptr %337, ptr %342, align 8
  %343 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %340, align 8
  %344 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %345 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %344, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %343, ptr %345, align 8
  %346 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %344, i32 0, i32 1
  store i1 true, ptr %346, align 1
  %347 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %344, align 8
  br label %_llgo_49

_llgo_48:                                         ; preds = %_llgo_16
  %348 = alloca { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, align 8
  %349 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %348, i32 0, i32 0
  store { ptr, ptr } zeroinitializer, ptr %349, align 8
  %350 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %348, i32 0, i32 1
  store i1 false, ptr %350, align 1
  %351 = load { %"github.com/goplus/llgo/internal/runtime.iface", i1 }, ptr %348, align 8
  br label %_llgo_49

_llgo_49:                                         ; preds = %_llgo_48, %_llgo_47
  %352 = phi { %"github.com/goplus/llgo/internal/runtime.iface", i1 } [ %347, %_llgo_47 ], [ %351, %_llgo_48 ]
  %353 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %352, 0
  %354 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface", i1 } %352, 1
  br i1 %354, label %_llgo_18, label %_llgo_17
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
  %159 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 1, i64 1)
  %160 = load ptr, ptr @_llgo_main.C1, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %159, ptr @_llgo_main.C1, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %162 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %164 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 0
  store ptr @0, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 1
  store i64 4, ptr %166, align 4
  %167 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %164, align 8
  %168 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %169 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %169, i32 0, i32 0
  store ptr %168, ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %169, i32 0, i32 1
  store i64 0, ptr %171, align 4
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %169, i32 0, i32 2
  store i64 0, ptr %172, align 4
  %173 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %169, align 8
  %174 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %167, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %173)
  store ptr %174, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %175 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %161, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr @9, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 1, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 0
  store ptr @3, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 1
  store i64 6, ptr %182, align 4
  %183 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %180, align 8
  %184 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %185 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %185, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %183, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %185, i32 0, i32 1
  store ptr %184, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %185, i32 0, i32 2
  store ptr @"main.(*C1).f", ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %185, i32 0, i32 3
  store ptr @"main.(*C1).f", ptr %189, align 8
  %190 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %185, align 8
  %191 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %191, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %183, ptr %192, align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %191, i32 0, i32 1
  store ptr %184, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %191, i32 0, i32 2
  store ptr @"main.(*C1).f", ptr %194, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %191, i32 0, i32 3
  store ptr @main.C1.f, ptr %195, align 8
  %196 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %191, align 8
  %197 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %198 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %197, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %196, ptr %198, align 8
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %199, i32 0, i32 0
  store ptr %197, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %199, i32 0, i32 1
  store i64 1, ptr %201, align 4
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %199, i32 0, i32 2
  store i64 1, ptr %202, align 4
  %203 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %199, align 8
  %204 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %205 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %204, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %190, ptr %205, align 8
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 0
  store ptr %204, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 1
  store i64 1, ptr %208, align 4
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 2
  store i64 1, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, align 8
  %211 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %212 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %211, i32 0, i32 0
  store ptr @0, ptr %212, align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %211, i32 0, i32 1
  store i64 4, ptr %213, align 4
  %214 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %211, align 8
  %215 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %215, i32 0, i32 0
  store ptr @10, ptr %216, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %215, i32 0, i32 1
  store i64 2, ptr %217, align 4
  %218 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %215, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %159, %"github.com/goplus/llgo/internal/runtime.String" %214, %"github.com/goplus/llgo/internal/runtime.String" %218, ptr %175, %"github.com/goplus/llgo/internal/runtime.Slice" %203, %"github.com/goplus/llgo/internal/runtime.Slice" %210)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 0, i64 2, i64 2)
  %220 = load ptr, ptr @_llgo_main.C2, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  store ptr %219, ptr @_llgo_main.C2, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %222 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br i1 %221, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 0
  store ptr @9, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 1
  store i64 1, ptr %225, align 4
  %226 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %223, align 8
  %227 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 0
  store ptr @3, ptr %228, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 1
  store i64 6, ptr %229, align 4
  %230 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %227, align 8
  %231 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %232 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %232, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %230, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %232, i32 0, i32 1
  store ptr %231, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %232, i32 0, i32 2
  store ptr @"main.(*C2).f", ptr %235, align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %232, i32 0, i32 3
  store ptr @"main.(*C2).f", ptr %236, align 8
  %237 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %232, align 8
  %238 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %238, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %230, ptr %239, align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %238, i32 0, i32 1
  store ptr %231, ptr %240, align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %238, i32 0, i32 2
  store ptr @"main.(*C2).f", ptr %241, align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %238, i32 0, i32 3
  store ptr @main.C2.f, ptr %242, align 8
  %243 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %238, align 8
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 0
  store ptr @14, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %244, i32 0, i32 1
  store i64 1, ptr %246, align 4
  %247 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %244, align 8
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 0
  store ptr @6, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %248, i32 0, i32 1
  store i64 6, ptr %250, align 4
  %251 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %248, align 8
  %252 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %253 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %253, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %251, ptr %254, align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %253, i32 0, i32 1
  store ptr %252, ptr %255, align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %253, i32 0, i32 2
  store ptr @"main.(*C2).g", ptr %256, align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %253, i32 0, i32 3
  store ptr @"main.(*C2).g", ptr %257, align 8
  %258 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %253, align 8
  %259 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %259, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %251, ptr %260, align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %259, i32 0, i32 1
  store ptr %252, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %259, i32 0, i32 2
  store ptr @"main.(*C2).g", ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %259, i32 0, i32 3
  store ptr @main.C2.g, ptr %263, align 8
  %264 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %259, align 8
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %266 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %265, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %243, ptr %266, align 8
  %267 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %265, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %264, ptr %267, align 8
  %268 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %268, i32 0, i32 0
  store ptr %265, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %268, i32 0, i32 1
  store i64 2, ptr %270, align 4
  %271 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %268, i32 0, i32 2
  store i64 2, ptr %271, align 4
  %272 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %268, align 8
  %273 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %274 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %237, ptr %274, align 8
  %275 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %273, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %258, ptr %275, align 8
  %276 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %276, i32 0, i32 0
  store ptr %273, ptr %277, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %276, i32 0, i32 1
  store i64 2, ptr %278, align 4
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %276, i32 0, i32 2
  store i64 2, ptr %279, align 4
  %280 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %276, align 8
  %281 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %281, i32 0, i32 0
  store ptr @0, ptr %282, align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %281, i32 0, i32 1
  store i64 4, ptr %283, align 4
  %284 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %281, align 8
  %285 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %285, i32 0, i32 0
  store ptr @15, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %285, i32 0, i32 1
  store i64 2, ptr %287, align 4
  %288 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %285, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %219, %"github.com/goplus/llgo/internal/runtime.String" %284, %"github.com/goplus/llgo/internal/runtime.String" %288, ptr %222, %"github.com/goplus/llgo/internal/runtime.Slice" %272, %"github.com/goplus/llgo/internal/runtime.Slice" %280)
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

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)
